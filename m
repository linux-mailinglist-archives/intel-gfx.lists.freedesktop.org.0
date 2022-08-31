Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 651495A7F22
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 15:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B08A10E3BF;
	Wed, 31 Aug 2022 13:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86DC10E3BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661953438; x=1693489438;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=usMiIc9sIsfWex1hwMngDMgRuU7UU4Nvr7EHZX+zZno=;
 b=Hkk/Oba9CLNgG7BRAmDbsbE2+K3DpOQCyd+hS9edPQYGxbQavLLd8R2K
 HLxfzBAMEjGiHbVxin3Xdo8APsuad1Sm3RXYnfyM+7+HgmSRwR9VlRQQ3
 Vv8Sdkdxt6FgzKo8DvBANVDerW0TWVnRzmmkyds5frTsVfQ8/tAEnvj9n
 3Znkx7S3uN8ykSd9asS41/i7QixhX2MW1JABaWNJzI+D/KioCVS3RZza2
 02z2di6l75QcU1uahGHlDao+nSfvF0TfuhgseasTP4ppPo8Qi2Wcgs2iR
 IDQdgj9PrxJaTbA0DoD3J+9+T7w0fSdrlx/5u3IkqZAWDTH3xbdoh7ouT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359406441"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="359406441"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 06:43:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="715696967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 31 Aug 2022 06:43:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Aug 2022 16:43:54 +0300
Date: Wed, 31 Aug 2022 16:43:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "20220801151616.12644-1-shawn.c.lee@intel.com"
 <20220801151616.12644-1-shawn.c.lee@intel.com>
Message-ID: <Yw9lmnNLHBFztbMv@intel.com>
References: <20220801151616.12644-1-shawn.c.lee@intel.com>
 <Yw9VEmw6sq0Bh/fE@intel.com>
 <BYAPR11MB2710024A8ACCD5C8F92A3E90A3789@BYAPR11MB2710.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <BYAPR11MB2710024A8ACCD5C8F92A3E90A3789@BYAPR11MB2710.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: clear plane color control
 register when turn plane off
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 31, 2022 at 01:27:24PM +0000, Lee, Shawn C wrote:
> On Wed, August 31, 2022 8:33 PM, Ville Syrjälä wrote:
> >On Mon, Aug 01, 2022 at 11:16:16PM +0800, Lee Shawn C wrote:
> >> Customer report abnormal display output while switch eDP off sometimes.
> >> In current display disable flow, plane will be off at first. Then turn 
> >> eDP off and disable HW pipe line. We found the abnormal pixel comes 
> >> after turn plane off. Clear plane color ctl register when driver 
> >> disable plane can solve this symptom.
> >> 
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
> >>  1 file changed, 3 insertions(+)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c 
> >> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> index caa03324a733..90977cfb7ebb 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> >> @@ -620,6 +620,8 @@ skl_plane_disable_arm(struct intel_plane *plane,
> >>  
> >>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> >>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> >> +	if (DISPLAY_VER(dev_priv) >= 10)
> >> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
> >>  }
> >>  
> >>  static void
> >> @@ -638,6 +640,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
> >>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
> >>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> >>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> >> +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
> >
> >This makes no sense. The register value shouldn't even get latched since you wrote the arming register (PLANE_SURF) before this one.
> >
> >What platform is the problematic machine?
> >
> 
> ADL-P

PSR related?

Do you have commit 031a2fea0482 ("drm/i915/psr: Disable PSR before disable pipe")?

-- 
Ville Syrjälä
Intel
