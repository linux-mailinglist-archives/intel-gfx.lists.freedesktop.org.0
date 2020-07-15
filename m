Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF26220E78
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F116EB62;
	Wed, 15 Jul 2020 13:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352796EB62
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 13:52:00 +0000 (UTC)
Received: by mail-oo1-xc42.google.com with SMTP id c4so473202oou.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 06:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MqsOl2rYB/7u7Gut1iGuVJHU6JubtHB+/cs3tCH619k=;
 b=IKgfCkkoCpyGSci4cTPs6WgN6drUjM+E3fQd+RPREwzfcvyoI/L2/DSylDaZWzbbuB
 ZgDTW9XW77MQfdfYrmTKY8Ba+zSSqU0LXVTiQfGjJQ1YBrXbynYX7OwZI6lTTmBPBmKW
 2LvOJErq6bacSh3G/oxiPt9fWxpefW9zWQzeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MqsOl2rYB/7u7Gut1iGuVJHU6JubtHB+/cs3tCH619k=;
 b=boCAXBDwfE28CINauqGwxXYFk+mImA0ghQh8Z9z3lxQAGlyHN3VWeWpRYctGC1/Dcc
 yCwrpL2ZnamfWinoe10EV2v7jjiSHmjuQGgyPE1kEJH/cX9Pj3DRAVS6rcj/t0mwZcDO
 I/RdoI9vaXQQjPngXhRQh7PDzIq9iLrF76dHPV7RHYjwjMbCsOCEDfqYgyRAWkz5Bl3+
 7CuFQZ6sw/tNEqVu/E3MroAnLM1XqhZdmXtEOsH0x+Zmdo5hDuRkTyRRgyKg7LIoxCM/
 LjOOBO3Hz1k5UEgnstBQtIZZ0elS3yy2mwrhYfhQmuYEPWcENwWMnF+IVhO3CsjnqM9y
 fd4g==
X-Gm-Message-State: AOAM5307o/+DL/cwzhQHzoTb7R14e6blodFah/zBpjJWZWGTaXQLZXfy
 S/hWv8Mh8+w7tP744FCete+WivpzlhGyu6o6VWZ2EQ==
X-Google-Smtp-Source: ABdhPJwb4NJPJ8t5WoT1YhrXoIhXNQ8S5ZrdL1024UrQe8WZqMBqKIOTr7Bpj9gabyh7CPZGKTyh2I4hoATPLTHtUTk=
X-Received: by 2002:a4a:bb8a:: with SMTP id h10mr9338522oop.28.1594821119474; 
 Wed, 15 Jul 2020 06:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-9-daniel.vetter@ffwll.ch>
 <20200715125347.GT159988@e110455-lin.cambridge.arm.com>
