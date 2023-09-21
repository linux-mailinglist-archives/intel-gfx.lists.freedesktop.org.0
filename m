Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 934947A934A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 11:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07A310E0E7;
	Thu, 21 Sep 2023 09:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A7310E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 09:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695289742; x=1726825742;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=MNftTy1PERhZfEFbFa/Sa5VcMryPi/uvIxp3Bs9LdBY=;
 b=lNEp7oZdkgIcGvKvmI54TdaFAluZdEd5JZh1hkVw8TUJLmworBUM631C
 +sxs2bk+edKXV5JW3dxece6AxYs10h/DcEWmhntc+54jPIii4BY8WVVy8
 DjPqnA/3VUYVuStLgSGKDUMpbQwqbxPTJu2+qawDfVb8W3LddM4Uk6/0h
 kmXRSWYBp+DwksaD5x0n02eFv8pQOZHL6kHT4+/yGmHdqhXoYjzQl96Et
 KQgdAM7UBCKKzN/LPLK+eI67zhbl4p1ucFm9z6OaJZ2tmF4tb+oHFD4DI
 T4D8Xy7vGCwuwy0tbjA1aVAa1szJahcW4yVgpNDl6bdfVNXbe+Eed3OWm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360720677"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="360720677"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 02:49:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870732522"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="870732522"
Received: from idubinov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.52.72])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 02:48:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZQrgQMdyqFdRUZPs@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230920112901.3315876-1-jani.nikula@intel.com>
 <ZQrgQMdyqFdRUZPs@intel.com>
Date: Thu, 21 Sep 2023 12:48:57 +0300
Message-ID: <87wmwjq2k6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add a note about fec_enable with
 128b/132b
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

On Wed, 20 Sep 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 20, 2023 at 02:29:01PM +0300, Jani Nikula wrote:
>> Add a note that fec_enable actually means FEC is to be enabled
>> explicitly. 128b/132b always has FEC enabled, the driver doesn't need to
>> enable it separately, and fec_enable will be false.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_types.h | 7 ++++++-
>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driver=
s/gpu/drm/i915/display/intel_display_types.h
>> index 3c54fe2bfddd..f781a9755a52 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1364,7 +1364,12 @@ struct intel_crtc_state {
>>=20=20
>>  	bool enhanced_framing;
>>=20=20
>> -	/* Forward Error correction State */
>> +	/*
>> +	 * Forward Error Correction.
>> +	 *
>> +	 * Note: This will be false for 128b/132b, which will always have FEC
>> +	 * enabled automatically.
>> +	 */
>>  	bool fec_enable;
>>=20=20
>>  	bool sdp_split_enable;
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
