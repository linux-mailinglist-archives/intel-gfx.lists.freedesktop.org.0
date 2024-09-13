Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F389779B8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 09:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC0A10E88C;
	Fri, 13 Sep 2024 07:34:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qfy5ITu2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E1A10E88C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 07:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726212844; x=1757748844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EJvgZgeqjHqjnYusw5G60nQEyVIrMmEAI+bIyqPYmFo=;
 b=Qfy5ITu2QqMhoE4MPHBsuOkvrnF4nAbxFyP8E83/8CHH4ITsnXznSyDF
 DsEWiy2oexC5GAWvMUU48wz6xatmVxViJrh+BPGwbt/7IEfX1K4w66wAR
 Mp111aKQkAz6BiW1EWGjzWIgbWUCEUnqXgocDkBo/DMCd7AArkKvKqqft
 WMK2bF13A2vPYZCN4ieWRiXhLQAMb0yytfZklzM4PAfZ4rPOa2ibfBKr4
 vqa5Wj5mPIbrAJMzgPxOkU6EFN0wBm/YXMhpqWr/tB64Mh95pB6Ucp7De
 fWROVrkvt/jfsdLw8Jk6v/W6lziKY9yGwNM9qIdir19AVrrdXlE+vLm8H g==;
X-CSE-ConnectionGUID: i955i1reR+iz3TMhj0ItCw==
X-CSE-MsgGUID: e/6fOuNBSWeG6eurDOjXxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24644218"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="24644218"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 00:34:03 -0700
X-CSE-ConnectionGUID: hMyQXVkIQ5C2zIyDLvhPMg==
X-CSE-MsgGUID: vLLz9FrJSyezv/Sgh7dv8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="72745184"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.104])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 00:34:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] Block DC6 on Vblank enable for Panel Replay
Date: Fri, 13 Sep 2024 10:33:45 +0300
Message-Id: <20240913073347.3273589-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent DC6 in case of Panel Replay. This causes problems if user-space is
polling for vblank events.

Jouni Högander (2):
  drm/i915/display: Add block_dc6_needed variable into intel_crtc
  drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay

 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 60 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  3 +
 .../drm/i915/display/intel_display_types.h    |  7 +++
 drivers/gpu/drm/i915/display/intel_psr.c      |  7 +++
 5 files changed, 79 insertions(+)

-- 
2.34.1

