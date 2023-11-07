Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3C77E4BD2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 23:36:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D511910E0EE;
	Tue,  7 Nov 2023 22:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A384810E0EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 22:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1699396561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j6tHKEqOiRHDQZZID2lEUPfOJKt/a/zwLoiXh+R3qUY=;
 b=MJI7Wsz5OV219paj1Gk+3/vIBXk031hrY+5GOTID0So/7TirWkVkSa+XJkxK3k5u+XcSbW
 oVOY+E2bnsORDBz6oNDbNVj0X6gbs0JCPF2/4fgE3nDkKzwXEKYgus01Tlt+SZb3Ct8gHw
 l3C2QyPeZgZO3s51OX9sOJE/kmk4RYg=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-678-pp9gm7WUMHibhNft7UGP7g-1; Tue, 07 Nov 2023 17:36:00 -0500
X-MC-Unique: pp9gm7WUMHibhNft7UGP7g-1
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-41cd46aa351so66814431cf.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Nov 2023 14:36:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699396560; x=1700001360;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=imbkFy/HKzeGBp0rOG6gITkD4/4Qvx+Xf9l2owiSrCg=;
 b=nt8JPxuI6SrJQlbbOAu1Wt8z0dwNfKTwI2nN2t05AvaJSehmnQiC64ceX3KMw95pza
 RHCtebe2TAC+wd46Uzw7Gbp8ZzJCF28mSREhijC6zejWNfkY007/dqcWJVUlSXeSjIC1
 IUcvDqxNazc4r44aq8vPQ5PtGr8NaTwZEYNltTz1a5mQtgZa73z2Yj1g2uZUjZmHowdm
 69oIvDg2xMoHfBSK7mihhwvG3BdVljvj+wTz/b8FPa35g9PyldZPNrOriFklopGtb39r
 48TPiEBGRLHzS1mS/EhqjpR8Ikv3rNKgyrGBoaFg+EbveRQqB12R7MMVEPkcQiugRoSi
 ctZA==
X-Gm-Message-State: AOJu0YxSHPLc1NLycKB+Zwd9EFQBcAbqw+o4uj04zp6I8NUwH37NrKzZ
 yh3iPE1kUFZeEIRkevgDR+cD52Jl1/V68bEVZFjRm9giMW4tPgs9xQnfGtvnKLRVbSzyzuKO4DC
 XWRL4RA+t+HPYIDJGvogYBeO8lPbM
X-Received: by 2002:a05:622a:155:b0:412:f12:2398 with SMTP id
 v21-20020a05622a015500b004120f122398mr299930qtw.31.1699396560142; 
 Tue, 07 Nov 2023 14:36:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQ/EDjlmnhzm9TsLStE49AxzehX/ObB1SYNJQhsMLN3DCCtc+50dHKswgAgXaZN1VOz9h34A==
X-Received: by 2002:a05:622a:155:b0:412:f12:2398 with SMTP id
 v21-20020a05622a015500b004120f122398mr299918qtw.31.1699396559873; 
 Tue, 07 Nov 2023 14:35:59 -0800 (PST)
Received: from ?IPv6:2600:4040:5c6c:a300::feb? ([2600:4040:5c6c:a300::feb])
 by smtp.gmail.com with ESMTPSA id
 n5-20020ac86745000000b0041977932fc6sm151190qtp.18.2023.11.07.14.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Nov 2023 14:35:59 -0800 (PST)
Message-ID: <8171b920311ed07879bbeb726f817ef9d18fc008.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 07 Nov 2023 17:35:58 -0500
In-Reply-To: <20231030155843.2251023-8-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-8-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 07/30] drm/dp: Add
 DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
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
> Add the DPCD flag to enable DSC passthrough in a last branch device,
> used in a follow-up i915 patch.
>=20
> Also add a flag to detect HBLANK expansion support in a branch device,
> used by a workaround in a follow-up i915 patch.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  include/drm/display/drm_dp.h | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index e69cece404b3c..763d45a612f35 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -148,6 +148,7 @@
>  #define DP_RECEIVE_PORT_0_CAP_0=09=09    0x008
>  # define DP_LOCAL_EDID_PRESENT=09=09    (1 << 1)
>  # define DP_ASSOCIATED_TO_PRECEDING_PORT    (1 << 2)
> +# define DP_HBLANK_EXPANSION_CAPABLE        (1 << 3)
> =20
>  #define DP_RECEIVE_PORT_0_BUFFER_SIZE=09    0x009
> =20
> @@ -699,6 +700,7 @@
> =20
>  #define DP_DSC_ENABLE                       0x160   /* DP 1.4 */
>  # define DP_DECOMPRESSION_EN                (1 << 0)
> +# define DP_DSC_PASSTHROUGH_EN=09=09    (1 << 1)
>  #define DP_DSC_CONFIGURATION=09=09=09=090x161=09/* DP 2.0 */
> =20
>  #define DP_PSR_EN_CFG=09=09=09=090x170   /* XXX 1.2? */

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

