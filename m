Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D2B43CC96
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 16:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53CFF6E8AF;
	Wed, 27 Oct 2021 14:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 912016E8AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 14:42:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="293635741"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="293635741"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 07:42:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="497896000"
Received: from smaharan-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.214.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 07:42:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Hogander\, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Souza\,
 Jose" <jose.souza@intel.com>
Cc: "Kahola\, Mika" <mika.kahola@intel.com>
In-Reply-To: <a36cf418169109b18845eac552d450dadee1e6ca.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211026223329.116104-1-jose.souza@intel.com>
 <a36cf418169109b18845eac552d450dadee1e6ca.camel@intel.com>
Date: Wed, 27 Oct 2021 17:42:48 +0300
Message-ID: <87k0hyh6l3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Extend PSR2 support in
 transcoder B
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

On Wed, 27 Oct 2021, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Tue, 2021-10-26 at 15:33 -0700, Jos=C3=A9 Roberto de Souza wrote:
>> PSR2 is supported in transcoder A and B on Alderlake-P.
>>=20
>> BSpec: 49185
>> Cc: Mika Kahola <mika.kahola@intel.com>
>> Cc: Jouni Hogander <jouni.hogander@intel.com>
>> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>
> LGTM
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Since INVALID_TRANSCODER is a thing, I'd actually prefer:

	trans =3D=3D TRANSCODER_A || trans =3D=3D TRANSCODER_B

It's not likely INVALID_TRANSCODER will ever end up here, but I tried to
look and it's actually not trivial to say this will never happen. I
prefer the defensive approach.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index d35db50ef967a..710b911b065b9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -588,7 +588,9 @@ static void hsw_activate_psr2(struct intel_dp
>> *intel_dp)
>>  static bool
>>  transcoder_has_psr2(struct drm_i915_private *dev_priv, enum
>> transcoder trans)
>>  {
>> -	if (DISPLAY_VER(dev_priv) >=3D 12)
>> +	if (IS_ALDERLAKE_P(dev_priv))
>> +		return trans <=3D TRANSCODER_B;
>> +	else if (DISPLAY_VER(dev_priv) >=3D 12)
>>  		return trans =3D=3D TRANSCODER_A;
>>  	else
>>  		return trans =3D=3D TRANSCODER_EDP;
>

--=20
Jani Nikula, Intel Open Source Graphics Center
