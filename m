Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E6D5AEB5D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 16:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610E310E699;
	Tue,  6 Sep 2022 14:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1384710E68E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 14:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662473700; x=1694009700;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2ohA0FmkUUp4H2fuEk6f+IKgDrGA14Lnz/G90lnqagM=;
 b=MZI51iMuTvv8Cbb8wsTSNRE1VbT+UqBRzcWPvkNGi6RuLs8+MLBVyMiv
 zz41QxkQGNFq13Kv/O+cBY4srHMPYz2dJGNx0IOYGnoH309rHcgAAVImR
 ypkeLzC0oA3R9QqkswLMQ/VScnlkYJD2rIquRanUE5bG+BYNcFEzVUluK
 MddtimAF/t6MscVsQjjsF/GoUZEEcHghoN4+ot/eIsf80cOk+Qj7Oq0TQ
 QrEANfYrZS5bWxkfvnHuNPJ7mVU+pQkKnCSr9HQaamcQYHP5b5chknVON
 +2RQH9j+bWoxHlZj+pL1S6hvQ6A8TsrpKdEeTEgTK9P6+o5y1EmQpko1u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="296605031"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="296605031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 07:14:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="644185088"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 06 Sep 2022 07:14:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Sep 2022 17:14:56 +0300
Date: Tue, 6 Sep 2022 17:14:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YxdV4Pz1x5V1kGBw@intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
 <YxXh+gGqGGahJc08@intel.com>
 <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
 <YxY1mznljBVkDHCw@intel.com>
 <2501aa82-dac0-6cdf-db97-c43893106027@intel.com>
 <YxctfpfZ48ySBaCc@intel.com>
 <ef46e439-2de1-db0b-2672-b17af00a15b3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef46e439-2de1-db0b-2672-b17af00a15b3@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not reset PLANE_SURF on plane
 disable on older gens
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 03:57:37PM +0200, Andrzej Hajda wrote:
> 
> 
> On 06.09.2022 13:22, Ville Syrjälä wrote:
> > On Tue, Sep 06, 2022 at 01:09:16PM +0200, Andrzej Hajda wrote:
> >>
> >> On 05.09.2022 19:44, Ville Syrjälä wrote:
> >>> On Mon, Sep 05, 2022 at 07:02:40PM +0200, Andrzej Hajda wrote:
> >>>> On 05.09.2022 13:48, Ville Syrjälä wrote:
> >>>>> On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
> >>>>>> In case of ICL and older generations disabling plane and/or disabling
> >>>>>> async update is always performed on vblank,
> >>>>> It should only be broken on bdw-glk (see. need_async_flip_disable_wa).
> >>>> On CFL it is reported every drmtip run:
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?testfilter=tiled-max-hw
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html#dmesg-warnings402
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html#dmesg-warnings402
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1208/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> >>>> ...
> >>>> On APL it is less frequent, probably due to other bugs preventing run of
> >>>> this test, last seen at:
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1190/fi-apl-guc/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> >>>> Similar for SKL:
> >>>> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1181/fi-skl-guc/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> >>>>
> >>>> I am not sure if I correctly read the docs but [1] says that 9th bit of
> >>>> PLANE_CFG (Async Address Update Enable) is "not double buffered and the
> >>>> changes will apply immediately" only for ICL, JSL, LKF1.
> >>> It got broken in bdw and fixed again in icl.
> >>>
> >>>> So the change is not necessary in case of icl_plane_disable_arm.
> >>>>
> >>>> [1]: https://gfxspecs.intel.com/Predator/Home/Index/7656
> >>>>>> but if async update is enabled
> >>>>>> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
> >>>>>> when plane is still enabled can cause DMAR/PIPE errors.
> >>>>>> On the other side PLANE_SURF is used to arm plane registers - we need to
> >>>>>> write to it to trigger update on VBLANK, writting current value should
> >>>>>> be safe - the buffer address is valid till vblank.
> >>>>> I think you're effectively saying that somehow the async
> >>>>> flip disable w/a is not kicking in sometimes.
> >>>> I was not aware of existence of this w/a and I am little lost in
> >>>> figuring out how this w/a can prevent zeroing PLANE_SURF too early.
> >>> When it works as designed it should:
> >>> 1. turn off the async flip bit
> >>> 2. wait for vblank so that gets latched
> >>> 3. do the sync plane update/disable normally
> >> After debugging this terra incognita, I've figured out that plane states
> >> are not populated in intel_crtc_async_flip_disable_wa
> >> so for_each_old_intel_plane_in_state does not iterate over affected
> >> planes and w/a does not work at all.
> >> I have no idea where affected plane states should be added.
> >> Adding them to the beginning of intel_atomic_check helped, but this is
> >> just blind shot:
> >>
> >> @@ -6778,10 +6778,14 @@ static int intel_atomic_check(struct drm_device
> >> *dev,
> >>                new_crtc_state->uapi.mode_changed = true;
> >>
> >>            if (new_crtc_state->uapi.scaling_filter !=
> >>                old_crtc_state->uapi.scaling_filter)
> >>                new_crtc_state->uapi.mode_changed = true;
> >> +
> >> +        ret = intel_atomic_add_affected_planes(state, crtc);
> >> +        if (ret)
> >> +            goto fail;
> >>        }
> >>
> >>        intel_vrr_check_modeset(state);
> >>
> >>        ret = drm_atomic_helper_check_modeset(dev, &state->base);
> >                ^
> > This guy should be adding them for any crtc that has been flagged
> > for modeset ahead of time. For modesets flagged later we have to
> > add them by hand (eg. in intel_modeset_all_pipes()).
> 
> This is no-modeset scenario, drm_atomic_helper_check_modeset does not 
> add planes in this case.

Then he mystery is how intel_crtc_async_flip_disable_wa() manages
to not disable async flip for some planes...

-- 
Ville Syrjälä
Intel
