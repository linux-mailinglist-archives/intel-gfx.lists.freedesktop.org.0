Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DAE97ACC9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 10:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBAC10E1FD;
	Tue, 17 Sep 2024 08:22:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fQup7pLw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE5E10E1FD;
 Tue, 17 Sep 2024 08:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726561333; x=1758097333;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FRTfRIPC9/jchmCfKV1MXb5hBvar2cS8jSsGgScNSjU=;
 b=fQup7pLwrIJROusQ1dN7KhRfef2svi4byIDoFbwJgSqoM/tStKqaG5eC
 LpxeauTPI9gXM7IU0XIajo/PGvHKIKkgYKHiWKr8Wq4U96k9inTxs7Bur
 jF2eHJVYvsPE3H0Sgyw2FbOCxCXlcssZgYmFeMCLeZwcJUTm417UvV6ub
 74ec1dqJbCmw/U03qPJ1Ni3i78q9r4f15uf9y1zmghOo8QMusGCwooDz0
 hTB+8/Gh/5E7HUA232qMkhCDmRcgFJoIUfTnDzvSzax24Xoe934eXqZ6H
 IX9dpTKbkdkkuJWS2sxIkfL4gMJ8FNJBisBIImXt03Jvdy3I7L84FIqbt Q==;
X-CSE-ConnectionGUID: lJiGH743QCKaMi3RvhHT1Q==
X-CSE-MsgGUID: Ki2NJfbJQ9a1XGTw6PHwtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25230062"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25230062"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 01:22:12 -0700
X-CSE-ConnectionGUID: eJ5NxXEuT1aNcj6RUroVTw==
X-CSE-MsgGUID: w9i+QGetSk6JLJUN13jJPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69906017"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 01:22:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/2] Modify iterators to prepare for ultrajoiner
Date: Tue, 17 Sep 2024 13:53:56 +0530
Message-ID: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Modify the iterators for enabling/disabling during modeset that works for
present and future joiner cases.

This patch series is a spin off from original series for ultrajoiner
basic functionality [1] and discussion on [2].
Few of the preparatory patches are taken here for review and merge before
the other core patches of the series.

[1] https://patchwork.freedesktop.org/patch/613914/
[2] https://patchwork.freedesktop.org/patch/613914/?series=133800&rev=8

Ankit Nautiyal (1):
  drm/i915/display: Enhance iterators for modeset en/disable

Stanislav Lisovskiy (1):
  drm/i915: Add some essential functionality for joiners

 drivers/gpu/drm/i915/display/intel_ddi.c     | 13 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 82 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h | 28 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c    |  4 +-
 5 files changed, 111 insertions(+), 30 deletions(-)

-- 
2.45.2

