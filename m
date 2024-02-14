Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C14854F22
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 17:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB9B10E48B;
	Wed, 14 Feb 2024 16:52:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYLRaC+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4AF10E402
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 16:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707929540; x=1739465540;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=n3P4Gro7XHCUFD6bYiMwN04jMjgK2JNMpNpa/Z57WOA=;
 b=KYLRaC+Gge4dOXRUlx64kRlWXQhqdhUDriclUBn19/QCACexy6nBu0pv
 Abpymplr2r48hhEyI9Gl3eHaz69/C4kAF2btHnnuPnSd0b9imgzGqJ3nS
 pnCtWboTVX+yJFIFqKOhoVHNDRoBKVDrKCb3osgB2eLgxOjdrsGsuq5oH
 Qx3/qrwhk5F6XDBhs+6H7/xTh0YU1jwCoq1VpmCKpl6VXSflGsPIX22PP
 b7c9Wasji5fNPWwZ69cP/YssGsGc/0n+5bYOFnRK1ys2Rk4iuY5fR8tyW
 o7CfnXMjQJ7VYgx/3/us+9Jpz2KocOR1qgrCUC8Uyk6EKxd6Bx+MSH1H4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2365483"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="2365483"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 08:52:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826369637"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="826369637"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 14 Feb 2024 08:52:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Feb 2024 18:52:14 +0200
Date: Wed, 14 Feb 2024 18:52:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>,
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Message-ID: <ZczvvjUHa5rNrWBh@intel.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com>
 <871q9g8cac.fsf@intel.com>
 <IA0PR11MB7307A5B0207F5C72F5D5DCC4BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87le7n70ht.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87le7n70ht.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Feb 14, 2024 at 01:23:42PM +0200, Jani Nikula wrote:
