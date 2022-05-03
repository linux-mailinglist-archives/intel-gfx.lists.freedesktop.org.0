Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A86518C41
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F43210EAA2;
	Tue,  3 May 2022 18:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA03310E90C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602234; x=1683138234;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gjpKm+4DgF2C14hQbW7C/R8So84Kyu8k1wrP7iSxJMM=;
 b=YwI45h7VAXaAh2gjDKSyL6q8fe8w2TqltIBSvefCGZkM5orQof3YaLsz
 NxWypHvXaHWo8as8cDacNQZ1IKR8R3LNGsLet+MShpR1SqVSmbmgjA957
 6Tq5+RxdXbjVohBSASFfRYv/sKE8Qi9vrvZzCB74yXzRJ4Uz+I5J+7Lc1
 r/YcguaRlL7FIHvKFazAP2e+uPpYRIj9MnhNVIfsJgPSR4WqC+ZB+vuJr
 8UVLhdmj5nDKCLswM2WzPj/Bz3O9uSEZmQs4OTtGL07IlDuukKbIb/YD5
 DTfUfdMP9CcumpcIIYcXhSb6y+fVH1IIFQclD7mrVtDh21JtiRGve/ivU Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="265143440"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="265143440"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="653372872"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 03 May 2022 11:23:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:39 +0300
Message-Id: <20220503182242.18797-24-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/26] drm/i915: Require an exact DP link freq
 match for the DG2 PLL
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

No idea why the DG2 PLL DP link frequency calculation is allowing
a non-exact match. That makes no sense so get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 0dd4775e8195..877f9a4bd7a5 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -597,7 +597,7 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock <= tables[i]->clock) {
+		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->mpllb_state = *tables[i];
 			return 0;
 		}
-- 
2.35.1

