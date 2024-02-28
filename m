Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DF786B2B4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 16:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B28010E23D;
	Wed, 28 Feb 2024 15:07:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIT1S7Mv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4274410E3AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 15:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709132852; x=1740668852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FCfjuCjX+6FtIZW+oeI2fdA/SQvJfpY1BZRRUsuVybk=;
 b=LIT1S7MvNjLpOz0SfC8x6MH6ujdFBnGXbRJTJVn6E1DCsbosuxNb3oay
 JcxSu8HVxG8ofv4KTrd5Yc4D+ACid3Z75GY76vGH453FWsp0VtENWoPg+
 ZAsOIJr1WX0Mu/A2n3vdSBdoVO3Mm0tB0GniDenSZmubsWE/CUbuCgf17
 n2aF+nlNSJFzrJrOnLHqK+1BJvivoJah2zwbN2OBegy4CtNE8P9Rc6QqR
 zz8TYMLSJqj5IVVK5tX4nATIPltOd6o9N7OpXVHcZk9ynyLH45Jy1IW7q
 v52Gv5Urn64VdddKlAALreav+sv0NXYde0WIdTQUNDw2ZBNSYB85QEBf9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14954591"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="14954591"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 07:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="12123542"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by orviesa004.jf.intel.com with ESMTP; 28 Feb 2024 07:07:30 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com,
	Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 0/1] Enable MST bigjoiner
Date: Wed, 28 Feb 2024 20:19:53 +0530
Message-Id: <20240228144954.6797-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20240227181849.22614-1-vidya.srinivas@intel.com>
References: <20240227181849.22614-1-vidya.srinivas@intel.com>
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

