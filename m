Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A4541E930
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 10:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232396E44A;
	Fri,  1 Oct 2021 08:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3527E6E44A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 08:50:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="225455390"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="225455390"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 01:50:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="564835572"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 01:50:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YVWrz/hS3K/2orF9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1633000838.git.jani.nikula@intel.com>
 <e2f79220ed2558f615c051e2533275a5dae1a04f.1633000838.git.jani.nikula@intel.com>
 <YVWrz/hS3K/2orF9@intel.com>
Date: Fri, 01 Oct 2021 11:50:49 +0300
Message-ID: <87r1d5t9g6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/dram: return -ENOENT instead
 of -1
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

On Thu, 30 Sep 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 30, 2021 at 02:24:36PM +0300, Jani Nikula wrote:
>> Avoid using the incidental -EPERM.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_dram.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/in=
tel_dram.c
>> index 91866520c173..a506a2196de4 100644
>> --- a/drivers/gpu/drm/i915/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/intel_dram.c
>> @@ -444,7 +444,7 @@ static int icl_pcode_read_mem_global_info(struct drm=
_i915_private *dev_priv)
>>  			break;
>>  		default:
>>  			MISSING_CASE(val & 0xf);
>> -			return -1;
>> +			return -ENOENT;
>
> Everything else is -EINVAL in that file. So maybe just stick to=20
> that? I guess for a bunch of these maybe something different
> might make sense to indicate that it's the hw telling us nonsense
> (or the driver is actually missing some necessaty stuff).
> But boesn't really matter since it's just a bogus value.

Exceptionally fixed this while pushing.

>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

>
>>  		}
>>  	} else {
>>  		switch (val & 0xf) {
>> @@ -462,7 +462,7 @@ static int icl_pcode_read_mem_global_info(struct drm=
_i915_private *dev_priv)
>>  			break;
>>  		default:
>>  			MISSING_CASE(val & 0xf);
>> -			return -1;
>> +			return -ENOENT;
>>  		}
>>  	}
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
