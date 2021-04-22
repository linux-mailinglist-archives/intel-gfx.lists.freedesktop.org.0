Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A46B93685AB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 19:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F926E53C;
	Thu, 22 Apr 2021 17:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4686E532
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 17:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619111900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LfDSNIXXrzz4FbE4CwlcLSSxDEOGT/2JNoxma+lfpdU=;
 b=Yk4WL4ODoxcfAuOvUF+VWdjDMqYG/SNUfoEM7YQPcb5H/13pT5N6NszC8gLyHyju6PcXvm
 BaS5Lo7084G5q3ZHod7/skGkbANCsUpphXPgXbOSQ72Ic0m6ZBX+7yT0mGiwLE9kMwSdSk
 71UFd0NzIdut5P4Sh+Us2EwMaS9slpg=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-WdNz4JxeNiKDZxrtk_czeA-1; Thu, 22 Apr 2021 13:18:13 -0400
X-MC-Unique: WdNz4JxeNiKDZxrtk_czeA-1
Received: by mail-qv1-f70.google.com with SMTP id
 r18-20020a0ccc120000b02901a21aadacfcso14210509qvk.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 10:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=LfDSNIXXrzz4FbE4CwlcLSSxDEOGT/2JNoxma+lfpdU=;
 b=KQeRp2EnmJeBcDh1+lkF7c3rafAFjOg4FpZAY3xCAJsuxE9X0GOvSqTbiaUi2fJuxf
 iSEWc4ZZaFj60OOGn5tFdPlOEkVuA4Ul9zqp6JMHBDB79bga7+F/MXZFr9vgVOM8l0iA
 GQIdvqK8sO0+gNQEkAji8SwOIgvyy2UGPIQmrw7q9ZPmA2iG/GUdj2jA6qsI+uinMqKo
 YHHqCCOi6+O90Lj+tGY83o3TgDP0UVeWi5BmcUiNm58tqkQpUHhx8C/xi4T+6USE7Veh
 0M8ZOHbEdKS2u/S4IQG6RMbmCwEdvEgNkou7jmJtvFJIskxaLyN3d8BAw6ZywceV0dAV
 ZCYw==
X-Gm-Message-State: AOAM530BgzqO+amV2feKQFKRUmppyl+g3esi+3w0z1y/plh+sWxW7Ght
 yFdBmiGfhxOpDJtfIo63vHXEa3jgM573yEhcdj6lp/H6wXXQ2y+KtjuxgPzuEFmwrS91QGYmDg9
 4Q8wHfBZcXYJRUy2Gkydy+Df/WvSF
X-Received: by 2002:a37:9547:: with SMTP id x68mr4649707qkd.474.1619111892943; 
 Thu, 22 Apr 2021 10:18:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxL+wipZ8wslP+tJgr/etmf17aGBKnIbho/C7QbmqdQYxpKccy8EwWdn+YgrbEvV+9kokVRew==
X-Received: by 2002:a37:9547:: with SMTP id x68mr4649649qkd.474.1619111892722; 
 Thu, 22 Apr 2021 10:18:12 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id v4sm2561004qto.50.2021.04.22.10.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Apr 2021 10:18:12 -0700 (PDT)
Message-ID: <56a931c9f284ee6a23583eb3dc59de4afaa60e93.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Thierry Reding <thierry.reding@gmail.com>
Date: Thu, 22 Apr 2021 13:18:09 -0400
In-Reply-To: <YH4PPbY1qqF2NtrN@intel.com>
References: <20210419225523.184856-1-lyude@redhat.com>
 <20210419225523.184856-4-lyude@redhat.com> <YH4PPbY1qqF2NtrN@intel.com>
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
 Thierry Reding <treding@nvidia.com>, Harry Wentland <harry.wentland@amd.com>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 intel-gfx@lists.freedesktop.org, Joe Perches <joe@perches.com>,
 Yuti Amonkar <yamonkar@cadence.com>, Maxime Ripard <mripard@kernel.org>,
 Mikita Lipski <mikita.lipski@amd.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chris Park <Chris.Park@amd.com>,
 Eryk Brol <eryk.brol@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Robert Foss <robert.foss@linaro.org>, Julia Lawall <Julia.Lawall@inria.fr>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA0LTIwIGF0IDAyOjE2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gCj4gVGhlIGluaXQgdnMuIHJlZ2lzdGVyIHNwbGl0IGlzIGludGVudGlvbmFsLiBSZWdpc3Rl
cmluZyB0aGUgdGhpbmcKPiBhbmQgYWxsb3dpbmcgdXNlcnNwYWNlIGFjY2VzcyB0byBpdCBiZWZv
cmUgdGhlIHJlc3Qgb2YgdGhlIGRyaXZlcgo+IGlzIHJlYWR5IGlzbid0IHBhcnRpY3VsYXJseSBn
cmVhdC4gRm9yIGEgd2hpbGUgbm93IHdlJ3ZlIHRyaWVkIHRvCj4gbW92ZSB0b3dhcmRzIGFuIGFy
Y2hpdGVjdHVyZSB3aGVyZSB0aGUgZHJpdmVyIGlzIGZ1bGx5IGluaXRpYWx6aWVkCj4gYmVmb3Jl
IGFueXRoaW5nIGdldHMgZXhwb3NlZCB0byB1c2Vyc3BhY2UuCgpZZWFoLXRoYW5rIHlvdSBmb3Ig
cG9pbnRpbmcgdGhpcyBvdXQuIFRoaWVycnkgLSBkbyB5b3UgdGhpbmsgdGhlcmUncyBhbgphbHRl
cm5hdGUgc29sdXRpb24gd2UgY291bGQgZ28gd2l0aCBpbiBUZWdyYSB0byBmaXggdGhlIGdldF9k
ZXZpY2UoKSBpc3N1ZQp0aGF0IHdvdWxkbid0IHJlcXVpcmUgdXMgdHJ5aW5nIHRvIGV4cG9zZSB0
aGUgaTJjIGFkYXB0ZXIgZWFybHk/Cgo+IAoKLS0gCkNoZWVycywKIEx5dWRlIFBhdWwgKHNoZS9o
ZXIpCiBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
