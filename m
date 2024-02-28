Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1919386B2F8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 16:22:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99AED10E3AF;
	Wed, 28 Feb 2024 15:22:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwF2z7i/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B0010E3BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 15:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709133738; x=1740669738;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FCfjuCjX+6FtIZW+oeI2fdA/SQvJfpY1BZRRUsuVybk=;
 b=kwF2z7i/R0I0v4wC32xFalvW5/RnuBLet2w2FT2HdG07y9D76AaDhPyA
 eNvhtRssG9jDeKBiiBW5o3Umn4Ec63tFM8oJP9Jxo5tlVFSnR//dhoNnT
 TJ0UHiTQoOaWIBEHMWyFesor0Q5PE3Xkb0ERPxxAFnyblHoV85cgST59F
 svt+FYCoVcu58pHTCFYPRAzD1Qbf27HjGjfcMqjPfvMu1Lzii2ssT+jMP
 V+2JKlvcxuXhwkqbi3fHh4h28QhCYY44zYsBcaCGO7nhfr/R/F06qdiPJ
 +bOtJnLkHFN1X4OPlNmiC/zkJUpCUxa1adj6bJXa1JMOjp8bhOdDpxHV6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="4110432"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="4110432"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 07:22:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="8031018"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by orviesa008.jf.intel.com with ESMTP; 28 Feb 2024 07:22:16 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com,
	Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 0/1] Enable MST bigjoiner
Date: Wed, 28 Feb 2024 20:34:35 +0530
Message-Id: <20240228150436.6957-1-vidya.srinivas@intel.com>
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

 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

-- 
2.33.0

