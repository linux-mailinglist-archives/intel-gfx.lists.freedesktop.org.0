Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C047CE32
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 09:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9196E10F19C;
	Wed, 22 Dec 2021 08:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6513D10F231
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 08:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640161669; x=1671697669;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AmWUhLyPyzPshC3Nm8lO8UdfZALflwVc9CjdxZyU2gg=;
 b=hhU2IuxEJKkvgG6fdZRe75cavxXgNqR6+5O4KLXQlv57vqvCWbjH3p/D
 Wml72IouI2kExadaEc9DJ+iUYkRS7Md5aXme6MgRF4euM9H4KrHnXzGeI
 9LvCh5979tNN/vw3BxuQ4lAWxydjGM08SO0A3if9ix+smyAs6wyZVzGEb
 WbtOTXOtVwJE5y7k1paTmOk2rw0SH3p6O65dL6OHtfYNiX2Mj3VzaJ2Wh
 p8ITXcYi+YSlL4jasH085nji2XK4ILwYhM3K3n7FTRn4sl6U2CoAm8bOZ
 1It4Y4DtrU65lJNgx7ryMjhepWtWkQA+l0FRNh1tQgXghefzjMDZgxPoo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="238111834"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="238111834"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:27:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="617062069"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:27:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <8bcb414a-7f18-a29a-3ccc-07f2143d9aeb@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211221130824.1796242-1-jani.nikula@intel.com>
 <8bcb414a-7f18-a29a-3ccc-07f2143d9aeb@linux.intel.com>
Date: Wed, 22 Dec 2021 10:27:43 +0200
Message-ID: <87o859yrgg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: fix slab-out-of-bounds access
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 21 Dec 2021, Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.co=
m> wrote:
> On 12/21/21 14:08, Jani Nikula wrote:
>> If VBT size is not a multiple of 4, the last 4-byte store will be out of
>> bounds of the allocated buffer. Spotted with KASAN. Round up the
>> allocation size.
>>
>> Reported-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
>> Fixes: a36e7dc0af1c ("drm/i915/dg1: Read OPROM via SPI controller")
>> Cc: Clint Taylor <clinton.a.taylor@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 76a8f001f4c4..310609d186cd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2369,7 +2369,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct=
 drm_i915_private *i915)
>>   	vbt_size =3D intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
>>   	vbt_size &=3D 0xffff;
>>=20=20=20
>> -	vbt =3D kzalloc(vbt_size, GFP_KERNEL);
>> +	vbt =3D kzalloc(roundup(vbt_size, 4), GFP_KERNEL);
>
> Use round_up since a power of 2?

Oh, right, *obviously* the underscored version is for powers of two. :p

v2 sent.

> Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>

Thanks,
Jani.


>
>>   	if (!vbt)
>>   		goto err_not_found;
>>=20=20=20

--=20
Jani Nikula, Intel Open Source Graphics Center
