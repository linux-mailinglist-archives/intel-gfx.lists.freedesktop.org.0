Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E79D987DA7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 06:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FA610E13A;
	Fri, 27 Sep 2024 04:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lr6VLirX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72D210E13A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 04:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727412226; x=1758948226;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ruTD+68KPRJW+vPKExG68kovjQj80nrxuuYSpYsKwV4=;
 b=lr6VLirX3sRTocp3jFJzLycfx7BWWrfgcC1blNBWE3FJWhZw7rk8aW3n
 jb0vA398Co+UxtfqTNYQjU/HAbS9+RUt1xyvAvfnuCaRzdNuHY9OjoYDF
 kiWXEtW1CWYEHXJkNbS66PS7MqKg32QbfGIQA/1wQVwGoRb4b1oHvoRLM
 jAsQZ9xVfJ22j9XURsjetpFfYRAh49J/c5M3hLGNQkNvKX9WEWnQPMWyp
 j0FYMB0+ELJw+/Ibd4KSwjPzrGslvPRRgyjmNb4+Rfpq5n6mA/AttN6Nz
 +3Q8x5iS1fnOF1XDAGiblQjCpm32CNT874+ziIvQ5e2Du/IPGVYMa3ZAE w==;
X-CSE-ConnectionGUID: jM/U1hBFTFu5jUVaHRHseg==
X-CSE-MsgGUID: oLXb7NMwSWeHoNVouRgttg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26416932"
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="26416932"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 21:43:45 -0700
X-CSE-ConnectionGUID: b295Ug0hSNKJyI2vRjsN1Q==
X-CSE-MsgGUID: vebDsX1dRsaqCp/r77Qvsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="76463039"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 26 Sep 2024 21:43:43 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v12 0/3] Vrr refactoring and panel replay workaround
Date: Fri, 27 Sep 2024 09:55:06 +0530
Message-Id: <20240927042509.4081753-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Previous patch series link -
https://patchwork.freedesktop.org/series/135629/
https://patchwork.freedesktop.org/series/135851/

Animesh Manna (3):
  drm/i915/vrr: Split vrr-compute-config in two phases
  drm/i915/panelreplay: Panel replay workaround with VRR
  drm/i915/display: Introduve intel_vrr_possible

 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 22 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 4 files changed, 43 insertions(+), 5 deletions(-)

-- 
2.29.0

