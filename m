Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E26B9720413
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:13:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6223E10E699;
	Fri,  2 Jun 2023 14:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0247810E699
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715223; x=1717251223;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6FlVzKx6wAT7k2ndM/75W+FO62fSVNbGqTf/6mip8UQ=;
 b=V1jK3DHHgdvXw/uN1s/NA8L29BoB65x6mG9ji5cg/tWJGab1jWRmlbcV
 LzyNa8j3w/I+foH5tA78gwbQb+997jsBlSQvvhHHUKM90j8pn/qAlwLRa
 7j2SJQlTGAUHZX/dCZ9OlV6UlkdLxMrTETcRohhUJ4pZVYNJKx0af4YvD
 3zF9I6yW344s3MfE5O/ea0Auj+xGjTLoBU43vYf7MtsWp7/eWiuNatIx/
 z5KNlRUKjg+rB9i07L7MK6UHbHq2qiJUtFMi7Ct7yL1fi2ZlbUyqNxNn5
 9kFympXt8hKJFVMvNn/m/gGr70srKNrNGsjHEH0/GB+lO8p42zzfOcaKc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="359177460"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="359177460"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:13:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="658289743"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="658289743"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:13:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230531134806.23065-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-4-ville.syrjala@linux.intel.com>
Date: Fri, 02 Jun 2023 17:13:37 +0300
Message-ID: <87pm6edka6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915: Assert that device info
 bitmasks have enough bits
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

On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Sprinkle in some BUILD_BUG_ON()s to make sure some of
> the bitmasks used in the device info have enough bits.
>
> Do we have a better place for this sort of stuff?

*grin* intel_display_device_info_runtime_init()

https://patchwork.freedesktop.org/patch/msgid/20230601212535.675751-1-matth=
ew.d.roper@intel.com

It'll conflict, again. :/

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index f79142983f28..8a35005c46c0 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -419,6 +419,10 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>  		DISPLAY_RUNTIME_INFO(dev_priv);
>  	enum pipe pipe;
>=20=20
> +	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->pipe_mask) < I915_MAX_PIPES=
);
> +	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915=
_MAX_TRANSCODERS);
> +	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS=
);
> +
>  	/* Wa_14011765242: adl-s A0,A1 */
>  	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
>  		for_each_pipe(dev_priv, pipe)

--=20
Jani Nikula, Intel Open Source Graphics Center
