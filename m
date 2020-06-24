Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DCD207BF8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 21:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21ED86E3F0;
	Wed, 24 Jun 2020 19:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7476E3F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 19:04:16 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id cy7so2297838edb.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 12:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tl51HFAVL6cpB9dNSLiIWrtSE2UuWL8KNFJ8ggqD4Fc=;
 b=VByO3swa7q+XFXcjDSN/S2tDd0WKG2EgJqwfADe2X6qOoc4U1s0a5r7McGqk8CgUzk
 d7GhSlLrMjNa3QGSNImYPXFYhQCgVNy1ogApEo7sQxQgu/etT22AVFYgV+C/ZXuF4TG9
 khuxGXVl+rn112eGmurBpI/0puEfJ7erv2w4xkmJth3bGD8N2Beq3KMDgIDWvXFQzktl
 imQ/KV2UVFYmh/s4WWTtw3J+Td7YDtQhWDNAsaeM09R/8JceJ5uO/SrXwJLP8iiM9YEQ
 d0jpwINXtE2/f/bfznsxHsiiaPoaH9s+FfEa+h4S56IXkm9+7qVkO9HSKZ0keNtb8iQY
 5l1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tl51HFAVL6cpB9dNSLiIWrtSE2UuWL8KNFJ8ggqD4Fc=;
 b=fjLr1hGo/uWrNE3DngYSYdZ3fq+t3MUnmW/NvV3OUfZ3JfvZ+Hmnro2X1LhvR5dm1o
 +sG6ZXH3VYQ4fDgJiUvkJxnf5VswQ3jP3BPDr/hCz1yg0UWeAzx8+8pK1nk9zFbx9F0g
 EM/LjADuQT8HzIli6tX7eTAhUmvvOJFQ32EqgnLwFunL8ywRrY/ktHzMGYqFfheCioT7
 TVZVKb87+tyc7WP7lj+CmsnSTjMSf/8a6C5epAbOVlTE0jVfe1JqqDRLIWOZATNriEuH
 xFaoYz/3wN8rvbDvFWPNSzsvg62nKFEj5UZqBtINv/cGKncigxOZ3z7nD04IIiMGjbMW
 naFA==
X-Gm-Message-State: AOAM5334Te9zxUZseV1VXbFuGEcx8/EPX+m2dsFSEx4e+s3TM4UD9ypu
 LWxQtWkjs3Q0580dHhfk1ugpHBc8vDSh2N9SSJQ=
X-Google-Smtp-Source: ABdhPJy87PFS74nYo0TX0ueLzlP1AJbMAdyT2dnalij16n3feuGABlqN2vawPVLDq1aK0Dc5OFS8iEqWf927V2r7a34=
X-Received: by 2002:a05:6402:1481:: with SMTP id
 e1mr28371924edv.113.1593025454607; 
 Wed, 24 Jun 2020 12:04:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
 <159290661156.6856.12185315246799210214@build.alporthouse.com>
 <CAPM=9tx69Xv3xbAb1U+SGOuKk7wirZy6FbRejsajCt9Lvan9VA@mail.gmail.com>
 <159294714433.24819.3044662904558073290@build.alporthouse.com>
