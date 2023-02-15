Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 568F7697CF0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 14:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DF510E116;
	Wed, 15 Feb 2023 13:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C8610E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676466947; x=1708002947;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=r3HUJ0riBAYWWfz3Y4Q5sd6nRGA9X5LdKWBv0bMRCy8=;
 b=BzIgyDRjDRGP9w5ILVFANRVWnCbVNGQHkZALiS8uPw5Uo/GeTl9GMvem
 zcDp7OgtCXTiBgKWYyPE3z1eal9KAffa2JVXenfqFoRkLXL27Xqf0y/X+
 3MsW/T85U+c5KRIQMdMBPYuP0MZcM/ZAjgDkq4HOQnemFBE1cHT2FuGan
 2UoCwl3EoM9lQhwi+tvp3pp42nm2QYdGqHTB2n88s2OkofprmJu9aqfo4
 HXtXzezlwEcNtZFtJ/0qzetlEvHvg768JzdcNRRgwcPq7hdU6oshjlzNu
 W+1KLMbrP3enUvP1gobvVv4r4bgszx9O5Qd6u2K6535fzQWZL8QMekZsw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="396047342"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="396047342"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 05:15:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="671632972"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="671632972"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 05:15:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 15:15:41 +0200
Message-ID: <87o7pvqdc2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce ELD hex dumps a bit
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

On Wed, 15 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Do the ELD hexdumps only up to the last differing byte.
> The rest is typically all zeroes anyway so not much point
> in dumping it.

Arguably part of the reason for big dumps is that we use MAX_ELD_BYTES
for the size instead of drm_eld_size(). Granted, using drm_eld_size()
brings other complications, so maybe this is better anyway.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3479125fbda6..d73aea9040e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5348,6 +5348,23 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_pr=
ivate *dev_priv,
>  	}
>  }
>=20=20
> +/*
> + * Like a revese memcmp(), but returns the
> + * position of the last differing byte.
> + */
> +static int
> +memcmp_pos_reverse(const u8 *a, const u8 *b, size_t len)
> +{
> +	int i;
> +
> +	for (i =3D len - 1; i >=3D 0; i--) {
> +		if (a[i] !=3D b[i])
> +			return i;
> +	}
> +
> +	return len;
> +}

Maybe make the function return "length of differing prefix" instead?

If the buffers are identical, you now return len, and the caller dumps
len + 1, overflowing the buffer. This shouldn't happen, because we've
checked before that the buffers do differ, but it's a trap for anyone
who just picks this up for some other use case.

The fix is simple, return "i + 1" if there's a difference, return 0 at
the end if there's not, and drop the + 1 from the caller side.

Renaming the function is the hard part. ;)


BR,
Jani.


> +
>  static void
>  pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
>  			    bool fastset, const char *name,
> @@ -5357,6 +5374,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private=
 *dev_priv,
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>=20=20
> +		/* only dump up to the last difference */
> +		len =3D memcmp_pos_reverse(a, b, len) + 1;
> +
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "fastset mismatch in %s buffer\n", name);
>  		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
> @@ -5364,6 +5384,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private=
 *dev_priv,
>  		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
>  			       16, 0, b, len, false);
>  	} else {
> +		/* only dump up to the last difference */
> +		len =3D memcmp_pos_reverse(a, b, len) + 1;
> +
>  		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
>  		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
>  			       16, 0, a, len, false);

--=20
Jani Nikula, Intel Open Source Graphics Center
