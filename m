Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C813B69EAE3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748FF10E7D6;
	Tue, 21 Feb 2023 23:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FD710E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020589; x=1708556589;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KRe07055VvL2zcijFyPk2QkM7R2KGn/D1SPBOVbFrbU=;
 b=bIW/mp+t/l3loe2w261TbxOc8m8lTanENjCoVbko/RZ/hSo6xJgIS/2q
 rmnymKXTnFQzzF4ynudmjv5HWx7jRORue7vD71yEhp1QiVyliE0Qe0nnY
 6R88WXlLqf1jG7vXQYyF+WDzrMAIPmX0V97JPx7yKMDOS2nnrsXze+sg3
 1AGiKHu8VcNVD38Bf32KfGJQ4LLTYO5quU9E3pQsv0ar9sYqu9OsSQvvl
 zBmaqQaN0bEcCehbKEUS2O8tAZOmGm9e13xfVsceYeJTXr2jRhMfLSPgQ
 Q5KmBmPe3txLoQTVcOKWEGYVX13TOuKoBJ+VUr3EtZZ1JtfDy6ue3+h1i A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501801"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501801"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690159"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690159"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:02:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:16 +0200
Message-Id: <20230221230227.6244-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/22] drm/i915: Remove bogus DDI-F from
 hsw/bdw output init
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

HSW/BDW don't have DDI-F so don't go looking for one.

Seems to have been accidentally left behind when the
skl+ stuff got split out in commit 097d9e902068
("drm/i915/display: remove strap checks from gen 9").

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fbdf32bd21..f497a02a50ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7907,10 +7907,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (found & SFUSE_STRAP_DDIC_DETECTED)
 			intel_ddi_init(dev_priv, PORT_C);
 		if (found & SFUSE_STRAP_DDID_DETECTED)
 			intel_ddi_init(dev_priv, PORT_D);
-		if (found & SFUSE_STRAP_DDIF_DETECTED)
-			intel_ddi_init(dev_priv, PORT_F);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
 		/*
-- 
2.39.2

