Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19F1114FA2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 12:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749FA6F9D5;
	Fri,  6 Dec 2019 11:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DED6F9D3
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 11:10:27 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id v140so5853414oie.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2019 03:10:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jLu8PQob6R7INQhNcyi5eV/VwuZ3ViZfX5Cr/XgalEQ=;
 b=qFDZa0Yod7sQvShONtWlfLZnJSk2rJ1RChF5esnJGrJUzH4pZC5+U23Ac7sZqFrdid
 b56FfAetRkFFzWebdnTEk1kJhMOZXJQViiSRY72jhB2K4ZSLQ93Z9hR/k2Ayyj3+SX7l
 NwFGh0cG2pSjKwysd8NQRZUv1xmrsgFzHblYUOWi2XjVhQWhvq0dxG0HgXzsSO/qy+1B
 FvVJutYhI+p4FIuc7IXF1AGCutJRklnsByphVWzoyCQLFthaZYPxEum02JnfBrEDCSwY
 0XGcz9iH1uGCas0CjgoXGz6DYrSKpMALqC1WUKFmG0xGAqqMWnhtSy4X+x97FhmZhlQf
 W02g==
X-Gm-Message-State: APjAAAXAdv43MvHpB1urbPS2qedTo36/pEXknqjdmKes1LsbHYRKDK9l
 rd9xPNfKSSE5EGP71yLfRNnPz6obLr/yoJ5RbaiA9Q==
X-Google-Smtp-Source: APXvYqwOneJdtD1ZXuC72wTUlo4WXxW+SIIYiQGT6fyPkbbuOUD9Np8+lzYh2iG8qelEE2FENTDJM+w77++vv8XFiOI=
X-Received: by 2002:aca:d985:: with SMTP id
 q127mr11318982oig.132.1575630626520; 
 Fri, 06 Dec 2019 03:10:26 -0800 (PST)
MIME-Version: 1.0
References: <20191127092523.5620-1-kraxel@redhat.com>
 <20191127092523.5620-2-kraxel@redhat.com>
 <20191128113930.yhckvneecpvfhlls@sirius.home.kraxel.org>
 <20191205221523.GN624164@phenom.ffwll.local>
 <20191206100724.ukzdyaym3ltcyfaa@sirius.home.kraxel.org>
 <20191206102200.6osisct57n424ujn@sirius.home.kraxel.org>
In-Reply-To: <20191206102200.6osisct57n424ujn@sirius.home.kraxel.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 6 Dec 2019 12:10:15 +0100
Message-ID: <CAKMK7uF=wZ8snurJwftyjVD2ExutfzNUGGhy8=UVFYf3=sz7qQ@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=jLu8PQob6R7INQhNcyi5eV/VwuZ3ViZfX5Cr/XgalEQ=;
 b=Gl+qSlNmaiBh0lNDEeK3wAVf56e6C5UDX83HhGX2mAZ0NU7ZMDBd5ZqrCdExodjS0m
 Wu9uL2ysiXsTj5+0JMTAvsUZCoXiKc1DPnp3tGKgifxfZZKBSRR21SCkXTuzVdC4l7ET
 PuOGIaoh+vqX5AjF6mwGN1EmWc/JfZ6nL4RIE=
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm: call drm_gem_object_funcs.mmap
 with fake offset
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Huang Rui <ray.huang@amd.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBEZWMgNiwgMjAxOSBhdCAxMToyMiBBTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIERlYyAwNiwgMjAxOSBhdCAxMTowNzoyNEFNICsw
MTAwLCBHZXJkIEhvZmZtYW5uIHdyb3RlOgo+ID4gT24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMTE6
MTU6MjNQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gTG9va3MgbGlrZSB1bnJl
bGF0ZWQgZmx1a2VzLCB0aGlzIGhhcHBlbnMgb2NjYXNpb25hbGx5LiBJZiB5b3UncmUgcGFyYW5v
aWQKPiA+ID4gaGl0IHRoZSByZXRlc3QgYnV0dG9uIG9uIHBhdGNod29yayB0byBkb3VibGUtY2hl
Y2suCj4gPiA+IC1EYW5pZWwKPiA+Cj4gPiBHdWVzcyB5b3Uga2lja2VkIENJPyAgSnVzdCBnb3Qg
Q0kgbWFpbHMsIG5vdyByZXBvcnRpbmcgc3VjY2Vzcywgd2l0aG91dAo+ID4gZG9pbmcgYW55dGhp
bmcuICBTbyBJJ2xsIGdvIHB1c2ggdjMgdG8gbWlzYy1uZXh0Lgo+Cj4gT29wcywgc3Bva2UgdG9v
IHNvb24uICBOZXh0IG1haWwgYXJyaXZlZC4gIEZpLkNJLkJBVCB3b3JrcywgYnV0Cj4gRmkuQ0ku
SUdUIHN0aWxsIGZhaWxzLgo+Cj4gV2hlcmUgaXMgdGhlICJ0ZXN0IGFnYWluIiBidXR0b24/ICBD
YW4gSSByZS1ydW4gdGhlIHRlc3RzIG9uIHYyPyAgUmlnaHQKPiBub3cgSSB0ZW5kIHRvIGNvbW1p
dCB2MiB0byBoYXZlIGEgZml4IGNvbW1pdHRlZCwgdGhlbiBnbyBmaWd1cmUgd2h5IHYzCj4gZmFp
bHMgLi4uCgpUb3Agb2YgdGhlIG1haWwgeW91IGdldCBmcm9tIENJIGlzIHRoZSBsaW5rIHRvIHRo
ZSBwYXRjaHdvcmsgc2VyaWVzLgpUaGF0IGNvbnRhaW5zIGFsbCB0aGUgc2FtZSBpbmZvIGxpa2Ug
aW4gdGhlIG1haWwsIHBsdXMgdGhlIGNvdmV0ZWQKYnV0dG9uLiBJZiBmYWlsdXJlcyBsb29rIHNp
bWlsYXIgdGhlbiB5ZXMgSSBndWVzcyB2MyBpcyBzb21laG93CmJyb2tlbi4gQnV0IEkndmUgbG9v
a2VkLCBsb29rcyBsaWtlIGp1c3QgMnggdW5yZWxhdGVkIG5vaXNlIGFuZCB5b3UKYmVpbmcgdW5s
dWNreSwgc28gaW1vIHRvdGFsbHkgZmluZSB0byBwdXNoIHYzLiBJJ2xsIGdpdmUgQ0kgZm9sa3Mg
YQpoZWFkcy11cCAoYmVzdCBkb25lIG92ZXIgaXJjIHVzdWFsbHkpLgotRGFuaWVsCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5
IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
