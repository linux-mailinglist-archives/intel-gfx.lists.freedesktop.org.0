Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A12576F63
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DD510F74C;
	Sat, 16 Jul 2022 14:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F0010E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916488; x=1689452488;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hWSCqZHQ3w7AsMEk2Wq06SHmPBHp4x4FsCIMP7Pwwo8=;
 b=R03NNfiK6kya+ROhd3ewEazSYEVT6QMxhU+k39dq++qE39h0UnDIY6Oc
 h1K4/QkgEGnuC4Vsbxf89jox5VeFMSUmDZrxs0l2Sza2HoknQ/cWKpmj6
 8qSk7emPthloU1v6SRak/P/ScPRkbFxv1K2613ef0U0JzeBd+kX5eFOCT
 ll1nX2jZqweUilLquCsjOpm4wDy3EUre5qnQArvDvIL0ClG2tWEI3xCDh
 HIY6dIrN99APU09TpWIYXlJXfEd6P5wSWhhC3ivZT1MB1toeHAxYp9ZlP
 V/KD0FHkJCJezGHOhZjG6EbBiShIrOYyAQ+t+aCKQavXbCtYGrTcwoGSC Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="287033020"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="287033020"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="596591168"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga002.jf.intel.com with SMTP; 15 Jul 2022 13:21:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:43 +0300
Message-Id: <20220715202044.11153-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: WARN if a port should use VBT
 provided vswing tables
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

We don't parse the VBT vswing/preemphassis tables at all currently.
Let's WARN if a port wants to use them so we get a heads up that
whether we really need to implement this stuff or not. My
current stash contains no VBTs with this bit set.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 51dde5bfd956..cd86b65055ef 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2661,6 +2661,10 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 		return;
 	}
 
+	drm_WARN(&i915->drm, child->use_vbt_vswing,
+		 "Port %c asks to use VBT vswing/preemph tables\n",
+		 port_name(port));
+
 	if (i915->vbt.ports[port]) {
 		drm_dbg_kms(&i915->drm,
 			    "More than one child device for port %c in VBT, using the first.\n",
-- 
2.35.1

