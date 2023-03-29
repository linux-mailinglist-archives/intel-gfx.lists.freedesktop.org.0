Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 549B16CF2B3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 21:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1958B10EC05;
	Wed, 29 Mar 2023 19:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D882F10EBA8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680116693; x=1711652693;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4Px1uuci+pX4gBhCfrYGPfVv0fQkXgXJG++6aep3qRQ=;
 b=mrE3duj77G9lrd21qYpqNFCvq+EGe090Ig9zc6PV9QTUJK3NRfVdaXo6
 XlDO1mgCDEjEXaL6SDUjWNijNwsnVsWrz2MygbxjsOalNAPso3lVQt/6I
 rLQueaLuR6Pi6+F84cGXYdyPdkIP1a5Yx9b1kEhsCDdPKF257Hl1qc7IN
 jtHL20wnc/f5eV3ThtN1XaN2Pp2AqH4IwYtJlCXHUwUXt/22pN8jIPJHB
 CjaYY6Zgc3ODZW4rTJ22TNUO5vGN3eqomNMQ0/7gFslS+SVLJxM8O1v1f
 EKBMcaoXKzixVWoDF2ONCkdklGh1BEJMEGDvUG+/kwkWHTF3FyAYain/M w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="340995515"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="340995515"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 12:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="828005878"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="828005878"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2023 12:04:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 22:04:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 22:04:45 +0300
Message-Id: <20230329190445.13456-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329190445.13456-1-ville.syrjala@linux.intel.com>
References: <20230329190445.13456-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Define cursor chicken reg
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define CUR_CHICKEN so we don't have to remember the offset.
Looks like it's getting introduced in mtl.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 275ec891468c..f6a6f3b6c603 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3989,6 +3989,7 @@
 #define   CUR_FBC_EN			REG_BIT(31)
 #define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
 #define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
+#define _CUR_CHICKEN_A		0x700a4 /* mtl+ */
 #define _CURASURFLIVE		0x700ac /* g4x+ */
 #define _CURBCNTR		0x700c0
 #define _CURBBASE		0x700c4
@@ -4003,6 +4004,7 @@
 #define CURPOS(pipe) _MMIO_CURSOR2(pipe, _CURAPOS)
 #define CURSIZE(pipe) _MMIO_CURSOR2(pipe, _CURASIZE)
 #define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(pipe, _CUR_FBC_CTL_A)
+#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(pipe, _CUR_CHICKEN_A)
 #define CURSURFLIVE(pipe) _MMIO_CURSOR2(pipe, _CURASURFLIVE)
 
 #define CURSOR_A_OFFSET 0x70080
-- 
2.39.2

