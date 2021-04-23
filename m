Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9110D3698B0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 19:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3586B6E14F;
	Fri, 23 Apr 2021 17:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE06C6E14F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 17:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619200418;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iMN2vr30yb/ELiIJb3jXFJDgM9IBXB6WS94R3EgBst0=;
 b=QTgKjEO9QviHC202r72SLho/D8bidgBP99vm4U8ejzjwDsIPB1pdOng81Zy8JSkIGhnUPV
 KvPe2XzDCxS8k/CagOOVUO1xPI0+BlqrbMTKrNuozFxD8XwC1QGgtAv6CiHDJfZjVwYem1
 Uz/IvW396a/sb7B6AlYMvEbx78RqvQo=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-yjKeHWA5NgKp0WgVJwoVww-1; Fri, 23 Apr 2021 13:53:36 -0400
X-MC-Unique: yjKeHWA5NgKp0WgVJwoVww-1
Received: by mail-qk1-f197.google.com with SMTP id
 l19-20020a37f5130000b02902e3dc23dc92so11227546qkk.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 10:53:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=iMN2vr30yb/ELiIJb3jXFJDgM9IBXB6WS94R3EgBst0=;
 b=eFnTQU4Egqyhm9qFScwdiOpFlKo940+SaxWYETyArVReg07yQMJ6HcbQuOA1FxdSfB
 LgiZeUx6BDsHKvKvQGvC91KTthkH804u5pzZBdyVA9W03uohmV2XMUAx+f5hmo/RYxyX
 s50xfdFDlY6vm2GEY/zxvyUJ2ETWc9cCo8q5tHMr4SFCS8UKN6f5Fk87SnyoHQ/1tlcQ
 HXBHguGgMROABrLf6NEFMqZAvHVhJmx04nx0lxdemYKgmYCPZsDMAUQvEOaYTs/YbXkq
 fBgtcEPsCqEeJFVc5u/Jtk63a0jixKZ+72X60adqSjOVZQUedQdzEQVovLIyJlhrHoq9
 ZOMw==
X-Gm-Message-State: AOAM53399T6YW0zZ/CMS9/1QMLz83MKr73U8nyVhHFxjie/AiQq76L2Q
 n8Kq8GN/i8ChSJVAjlbDf/z9t18KJg1aElvj1Pi7aBXf2LG/dRCb96g8T/OPSUGGkzqKICBX4b3
 a9Sn7sSedDeWTZsojV7p9rjuUsfdu
X-Received: by 2002:a0c:dc11:: with SMTP id s17mr5457261qvk.18.1619200415927; 
 Fri, 23 Apr 2021 10:53:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxTUVUlVfoiWl//W0HjPD0d13jw9avPkrwnpeZvBDIw6oqnKzSgsucO2i02vJ5q3mqdmlhTGw==
X-Received: by 2002:a0c:dc11:: with SMTP id s17mr5457242qvk.18.1619200415744; 
 Fri, 23 Apr 2021 10:53:35 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id c5sm4715913qkl.7.2021.04.23.10.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 10:53:35 -0700 (PDT)
Message-ID: <cb7339fe172f31c615d824b56a709d2df6b79bb7.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Thierry Reding <treding@nvidia.com>
Date: Fri, 23 Apr 2021 13:53:33 -0400
In-Reply-To: <YILABCrcMb5MksxD@orome.fritz.box>
References: <20210419225523.184856-1-lyude@redhat.com>
 <20210419225523.184856-4-lyude@redhat.com> <YH4PPbY1qqF2NtrN@intel.com>
 <56a931c9f284ee6a23583eb3dc59de4afaa60e93.camel@redhat.com>
 <2e211a6623664714af1d180eadcd74aa7ef417db.camel@redhat.com>
 <17aa145e4cfa3d8852f7411067c5c37bff771b16.camel@redhat.com>
 <YILABCrcMb5MksxD@orome.fritz.box>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 03/20] drm/dp: Move i2c init to
 drm_dp_aux_init, add __must_check and fini
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org,
 Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 Oleg Vasilev <oleg.vasilev@intel.com>, dri-devel@lists.freedesktop.org,
 Meenakshikumar Somasundaram <meenakshikumar.somasundaram@amd.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Parshuram Thombare <pthombar@cadence.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Michal Simek <michal.simek@xilinx.com>, amd-gfx@lists.freedesktop.org,
 Jonathan Hunter <jonathanh@nvidia.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Ben Skeggs <bskeggs@redhat.com>, Swapnil Jakhade <sjakhade@cadence.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>,
 Leo Li <sunpeng.li@amd.com>, intel-gfx@lists.freedesktop.org,
 Joe Perches <joe@perches.com>, Yuti Amonkar <yamonkar@cadence.com>,
 Maxime Ripard <mripard@kernel.org>, Mikita Lipski <mikita.lipski@amd.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chris Park <Chris.Park@amd.com>,
 Eryk Brol <eryk.brol@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Robert Foss <robert.foss@linaro.org>, Julia Lawall <Julia.Lawall@inria.fr>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2021-04-23 at 14:39 +0200, Thierry Reding wrote:
> 
> I'm curious: how is a DP AUX adapter reference count going to solve the
> issue of potentially registering devices too early (i.e. before the DRM
> is registered)?
> 
> Is it because registering too early could cause a reference count
> problem if somebody get a hold of the DP AUX adapter before the parent
> DRM device is around?

Well currently the problem is that we kind of want to avoid setting up the i2c
adapter before the DRM driver is registered with userspace, but it's not
really possible to do that if we need the core device struct for the ddc
adapter initialized so that tegra can call get_device() on it in
drivers/gpu/drm/tegra/sor.c. So my thought is instead of calling get_device()
on the ddc adapter that the AUX channel provides, why not just call it on the
actual platform device that implements the AUX channel instead? I think this
should work pretty nicely while still preventing the platform device for the
AUX channel from disappearing before the SOR has disappeared.


> 
> Thierry

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
