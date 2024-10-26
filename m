Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B51C79B1558
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 08:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 215D110E40C;
	Sat, 26 Oct 2024 06:27:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ul/EIJwk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CE0510E3FF
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2024 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729924028; x=1761460028;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2SL1hM3F7LI45zvqSuCLTPeUUgh9fp5BtQmomq4ir2E=;
 b=Ul/EIJwkmqlCHeAAsTbJdivd64+EweF62bir3WTU4ytJ1a9dZP6mq2kR
 pi8Zaezoi6CjqiO3PN7ELgJcq7cms+4xnHWzK+7W2q3qn3dpTxcDAntxF
 mVb8Q9/RBEddLjhGuxUR2Ap4POY3ubZoErDcCYzzmnoXxVESZ1GbdaSdZ
 xUSHcLd92Xk1nVAEzPMwhW5afaGVWcV+5abVvuuj9Gn9sr+oSmaDitbZc
 al37j0auG2iqmXJ9aU/3GnAsWp61i5uLBNoqZsjPMGHrup5zZtXVRbQoo
 NohmGWggb1T3flITSnybx8tTNlB7hccpatz8+MjFlUYUa1PV6lKh6B4D2 Q==;
X-CSE-ConnectionGUID: tZ+0rUMMRBKLWl/UX6zN9Q==
X-CSE-MsgGUID: bOULEAwqSlmF5eEwuO1fTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40177199"
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="40177199"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:08 -0700
X-CSE-ConnectionGUID: SO/C5HSHT9KhHbtQT6oB4Q==
X-CSE-MsgGUID: 50M3guHNR9eAkZSQNHufnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="118586602"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2.lan)
 ([10.125.111.191])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 0/3] drm/xe: Fix races on fdinfo
Date: Sat, 26 Oct 2024 01:26:55 -0500
Message-ID: <20241026062658.28060-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The current reading of engine utilization has same races. This should
fix most of them while also drastically reducing the update rate needed
on "normal apps".

I left tests/xe_drm_fdinfo running on 2 systems and saw no failures
after 100 iterations.

Lucas De Marchi (3):
  drm/xe: Add trace to lrc timestamp update
  drm/xe: Accumulate exec queue timestamp on destroy
  drm/xe: Stop accumulating LRC timestamp on job_free

 drivers/gpu/drm/xe/Makefile        |  1 +
 drivers/gpu/drm/xe/xe_exec_queue.c | 14 ++++++++
 drivers/gpu/drm/xe/xe_guc_submit.c |  2 --
 drivers/gpu/drm/xe/xe_lrc.c        |  3 ++
 drivers/gpu/drm/xe/xe_trace_lrc.c  |  9 ++++++
 drivers/gpu/drm/xe/xe_trace_lrc.h  | 52 ++++++++++++++++++++++++++++++
 6 files changed, 79 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/xe_trace_lrc.c
 create mode 100644 drivers/gpu/drm/xe/xe_trace_lrc.h

-- 
2.47.0

