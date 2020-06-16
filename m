Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514991FBFF1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 22:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A119B6E92E;
	Tue, 16 Jun 2020 20:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D106E92E
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 20:22:38 +0000 (UTC)
IronPort-SDR: 8oZ7InWGwoqdzfArEGqUcYvTfqq46q1eM9CwT05z3v3ISGV37ETWYrWDDHBFrXqjhQYr46vaD+
 W4g+pvxKpbIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 13:22:36 -0700
IronPort-SDR: oR6R8tXyicNhd7iQZHehMSJcaLM6GH4pEjjodcuXyrS543MI0aWqz5PBxiJoHwEekMgbTVXWXz
 8AZ9zjCBOu8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="262332268"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 16 Jun 2020 13:22:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 23:22:32 +0300
Date: Tue, 16 Jun 2020 23:22:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200616202232.GL6112@intel.com>
References: <20200616193056.4817-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616193056.4817-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Poll for DDI Idle status to be
 0 after enabling DDI Buf
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

On Tue, Jun 16, 2020 at 12:30:56PM -0700, Manasi Navare wrote:
> The Bspec sequence expects us to poll for DDI Idle status
> to be 0 (not idle) with a timeout of 600usecs after enabling the
> DDI BUF CTL. But currently in the driver we just wait for 600usecs
> without polling so add that.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index ca7bb2294d2b..de7e15de0bc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4023,7 +4023,11 @@ static void intel_ddi_prepare_link_retrain(struct =
intel_dp *intel_dp)
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  =

> -	udelay(600);
> +	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
> +			  DDI_BUF_IS_IDLE),
> +			600))
> +		drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
> +			port_name(port));

Another thing I just noticed is that icl+ need this for HDMI as well.
The slightly odd thing is that glk is documented to need this for
DP but not HDMI. But I'm thinking doing it also for glk HDMI should
be fine.

So I guess to line up with the spec we should:
- fixed >518us enable delay for pre-glk (not sure if polling
  would be ok for hsw/bdw/skl)
- poll for enable on glk+
- fixed 16us disable delay for bxt
- poll for disable on !bxt

And do it for both DP and HDMI for consistency.


>  }
>  =

>  static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
