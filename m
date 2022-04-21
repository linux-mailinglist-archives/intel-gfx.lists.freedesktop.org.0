Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F275509EB3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 13:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F1810EB24;
	Thu, 21 Apr 2022 11:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD11110EA92;
 Thu, 21 Apr 2022 11:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650541042; x=1682077042;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JiaQJu2b93LmGiZxk4M0rgVskgXq00oLWSnXX+NeXAE=;
 b=cGJuAxYD1bHuIAONX8JWaP+gPCBYUKqJ3MEdfx9gkzsqNaeLSDBvxZO1
 DQTOhlvBiJziATlBZ9Ri0nHkKjc1MmxrJT6dsS+9z0QHkOT5u6emFXKcu
 Gq0/bt2HGOWK4JxGoFjlpji68umki1smWusHGMzS2HolySS7AlGtrG8qU
 N41rRveGtBPqioQFby9l8cPe+ppt5ixU5LpVyP64+X9Uoyx+/MSw+dsfl
 WYTUamvFf3T5SDDatEXnD7T12TmOisf44V+YdiO7E2BB2SPCgMoqOC9B8
 Cup05QC/kuHZTPvokR2VVf2B3/C/eqKYUBSGktUBScbn83+ZgrvzCeMyH A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="324766812"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="324766812"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 04:37:19 -0700
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="727952072"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 04:37:17 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Thu, 21 Apr 2022 17:08:09 +0530
Message-Id: <20220421113813.30796-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Flat-CCS eviction enhancements
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Flat-CCS eviction enhancements.

Ramalingam C (4):
  drm/i915/gt: GEM_BUG_ON unexpected NULL at scatterlist walking
  drm/i915/gt: optimize the ccs_sz calculation per chunk
  drm/i915/gt: Extend doc on Flat-CCS obj eviction
  uapi/drm/i915: Update the placement list impact on obj residency

 drivers/gpu/drm/i915/gt/intel_migrate.c | 78 ++++++++++++++-----------
 include/uapi/drm/i915_drm.h             | 14 +++++
 2 files changed, 59 insertions(+), 33 deletions(-)

-- 
2.20.1