> On Wed, 14 Feb 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Tuesday, February 13, 2024 11:41 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>;
> >> Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> >> <arun.r.murthy@intel.com>
> >> Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
> >>
> >> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >> > Fallback mandates on DP link training failure. This patch just covers
> >> > the DP2.0 fallback sequence.
> >> >
> >> > TODO: Need to implement the DP1.4 fallback.
> >> >
> >> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 92
> >> > ++++++++++++++++++++++---
> >> >  1 file changed, 82 insertions(+), 10 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 10ec231acd98..82d354a6b0cd 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
> >> >   */
> >> >  static const u8 valid_dsc_slicecount[] = {1, 2, 4};
> >> >
> >> > +/* DL Link Rates */
> >> > +#define UHBR20             2000000
> >> > +#define UHBR13P5   1350000
> >> > +#define UHBR10             1000000
> >> > +#define HBR3               810000
> >> > +#define HBR2               540000
> >> > +#define HBR                270000
> >> > +#define RBR                162000
> >> > +
> >> > +/* DP Lane Count */
> >> > +#define LANE_COUNT_4       4
> >> > +#define LANE_COUNT_2       2
> >> > +#define LANE_COUNT_1       1
> >> > +
> >> > +/* DP2.0 fallback values */
> >> > +struct dp_fallback {
> >> > +   u32 link_rate;
> >> > +   u8 lane_count;
> >> > +};
> >> > +
> >> > +struct dp_fallback dp2dot0_fallback[] = {
> >> > +   {UHBR20, LANE_COUNT_4},
> >> > +   {UHBR13P5, LANE_COUNT_4},
> >> > +   {UHBR20, LANE_COUNT_2},
> >> > +   {UHBR10, LANE_COUNT_4},
> >> > +   {UHBR13P5, LANE_COUNT_2},
> >> > +   {HBR3, LANE_COUNT_4},
> >> > +   {UHBR20, LANE_COUNT_1},
> >> > +   {UHBR10, LANE_COUNT_2},
> >> > +   {HBR2, LANE_COUNT_4},
> >> > +   {UHBR13P5, LANE_COUNT_1},
> >> > +   {HBR3, LANE_COUNT_2},
> >> > +   {UHBR10, LANE_COUNT_1},
> >> > +   {HBR2, LANE_COUNT_2},
> >> > +   {HBR, LANE_COUNT_4},
> >> > +   {HBR3, LANE_COUNT_1},
> >> > +   {RBR, LANE_COUNT_4},
> >> > +   {HBR2, LANE_COUNT_1},
> >> > +   {HBR, LANE_COUNT_2},
> >> > +   {RBR, LANE_COUNT_2},
> >> > +   {HBR, LANE_COUNT_1},
> >> > +   {RBR, LANE_COUNT_1},
> >> > +};
> >> > +
> >> >  /**
> >> >   * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or
> >> PCH)
> >> >   * @intel_dp: DP struct
> >> > @@ -299,6 +343,19 @@ static int intel_dp_common_len_rate_limit(const
> >> struct intel_dp *intel_dp,
> >> >                                    intel_dp->num_common_rates, max_rate);
> >> }
> >> >
> >> > +static bool intel_dp_link_rate_supported(struct intel_dp *intel_dp,
> >> > +u32 link_rate) {
> >> > +   u8 i;
> >> > +
> >> > +   for (i = 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
> >> > +           if (intel_dp->common_rates[i] == link_rate)
> >> > +                   return true;
> >> > +           else
> >> > +                   continue;
> >> > +   }
> >> > +   return false;
> >> > +}
> >> > +
> >> >  static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> >> > {
> >> >     if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> >> > @@ -671,15 +728,6 @@ int intel_dp_get_link_train_fallback_values(struct
> >> intel_dp *intel_dp,
> >> >     struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >> >     int index;
> >> >
> >> > -   /*
> >> > -    * TODO: Enable fallback on MST links once MST link compute can
> >> handle
> >> > -    * the fallback params.
> >> > -    */
> >> > -   if (intel_dp->is_mst) {
> >> > -           drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >> > -           return -1;
> >> > -   }
> >> > -
> >>
> >> By removing this, the claim is both 8b/10b and 128b/132b DP MST link training
> >> fallbacks work...
> > Yes! This series focuses on the fallback mandates mentioned in DP2.1 spec and doesn't fallback from MST to SST or vicecersa.
> > Hence if it is MST the fallback will be within MST and if its SST the fallback will be within SST.
> >
> >>
> >> >     if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> >> >             drm_dbg_kms(&i915->drm,
> >> >                         "Retrying Link training for eDP with max
> >> parameters\n"); @@
> >> > -687,6 +735,31 @@ int intel_dp_get_link_train_fallback_values(struct
> >> intel_dp *intel_dp,
> >> >             return 0;
> >> >     }
> >> >
> >> > +   /* DP fallback values */
> >> > +   if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> >> > +DP_CAP_ANSI_128B132B) {
> >>
> >> ...but this only addresses 128b/132b, and the 8b/10b MST drops to the existing
> >> SST fallback path.
> > Yes! As said above this fallback is based on fallback mandates mentioned in DP2.1 spec in Table 3.31 and Figure 3-52 which focuses on reducing the link rate/lance count and nothing to with MST/SST
> >
> >>
> >> And with the current code, DP_CAP_ANSI_128B132B does not decide whether
> >> we use DP MST or not. So this will also cover 8b/10b fallback for displays that
> >> support 128b/132b but have DP_MSTM_CAP == 0.
> >
> > Yes, the series doent depend on MST and SST and doest fallback from MST to SST or viceversa.
> 
> What I'm saying is, this changes the way 8b/10b link training fallback
> is handled.
> 
> First, it starts handling 8b/10b MST link training fallback.
> 
> Second, it changes the way 8b/10b *and* 128b/132b *and* SST *and* MST
> link training fallback is handled for all displays that support
> 128b/132b channel coding.
> 
> That's *wildly* too much in one patch.
> 
> It also duplicates the existing code in the same function, with a
> different mechanism. We don't want to have two different ways to do
> this, and of all things based on sink's 128b/132b cap. Just one.
> 
> >
> >>
> >> > +           for(index = 0; index < ARRAY_SIZE(dp2dot0_fallback); index++)
> >> {
> >> > +                   if (link_rate == dp2dot0_fallback[index].link_rate &&
> >> > +                           lane_count ==
> >> dp2dot0_fallback[index].lane_count) {
> >> > +                           for(index += 1; index <
> >> ARRAY_SIZE(dp2dot0_fallback); index++) {
> >>
> >> I honestly do not understand the double looping here, and how index is
> >> managed.
> > The first loop is to find the present link rate and lane count in the fallback table. Once we find this, we will have to traverse from that index below to get the next fallback link rate and lane count. The second loop is now to traverse from this index to see the supported link rate and lane count.
> > For ex: if the link rate is 10Gbps and lane count is 4. First loop is to find this in the fallback table, index would be 3. Then next loop is to traverse from this index 3 to find the fallback values. This would essentially be UHBR13P5 lane count 2. But MTL doesn' support this. Hence will have to move index by 1 to get UHBR10 lane count 2. This second loop will be used for this purpose.
> 
> Needs abstractions i.e. more functions instead of trying to make it all
> happen in one loop.
> 
> >
> >>
> >> > +                                   if
> >> (intel_dp_link_rate_supported(intel_dp,
> >> > +
> >>       dp2dot0_fallback[index].link_rate)) {
> >> > +
> >>       intel_dp_set_link_params(intel_dp,
> >> > +
> >> dp2dot0_fallback[index].link_rate,
> >> > +
> >> dp2dot0_fallback[index].lane_count);
> >>
> >> intel_dp_set_link_params() is supposed to be called in the DP encoder (pre-
> >> )enable paths to set the link rates. If you do it here, the subsequent enable will
> >> just overwrite whatever you did here.
> > This is taken care of so as to not override and retain this fallback value.
> 
> I don't understand.
> 
> >
> >>
> >> The mechanism in this function should be to to adjust intel_dp->max_link_rate
> >> and intel_dp->max_link_lane_count, and then the caller will send an uevent to
> >> have the userspace do everything again, but with reduced max values.
> >>
> > If falling back within UHBR rate, so with a mode that supports the new fallback link rate then we don't essentially have to send uevent to user and new modeset may not be required.
> > For Ex: the link rate is 20Gbps with mode 6k, Link training fails. So with the new fallback linkrate falling within UHBR need not do a modeset. Only if the fallback link rate falls to HBR rate for which 6k is not supported, only then uevent will be sent to user.
> 
> For SST paths we'll always choose the optimal link parameters, and the
> mode will not fit if we have to reduce the parameters. And as I just
> explained, your changes impact SST paths as well.
> 
> For MST we'll start with max parameters, so yeah there's a possibility
> we could reduce the link parameters without having to reduce the
> mode. However, I'm inclined to always go through userspace here, using
> the same tested paths for link training failures. This will also give
> userspace some form of transparency into what is going on, and why an
> additional MST stream might not fit when it should.

Sudden loss of link -> try a blind retrain:

   This is rather sketchy as we don't go through the full modeset
   sequence. Probably should replace this by either just always
   punting to userspace, or by just doing a proper atomic commit with
   the current parameters from a work. I'm not sure all userspace/fb-helper
   handle everything correctly so might still want to keep this in kernel...

If link training fails then reduce link parms and punt to userspace:

   This could in theory also try a blind modeset in kernel first and
   if that fails then punt to userspace. Again the concern might be
   that not all userspace is perhaps very good, but I might be wrong
   about that.

Anyways all of that is kinda orthogonal stuff to just getting MST
to reduce its link rate. For that I think we should just need:
 a) remove the MST check from the fallback stuff
 b) handle all the MST connectors on the same link in the retry work

-- 
Ville Syrjälä
Intel
