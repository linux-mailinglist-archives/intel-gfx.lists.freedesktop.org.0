Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E4A1475C8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 01:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4626E181;
	Fri, 24 Jan 2020 00:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBE526E181
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 00:55:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 16:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; d="scan'208";a="228186526"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2020 16:55:33 -0800
Date: Thu, 23 Jan 2020 16:56:35 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <20200124005634.GA3367@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
 <20191115152549.23047-8-animesh.manna@intel.com>
 <20191118075354.GH1135@intel.com>
 <20191211235019.GB19224@intel.com>
 <de3a0a1b-345c-d3b0-3001-cea529addf0e@intel.com>
 <20200114213831.GC27746@intel.com>
 <6950c960-2857-a95c-88ee-6fb1b6e303d0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6950c960-2857-a95c-88ee-6fb1b6e303d0@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/dp: Program vswing, pre-emphasis,
 test-pattern
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

On Mon, Jan 20, 2020 at 07:23:57PM +0530, Manna, Animesh wrote:
> On 15-01-2020 03:08, Manasi Navare wrote:
> >On Fri, Dec 13, 2019 at 10:54:20PM +0530, Animesh Manna wrote:
> >>Hi Manasi/Jani,
> >>
> >>Thanks for helping phy compliance design.
> >>
> >>Added my understanding/doubts below.
> >>
> >>
> >>On 12/12/2019 5:20 AM, Manasi Navare wrote:
> >>>Hi Animesh/Jani,
> >>>
> >>>Is this the right way to force a full modeset by adding new dev_priv->dp_phy_comp?
> >>In modeset path we disable active crtc first then initiate the modeset
> >>sequence which is causing trouble in updating phy compliance parameters in
> >>modeset path.
> >>As per phy compliance spec test-scope can request to change the following
> >>parameters,
> >>- Test pattern
> >>- V-swing:
> >>- Pre-emphasis:
> >>- Link rate:
> >>- Lane count:
> >>
> >>For test-pattern/v-swing/pre-emphasis, active link may not need to cut.
> >>Tried the same in the following patch series where I am skipping
> >>atomic-check, atomic-commit and write these parameters in atomic-commit-tail
> >>without touching anything else. Can you please share your thought how to
> >>handle it properly. Maybe once we are clear about what we should do in
> >>atomic_check/atomic_commit/atomic_commit_tail we can move dp_phy_comp flag
> >>to some atomic-state object.
> >>https://patchwork.freedesktop.org/series/70300/
> >So from what we had finalized on the call, was that the intel_dp_process_phy_request() would be
> >called in ddi_pre_enable_dp in case of dP PHY request for which you would need
> >to update needs_modeset() and set it to true if PHY compliance request.
> >That looked like a correct approach to me and AFAIR was agreed by Jani and Uma as well.
> >And that was decided so that this gets plugged into out atomic infrastructure.
> 
> Agree.
> 
> >
> >Are you now suggesting that with that approach or the code in this patch, PHY compliance
> >tests for changing test-pattern/vswing/pre - emphasis are not working?
> 
> PHY compliance request is not a real modeset. As we are touching multiple
> thing in atomic_commit_tail() so the link will be broken broken.
> 
> >Why did you want to change the design to skip atomic check and atomic commit?
> 
> For changing test-pattern/v-swing/pre-emphasis, want to avoid touching anything which may broke existing configured dp-link.
> In atomic-check first am checking for dp_phy_comp flag. if set, no need to check anything else and return success.
> Eventually land into atomic_commit and later commit-tail. In atomic-commit-tail check for dp_phy_comp flag. If set,
> just process the phy request, not by encoder-hooks as do not want to touch any pll-code/power-well etc ..
> This looks to me skipping everything what we do in atomic-check/atomic-commit.
> 
> >If we skip the atomic check and atomic commit and directly write these parameters in atomic commit tail
> >then we are essentially doing - 1. Get Short pulse, read DPCD, write the test parameters and not going
> >through atomic KMS ever.
> >And we will need to have another meeting to see if this will be accepted without going through atomic.
> >This might work if the PHY compliance does not expect any other crtc_state parameter change no
> >change in link rate/lane count or PLLs.
> >
> >This brings us to our next discussion, where we need to confirm from PHY compliance Chrome team:
> >1. Does PHY Compliance test request require link training for requested link rate/lane count (There should be a box in
> >Software capabilities in DPR 100 they are using that will give this info) Clint here confimed that it does say
> >link training required
> >2. If link training required box checked, Chrome team needs to confirm if a link layer compliance request
> >is sent prior to every PHY request (from dmesg logs or DPR 100 logs)
> >3. If link layer comp request is set, then that should handle changing link rate and setting PLLs
> >4. In this case then we in PHY compliance do not needs to go through atomic check and commit we can
> >skip that and directly write the test patter/.vswing/pre-emaphasis and rather just call
> >the intel_dp_process_phy_request() directly on test req short pulse processing like your original design.
> 
> Agree, please let me know if can go ahead with previous design.

