Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA6A8747A1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 06:31:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE7E10F242;
	Thu,  7 Mar 2024 05:31:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nw5RqqMd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C30910F242
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 05:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709789494; x=1741325494;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CyrxuUoGBU/xa6h/iBO1tABjHz+5N9jADspjdZNdTic=;
 b=Nw5RqqMd5S1mJU0wXefv0lfKgtTFcsvaFojkEZeIG3mea3b/ImMcrcwr
 ZpcElJP210f1GCaWSIqnPZWTcAQLDNcomkqoJiPRKtI5qVLuPcNLO9LDS
 KfFGbPViT5P+CiVJlSUFbJo3AI5M0HeRkVukOLnr0JUEPHh6/4fGQvRSt
 hy32zW6aBcuhwFNyWFbMdiX4jEnB5hnubRKI62uUvD6QnisrMJkmbwKuo
 Id+3JsrMhNPw2iE4N7vmzO3kZ/ceWxaLCPA1SP+DPPqLIRWByagmjnYoy
 AKnsFkDgaDAdfrQU9Dn2UoWJpOWBN7GCiMxDRC10gkhklmnsepVMlBxOp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4611183"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="4611183"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 21:31:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="14555237"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by fmviesa003.fm.intel.com with ESMTP; 06 Mar 2024 21:31:31 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com, navaremanasi@chromium.org,
 stanislav.lisovskiy@intel.com, uma.shankar@intel.com,
 shawn.c.lee@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 0/1] Enable MST bigjoiner
Date: Thu,  7 Mar 2024 10:43:42 +0530
Message-Id: <20240307051343.26155-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
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

Support resolutions > 5k on MST monitors that need bigjoiner
by adding MST bigjoiner functionality

Vidya Srinivas (1):
  drm/i915: Allow bigjoiner for MST

 drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 2 files changed, 13 insertions(+), 10 deletions(-)

-- 
2.33.0

