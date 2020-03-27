Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB0E195A51
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 16:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9134689FA7;
	Fri, 27 Mar 2020 15:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B4689FA7
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 15:52:56 +0000 (UTC)
IronPort-SDR: CxQzHvFsMdn4ugE/LJpYeC5ylQdCxC2p2RF+TxqMGFZa2cTEgSmzLNEO9FQIDR4AxLbY4TN6Z8
 DMD776TID+Mg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 08:52:55 -0700
IronPort-SDR: vR/S3VN7Jjc9tS7xEji06v7cFa0L8Nzpncb/8zuRP4TtO+HgK4UTJu9YqaL4kuJxm/DJwRpunp
 VhKaeM/HRLKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="251180231"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Mar 2020 08:52:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Mar 2020 17:52:53 +0200
Date: Fri, 27 Mar 2020 17:52:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200327155253.GH13686@intel.com>
References: <20200324153212.6303-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324153212.6303-1-kai.vehmanen@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use forced codec wake on all
 gen9+ platforms
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

On Tue, Mar 24, 2020 at 05:32:12PM +0200, Kai Vehmanen wrote:
> Commit 632f3ab95fe2 ("drm/i915/audio: add codec wakeup override
> enabled/disable callback"), added logic to toggle Codec Wake on gen9.
> This is used by audio driver when it resets the HDA controller.
> =

> It seems explicit toggling of the wakeline can help to fix problems
> with probe failing on some gen12 platforms. And based on specs, there
> is no reason why this programming sequence should not be applied to all
> gen9+ platforms. No side-effects are seen on gen10/11. So apply
> the wake-logic to all gen9+ platforms.
> =

> Link: https://github.com/thesofproject/linux/issues/1847
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Pushed to dinq. Thanks.

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 62f234f641de..950160f1a89f 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -931,7 +931,7 @@ static void i915_audio_component_codec_wake_override(=
struct device *kdev,
>  	unsigned long cookie;
>  	u32 tmp;
>  =

> -	if (!IS_GEN(dev_priv, 9))
> +	if (INTEL_GEN(dev_priv) < 9)
>  		return;
>  =

>  	cookie =3D i915_audio_component_get_power(kdev);
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
