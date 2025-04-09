Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C90AA8288D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0941410E94D;
	Wed,  9 Apr 2025 14:48:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="sAfJOhd2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 308 seconds by postgrey-1.36 at gabe;
 Wed, 09 Apr 2025 14:48:06 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083F410E943
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 14:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1744210084; x=1744814884; i=info@metux.net;
 bh=A6Y+MvJKhcxWk7ksD0XMDxx9tho3bD2GRtdnkcKWOMM=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=sAfJOhd2Zk6gUCVuW/KkJPcwg1u/mlDxjMJS+fFNmCdNwkRhPn+cGxekNwiEOeat
 qpamFIfQ1PFyfOTfz+ZiwgdgdZ7jp3POezKcyU+jxSJiL+yMyOcdnIug8klcGf2CT
 kGeiKBzh9TIBYUNm+OdXzrKbru6jx/mfu3+OeyFLN2wY0UCRHr+nZLXfXZdJyiujv
 SgWPc/sXQl4SSM1GdVH4Q3jj6Po3AxOzB+Pt+Arg415cWcltFkRADrQYTyDfIOT3C
 AHJL1+7u4b+nWZTPrR5QIzGbdldxNrA9cqrt6Xm6bfwXnh556fgexqHcLDvNjcH57
 Uwye/Xoaf9JsIUEPGQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.1.132] ([77.2.135.41]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M3VAI-1u1yPN0UAU-007e2G; Wed, 09 Apr 2025 16:42:55 +0200
Message-ID: <062979d8-b605-4d31-adb8-068a37193598@metux.net>
Date: Wed, 9 Apr 2025 16:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] sna: stop using obsolete type aliases
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-3-info@metux.net> <Z93g5lPz-hOQF3RR@intel.com>
Content-Language: tl
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
In-Reply-To: <Z93g5lPz-hOQF3RR@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:KAsJKnc7Bly2GY+TPs9o2+3TfwoiraPiC1mJQBcbRH+r5iHjeox
 JAOwVS9ZcBeFKC+WNv3KIXXqw3KQZRDNNA9lyEHRYgGz3s6ZO7jVwoRN2yilQmHQm1ZAowW
 VGjsQgupgPT3NEdyObIUp7O77t4foYueIKL9t5oCKYUynviEgiCh8YRecT2+BeDL9zbzjRp
 Z4/WgkiP8InDPaOgXnMvg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:jx/aIvowXDk=;fidDc87fuS4cyb1vKm3azk/ACCl
 O8ersJnGjss4/5LckhQogTd4FC+FKx03Wd81OaRyqXdBEJClnWtgZEUJlW23+hX3ZgBKlUR5a
 xR4IHGSstndzy1sf3RCvaCOlV4iOff+G93UAdC/HPz8DcWg6wO0Bcvz8+E1J46x+2gUTJQsJf
 Z4vZEWqBlkDLP6XG/YyrPnYj6+UtOzogKH8V9gzcFWXqGXgIKUs36WCxTBbJsYGPFADZvAmE5
 7SayXUkdb8OKQAcSiOom9DVS7xTDw0zYguk/eapwGUY34iQGHyz1+HywgJRbxNb7qZzcRUVJy
 oW5uprDoqHTLlVCYB/VYlHuRjPVSYqMmp1xBOqPauXdOEPgfZ7asTx5kyqhfdhrmb0qo+C0au
 QEPpiwO72f3crmgXIBbCBRltCDWaFUy7D8iixcGAs24EwTad0xFXeQ+XX+V81qojXHTUsWCQT
 7BTx5r4jtXr7raCoQtjJ0h78tKmHrjExbveBacibSZcePfjd84JQ3d8WI/Z7ytv8HOcC6/3PP
 MpttB5QQrgnRJ1NbuMG5Y54t2Pg+YZS8vyv7FF0XsbUAop3LlNaGwe9KhJdmtQKG9ovz4Bqf7
 HHtT8Z1zJ9heTOAa+jBOL/RBp+iL+PkVpyv6tmPtV+qBZuQcRMIQPhlgUloxB7zNQyq2faJBC
 HaS6AYCUvdEUqIpL31qKwUf4VU0VPi/YaG2zaP+cCi5/U4wLQHFb+LDjTUwnpZWVz0uf4FbiU
 0UTfUPK+96vD+Lx9HXAFsy5Q13bhorYIFf6gVn4004qG7/n30o247zG8nj4nuXBLWD7Qb5xWn
 aAFWzpLU6wPaEsLqOW3ybTWdDEpvv5tgDzR+DIhz7HcYCR8xMZQPNCdSGAJjb5ddzD4ynsc25
 x/sihIHjp/HpIc3a8cIUBOgXDsjanDha9rev6WzthnhHUWTE0LbwSbzYE/sbUWyLJYAo0cIPL
 6MdFKYUqwyMH5ICxKjzqRw98md11TootehZu7sL4Xg2FXkrCJdC4SkG5uef3scXt0f7xHOIOy
 MOgjzyLBCy7RpZXj1gO2C2zV0r9V0dcdaGv87kpvFXrKPND3s/5Lxxeb6E/3+eWRelfhmfmH5
 UjGMRVTz7chA2ojPAPzyt7i6DK7sGimnvndXnKHnW6sI+Hdn3tKA5gyBd3o7sF6gfk/c/7exQ
 1O5QFAYrfIxzBCQgQlPkf4fsRPs9xMXXJ/F+OZeqpCAF81UQJJMu4syev86ZIIUUsuT22OM+d
 4W8MdXStUknXh9Fono4g5E6D3a5yM1RxdovXMgn5BLDaPWoYrHMo3iG8NNMwZKtnLNgYmfh5t
 tPfede4HQnXTziUHRAgaLaELLlg0zBsCfwhWZsh+wyolsjEczdovH7prnivaZdDkx33sFjiYa
 9gjonPDb9i2gQTuxj/zeJ6bmqpwRpS/nvoezo=
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



