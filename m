Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A45267AB9B6
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 21:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E47C10E6FE;
	Fri, 22 Sep 2023 19:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C61A10E701
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 19:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695409254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NE66f7DfP4/A2VOZXmvxuXHt1FmCuY2Q51yLIoHLwck=;
 b=Ibm8bsehKpB8a6TgkRt5TtWN9XJlvHukx+/Z3O8rnocEGPuxG3RIZCfY34LM8VYMbZybsG
 gPhdtKQ+nERDOXoscDe/iss5Jqym6KM89C0hzIqp4XD7tIY2aL/N2v857a7DIq9eb4Sb89
 EFyR/e693/VTwCXhQ2i6WvyGeEjNFgg=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-515-lt5yW3luNbua8pv8pwrx6A-1; Fri, 22 Sep 2023 15:00:51 -0400
X-MC-Unique: lt5yW3luNbua8pv8pwrx6A-1
Received: by mail-qk1-f199.google.com with SMTP id
 af79cd13be357-773ed3bb708so282265885a.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 12:00:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695409250; x=1696014050;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=llC9/wUzzd4JVzDSD0PHMCO4lX+W74lZOeDntPKMIjc=;
 b=sLxgFcxgNVgTiSuU14TAIxmeoN4Rbhir33tMGUP1sS3qe2U6FxDx8zHF2dkhgURX/Y
 791dgtoq1xnUPbWEGlh1da+JvNr7Xqi8qVHBKt26W3aDqGMwFvYGsb+ut5kYhtjJYF1h
 exvGJa+odQYLbNWvPhLtPPlc2HXcz1eAwt6dkXgvTOxiloPUjYZ8JZi7/jAdbO2L4dHn
 chupRhBtmGtSeEQ/eu8c6kjg88lq5inUiW2ymPvDUNkV9i/SGqAoe/jVAcrbGC7Hd0cD
 jc9DxcFMCA1zwsGhnWbMSamBt09ROlRYeCxjG34Spntm/F04aI0sAFqKrupqrYcDNakL
 caHQ==
X-Gm-Message-State: AOJu0YwObmcJksRCT31X6/2aM01K+LLkjRl8GCPv2/9ywJQhWo3TVk1M
 DqLCgfZCcivryFUfW6vGd7ZXRo4c3hb8w9kJ0OWuWaYRg6YJu1GQknSY4giBEo+PQKsv5dom/7w
 KzW50mfOUqbECWAkZkNdmZeO1+Xac
X-Received: by 2002:a05:6214:1845:b0:655:d2c7:a9d1 with SMTP id
 d5-20020a056214184500b00655d2c7a9d1mr187771qvy.14.1695409250677; 
 Fri, 22 Sep 2023 12:00:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcAhYi3agHEIh1mExaRpOkIAUDfxEWkbuUfbk0Y5Ex6ReRQkYaRYp/G33/F11gHisOBD3h3Q==
X-Received: by 2002:a05:6214:1845:b0:655:d2c7:a9d1 with SMTP id
 d5-20020a056214184500b00655d2c7a9d1mr187719qvy.14.1695409250417; 
 Fri, 22 Sep 2023 12:00:50 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 w6-20020a0ce106000000b0064f50e2c551sm1671895qvk.1.2023.09.22.12.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Sep 2023 12:00:49 -0700 (PDT)
Message-ID: <1fc22ed54041660dfff5b7f3cc69708fd4ac0472.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Kees Cook <keescook@chromium.org>, David Airlie <airlied@gmail.com>
Date: Fri, 22 Sep 2023 15:00:47 -0400
In-Reply-To: <20230922173216.3823169-5-keescook@chromium.org>
References: <20230922173110.work.084-kees@kernel.org>
 <20230922173216.3823169-5-keescook@chromium.org>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/nouveau/pm: Annotate struct
 nvkm_perfdom with __counted_by
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
Cc: Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Prike Liang <Prike.Liang@amd.com>,
 Huang Rui <ray.huang@amd.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>, Emma Anholt <emma@anholt.net>,
 Neil Armstrong <neil.armstrong@linaro.org>, amd-gfx@lists.freedesktop.org,
 Kuogee Hsieh <quic_khsieh@quicinc.com>, Nathan Chancellor <nathan@kernel.org>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Tom Rix <trix@redhat.com>,
 David Airlie <airlied@redhat.com>, virtualization@lists.linux-foundation.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-hardening@vger.kernel.org,
 Lijo Lazar <lijo.lazar@amd.com>, Yifan Zhang <yifan1.zhang@amd.com>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Kevin Wang <kevin1.wang@amd.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Melissa Wen <mwen@igalia.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Evan Quan <evan.quan@amd.com>, Xiaojian Du <Xiaojian.Du@amd.com>,
 Le Ma <le.ma@amd.com>, freedreno@lists.freedesktop.org,
 Bjorn Andersson <andersson@kernel.org>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Zack Rusin <zackr@vmware.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Lang Yu <Lang.Yu@amd.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Hawking Zhang <Hawking.Zhang@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

Thanks!

On Fri, 2023-09-22 at 10:32 -0700, Kees Cook wrote:
> Prepare for the coming implementation by GCC and Clang of the __counted_b=
y
> attribute. Flexible array members annotated with __counted_by can have
> their accesses bounds-checked at run-time checking via CONFIG_UBSAN_BOUND=
S
> (for array indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family
> functions).
>=20
> As found with Coccinelle[1], add __counted_by for struct nvkm_perfdom.
>=20
> [1] https://github.com/kees/kernel-tools/blob/trunk/coccinelle/examples/c=
ounted_by.cocci
>=20
> Cc: Ben Skeggs <bskeggs@redhat.com>
> Cc: Karol Herbst <kherbst@redhat.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: dri-devel@lists.freedesktop.org
> Cc: nouveau@lists.freedesktop.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/gpu/drm/nouveau/nvkm/engine/pm/priv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/nouveau/nvkm/engine/pm/priv.h b/drivers/gpu/=
drm/nouveau/nvkm/engine/pm/priv.h
> index 6ae25d3e7f45..c011227f7052 100644
> --- a/drivers/gpu/drm/nouveau/nvkm/engine/pm/priv.h
> +++ b/drivers/gpu/drm/nouveau/nvkm/engine/pm/priv.h
> @@ -82,7 +82,7 @@ struct nvkm_perfdom {
>  =09u8  mode;
>  =09u32 clk;
>  =09u16 signal_nr;
> -=09struct nvkm_perfsig signal[];
> +=09struct nvkm_perfsig signal[] __counted_by(signal_nr);
>  };
> =20
>  struct nvkm_funcdom {

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