I think that will depend on the answer we get from Chrome team as to does the PHy complianec request
need to change the PLLs according to the requested link rate/lane count that we read or
does that happen as part of link compliance link train request and PHY request does not need
to touch the PLLs at all.

I think Khaled from Chrome team also sent some responses, could you follow up with him on this?

Manasi

> 
> >
> >Animesh, please work on getting these clarifications from Chrome team and we can close
> >on these opens.
> >Meanwhile I am trying to get the DPR 100 and test equipment and do the testing myself here to
> >understand the flow.
> 
> Thanks Manasi.
> 
> Regards,
> Animesh
> 
> >
> >Manasi
> >
> >
> >>For Link-rate/lane-count, we need to do link-training/modeset. As per my
> >>observation the request is coming as link-compliance request, still waiting
> >>feedback from compliance team to confirm. So not handled as part
> >>dp-phy-compliance implementation.
> >Yes we need to push the Chrome OS team to get clarification on this:
> >- Does PHY compliance req always send a link compliance request before requesting link rate/lane count change?
> >
> >Once we get this clarification we will
> >>>Also its still not clear to me how this will work without actualling using the phy link rate
> >>>and lane count stored in the phy test pattern params to compute the pipe config?
> >>>Currently those only get used directly to set the link bw.
> >>If link-compliance request is not used for link-rate/lane-count change then
> >>your point is valid. As mentioned above getting link-compliance request
> >>which is confusing and waiting confirmation from compliance team.
> >>
> >>>This can work if the phy comp runs after link layer comp but on standalone phy comp testing
> >>>this could be a problem.
> >>>
> >>>Also I dont see my comment addressed where I had asked to move the below to patch 3:
> >>>>>+   /* Set test active flag here so userspace doesn't interrupt things */
> >>>>>+   intel_dp->compliance.test_active = 1;
> >>>>>+   dev_priv->dp_phy_comp = true;
> >>>>>+
> >>Thinking of creating a separate patch for sending uevent and setting
> >>test_active flag true for intel_dp_compliance tool.
> >>The patch 3/7 will take the preparation part and acknowledge the test
> >>request. Hope it will be fine.
> >>
> >>Regards,
> >>Animesh
> >>
> >>>Manasi
> >>>
> >>>
> >>>On Sun, Nov 17, 2019 at 11:53:54PM -0800, Manasi Navare wrote:
> >>>>On Fri, Nov 15, 2019 at 08:55:49PM +0530, Animesh Manna wrote:
> >>>>>This patch process phy compliance request by programming requested
> >>>>>vswing, pre-emphasis and test pattern.
> >>>>Again here a slightly detailed description of where in the atomic modeset
> >>>>do we process the PHY com request would be good.
> >>>>
> >>>>The design overall looks good now, few comments below:
> >>>>
> >>>>>Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >>>>>---
> >>>>>  drivers/gpu/drm/i915/display/intel_ddi.c     | 14 ++++
> >>>>>  drivers/gpu/drm/i915/display/intel_display.c |  5 ++
> >>>>>  drivers/gpu/drm/i915/display/intel_dp.c      | 77 ++++++++++++++++++++
> >>>>>  drivers/gpu/drm/i915/display/intel_dp.h      |  2 +
> >>>>>  drivers/gpu/drm/i915/i915_drv.h              |  2 +
> >>>>>  5 files changed, 100 insertions(+)
> >>>>>
> >>>>>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >>>>>index 8f817de34460..c12d4ebbd352 100644
> >>>>>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >>>>>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >>>>>@@ -3700,8 +3700,17 @@ static void intel_ddi_pre_enable(struct intel_encoder *encoder,
> >>>>>  {
> >>>>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >>>>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >>>>>+	struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
> >>>>>  	enum pipe pipe = crtc->pipe;
> >>>>>+	if (encoder->type == INTEL_OUTPUT_DP) {
> >>>>>+		if (dig_port->dp.compliance.test_type ==
> >>>>>+		    DP_TEST_LINK_PHY_TEST_PATTERN) {
> >>>>>+			intel_dp_process_phy_request(&dig_port->dp);
> >>>>>+			return;
> >>>>>+		}
> >>>>>+	}
> >>>>>+
> >>>>>  	/*
> >>>>>  	 * When called from DP MST code:
> >>>>>  	 * - conn_state will be NULL
> >>>>>@@ -4147,6 +4156,11 @@ intel_ddi_pre_pll_enable(struct intel_encoder *encoder,
> >>>>>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> >>>>>  	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
> >>>>>+	if (encoder->type == INTEL_OUTPUT_DP)
> >>>>>+		if (dig_port->dp.compliance.test_type ==
> >>>>>+		    DP_TEST_LINK_PHY_TEST_PATTERN)
> >>>>>+			return;
> >>>>>+
> >>>>>  	if (is_tc_port)
> >>>>>  		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
> >>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>index adf50c4b38ad..4ad11df55f07 100644
> >>>>>--- a/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>@@ -545,6 +545,11 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
> >>>>>  static bool
> >>>>>  needs_modeset(const struct intel_crtc_state *state)
> >>>>>  {
> >>>>>+	struct drm_i915_private *dev_priv = to_i915(state->uapi.crtc->dev);
> >>>>>+
> >>>>>+	if (dev_priv->dp_phy_comp)
> >>>>>+		return true;
> >>>>Could you double check with Jani N if this is an acceptable solution to
> >>>>foce a full modeset for a PHY compliance test?
> >>>>
> >>>>>+
> >>>>>  	return drm_atomic_crtc_needs_modeset(&state->uapi);
> >>>>>  }
> >>>>>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >>>>>index df31278a1619..2c3d4b6c6036 100644
> >>>>>--- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>>>>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>>>>@@ -5010,14 +5010,91 @@ static inline void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
> >>>>>  	}
> >>>>>  }
> >>>>>+static void
> >>>>>+intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp)
> >>>>>+{
> >>>>>+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
> >>>>>+	struct drm_device *dev = intel_dig_port->base.base.dev;
> >>>>>+	struct drm_i915_private *dev_priv = to_i915(dev);
> >>>>>+	enum port port = intel_dig_port->base.port;
> >>>>>+	u32 ddi_buf_ctl_value, dp_tp_ctl_value, trans_ddi_func_ctl_value;
> >>>>>+
> >>>>>+	ddi_buf_ctl_value = I915_READ(DDI_BUF_CTL(port));
> >>>>>+	dp_tp_ctl_value = I915_READ(TGL_DP_TP_CTL(port));
> >>>>>+	trans_ddi_func_ctl_value = I915_READ(TRANS_DDI_FUNC_CTL(port));
> >>>>>+
> >>>>>+	ddi_buf_ctl_value        &= ~(DDI_BUF_CTL_ENABLE | DDI_PORT_WIDTH_MASK);
> >>>>>+	dp_tp_ctl_value          &= ~DP_TP_CTL_ENABLE;
> >>>>>+	trans_ddi_func_ctl_value &= ~(TRANS_DDI_FUNC_ENABLE |
> >>>>>+				      DDI_PORT_WIDTH_MASK);
> >>>>>+
> >>>>>+	I915_WRITE(DDI_BUF_CTL(port), ddi_buf_ctl_value);
> >>>>>+	I915_WRITE(TGL_DP_TP_CTL(port), dp_tp_ctl_value);
> >>>>>+	I915_WRITE(TRANS_DDI_FUNC_CTL(port), trans_ddi_func_ctl_value);
> >>>>>+}
> >>>>>+
> >>>>>+static void
> >>>>>+intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp, uint8_t lane_cnt)
> >>>>>+{
> >>>>>+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
> >>>>>+	struct drm_device *dev = intel_dig_port->base.base.dev;
> >>>>>+	struct drm_i915_private *dev_priv = to_i915(dev);
> >>>>>+	enum port port = intel_dig_port->base.port;
> >>>>>+	u32 ddi_buf_ctl_value, dp_tp_ctl_value, trans_ddi_func_ctl_value;
> >>>>>+
> >>>>>+	ddi_buf_ctl_value = I915_READ(DDI_BUF_CTL(port));
> >>>>>+	dp_tp_ctl_value = I915_READ(TGL_DP_TP_CTL(port));
> >>>>>+	trans_ddi_func_ctl_value = I915_READ(TRANS_DDI_FUNC_CTL(port));
> >>>>>+
> >>>>>+	ddi_buf_ctl_value        |= DDI_BUF_CTL_ENABLE |
> >>>>>+				    DDI_PORT_WIDTH(lane_cnt);
> >>>>>+	dp_tp_ctl_value          |= DP_TP_CTL_ENABLE;
> >>>>>+	trans_ddi_func_ctl_value |= TRANS_DDI_FUNC_ENABLE |
> >>>>>+				    DDI_PORT_WIDTH(lane_cnt);
> >>>>>+
> >>>>>+	I915_WRITE(TRANS_DDI_FUNC_CTL(port), trans_ddi_func_ctl_value);
> >>>>>+	I915_WRITE(TGL_DP_TP_CTL(port), dp_tp_ctl_value);
> >>>>>+	I915_WRITE(DDI_BUF_CTL(port), ddi_buf_ctl_value);
> >>>>>+}
> >>>>>+
> >>>>>+void intel_dp_process_phy_request(struct intel_dp *intel_dp)
> >>>>>+{
> >>>>>+	struct drm_dp_phy_test_params *data =
> >>>>>+		&intel_dp->compliance.test_data.phytest;
> >>>>>+	u8 link_status[DP_LINK_STATUS_SIZE];
> >>>>>+
> >>>>>+	if (!intel_dp_get_link_status(intel_dp, link_status)) {
> >>>>>+		DRM_DEBUG_KMS("failed to get link status\n");
> >>>>>+		return;
> >>>>>+	}
> >>>>>+
> >>>>>+	/* retrieve vswing & pre-emphasis setting */
> >>>>>+	intel_get_adjust_train(intel_dp, link_status);
> >>>>>+
> >>>>>+	intel_dp_autotest_phy_ddi_disable(intel_dp);
> >>>>>+
> >>>>>+	intel_dp_set_signal_levels(intel_dp);
> >>>>>+
> >>>>>+	intel_dp_phy_pattern_update(intel_dp);
> >>>>>+
> >>>>>+	intel_dp_autotest_phy_ddi_enable(intel_dp, data->num_lanes);
> >>>>>+
> >>>>>+	drm_dp_set_phy_test_pattern(&intel_dp->aux, data);
> >>>>>+}
> >>>>>+
> >>>>>  static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
> >>>>>  {
> >>>>>  	u8 test_result = DP_TEST_NAK;
> >>>>>+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >>>>>  	test_result = intel_dp_prepare_phytest(intel_dp);
> >>>>>  	if (test_result != DP_TEST_ACK)
> >>>>>  		DRM_ERROR("Phy test preparation failed\n");
> >>>>>+	/* Set test active flag here so userspace doesn't interrupt things */
> >>>>>+	intel_dp->compliance.test_active = 1;
> >>>>>+	dev_priv->dp_phy_comp = true;
> >>>>>+
> >>>>This should be moved to the patch 3 I think where you handle  phy test request and
> >>>>call prepare function. The same patch that handles test req can set the test active to 1.
> >>>>
> >>>>>  	return test_result;
> >>>>>  }
> >>>>>diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> >>>>>index 0d0cb692f701..b1274ecffc7f 100644
> >>>>>--- a/drivers/gpu/drm/i915/display/intel_dp.h
> >>>>>+++ b/drivers/gpu/drm/i915/display/intel_dp.h
> >>>>>@@ -120,6 +120,8 @@ void intel_dp_hdr_metadata_enable(struct intel_dp *intel_dp,
> >>>>>  				  const struct intel_crtc_state *crtc_state,
> >>>>>  				  const struct drm_connector_state *conn_state);
> >>>>>  bool intel_digital_port_connected(struct intel_encoder *encoder);
> >>>>>+void intel_dp_process_phy_request(struct intel_dp *intel_dp);
> >>>>>+
> >>>>>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
> >>>>>  {
> >>>>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> >>>>>index 1779f600fcfb..232e0dfb9d8e 100644
> >>>>>--- a/drivers/gpu/drm/i915/i915_drv.h
> >>>>>+++ b/drivers/gpu/drm/i915/i915_drv.h
> >>>>>@@ -1285,6 +1285,8 @@ struct drm_i915_private {
> >>>>>  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
> >>>>>+	bool dp_phy_comp;
> >>>>Not sure if this is the best way to handle the full mdoeset, could you double
> >>>>check with Jani?
> >>>>
> >>>>Other than that I think now the placement in pre_enable_dp is good.
> >>>>
> >>>>The only other concern I have is changing link rate and lane count only happens
> >>>>in set_phy_patterns where we write the test link rate and lane count
> >>>>directly to the link bw set. But the driver's compute config is still configuring
> >>>>the pipe and plls based on the link rate and lane count that could be
> >>>>different than the test link rate/count. This might work now since you said
> >>>>the link layer test is already configuring it at test params but in general
> >>>>shouldnt we be using the phy->link rate and lane count if in phy compliance
> >>>>also in compute_config()?
> >>>>
> >>>>Jani, any thoughts here?
> >>>>
> >>>>Regards
> >>>>Manasi
> >>>>
> >>>>>+
> >>>>>  	/*
> >>>>>  	 * NOTE: This is the dri1/ums dungeon, don't add stuff here. Your patch
> >>>>>  	 * will be rejected. Instead look for a better place.
> >>>>>-- 
> >>>>>2.22.0
> >>>>>
> >>>>_______________________________________________
> >>>>Intel-gfx mailing list
> >>>>Intel-gfx@lists.freedesktop.org
> >>>>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
