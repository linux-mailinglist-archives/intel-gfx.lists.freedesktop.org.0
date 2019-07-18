Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C03546D2E6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3056E446;
	Thu, 18 Jul 2019 17:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8F06E446
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:40:30 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id a5so11550230ybo.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:40:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l+1FrNNu6RWkcTjjfIpN7v4qd/Q00mT7mAH2ay5t5YU=;
 b=RvQF7xmPVztZ1cMSVHk0xGZA9gxic5vxbadd69w7ZxvBE1az7WIh9lH3t36tpJ1w+O
 d9cg4QftlKnuzY9pjv46+jix5OeFgiDR7upnvprTNw1EiM0FCIZi3TF6GIv6nKTnwT2Z
 ZVC4sut/RO2gilX91tXAClaTwENlQcDGFDN+GH7e8k40m21v42No1saNycX+Gzs9td6Q
 Xq82w9IpV9esK3sVRHIs+ystZHCahO00vC76VYTxZYd38UxO6CIajeHnB6wBpLggRpEF
 rrYUo430GNutstKLbJwXS1MICdjqq8Sw1OsbTmXNLSF3UAu3mqiio0760hQqoxcjuOcf
 R2MQ==
X-Gm-Message-State: APjAAAVFuH+Pvi+FOn4t6x6XOGNy7AHS9naNiwfSnkFN6kWJNrmpfd5c
 mrBdswpvNeyCHYS8ycoQwJjNKg==
X-Google-Smtp-Source: APXvYqxJ1zzhHTOV/V5q7YuSBr7QrcgmxKPpucgiwKedIA1Pi+QKm5M5Imn/NYHMNbUAMKQOdVF3Ww==
X-Received: by 2002:a25:6346:: with SMTP id x67mr27596848ybb.346.1563471629832; 
 Thu, 18 Jul 2019 10:40:29 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 131sm6583625ywq.21.2019.07.18.10.40.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:40:29 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:40:28 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718174028.GE31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-3-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-3-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l+1FrNNu6RWkcTjjfIpN7v4qd/Q00mT7mAH2ay5t5YU=;
 b=biDTjzEvV5Wul7i/WyioSr3VmyuNnxd9hl/aYBxur1J6Nlh9JqlFb0SX0jszQpCzin
 DtF2vZkl1jAodp5GPZ848x9Bg3S7l99tSQNiR3UV5iI3T2AM6Ul0Yyjaj+HPsNHPbmEM
 hREO5I59HNuv1/JufTZlHI6uBu2224l76gZmOrBIYJ7P/j/8KEC7avxJPToSiwztK6iZ
 uFxLAt9tqS2/OoBrpFWslIOMZuqddBHI08EbjSsRKFuxkNbxSBSHHlQP7VKmVxJawD3G
 ORstO1Z9eGe8pSFWVeYtmngaruHc+XHO7DkCHJ8Egb5EFBlOdPb1P0Ffx818IOJV/gS3
 UiCQ==
Subject: Re: [Intel-gfx] [PATCH v1 02/11] drm: drop uapi dependency from
 drm_print.h
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Rob Herring <robh@kernel.org>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Chunming Zhou <david1.zhou@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTQ6NThQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IGRybV9wcmludC5oIHVzZWQgRFJNX05BTUUgLSB0aHVzIGFkZGluZyBhIGRlcGVuZGVu
Y3kgZnJvbQo+IGluY2x1ZGUvZHJtL2RybV9wcmludC5oID0+IHVhcGkvZHJtL2RybS5oCj4gCj4g
SGFyZGNvZGUgdGhlIG5hbWUgImRybSIgdG8gYnJlYWsgdGhpcyBkZXBlbmRlbmN5Lgo+IFRoZSBp
ZGVhIGlzIHRoYXQgdGhlcmUgc2hhbGwgYmUgYSBtaW5pbWFsIGRlcGVuZGVuY3kKPiBiZXR3ZWVu
IGluY2x1ZGUvZHJtLyogYW5kIHVhcGkvKgoKWW91IG1pZ2h0IGFsc28gd2FudCB0byBjbGVhbiB1
cCB0aGUgb3RoZXIgdXNlcyBvZiBEUk1fTkFNRSBpbiBhcm1hZGEgYW5kIGk5MTUKd2hpbGUgeW91
J3JlIGF0IGl0LiBUaGUgZWFzaWVzdCB3YXkgdG8gc2F0aXNmeSBDaHJpcycgdXNlY2FzZSBhbmQg
cmVtb3ZlIHRoZQpkZXBlbmRlbmN5IHdvdWxkIGJlIHRvIGFkZCAjZGVmaW5lIERSTV9QUklOVF9O
QU1FICJkcm0iIGluIGRybV9wcmludC5oIGFuZCB1c2UKdGhhdC4KClNlYW4KCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+IFN1Z2dlc3RlZC1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtYXhp
bWUucmlwYXJkQGJvb3RsaW4uY29tPgo+IENjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4K
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBSb2IgQ2xhcmsgPHJv
YmRjbGFya0BnbWFpbC5jb20+Cj4gQ2M6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3Jn
Pgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IC0tLQo+ICBpbmNsdWRlL2RybS9kcm1fcHJp
bnQuaCB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9wcmludC5oIGIvaW5jbHVk
ZS9kcm0vZHJtX3ByaW50LmgKPiBpbmRleCBhNWQ2ZjJmM2U0MzAuLjc2MGQxYmQwZWFmMSAxMDA2
NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fcHJpbnQuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2Ry
bV9wcmludC5oCj4gQEAgLTMyLDggKzMyLDYgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvZGVidWdmcy5oPgo+ICAKPiAtI2luY2x1ZGUgPGRybS9kcm0u
aD4KPiAtCj4gIC8qKgo+ICAgKiBET0M6IHByaW50Cj4gICAqCj4gQEAgLTI4Nyw3ICsyODUsNyBA
QCB2b2lkIGRybV9lcnIoY29uc3QgY2hhciAqZm9ybWF0LCAuLi4pOwo+ICAvKiBNYWNyb3MgdG8g
bWFrZSBwcmludGsgZWFzaWVyICovCj4gIAo+ICAjZGVmaW5lIF9EUk1fUFJJTlRLKG9uY2UsIGxl
dmVsLCBmbXQsIC4uLikJCQkJXAo+IC0JcHJpbnRrIyNvbmNlKEtFUk5fIyNsZXZlbCAiWyIgRFJN
X05BTUUgIl0gIiBmbXQsICMjX19WQV9BUkdTX18pCj4gKwlwcmludGsjI29uY2UoS0VSTl8jI2xl
dmVsICJbZHJtXSAiIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiAgCj4gICNkZWZpbmUgRFJNX0lORk8o
Zm10LCAuLi4pCQkJCQkJXAo+ICAJX0RSTV9QUklOVEsoLCBJTkZPLCBmbXQsICMjX19WQV9BUkdT
X18pCj4gLS0gCj4gMi4yMC4xCj4gCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwg
R29vZ2xlIC8gQ2hyb21pdW0gT1MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
