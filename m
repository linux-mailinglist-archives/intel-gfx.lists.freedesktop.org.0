Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365767B3AE5
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 22:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5A510E14F;
	Fri, 29 Sep 2023 20:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AA9C10E14F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 20:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1696017757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=99dH+phoLQ/qsV0RjI1U+pLDr0i5wOD5VhnbATpTEWU=;
 b=bMIDPl/D+fBRlR8APeMm7TtHfNgqXGhqP2b5HCLtvlQ7K0qNYgDONakBs9eXSpf7gfJPug
 wmqZ1+ulMN4HjiUeyQpK4Yi7QuINJfbJF9lUN5E3Y57Rmw9uhrw1xJhLEr082qVsq11Hz0
 oQmLX6WF7vJTq01a0AulqvHW/KIqvSM=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-380-GX9xEVypP-67U-LV_2OBhw-1; Fri, 29 Sep 2023 16:02:35 -0400
X-MC-Unique: GX9xEVypP-67U-LV_2OBhw-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-65b23c40cefso112347896d6.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 13:02:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696017754; x=1696622554;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BYjr6cVWqyj+5HJdN0jjeWotYlHT79mRFj2yFyq0LFA=;
 b=d8AOJa7WLAp7i5PjGvWoLxlosCVAe8wmo0cAIsvaY1YGfmbVpVaJ1TYMr/BqPo/wFK
 udptQ2aMW2aYN0mBygzB3Z7isDcnWB2Tsqc24fzgqOR+qR8cpxqrMkoSJNrTSNIfJIS1
 beXPkvhxskm8oibcIlMJXsPqOPx+cFtyBtJ7HrXwXWWrqtCYv7Izaxt7USfLRCis+SCP
 9t/ww6V9EZeqlALmymrNlcfiRpeOxqf0tQisvga9bvsNcN36z7E9Sn2OTLdXEhXSMF7A
 5Q3sKC5+UCdCD/Cui5qyGXd5GzkMBLF/lokfgb930xcuVzA2udy5qAIXljC0Ml5BqMYV
 fGOQ==
X-Gm-Message-State: AOJu0YxdXYsSnZ6B0Ig4tLy5JAnCdJxxT1zgwPfnvC7b0hcROiEG6TlW
 tc8CbFjL5dwqOiAYVw3fvXdFGAMxeQyXJepou1OtcEUHfzE1OrfQvutHGKRzex4KHQtw0YvSqnz
 V73xqbKiHoi/7gi8//6nxEf8idGOFR6S7lWDs
X-Received: by 2002:a0c:a899:0:b0:65d:79:b3fe with SMTP id
 x25-20020a0ca899000000b0065d0079b3femr4263151qva.21.1696017754373; 
 Fri, 29 Sep 2023 13:02:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQqahF8lNFCx3eyLT/RgB3FXcv1ZbMGyky5DO0KCZMftTL1B5izkIW4YyDuqsMfwqNfdoGcg==
X-Received: by 2002:a0c:a899:0:b0:65d:79:b3fe with SMTP id
 x25-20020a0ca899000000b0065d0079b3femr4263135qva.21.1696017753990; 
 Fri, 29 Sep 2023 13:02:33 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 l10-20020a0c978a000000b0064f45b8c02bsm4723125qvd.49.2023.09.29.13.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Sep 2023 13:02:33 -0700 (PDT)
Message-ID: <4ead5323bb38156f91b125606b2374cf6088512c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 16:02:32 -0400
In-Reply-To: <20230929154929.343947-1-imre.deak@intel.com>
References: <20230929154929.343947-1-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp_mst: Make sure pbn_div is
 up-to-date after sink reconnect
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

Definitely a TODO there that I no longer can remember why I didn't just do
this in the first place, lol. Thank you for the fix

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Fri, 2023-09-29 at 18:49 +0300, Imre Deak wrote:
> Atm the MST encoder config computation may use an out-of-date pbn_div
> value, if the sink is unplugged and a sink is replugged with different
> link rate/lane count capabilities. The current way of reinitializing
> pbn_div depends on pbn_div getting cleared via intel_atomic_check() ->
> drm_dp_mst_atomic_check() ->
> drm_dp_mst_atomic_check_payload_alloc_limits(), however the clearing
> won't happen if the sink got unplugged (and hence
> drm_dp_mst_topology_mgr::mst_state being false).
>=20
> To fix the above, simply update pbn_div unconditionally during config
> computation, making pbn_div always match the link rate and lane count.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 648cf37e02a87..42ddfc85d72d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -94,12 +94,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct=
 intel_encoder *encoder,
>  =09crtc_state->lane_count =3D limits->max_lane_count;
>  =09crtc_state->port_clock =3D limits->max_rate;
> =20
> -=09// TODO: Handle pbn_div changes by adding a new MST helper
> -=09if (!mst_state->pbn_div) {
> -=09=09mst_state->pbn_div =3D drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr=
,
> -=09=09=09=09=09=09=09      crtc_state->port_clock,
> -=09=09=09=09=09=09=09      crtc_state->lane_count);
> -=09}
> +=09mst_state->pbn_div =3D drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
> +=09=09=09=09=09=09      crtc_state->port_clock,
> +=09=09=09=09=09=09      crtc_state->lane_count);
> =20
>  =09for (bpp =3D max_bpp; bpp >=3D min_bpp; bpp -=3D step) {
>  =09=09drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

