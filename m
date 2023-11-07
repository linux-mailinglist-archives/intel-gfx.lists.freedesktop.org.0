Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB887E4BE0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 23:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B05D10E0F6;
	Tue,  7 Nov 2023 22:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BFB10E0F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 22:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699396637;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mcQ7qFfph2OIPDIUDXoOo7W/UZw4LGQy2JoQD5/WzDE=;
 b=LegVz/mZ4rUSO85aMlguqWpC56iI7P1qkkj8/snKg5ApVn77dnDqVS2iZB8gv9UyKETSVY
 AA0AVTsEPs8ilRJsbDv6bS69P3HSMYbdIMWRjSOu7WxFNL+oIg30sOjSyz3unT6dIJaTlK
 yQySOEu7x8ijhGSHbQQawwkRZ7JFgAM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-eN_34JfSNfmZ7_66m7Qakw-1; Tue, 07 Nov 2023 17:37:14 -0500
X-MC-Unique: eN_34JfSNfmZ7_66m7Qakw-1
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-41cdffe4d1cso69197541cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Nov 2023 14:37:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699396634; x=1700001434;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vlacgRhTLZA2unwvGYeaijQlPiAJxIRhNWMnGZpwUKw=;
 b=dZ3mH9C48IB2dO8ra9qGsZFaRNQyp4MKRrhC2kkNgo/bEnXrBtuk8/GDFd8mrKbxEA
 DhIvRsdeLjIwXqpIM4h2IJxcoA745PAR3IZ25427nf76ObOHpB1/xQQselDk7Td1Ixi3
 /O0f/A/CAf9sfsQ6VgN9p/BnScjIGqhTQ6pAz7Hkvk461bVHhLOZwQNKhLnOGeytZe+G
 DzNtMcDzFs2w/r4QZ0fE506aY/lARFUuD/St2AGw3ZyqsRN9vRFmq+H3S9FyP/Coj6VN
 JO0Ng9ATWWLnhi4vpT05L+WjCqXkDcsBG5JGgTCBtPkVq3F9eMTWVDmplFuXSsRXF1DG
 8xpg==
X-Gm-Message-State: AOJu0Yypc04wv0FERy7T75H6SHBHhGPw/j8hLBGo4L+MRGYtJPWYb/vQ
 EM96z6JZL3bgngehyaxfPKpykzyd/Uorj65cnWovcVuX+S/pXCJMPzg+AjP0dONOg4KUDwuL3md
 ei/uAFPd6knoO/VZALlqDwCHAOLf3
X-Received: by 2002:a05:622a:11c9:b0:410:9089:6b77 with SMTP id
 n9-20020a05622a11c900b0041090896b77mr290066qtk.10.1699396634456; 
 Tue, 07 Nov 2023 14:37:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEclAW8F1spIZ8QXH0POunk/JxdQMD9tui/F8JPqc/8PVEEr0j/F9C6WBa8EHqktwDWYqq5Dg==
X-Received: by 2002:a05:622a:11c9:b0:410:9089:6b77 with SMTP id
 n9-20020a05622a11c900b0041090896b77mr290056qtk.10.1699396634218; 
 Tue, 07 Nov 2023 14:37:14 -0800 (PST)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 a10-20020a05622a02ca00b004181a8a3e2dsm154461qtx.41.2023.11.07.14.37.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Nov 2023 14:37:13 -0800 (PST)
Message-ID: <a3c3af68629b8dd413a1adf282c0fe1137852b9c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 07 Nov 2023 17:37:13 -0500
In-Reply-To: <20231030155843.2251023-9-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-9-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 08/30] drm/dp_mst: Add HBLANK expansion
 quirk for Synaptics MST hubs
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Mon, 2023-10-30 at 17:58 +0200, Imre Deak wrote:
> Add a quirk for Synaptics MST hubs, which require a workaround - at leat
> on i915 - for some modes, on which the hub applies HBLANK expansion.
> These modes will only work by enabling DSC decompression for them, a
> follow-up patch will do this in i915.
>=20
> v2:
> - Fix the quirk name in its DocBook description.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
>  include/drm/display/drm_dp_helper.h     | 7 +++++++
>  2 files changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/di=
splay/drm_dp_helper.c
> index f3680f4e69708..e5d7970a9ddd0 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2245,6 +2245,8 @@ static const struct dpcd_quirk dpcd_quirk_list[] =
=3D {
>  =09{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), fal=
se, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
>  =09/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
>  =09{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_DSC_W=
ITHOUT_VIRTUAL_DPCD) },
> +=09/* Synaptics DP1.4 MST hubs require DSC for some modes on which it ap=
plies HBLANK expansion. */
> +=09{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLAN=
K_EXPANSION_REQUIRES_DSC) },
>  =09/* Apple MacBookPro 2017 15 inch eDP Retina panel reports too low DP_=
MAX_LINK_RATE */
>  =09{ OUI(0x00, 0x10, 0xfa), DEVICE_ID(101, 68, 21, 101, 98, 97), false, =
BIT(DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS) },
>  };
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/dr=
m_dp_helper.h
> index 3d74b2cec72fd..da94932f4262b 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -632,6 +632,13 @@ enum drm_dp_quirk {
>  =09 * the DP_MAX_LINK_RATE register reporting a lower max multiplier.
>  =09 */
>  =09DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS,
> +=09/**
> +=09 * @DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC:
> +=09 *
> +=09 * The device applies HBLANK expansion for some modes, but this
> +=09 * requires enabling DSC.
> +=09 */
> +=09DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC,
>  };
> =20
>  /**

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

