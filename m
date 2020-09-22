Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AEE2742B8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A48489A4A;
	Tue, 22 Sep 2020 13:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E461289A4A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 13:13:28 +0000 (UTC)
IronPort-SDR: yO0r2NZiBxq/wD0lxz+Szh/cjJ+I5GvjU2hiNIHztvAWMOEljebS03D6gp69M/PObYoYvy+LqJ
 qcTcCiMQVYVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="222192102"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="222192102"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 06:13:26 -0700
IronPort-SDR: 4HQZMKjbSn6cH2x9ThLQ3BrvphkHc7Jdsau6hHyl0Zj4HU7SJanZ+QWxequJ15MQ8YwmaGjGj+
 FWPBhPVhXGMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309491697"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 22 Sep 2020 06:13:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Sep 2020 16:13:23 +0300
Date: Tue, 22 Sep 2020 16:13:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200922131323.GQ6112@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
 <20200922125106.30540-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922125106.30540-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Fix DP link training pattern
 mask
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 03:51:00PM +0300, Imre Deak wrote:
> An LTTPR can be trained with training pattern 4 even if the DPCD
> revision is < 1.4, but drm_dp_training_pattern_mask() would change
> pattern 4 to pattern 3 on those DPCD revisions.
> =

> Since intel_dp_training_pattern() makes already sure that the proper
> training pattern is used, all that needs to be masked out is the
> scrambling disable flag, which is or'd to the mask later based on the
> training pattern.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c              |  3 +--
>  drivers/gpu/drm/i915/display/intel_dp.c               | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c |  2 +-
>  3 files changed, 7 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4d06178cd76c..946a3b6f2d10 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4158,13 +4158,12 @@ static void intel_ddi_set_link_train(struct intel=
_dp *intel_dp,
>  				     u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	u8 train_pat_mask =3D drm_dp_training_pattern_mask(intel_dp->dpcd);
>  	u32 temp;
>  =

>  	temp =3D intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
>  =

>  	temp &=3D ~DP_TP_CTL_LINK_TRAIN_MASK;
> -	switch (dp_train_pat & train_pat_mask) {
> +	switch (dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) {

Maybe introduce a helper to do the masking for us?

Anyways
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	case DP_TRAINING_PATTERN_DISABLE:
>  		temp |=3D DP_TP_CTL_LINK_TRAIN_NORMAL;
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index bf1e9cf1c0f3..2a4a9c0e7427 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3778,7 +3778,7 @@ cpt_set_link_train(struct intel_dp *intel_dp,
>  =

>  	*DP &=3D ~DP_LINK_TRAIN_MASK_CPT;
>  =

> -	switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
> +	switch (dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) {
>  	case DP_TRAINING_PATTERN_DISABLE:
>  		*DP |=3D DP_LINK_TRAIN_OFF_CPT;
>  		break;
> @@ -3808,7 +3808,7 @@ g4x_set_link_train(struct intel_dp *intel_dp,
>  =

>  	*DP &=3D ~DP_LINK_TRAIN_MASK;
>  =

> -	switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
> +	switch (dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) {
>  	case DP_TRAINING_PATTERN_DISABLE:
>  		*DP |=3D DP_LINK_TRAIN_OFF;
>  		break;
> @@ -4498,12 +4498,12 @@ intel_dp_program_link_training_pattern(struct int=
el_dp *intel_dp,
>  				       u8 dp_train_pat)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	u8 train_pat_mask =3D drm_dp_training_pattern_mask(intel_dp->dpcd);
>  =

> -	if (dp_train_pat & train_pat_mask)
> +	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) !=3D
> +	    DP_TRAINING_PATTERN_DISABLE)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Using DP training pattern TPS%d\n",
> -			    dp_train_pat & train_pat_mask);
> +			    dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE);
>  =

>  	intel_dp->set_link_train(intel_dp, dp_train_pat);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index f2c8b56be9ea..f8b53c5b5777 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -96,7 +96,7 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  	intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);
>  =

>  	buf[0] =3D dp_train_pat;
> -	if ((dp_train_pat & DP_TRAINING_PATTERN_MASK) =3D=3D
> +	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) =3D=3D
>  	    DP_TRAINING_PATTERN_DISABLE) {
>  		/* don't write DP_TRAINING_LANEx_SET on disable */
>  		len =3D 1;
> -- =

> 2.17.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