On 21.03.25 22:57, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Tue, Mar 04, 2025 at 04:57:55PM +0100, Enrico Weigelt, metux IT consu=
lt wrote:
>> The Xserver has been moved to using pixman for all matrix operations, b=
ack in
>> 2008, but left some #define's so drivers still compile. Since 1.5 decad=
es have
>> passed now, it's time to fix remaining drivers still using the old name=
, so
>> we can drop these #define's from the Xserver includes.
>
> Can you list the relevant xserver commit(s) here?

10a803186567308ceaed5760d092edd508bb157c



>
>>
>> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
>> ---
>>   src/sna/sna_display.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
>> index d4fa7b0b..d33a88af 100644
>> --- a/src/sna/sna_display.c
>> +++ b/src/sna/sna_display.c
>> @@ -208,7 +208,7 @@ struct sna_crtc {
>>   	bool hwcursor;
>>   	bool flip_pending;
>>
>> -	struct pict_f_transform cursor_to_fb, fb_to_cursor;
>> +	struct pixman_f_transform cursor_to_fb, fb_to_cursor;
>>
>>   	RegionRec crtc_damage;
>>   	uint16_t shadow_bo_width, shadow_bo_height;
>> @@ -2383,7 +2383,7 @@ static bool use_shadow(struct sna *sna, xf86CrtcP=
tr crtc)
>>   {
>>   	RRTransformPtr transform;
>>   	PictTransform crtc_to_fb;
>> -	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
>> +	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
>>   	unsigned pitch_limit;
>>   	BoxRec b;
>>
>> @@ -2853,7 +2853,7 @@ affine_is_pixel_exact(const struct pixman_f_trans=
form *t)
>>   static void sna_crtc_randr(xf86CrtcPtr crtc)
>>   {
>>   	struct sna_crtc *sna_crtc =3D to_sna_crtc(crtc);
>> -	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
>> +	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
>>   	PictTransform crtc_to_fb;
>>   	PictFilterPtr filter;
>>   	xFixed *params;
>> @@ -6674,7 +6674,7 @@ sna_set_cursor_position(ScrnInfoPtr scrn, int x, =
int y)
>>   		if (crtc->transform_in_use) {
>>   			int xhot =3D sna->cursor.ref->bits->xhot;
>>   			int yhot =3D sna->cursor.ref->bits->yhot;
>> -			struct pict_f_vector v, hot;
>> +			struct pixman_f_vector v, hot;
>>
>>   			v.v[0] =3D x + xhot + .5;
>>   			v.v[1] =3D y + yhot + .5;
>> --
>> 2.39.5
>

=2D-
=2D--
All racism is bad. All lives matter.
=2D--
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

