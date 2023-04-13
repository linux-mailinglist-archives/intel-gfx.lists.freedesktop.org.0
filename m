Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1F56E1620
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 22:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D66D10E1CE;
	Thu, 13 Apr 2023 20:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC7510E0F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 20:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681419046;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eA15TxiCUZPdxrd+DAVR5aEn1HQmg1ANAGx56rle4iY=;
 b=US05DPnbmGTGMDo0hmQ+ik6OebdepAV6Ns2+EmnTzgAQEerg1cVGCW4AIQxaqpA6t5aE3J
 gdZFsIUK76ZV0y2f9yNZEN00SJOELZrWrtzv57HBzB8RdEF+4n8Wr9yHD2vi9q/LIyN5Ur
 wayghToERImYh+noM1xqcSt/mAOuBMY=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-517-fjpKDAtOPQigcAIy7wgfkg-1; Thu, 13 Apr 2023 16:50:45 -0400
X-MC-Unique: fjpKDAtOPQigcAIy7wgfkg-1
Received: by mail-qv1-f72.google.com with SMTP id
 f17-20020a0cbed1000000b005d70160fbb0so7719271qvj.21
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 13:50:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681419045; x=1684011045;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KmQxpMzSuEyk+3REh88Siq0gb5rqCSxABB+pkkoj8lI=;
 b=WuX4SYdegfz7LliQXr3kEj8rHRCk7zIERz5l8kisRnVvlb3Ii7K9C/Xdt4saNNgRnE
 nGzmIYny0JXxxRz6UI6bJ5TjrimPCAEhyxjHz6/9/CdflmXZqbdaQtVkRl3pUiWlTprn
 ik7EwxlUiTqOu8JcYhZHDSy/udwDoPZFeem7Nxng37NOOx50D3i/qk/KHD8CfYKpPIhF
 GMlE3sG8gytpGPbWi9AzT4b7LGBfMMEoyYkRnHnIoAiqsKhx61+mQBB0aTjGWq63+3C/
 gDgsgVzH24PqX3K1OGXT5Eyjlcx9uxf0VuL0j3VeCl5aZOD1iqfFz9fUVilnzBO1Aa67
 HLtg==
X-Gm-Message-State: AAQBX9eWh72LFXXQ28XSxfqPEwZeYqQ5vcrHSMlg6VIoy6TQQ8l3YM+Y
 t9Zlp01RNXThKDUANknmnR7Ex6KmvCEH3PnE6TdRzbCcLzT4AcqxnQn/26aI4BnLEneZHEsLQNV
 D4q6qu9AAtVB2VQ4V8C3/+E2D2IzZ8V9tKbUG
X-Received: by 2002:a05:622a:178f:b0:3d2:7950:f790 with SMTP id
 s15-20020a05622a178f00b003d27950f790mr5567158qtk.62.1681419044904; 
 Thu, 13 Apr 2023 13:50:44 -0700 (PDT)
X-Google-Smtp-Source: AKy350b12qT4nXWBVHubQJPdBC5iGLT75vNx2WB6Tcl30hDHb8I1dl6zwV8CoKpd3QHFzc9a8KqSHw==
X-Received: by 2002:a05:622a:178f:b0:3d2:7950:f790 with SMTP id
 s15-20020a05622a178f00b003d27950f790mr5567138qtk.62.1681419044690; 
 Thu, 13 Apr 2023 13:50:44 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c62:8200::feb? ([2600:4040:5c62:8200::feb])
 by smtp.gmail.com with ESMTPSA id
 a24-20020ac84358000000b003e64303bd2dsm739869qtn.63.2023.04.13.13.50.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Apr 2023 13:50:44 -0700 (PDT)
Message-ID: <61cccdbc80bfcaa2222c274e40c329ed84d41e55.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs
 <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org
Date: Thu, 13 Apr 2023 16:50:43 -0400
In-Reply-To: <20230407150031.79749-2-krzysztof.kozlowski@linaro.org>
References: <20230407150031.79749-1-krzysztof.kozlowski@linaro.org>
 <20230407150031.79749-2-krzysztof.kozlowski@linaro.org>
Organization: Red Hat Inc.
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/nouveau: constify pointers to
 hwmon_channel_info
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Fri, 2023-04-07 at 17:00 +0200, Krzysztof Kozlowski wrote:
> Statically allocated array of pointed to hwmon_channel_info can be made
> const for safety.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>=20
> ---
>=20
> This depends on hwmon core patch:
> https://lore.kernel.org/all/20230406203103.3011503-2-krzysztof.kozlowski@=
linaro.org/
>=20
> Therefore I propose this should also go via hwmon tree.
>=20
> Cc: Jean Delvare <jdelvare@suse.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: linux-hwmon@vger.kernel.org
> ---
>  drivers/gpu/drm/nouveau/nouveau_hwmon.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/nouveau/nouveau_hwmon.c b/drivers/gpu/drm/no=
uveau/nouveau_hwmon.c
> index e844be49e11e..db30a4c2cd4d 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_hwmon.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_hwmon.c
> @@ -211,7 +211,7 @@ static const struct attribute_group temp1_auto_point_=
sensor_group =3D {
> =20
>  #define N_ATTR_GROUPS   3
> =20
> -static const struct hwmon_channel_info *nouveau_info[] =3D {
> +static const struct hwmon_channel_info * const nouveau_info[] =3D {
>  =09HWMON_CHANNEL_INFO(chip,
>  =09=09=09   HWMON_C_UPDATE_INTERVAL),
>  =09HWMON_CHANNEL_INFO(temp,

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

