Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3656C3F67
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 02:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A3E10E012;
	Wed, 22 Mar 2023 01:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8D610E012
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 01:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679446919; x=1710982919;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9gDQXYaZk8vXMWwlhgeYbFs7Fb50t5M4pSpp0/RiNX8=;
 b=NBt6SQbDXfToOZ5HTxuBiT6sUjx+o1bQrfVANOrnRMKoNV7/Vrr9Rlji
 55YMLUz1eOFhUZaR/f5Y+0BOt2Jp84fQ2O6L1tMXhARU4v2xnoBLwUiL8
 VyG/oY6y1AVVPiRaVXy9MS3RVouheKKzJ8eBicwAz434zzfRDAZcY9xKf
 BalHaB4pbsvEyvvpKEhybZuvdJ8Oya/9FMht4T+nJSQyl9gxGo9qFZJ8+
 vQ55ZawoEGcaa9vZrHSMvrjYF9ei+gSq/kThXXqiGRNIO5oSFfV58Y/so
 Qx42sNqvn0We89B1rApYFgGzyabf7qXo66CbsTjYPNVNx2Cum8PU6li4o g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="341452064"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="341452064"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 18:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="712043935"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="712043935"
Received: from sahalama-mobl1.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.221.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 18:01:52 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 03:01:36 +0200
Message-Id: <20230322010138.663264-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/2] Correction to QGV related register
 addresses
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrong offsets are calculated to read QGV points from mem ss. Also
a wrong register address is used to get the dagv block time. Fix
these two issues.

Vinod Govindapillai (2):
  drm/i915/reg: fix QGV points register access offsets
  drm/i915/reg: use the correct register to access SAGV block time

 drivers/gpu/drm/i915/i915_reg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.34.1