In-Reply-To: <159294714433.24819.3044662904558073290@build.alporthouse.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 25 Jun 2020 05:04:02 +1000
Message-ID: <CAPM=9tzY0An5THnH=+KEv35LfX0DGt9q6u=t83id6OPgFsN-LQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNCBKdW4gMjAyMCBhdCAwNzoxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBEYXZlIEFpcmxpZSAoMjAyMC0wNi0yMyAy
MjowMToyNCkKPiA+IE9uIFR1ZSwgMjMgSnVuIDIwMjAgYXQgMjA6MDMsIENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4KPiA+ID4gUXVvdGluZyBUaG9t
YXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTIzIDEwOjMzOjIwKQo+ID4gPiA+IEhpLCBD
aHJpcyEKPiA+ID4gPgo+ID4gPiA+IE9uIDYvMjIvMjAgMTE6NTkgQU0sIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+ID4gPiA+IEluIG9yZGVyIHRvIGFjdHVhbGx5IGhhbmRsZSBldmljdGlvbiBhbmQg
d2hhdCBub3QsIHdlIG5lZWQgdG8gcHJvY2Vzcwo+ID4gPiA+ID4gYWxsIHRoZSBvYmplY3RzIHRv
Z2V0aGVyIHVuZGVyIGEgY29tbW9uIGxvY2ssIHJlc2VydmF0aW9uX3d3X2NsYXNzLiBBcwo+ID4g
PiA+ID4gc3VjaCwgZG8gYSBtZW1vcnkgcmVzZXJ2YXRpb24gcGFzcyBhZnRlciBsb29raW5nIHVw
IHRoZSBvYmplY3Qvdm1hLAo+ID4gPiA+ID4gd2hpY2ggdGhlbiBmZWVkcyBpbnRvIHRoZSByZXN0
IG9mIGV4ZWNidWYgW3JlbG9jYXRpb24sIGNtZHBhcnNpbmcsCj4gPiA+ID4gPiBmbHVzaGluZyBh
bmQgb2ZjIGV4ZWN1dGlvbl0uCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+ID4gPiAtLS0KPiA+ID4g
PiA+ICAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgOTEg
KysrKysrKysrKysrKystLS0tLQo+ID4gPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgNzAgaW5zZXJ0
aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCj4gPiA+ID4gPgo+ID4gPiA+IFdoaWNoIHRyZWUgaXMg
dGhpcyBhZ2FpbnN0PyBUaGUgc2VyaWVzIGRvZXNuJ3QgYXBwbHkgY2xlYW5seSBhZ2FpbnN0Cj4g
PiA+ID4gZHJtLXRpcD8KPiA+ID4KPiA+ID4gSXQncyBjb250aW51aW5nIG9uIGZyb20gdGhlIHNj
aGVkdWxlciBwYXRjaGVzLCB0aGUgYnVnIGZpeGVzIGFuZCB0aGUKPiA+ID4gaXJpcy1kZWZlcnJl
ZC1mZW5jZSB3b3JrLiBJIHRob3VnaHQgdGhyb3dpbmcgYWxsIG9mIHRob3NlIG9sZCBwYXRjaGVz
Cj4gPiA+IGludG8gdGhlIHBpbGUgd291bGQgaGF2ZSBiZWVuIGRpc3RyYWN0aW5nLgo+ID4gPgo+
ID4gPiA+IC4uLgo+ID4gPiA+Cj4gPiA+ID4gPiArc3RhdGljIGludCBlYl9yZXNlcnZlX21tKHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsgICAgIGNv
bnN0IHU2NCBpZHggPSBlYi0+Y29udGV4dC0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQ7Cj4gPiA+
ID4gPiArICAgICBzdHJ1Y3Qgd3dfYWNxdWlyZV9jdHggYWNxdWlyZTsKPiA+ID4gPiA+ICsgICAg
IHN0cnVjdCBlYl92bWEgKmV2Owo+ID4gPiA+ID4gKyAgICAgaW50IGVycjsKPiA+ID4gPiA+ICsK
PiA+ID4gPiA+ICsgICAgIGViLT5tbV9mZW5jZSA9IF9fZG1hX2ZlbmNlX2NyZWF0ZV9wcm94eSgw
LCAwKTsKPiA+ID4gPiA+ICsgICAgIGlmICghZWItPm1tX2ZlbmNlKQo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ID4gPgo+ID4gPiA+IFdoZXJlIGFyZSB0aGUgcHJv
eHkgZmVuY2UgZnVuY3Rpb25zIGRlZmluZWQ/Cj4gPiA+Cj4gPiA+IEluIGRtYS1mZW5jZS1wcm94
eS5jIDspCj4gPgo+ID4gVGhlIGRtYS1mZW5jZS1wcm94eSB0aGF0IENocmlzdGlhbiBOQUtlZCBi
ZWZvcmU/Cj4KPiBJIGRvIG5vdCBoYXZlIGFuIGVtYWlsIGZyb20gQ2hyaXN0aWFuIGFib3V0IGRt
YS1mZW5jZS1wcm94eSBpbiB0aGUgbGFzdAo+IDMgeWVhcnMgaXQgaGFzIGJlZW4gb24gdGhlIGxp
c3QuCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvYWViMDM3M2QtMDU4My1kOTIy
LTNiNzMtOTM2NjhjMjdkMTc3QGFtZC5jb20vCgpJJ20gYXNzdW1pbmcgdGhpcyB3YXMgYWJvdXQg
cGF0Y2ggOCB0aGVyZSB3aGljaCB0byBtZSBsb29rcyBsaWtlIHByb3h5CmZlbmNlcyBidXQgbWF5
YmUgYnkgdGhyZWFkaW5nIGlzIG9mZiByZWFkaW5nIHRoYXQuCgpodHRwczovL2xvcmUua2VybmVs
Lm9yZy9kcmktZGV2ZWwvMTUwMjQ5MTE3NC0xMDkxMy05LWdpdC1zZW5kLWVtYWlsLWphc29uLmVr
c3RyYW5kQGludGVsLmNvbS8KCkRhdmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
