Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C0697E28
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B617110E135;
	Wed, 15 Feb 2023 14:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5090B10EADC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470646; x=1708006646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wcfmSDtZIvuWNNN2lCyr+sEinOzs79LLdmfJOH6+qp4=;
 b=EqwKjuLFTJhOoD22T4V0NWvD6ibQcnzUoq9i2O9SuArOUyywe3/3Y1Ak
 jRvAylF83H1wr2iuiGqhkXrZqkkJLJ0hH4H6L49C8QQ+VgcI5sNpHbxO8
 3zaZIPGpsCh9i110/b56SlKszXAGmfBafZEiRgv3qJqE0to22015DlpwL
 ffGDFWqsF2I2bw1m8s6/UC0iDBAjyDbu4FQGhuDdMJ5fUJ85d/RSyEkS6
 wLfWvZ8PsebY/pBHI+1BH1sR5APQedj3UYWbgsSBolnwojwbEL+2ErXDH
 2XetSeUH/3xw6ENes9suGkNajoOpS1fZiXUOwDMv+WNSBaiumuIkcBvVD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="315090199"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="315090199"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:17:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="619442507"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="619442507"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:17:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+zb1qPuC+sF2eBX@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
 <87o7pvqdc2.fsf@intel.com> <Y+zb1qPuC+sF2eBX@intel.com>
Date: Wed, 15 Feb 2023 16:17:21 +0200
Message-ID: <87fsb7qaha.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 15, 2023 at 03:15:41PM +0200, Jani Nikula wrote:
>> On Wed, 15 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Do the ELD hexdumps only up to the last differing byte.
>> > The rest is typically all zeroes anyway so not much point
>> > in dumping it.
>>=20
>> Arguably part of the reason for big dumps is that we use MAX_ELD_BYTES
>> for the size instead of drm_eld_size(). Granted, using drm_eld_size()
>> brings other complications, so maybe this is better anyway.
>>=20
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
>> >  1 file changed, 23 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index 3479125fbda6..d73aea9040e0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -5348,6 +5348,23 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915=
_private *dev_priv,
>> >  	}
>> >  }
>> >=20=20
>> > +/*
>> > + * Like a revese memcmp(), but returns the
>> > + * position of the last differing byte.
>> > + */
>> > +static int
>> > +memcmp_pos_reverse(const u8 *a, const u8 *b, size_t len)
>> > +{
>> > +	int i;
>> > +
>> > +	for (i =3D len - 1; i >=3D 0; i--) {
>> > +		if (a[i] !=3D b[i])
>> > +			return i;
>> > +	}
>> > +
>> > +	return len;
>> > +}
>>=20
>> Maybe make the function return "length of differing prefix" instead?
>>=20
>> If the buffers are identical, you now return len, and the caller dumps
>> len + 1, overflowing the buffer. This shouldn't happen, because we've
>> checked before that the buffers do differ, but it's a trap for anyone
>> who just picks this up for some other use case.
>>=20
>> The fix is simple, return "i + 1" if there's a difference, return 0 at
>> the end if there's not, and drop the + 1 from the caller side.
>>=20
>> Renaming the function is the hard part. ;)
>
> memcmp_len_reverse()?

memcmp_diff_len()?

>
>>=20
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> > +
>> >  static void
>> >  pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
>> >  			    bool fastset, const char *name,
>> > @@ -5357,6 +5374,9 @@ pipe_config_buffer_mismatch(struct drm_i915_priv=
ate *dev_priv,
>> >  		if (!drm_debug_enabled(DRM_UT_KMS))
>> >  			return;
>> >=20=20
>> > +		/* only dump up to the last difference */
>> > +		len =3D memcmp_pos_reverse(a, b, len) + 1;
>> > +
>> >  		drm_dbg_kms(&dev_priv->drm,
>> >  			    "fastset mismatch in %s buffer\n", name);
>> >  		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
>> > @@ -5364,6 +5384,9 @@ pipe_config_buffer_mismatch(struct drm_i915_priv=
ate *dev_priv,
>> >  		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
>> >  			       16, 0, b, len, false);
>> >  	} else {
>> > +		/* only dump up to the last difference */
>> > +		len =3D memcmp_pos_reverse(a, b, len) + 1;
>> > +
>> >  		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
>> >  		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
>> >  			       16, 0, a, len, false);
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
