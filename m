Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45098368907
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 00:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CA36EAD4;
	Thu, 22 Apr 2021 22:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895BB6EAD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 22:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619130830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f/vRB79wkOkQwRN4IMQD6uSpNtDOh8JtWPvQm40S7Z8=;
 b=BNpuWTEd8p4AZO5O2i+V9fLpLxPxJWtEg1PTXBuLKQ2xXp5a/b0i7F2nwTIVVScpIp1V8F
 9zcqzSGjWSgeiw5OdLor7wmIVG61qhxLYCdqPmUsecLsYYN8pqyXDwGZ4pfDCfWUR9AUk3
 LTLIeRUg3qtWjWKN6cIFMeSlj9keFQI=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-154-V3I_btxHMK61L-G2sqfxtQ-1; Thu, 22 Apr 2021 18:33:48 -0400
X-MC-Unique: V3I_btxHMK61L-G2sqfxtQ-1
Received: by mail-qt1-f200.google.com with SMTP id
 10-20020ac8594a0000b02901b9f6ae286fso8340625qtz.23
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 15:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=f/vRB79wkOkQwRN4IMQD6uSpNtDOh8JtWPvQm40S7Z8=;
 b=FjU+Vv7I94bS7oWj2m1vdsq1WeWb/mxhU+Rxk2zUNYmK8msEh+3EqgPWLDdatI1ufi
 d9VbN3xuNwa1zqW1gfARxDt6Yy5PcT38qGBBMD7WYC3aoD002mLQgmK+JTH0Sqwi9hh2
 quj6n79OVWJLFrkHPy2NA/wcFdq0bBMD70Q1zLNuxi7k88FpKteO/CM02J4/ZTOCdrhI
 wRjFdr3Za1OQil+CptZd1+R5fKQ86d6ZfNG2fM87yRz7p30Iibcs0aaLKuYSUnxPALuV
 Y1whVWXGWAFHYmirzAYPtzEo8/BEqzz1/mIl4q2bdO9VCqWPcpPa6MzmYbdu+/0D7I3e
 28MA==
X-Gm-Message-State: AOAM531pRlIAKvglO6PHBNBUy/XwSbsoE1qc+g+iIHqbvLkBG81PkcN4
 WUe+KEWHXqfRhxum1yyjmPxoi5CmxbRwcUIaoT6Ay+gA8N5VCADiNIwxqfVQ2GebxUNkh9RMNDE
 MDGtMWpFm+UVsnkC2nqzWNKsrqL47
X-Received: by 2002:ad4:4947:: with SMTP id o7mr881602qvy.18.1619130828606;
 Thu, 22 Apr 2021 15:33:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz02Kh6a2SHHB692u3GqETh7EMROD4F/lD1uak4N1xfhj+PZRZ3m979UGgrkSpKy+qKyYfYag==
X-Received: by 2002:ad4:4947:: with SMTP id o7mr881548qvy.18.1619130828362;
 Thu, 22 Apr 2021 15:33:48 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id j185sm3229184qke.1.2021.04.22.15.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Apr 2021 15:33:47 -0700 (PDT)
Message-ID: <2e211a6623664714af1d180eadcd74aa7ef417db.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Thierry Reding <thierry.reding@gmail.com>
Date: Thu, 22 Apr 2021 18:33:44 -0400
In-Reply-To: <56a931c9f284ee6a23583eb3dc59de4afaa60e93.camel@redhat.com>
References: <20210419225523.184856-1-lyude@redhat.com>
 <20210419225523.184856-4-lyude@redhat.com> <YH4PPbY1qqF2NtrN@intel.com>
 <56a931c9f284ee6a23583eb3dc59de4afaa60e93.camel@redhat.com>
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
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Joe Perches <joe@perches.com>, Yuti Amonkar <yamonkar@cadence.com>,
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

