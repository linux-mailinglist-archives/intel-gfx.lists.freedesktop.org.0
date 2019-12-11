Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8218311C0B2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 00:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25066EC14;
	Wed, 11 Dec 2019 23:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCE56EC14
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 23:42:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 15:42:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="296422222"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 11 Dec 2019 15:42:56 -0800
Date: Wed, 11 Dec 2019 15:44:16 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191211234416.GA19224@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
 <20191115152549.23047-7-animesh.manna@intel.com>
 <20191118064147.GF1135@intel.com>
 <274e6b9a-7a6d-7ea6-3acb-76628f744866@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <274e6b9a-7a6d-7ea6-3acb-76628f744866@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 6/7] drm/i915/dp: Update the pattern as per
 request
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Animesh,

I dont see the patch revision with these fixes, have you sent it to the M-L?

Manasi

On Tue, Nov 19, 2019 at 12:17:03AM +0530, Animesh Manna wrote:
> 
> 
> On 11/18/2019 12:11 PM, Manasi Navare wrote:
> >On Fri, Nov 15, 2019 at 08:55:48PM +0530, Animesh Manna wrote:
> >>set pattern in DP_COMP_CTL.
> >It would be nice to have some brief description here on
> >context of setting a PHY pattern for PHY compliance and that
> >this will be called during pre enable in atomic commit in case
> >of phy compliance request etc..and that the requested phy pattern
> >is read during test handling etc..
> >something that gives a reader a better idea of the context of
> >this function
> >
> >>Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >>---
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 55 +++++++++++++++++++++++++
> >>  1 file changed, 55 insertions(+)
> >>
> >>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >>index a2b860cf3b93..df31278a1619 100644
> >>--- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>@@ -4955,6 +4955,61 @@ static u8 intel_dp_prepare_phytest(struct intel_dp *intel_dp)
> >>  	return DP_TEST_ACK;
> >>  }
> >>+static inline void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
> >>+{
> >>+	struct drm_i915_private *dev_priv =
> >>+			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
> >>+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
> >>+	struct drm_dp_phy_test_params *data =
> >>+			&intel_dp->compliance.test_data.phytest;
> >>+	u32 temp;
> >>+
> >>+	switch (data->phy_pattern) {
> >>+	case DP_PHY_TEST_PATTERN_NONE:
> >>+		DRM_DEBUG_KMS("Disable Phy Test Pattern\n");
> >>+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port), 0x0);
> >>+		break;
> >>+	case DP_PHY_TEST_PATTERN_D10_2:
> >>+		DRM_DEBUG_KMS("Set D10.2 Phy Test Pattern\n");
> >>+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
> >>+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
> >>+		break;
> >>+	case DP_PHY_TEST_PATTERN_ERROR_COUNT:
> >>+		DRM_DEBUG_KMS("Set Error Count Phy Test Pattern\n");
> >>+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
> >>+			   DDI_DP_COMP_CTL_ENABLE |
> >>+			   DDI_DP_COMP_CTL_SCRAMBLED_0);
> >>+		break;
> >>+	case DP_PHY_TEST_PATTERN_PRBS7:
> >>+		DRM_DEBUG_KMS("Set PRBS7 Phy Test Pattern\n");
> >>+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
> >>+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
> >>+		break;
> >>+	case DP_PHY_TEST_PATTERN_80BIT_CUSTOM:
> >>+		DRM_DEBUG_KMS("Set 80Bit Custom Phy Test Pattern\n");
> >>+		temp = ((data->custom80[0] << 24) | (data->custom80[1] << 16) |
> >>+			(data->custom80[2] << 8) | (data->custom80[3]));
> >>+		I915_WRITE(DDI_DP_COMP_PAT(intel_dig_port->base.port, 0), temp);
> >>+		temp = ((data->custom80[4] << 24) | (data->custom80[5] << 16) |
> >>+			(data->custom80[6] << 8) | (data->custom80[7]));
> >>+		I915_WRITE(DDI_DP_COMP_PAT(intel_dig_port->base.port, 1), temp);
> >>+		temp = ((data->custom80[8] << 8) | data->custom80[9]);
> >>+		I915_WRITE(DDI_DP_COMP_PAT(intel_dig_port->base.port, 2), temp);
> >>+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
> >>+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_CUSTOM80);
> >>+		break;
> >>+	case DP_PHY_TEST_PATTERN_CP2520:
> >>+		DRM_DEBUG_KMS("Set HBR2 compliance Phy Test Pattern\n");
> >>+		temp = ((data->hbr2_reset[1] << 8) | data->hbr2_reset[0]);
> >>+		I915_WRITE(DDI_DP_COMP_CTL(intel_dig_port->base.port),
> >>+			   DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
> >>+			   temp);
> >>+		break;
> >>+	default:
> >>+		DRM_ERROR("Invalid Phy Test PAttern\n");
> >Here we would definitely want a WARN since ERROR at this point in commit is not good
> >Other than looks good to me.
> 
> Thanks, will add the suggested changes.
> 
> Regards,
> Animesh
> >
> >Manasi
> >
> >>+	}
> >>+}
> >>+
> >>  static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
> >>  {
> >>  	u8 test_result = DP_TEST_NAK;
> >>-- 
> >>2.22.0
> >>
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
