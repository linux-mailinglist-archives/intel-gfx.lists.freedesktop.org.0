Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F1892D2DA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 15:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E4010E7A6;
	Wed, 10 Jul 2024 13:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=toblux-com.20230601.gappssmtp.com header.i=@toblux-com.20230601.gappssmtp.com header.b="xzkSIqt5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD0D10E245
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 11:55:47 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-52e9b9fb3dcso7430535e87.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2024 04:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toblux-com.20230601.gappssmtp.com; s=20230601; t=1720612546; x=1721217346;
 darn=lists.freedesktop.org; 
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ghyI4s6HTXWaB6sUZPzsUjuCWRGkdOO7Zqu/uA2Ql5s=;
 b=xzkSIqt5XiBP2+QrmD7CchZxXLHSMWJRry+vhszboJK4iwOORcy80Ez+CZ/m5fBnqd
 Tjw3PiXkCw90KxlUGRdMUmwj0snya9QnaIYuyyo4K78x9G9wJbIhgBkGb22M/vzyIzzU
 jz/0hECg2kZGjetPKk5ZBvSeBpDuishD5idr2TfT5jsXaljOJiqlLIqr4SsHIQ5G1sYk
 +mB2mWIDtkzNi1f2bq+zrZnZISyVQMtjqqTUOVM2LTh0X3N56jQdaU8jCJjFjcFvFNtZ
 K9A1WlEKDHmHQChaMkebtGnJRq8OLSlxDuO7DqNh1yuy1+FuU/LhN8MQcVRDDCGwlRsx
 Ac6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720612546; x=1721217346;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ghyI4s6HTXWaB6sUZPzsUjuCWRGkdOO7Zqu/uA2Ql5s=;
 b=htVqJS212wl1qOCd644LUDFWRDBzXbipD94JnlYbab9o/LSqikm7+2PhFYE5W3zjVG
 ILHrtFPx1ZK5/rqxwcj+f05emtgokqLXJFi6fdv5YN4quS2LFquFD4fCoR5MOQrBbhoY
 2mu4tFyVAVP7nerXdOZ4qMjP3nH3wdjU5e0CYsdXra09WIA9aJp2oiBULqseqKhyaRyL
 GTjGbQGwjCeDJlLtU5GfzeTYlI1gNX0F+4SWRXoroxWSHMH/Y7IJpSPOCeJ3tCiEYiF1
 4JjfDBVm8SZXNv+FJe2jYk9grMsj9oVIDusSwC4jXK2dLtJkgOrMyl7/QwPzPSlnNW8E
 ERsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgZHlOdN6O7CbU8p8iPVmTgKLolxUpzmMdmybL14vuItf087RhtvVYdBCoERGdT7jGiXyO38Je3fm6O3nMhKkVSn6xNc5souMzDFgs38Nb
X-Gm-Message-State: AOJu0YzczvMVfPC5QqvB9riiCvicAFigVEsLxHT68DRmG0Xve61UyXCO
 W5c5X/TLhv4ohwv3fkXDM3uUq0DrDAFtrFH4Sc1xVyjAAu+jNqUsz0TaI8xie9c=
X-Google-Smtp-Source: AGHT+IHPdeBfsmIONeQn0bTeJbnTXUm5Q4clpV0sJ9YPMBD7uOMdhJufA1MZEWrigkt6wt/ISI9GPg==
X-Received: by 2002:a19:5f4d:0:b0:52c:99c9:bef6 with SMTP id
 2adb3069b0e04-52eb999132emr2837911e87.7.1720612545729; 
 Wed, 10 Jul 2024 04:55:45 -0700 (PDT)
Received: from smtpclient.apple ([2001:a61:10b5:fc01:cdb7:e0f1:ad3d:8e34])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4264a1d1668sm247496925e9.1.2024.07.10.04.55.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2024 04:55:45 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH] drm/i915: Explicitly cast divisor to fix Coccinelle
 warning
From: Thorsten Blum <thorsten.blum@toblux.com>
In-Reply-To: <Zo5yvk69FB-jEgd8@intel.com>
Date: Wed, 10 Jul 2024 13:55:32 +0200
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <77194DC0-AA53-4CF9-8BDB-93E212B9FA72@toblux.com>
References: <20240710074650.419902-2-thorsten.blum@toblux.com>
 <Zo5yvk69FB-jEgd8@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Mailer: Apple Mail (2.3774.600.62)
X-Mailman-Approved-At: Wed, 10 Jul 2024 13:32:05 +0000
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

On 10. Jul 2024, at 13:38, Ville Syrj=C3=A4l=C3=A4 =
<ville.syrjala@linux.intel.com> wrote:
> On Wed, Jul 10, 2024 at 09:46:51AM +0200, Thorsten Blum wrote:
>> As the comment explains, the if check ensures that the divisor =
oa_period
>> is a u32. Explicitly cast oa_period to u32 to remove the following
>> Coccinelle/coccicheck warning reported by do_div.cocci:
>>=20
>>  WARNING: do_div() does a 64-by-32 division, please consider using =
div64_u64 instead
>>=20
>> Signed-off-by: Thorsten Blum <thorsten.blum@toblux.com>
>> ---
>> drivers/gpu/drm/i915/i915_perf.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c =
b/drivers/gpu/drm/i915/i915_perf.c
>> index 0b1cd4c7a525..24722e758aaf 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -4103,7 +4103,7 @@ static int read_properties_unlocked(struct =
i915_perf *perf,
>>  */
>> if (oa_period <=3D NSEC_PER_SEC) {
>> u64 tmp =3D NSEC_PER_SEC;
>> - do_div(tmp, oa_period);
>> + do_div(tmp, (u32)oa_period);
>=20
> Why is this code even using do_div() when it doesn't need the
> remainder?

do_div() is an optimized 64-by-32 division and the compiler should
automatically remove the remainder if it's not used.=