T0sgLSB0YWxrZWQgd2l0aCBWaWxsZSBhIGJpdCBvbiB0aGlzIGFuZCBkaWQgc29tZSBvZiBteSBv
d24gcmVzZWFyY2gsIEkKYWN0dWFsbHkgdGhpbmsgdGhhdCBtb3ZpbmcgaTJjIHRvIGRybV9kcF9h
dXhfaW5pdCgpIGlzIHRoZSByaWdodCBkZWNpc2lvbiBmb3IKdGhlIHRpbWUgYmVpbmcuIFRoZSBy
ZWFzb25pbmcgYmVoaW5kIHRoaXMgYmVpbmcgdGhhdCBhcyBzaG93biBieSBteSBwcmV2aW91cwp3
b3JrIG9mIGZpeGluZyBkcml2ZXJzIHRoYXQgY2FsbCBkcm1fZHBfYXV4X3JlZ2lzdGVyKCkgdG9v
IGVhcmx5IC0gaXQgc2VlbXMKbGlrZSB0aGVyZSdzIGFscmVhZHkgYmVlbiBkcml2ZXJzIHRoYXQg
aGF2ZSBiZWVuIHdvcmtpbmcganVzdCBmaW5lIHdpdGgKc2V0dGluZyB1cCB0aGUgaTJjIGRldmlj
ZSBiZWZvcmUgRFJNIHJlZ2lzdHJhdGlvbi4gCgpJbiB0aGUgZnV0dXJlLCBpdCdkIHByb2JhYmx5
IGJlIGJldHRlciBpZiB3ZSBjYW4gc3BsaXQgdXAgaTJjX2FkZF9hZGFwdGVyKCkKaW50byBhbiBp
bml0IGFuZCByZWdpc3RlciBmdW5jdGlvbiAtIGJ1dCB3ZSdsbCBoYXZlIHRvIHRhbGsgd2l0aCB0
aGUgaTJjCm1haW50YWluZXJzIHRvIHNlZSBpZiB0aGlzIGlzIGFjY2VwdGFibGUgdy8gdGhlbQoK
T24gVGh1LCAyMDIxLTA0LTIyIGF0IDEzOjE4IC0wNDAwLCBMeXVkZSBQYXVsIHdyb3RlOgo+IE9u
IFR1ZSwgMjAyMS0wNC0yMCBhdCAwMjoxNiArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
ID4gCj4gPiBUaGUgaW5pdCB2cy4gcmVnaXN0ZXIgc3BsaXQgaXMgaW50ZW50aW9uYWwuIFJlZ2lz
dGVyaW5nIHRoZSB0aGluZwo+ID4gYW5kIGFsbG93aW5nIHVzZXJzcGFjZSBhY2Nlc3MgdG8gaXQg
YmVmb3JlIHRoZSByZXN0IG9mIHRoZSBkcml2ZXIKPiA+IGlzIHJlYWR5IGlzbid0IHBhcnRpY3Vs
YXJseSBncmVhdC4gRm9yIGEgd2hpbGUgbm93IHdlJ3ZlIHRyaWVkIHRvCj4gPiBtb3ZlIHRvd2Fy
ZHMgYW4gYXJjaGl0ZWN0dXJlIHdoZXJlIHRoZSBkcml2ZXIgaXMgZnVsbHkgaW5pdGlhbHppZWQK
PiA+IGJlZm9yZSBhbnl0aGluZyBnZXRzIGV4cG9zZWQgdG8gdXNlcnNwYWNlLgo+IAo+IFllYWgt
dGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dC4gVGhpZXJyeSAtIGRvIHlvdSB0aGluayB0
aGVyZSdzIGFuCj4gYWx0ZXJuYXRlIHNvbHV0aW9uIHdlIGNvdWxkIGdvIHdpdGggaW4gVGVncmEg
dG8gZml4IHRoZSBnZXRfZGV2aWNlKCkgaXNzdWUKPiB0aGF0IHdvdWxkbid0IHJlcXVpcmUgdXMg
dHJ5aW5nIHRvIGV4cG9zZSB0aGUgaTJjIGFkYXB0ZXIgZWFybHk/Cj4gCj4gPiAKPiAKCi0tIApD
aGVlcnMsCiBMeXVkZSBQYXVsIChzaGUvaGVyKQogU29mdHdhcmUgRW5naW5lZXIgYXQgUmVkIEhh
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