In-Reply-To: <20200715125347.GT159988@e110455-lin.cambridge.arm.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 15 Jul 2020 15:51:48 +0200
Message-ID: <CAKMK7uHt=eUP+FQpET8j8bVsmL3FqEBVcWPQSk6R27SMqpuV+w@mail.gmail.com>
To: Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [Intel-gfx] [PATCH 08/25] drm/malidp: Annotate dma-fence
 critical section in commit path
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMTUsIDIwMjAgYXQgMjo1MyBQTSBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1bCAwNywgMjAyMCBhdCAxMDoxMjoxMlBNICsw
MjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gQWdhaW4gbmVlZHMgdG8gYmUgcHV0IHJpZ2h0
IGFmdGVyIHRoZSBjYWxsIHRvCj4gPiBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfaHdfZG9uZSgp
LCBzaW5jZSB0aGF0J3MgdGhlIGxhc3QgdGhpbmcgd2hpY2gKPiA+IGNhbiBob2xkIHVwIGEgc3Vi
c2VxdWVudCBhdG9taWMgY29tbWl0Lgo+ID4KPiA+IE5vIHN1cnByaXNlcyBoZXJlLgo+Cj4gSSB3
YXMgKHN0aWxsIGFtKSBob3BpbmcgdG8gZG8gYSB0ZXN0aW5nIGZvciB0aGlzIHBhdGNoIGJ1dCB3
aGVuIEkgZHVnIG91dCB0aGUgc2VyaWVzCj4gZnJvbSB0aGUgTUwgaXQgbG9va2VkIGxpa2UgaXQg
aGFzIGV4dHJhIGRlcGVuZGVuY2llcywgc28gSSB3YXMgd2FpdGluZyBmb3IgdGhlIGR1c3QKPiB0
byBzZXR0bGUuCj4KPiBPdGhlcndpc2UsIExHVE0uCgpJIHNob3VsZCBhbGwganVzdCBhcHBseSBJ
IHRoaW5rLCBpdCdzIGJhc2VkIG9uIGRybS10aXAuIEJyYW5jaCB3aXRoCmJ1bmNoIG9mIG90aGVy
IHJhbmRvbSBzdHVmZiBpcyBoZXJlOgoKaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+ZGFu
dmV0L2RybS9sb2cvCgpJZiB0aGF0IGRvZXNuJ3QgY2hlcnJ5LXBpY2sgY2xlYW5seSBJJ20gY29u
ZnVzZWQgYWJvdXQgc29tZXRoaW5nLgotRGFuaWVsCgo+Cj4gQmVzdCByZWdhcmRzLAo+IExpdml1
Cj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KPiA+IENjOiAiSmFtZXMgKFFpYW4pIFdhbmciIDxqYW1lcy5xaWFuLndhbmdAYXJt
LmNvbT4KPiA+IENjOiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KPiA+IENjOiBN
aWhhaWwgQXRhbmFzc292IDxtaWhhaWwuYXRhbmFzc292QGFybS5jb20+Cj4gPiAtLS0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vYXJtL21hbGlkcF9kcnYuYyB8IDMgKysrCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YXJtL21hbGlkcF9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gPiBp
bmRleCA2OWZlZTA1YzI1NmMuLjI2ZTYwNDAxYThlMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtL21h
bGlkcF9kcnYuYwo+ID4gQEAgLTIzNCw2ICsyMzQsNyBAQCBzdGF0aWMgdm9pZCBtYWxpZHBfYXRv
bWljX2NvbW1pdF90YWlsKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKPiA+ICAgICAg
IHN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKPiA+ICAgICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAq
b2xkX2NydGNfc3RhdGU7Cj4gPiAgICAgICBpbnQgaTsKPiA+ICsgICAgIGJvb2wgZmVuY2VfY29v
a2llID0gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsKPiA+Cj4gPiAgICAgICBwbV9ydW50
aW1lX2dldF9zeW5jKGRybS0+ZGV2KTsKPiA+Cj4gPiBAQCAtMjYwLDYgKzI2MSw4IEBAIHN0YXRp
YyB2b2lkIG1hbGlkcF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUg
KnN0YXRlKQo+ID4KPiA+ICAgICAgIG1hbGlkcF9hdG9taWNfY29tbWl0X2h3X2RvbmUoc3RhdGUp
Owo+ID4KPiA+ICsgICAgIGRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhmZW5jZV9jb29raWUpOwo+
ID4gKwo+ID4gICAgICAgcG1fcnVudGltZV9wdXQoZHJtLT5kZXYpOwo+ID4KPiA+ICAgICAgIGRy
bV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRybSwgc3RhdGUpOwo+ID4gLS0KPiA+IDIu
MjcuMAo+ID4KPgo+IC0tCj4gPT09PT09PT09PT09PT09PT09PT0KPiB8IEkgd291bGQgbGlrZSB0
byB8Cj4gfCBmaXggdGhlIHdvcmxkLCAgfAo+IHwgYnV0IHRoZXkncmUgbm90IHwKPiB8IGdpdmlu
ZyBtZSB0aGUgICB8Cj4gIFwgc291cmNlIGNvZGUhICAvCj4gICAtLS0tLS0tLS0tLS0tLS0KPiAg
ICAgwq9cXyjjg4QpXy/CrwoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
