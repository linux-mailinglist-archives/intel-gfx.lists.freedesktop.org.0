Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98BAEB909
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 15:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC9A10EA3C;
	Fri, 27 Jun 2025 13:34:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="diCIfTcA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5642610EA3D;
 Fri, 27 Jun 2025 13:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751031270; x=1782567270;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QRg/Zei1BexxRcPkF9RqYWSAq0V6f/MrUnmF+rZpc/M=;
 b=diCIfTcAszLKZm4brrw+nFOiXLaW5Foiyn0NT8IZsymK6+kAO2w0GBLo
 atCzTc/Ojl9fngO5uUbK82T4uH6J1gY8rfBRT5Y0U0HQWH3CUvzb3HEXs
 QKjCFv0r53Kl+hcvnOrEYMSRrDQORjPC5KeUywRRuaFsU1jagkEkeUSKE
 noQvewWd7vuI995gcGErTJtBK48RzWILxkLUK2sSGXbVNhyynzL6zabB6
 p8Ic4wuiEVzAnRZhJXT91BgUZh+XXqYEjMsQYorr3prHPlqIkvjlNGse2
 GV7EBdZI0rQIinKcowUQtNzL7eivOVavwqhoOwLy5EY+2tIYU1DneM57G Q==;
X-CSE-ConnectionGUID: WcfsWTx3RCu6wKb+uTZRjA==
X-CSE-MsgGUID: hwW8kAMZQqG73iS8VkWjQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="64699124"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="64699124"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:34:30 -0700
X-CSE-ConnectionGUID: QqtRsua5Tiy/zII1uD/BDA==
X-CSE-MsgGUID: GFy12A7zRD2T6QbRq2kmOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="190000355"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:34:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Imre
 Deak <imre.deak@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>, Dejin Zheng
 <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
In-Reply-To: <aF6UOCLdO0fGHGA9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1751023767.git.jani.nikula@intel.com>
 <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
 <aF6UOCLdO0fGHGA9@intel.com>
Date: Fri, 27 Jun 2025 16:34:23 +0300
Message-ID: <f922ec0a42855e17228d3f22d7291b389abe2df0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 27 Jun 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 27, 2025 at 02:36:32PM +0300, Jani Nikula wrote:
>> Unify on using read_poll_timeout() throughout instead of mixing with
>> readx_poll_timeout(). While the latter can be ever so slightly simpler,
>> they are both complicated enough that it's better to unify on one
>> approach only.
>>=20
>> While at it, better separate the handling of error returns from
>> drm_dp_dpcd_readb() and the actual status byte. This is best achieved by
>> inlining the read_fec_detected_status() function.
>>=20
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 33 +++++++++---------------
>>  1 file changed, 12 insertions(+), 21 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index 0405396c7750..fc4587311607 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2339,34 +2339,25 @@ static void intel_dp_sink_set_fec_ready(struct i=
ntel_dp *intel_dp,
>>  		drm_dbg_kms(display->drm, "Failed to clear FEC detected flags\n");
>>  }
>>=20=20
>> -static int read_fec_detected_status(struct drm_dp_aux *aux)
>> -{
>> -	int ret;
>> -	u8 status;
>> -
>> -	ret =3D drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status);
>> -	if (ret < 0)
>> -		return ret;
>> -
>> -	return status;
>> -}
>> -
>>  static int wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>>  {
>>  	struct intel_display *display =3D to_intel_display(aux->drm_dev);
>>  	int mask =3D enabled ? DP_FEC_DECODE_EN_DETECTED : DP_FEC_DECODE_DIS_D=
ETECTED;
>> -	int status;
>> -	int err;
>> +	u8 status =3D 0;
>> +	int ret, err;
>>=20=20
>> -	err =3D readx_poll_timeout(read_fec_detected_status, aux, status,
>> -				 status & mask || status < 0,
>> -				 10000, 200000);
>> +	ret =3D read_poll_timeout(drm_dp_dpcd_readb, err,
>> +				err || (status & mask),
>> +				10 * 1000, 200 * 1000, false,
>> +				aux, DP_FEC_STATUS, &status);
>
> I think I hate these macros. It's very hard to tell from this
> soup what is actually being done here.

The thing is, I hate __wait_for(), wait_for(), wait_for_us(),
wait_for_atomic_us(), and wait_for_atomic() even more.

It's also very hard to figure out what is actually going on with
them. The timeouts are arbitrarily either ms or us. wait_for_us() is
atomic depending on the timeout. __wait_for() Wmax parameter actually
isn't the max sleep, it's 2*Wmax-2. Some of them have exponentially
growing sleeps, while some arbitrarily don't.

It's a fscking mess, and people randomly choose whichever version with
no idea what's actually going on behind the scenes.

> The 'val', 'op', and 'args' look very disconnected here even though
> they are always part of the same thing. Is there a reason they can't
> just be a single 'op' parameter like we have in wait_for() so you can
> actually see the code?
>
> Ie.
> read_poll_timeout(err =3D drm_dp_dpcd_readb(aux, DP_FEC_STATUS, &status),
> 		  err || (status & mask),
>                   10 * 1000, 200 * 1000, false);
> ?

Internally the macro has:

#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
				sleep_before_read, args...) \

...

		(val) =3D op(args); \

So you do need to provide an lvalue val, and you need to be able to add
() after op. I think GCC allows not passing varargs. IOW you'd need to
implement another macro (which could be used to implement the existing
one, but not the other way round).

I'm really not enthusiastic about blocking this series waiting on that
kind of refactoring in iopoll.h which might happen, or might not,
considering there's no active maintainer for iopoll.h.

So yeah, the interface isn't great, and I'm not claiming it is, but it
is *one* *single* *documented* *interface* that's used across the
kernel. On the whole, warts and all, I think it's still much better than
what we currently have. And it breaks the dependency on i915_utils.h.

I've carefully tried to do the line breaks so that it's always:

        read_poll_timeout(op, val,
                          cond,
                          sleep_us, timeout_us, sleep_before_read,
                          args...);

I think that helps a bit.


BR,
Jani.


>
>>=20=20
>> -	if (err || status < 0) {
>> +	/* Either can be non-zero, but not both */
>> +	ret =3D ret ?: err;
>> +	if (ret) {
>>  		drm_dbg_kms(display->drm,
>> -			    "Failed waiting for FEC %s to get detected: %d (status %d)\n",
>> -			    str_enabled_disabled(enabled), err, status);
>> -		return err ? err : status;
>> +			    "Failed waiting for FEC %s to get detected: %d (status 0x%02x)\n=
",
>> +			    str_enabled_disabled(enabled), ret, status);
>> +		return ret;
>>  	}
>>=20=20
>>  	return 0;
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
