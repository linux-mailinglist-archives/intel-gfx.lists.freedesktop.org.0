Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A8236D71
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D7F892D6;
	Thu,  6 Jun 2019 07:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0451289873
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 07:38:49 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id s184so882577oie.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Jun 2019 00:38:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=utp5nI6WKyrTwwRbD4tMOT1+pcd3XgcqW3fhQwEE6xA=;
 b=jprM962gKBKezSEuFvI6x9ayXjBCyKeLJ5+pMRi7pvIvB6gyjXd467B4eJ6kdIYbFn
 2mPXetNjqj7rxi3l035ujbGBDiwijmP/wBVmnvjqL92gpQ+ojgrbuwjDSOxsgm44jyv9
 HElTBFZnZ5Yfanqlt6wNDcUd5I7jtO9nIv6p5xb3qNKmHQ3gFdoopUMzOw7d6TQWT/nH
 DJ0l1mW+HIxXl8cpPfatxME/twOM0Fzvc6bYjITiXkIIFMCFj6N9ChzKVK3nWVcije0k
 ZIqM8vAoEEwWM8vXIUGqEHU2i8XPm/eDsmaQ4p2jgSmY+QyVtOqIOqy/F3/laQwmZVJa
 crow==
X-Gm-Message-State: APjAAAXDGZp3WXZA6s+ijB+UgI5n9kndtKpg6BABYq695a+V3Wj5Jk4O
 Nk6PJq8F1pLHnfkJZ7M5WZJ8upWPqC33B3kIObBjTQ==
X-Google-Smtp-Source: APXvYqz+wo/fhXqhpOEXpmnP4dE+gKWaXY0NuvFubmj3puGKVyBuNSHEvZXxTzqyVKCA2WM6H7A+ckI0nqFn8dUL48M=
X-Received: by 2002:aca:ef88:: with SMTP id n130mr7241969oih.132.1559806728167; 
 Thu, 06 Jun 2019 00:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20190528090304.9388-1-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 6 Jun 2019 09:38:36 +0200
Message-ID: <CAKMK7uHneUFYPiRr10X9xfWTkGtaoQBB=niDMGkAgJ-fgo5=mA@mail.gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=utp5nI6WKyrTwwRbD4tMOT1+pcd3XgcqW3fhQwEE6xA=;
 b=ek/M+WnYPApHYeBvxMRpQo0ARYWtpWrbqYEuHuOyZGrII2exYTYHQdRVyTG9hNS17h
 3IzPv+Fb4Lr1HN2Cfle5W/bwWVT2szRuqKa9vzDoXNIswL/p4VyiiPN5D3mhVb9TPsPT
 +0JVDAmhWxD5H5B03ZHUUkUGDC/NnDzfss2dU=
Subject: Re: [Intel-gfx] [PATCH 00/33] fbcon notifier begone v3!
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQmFydCwKCk9uIFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDExOjAyOjMxQU0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gSGkgYWxsLAo+Cj4gSSB0aGluayB3ZSdyZSBzbG93bHkgZ2V0dGlu
ZyB0aGVyZS4gUHJldmlvdXMgY292ZXIgbGV0dGVycyB3aXRoIG1vcmUKPiBjb250ZXh0Ogo+Cj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktTWF5
LzIxODM2Mi5odG1sCj4KPiB0bGRyOyBJIGhhdmUgYSBtdWx0aS15ZWFyIHBsYW4gdG8gaW1wcm92
ZSBmYmNvbiBsb2NraW5nLCBiZWNhdXNlIHRoZQo+IGN1cnJlbnQgdGhpbmcgaXMgYSBiaXQgYSBt
ZXNzLgo+Cj4gQ292ZXIgbGV0dGVyIG9mIHRoaXMgdmVyc2lvbiwgd2hlcmUgSSBkZXRhaWwgYSBi
aXQgbW9yZSB0aGUgZGV0YWlscwo+IGZpeGVkIGluIHRoaXMgb25lIGhlcmU6Cj4KPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1NYXkvMjE4OTg0
Lmh0bWwKPgo+IE5vdGUgdGhhdCB0aGUgbG9ja2luZyBwbGFuIGluIHRoaXMgb25lIGlzIGFscmVh
ZHkgb3V0ZGF0ZWQsIEkgb3Zlcmxvb2tlZCBhCj4gZmV3IGZ1biBpc3N1ZXMgYXJvdW5kIGFueSBw
cmludGsoKSBnb2luZyBiYWNrIHRvIGNvbnNvbGVfbG9jay4KPgo+IEkgdGhpbmsgcmVtYWluaW5n
IGJpdHM6Cj4KPiAtIEFjayBmcm9tIERhbmllbCBUaG9tcHNvbiBmb3IgdGhlIGJhY2tsaWdodCBi
aXRzLCBoZSB3YW50ZWQgdG8gY2hlY2sgdGhlCj4gICBiaWcgcGljdHVyZS4KCkkgdGhpbmsgRGFu
aWVsIGlzIHN0aWxsIG9uIHZhY2F0aW9uIHVudGlsIG5leHQgd2VlayBvciBzby4KCj4gLSBIYXNo
IG91dCBhY3R1YWwgbWVyZ2UgcGxhbi4KCkknZCBsaWtlIHRvIHN0dWZmIHRoaXMgaW50byBkcm0u
Z2l0IHNvbWVob3csIEkgZ3Vlc3MgdG9waWMgYnJhbmNoIHdvcmtzCnRvby4KCkxvbmcgdGVybSBJ
IHRoaW5rIHdlIG5lZWQgdG8gcmVjb25zaWRlciBob3cgd2UgaGFuZGxlIGZiZGV2LCBhdCBsZWFz
dCB0aGUKY29yZS9mYmNvbiBwaWVjZXMuIFNpbmNlIGEgZmV3IHllYXJzIGFsbCB0aGUgd29yayBp
biB0aGF0IGFyZWEgaGFzIGJlZW4KbW90aXZhdGVkIGJ5IGRybSwgYW5kIHB1c2hlZCBieSBkcm0g
Y29udHJpYnV0b3JzLiBIYXZpbmcgdGhhdCBtYWludGFpbmVkCmluIGEgc2VwYXJhdGUgdHJlZSB0
aGF0IGRvZXNuJ3QgcmVndWxhcmx5IGludGVncmF0ZSBpbW8gZG9lc24ndCBtYWtlIG11Y2gKc2Vu
c2UsIGFuZCB3ZSBlbmRlZCB1cCBtZXJnaW5nIGFsbW9zdCBldmVyeXRoaW5nIHRocm91Z2ggc29t
ZSBkcm0gdHJlZS4KVGhhdCBvbmUgdGltZSB3ZSBkaWRuJ3QgKGZvciBzb21lIHBhbmVsIHJvdGF0
aW9uIHN0dWZmKSBpdCByZXN1bHRlZCBpbgpzb21lIGdvb2Qgc3VwcmlzZXMuCgpJIHRoaW5rIGJl
c3Qgc29sdXRpb24gaXMgaWYgd2UgcHV0IHRoZSBjb3JlIGFuZCBmYmNvbiBiaXRzIGludG8gZHJt
LW1pc2MsCmFzIGdyb3VwIG1haW50YWluZWQgaW5mcmFzdHJ1Y3R1cmUgcGllY2UuIEFsbCB0aGUg
b3RoZXIgZ2Z4IGluZnJhIHBpZWNlcwphcmUgbWFpbnRhaW5lZCBpbiB0aGVyZSBhbHJlYWR5IHRv
by4gWW91J2Qgb2J2aW91c2x5IGdldCBjb21taXQgcmlnaHRzLgpJIHRoaW5rIHRoYXQgd291bGQg
aW5jbHVkZQotIGRyaXZlcnMvdmlkZW8vZmJkZXYKLSBkcml2ZXJzL3ZpZGVvLypjCi0gZHJpdmVy
cy92aWRlby9jb25zb2xlCgpJIGRvbid0IHJlYWxseSBjYXJlIGFib3V0IHdoYXQgaGFwcGVucyB3
aXRoIHRoZSBhY3R1YWwgZmJkZXYgZHJpdmVycwooYXNpZGUgZnJvbSB0aGUgZHJtIG9uZSBpbiBk
cm1fZmJfaGVscGVyLmMsIGJ1dCB0aGF0J3MgYWxyZWFkeSBtYWludGFpbmVkCmFzIHBhcnQgb2Yg
ZHJtKS4gSSBndWVzcyB3ZSBjb3VsZCBhbHNvIHB1dCB0aG9zZSBpbnRvIGRybS1taXNjLCBvciBh
cyBhCnNlcGFyYXRlIHRyZWUsIGRlcGVuZGluZyB3aGF0IHlvdSB3YW50LgoKVGhvdWdodHM/CgpD
aGVlcnMsIERhbmllbAoKCj4KPiBJJ20gYWxzbyBjYydpbmcgdGhlIGVudGlyZSBwaWxlIHRvIGEg
bG90IG1vcmUgcGVvcGxlIG9uIHJlcXVlc3QuCj4KPiBUaGFua3MsIERhbmllbAo+Cj4gRGFuaWVs
IFZldHRlciAoMzMpOgo+ICAgZHVtbXljb246IFNwcmlua2xlIGxvY2tpbmcgY2hlY2tzCj4gICBm
YmRldjogbG9ja2luZyBjaGVjayBmb3IgZmJfc2V0X3N1c3BlbmQKPiAgIHZ0OiBtaWdodF9zbGVl
cCgpIGFubm90YXRpb24gZm9yIGRvX2JsYW5rX3NjcmVlbgo+ICAgdnQ6IE1vcmUgbG9ja2luZyBj
aGVja3MKPiAgIGZiZGV2L3NhMTEwMGZiOiBSZW1vdmUgZGVhZCBjb2RlCj4gICBmYmRldi9jeWJl
cjIwMDA6IFJlbW92ZSBzdHJ1Y3QgZGlzcGxheQo+ICAgZmJkZXYvYXR5MTI4ZmI6IFJlbW92ZSBk
ZWFkIGNvZGUKPiAgIGZiY29uOiBzL3N0cnVjdCBkaXNwbGF5L3N0cnVjdCBmYmNvbl9kaXNwbGF5
Lwo+ICAgZmJjb246IFJlbW92ZSBmYmNvbl9oYXNfZXhpdGVkCj4gICBmYmNvbjogY2FsbCBmYmNv
bl9mYl8odW4pcmVnaXN0ZXJlZCBkaXJlY3RseQo+ICAgZmJkZXYvc2hfbW9iaWxlOiByZW1vdmUg
c2hfbW9iaWxlX2xjZGNfZGlzcGxheV9ub3RpZnkKPiAgIGZiZGV2L29tYXA6IHN5c2ZzIGZpbGVz
IGNhbid0IGRpc2FwcGVhciBiZWZvcmUgdGhlIGRldmljZSBpcyBnb25lCj4gICBmYmRldjogc3lz
ZnMgZmlsZXMgY2FuJ3QgZGlzYXBwZWFyIGJlZm9yZSB0aGUgZGV2aWNlIGlzIGdvbmUKPiAgIHN0
YWdpbmcvb2xwYzogbG9ja19mYl9pbmZvIGNhbid0IGZhaWwKPiAgIGZiZGV2L2F0eWZiOiBsb2Nr
X2ZiX2luZm8gY2FuJ3QgZmFpbAo+ICAgZmJkZXY6IGxvY2tfZmJfaW5mbyBjYW5ub3QgZmFpbAo+
ICAgZmJjb246IGNhbGwgZmJjb25fZmJfYmluZCBkaXJlY3RseQo+ICAgZmJkZXY6IG1ha2UgdW5y
ZWdpc3Rlci91bmxpbmsgZnVuY3Rpb25zIG5vdCBmYWlsCj4gICBmYmRldjogdW5pZnkgdW5saW5r
X2ZyYW1lYnVmZmVyIHBhdGhzCj4gICBmYmRldi9zaF9tb2I6IFJlbW92ZSBmYiBub3RpZmllciBj
YWxsYmFjawo+ICAgZmJkZXY6IGRpcmVjdGx5IGNhbGwgZmJjb25fc3VzcGVuZGVkL3Jlc3VtZWQK
PiAgIGZiY29uOiBDYWxsIGZiY29uX21vZGVfZGVsZXRlZC9uZXdfbW9kZWxpc3QgZGlyZWN0bHkK
PiAgIGZiZGV2OiBDYWxsIGZiY29uX2dldF9yZXF1aXJlbWVudCBkaXJlY3RseQo+ICAgUmV2ZXJ0
ICJiYWNrbGlnaHQvZmJjb246IEFkZCBGQl9FVkVOVF9DT05CTEFOSyIKPiAgIGZibWVtOiBwdWxs
IGZiY29uX2ZiX2JsYW5rZWQgb3V0IG9mIGZiX2JsYW5rCj4gICBmYmRldjogcmVtb3ZlIEZCSU5G
T19NSVNDX1VTRVJFVkVOVCBhcm91bmQgZmJfYmxhbmsKPiAgIGZiOiBGbGF0dGVuIGNvbnRyb2wg
ZmxvdyBpbiBmYl9zZXRfdmFyCj4gICBmYmNvbjogcmVwbGFjZSBGQl9FVkVOVF9NT0RFX0NIQU5H
RS9fQUxMIHdpdGggZGlyZWN0IGNhbGxzCj4gICB2Z2Fzd2l0Y2hlcm9vOiBjYWxsIGZiY29uX3Jl
bWFwX2FsbCBkaXJlY3RseQo+ICAgZmJjb246IENhbGwgY29uMmZiX21hcCBmdW5jdGlvbnMgZGly
ZWN0bHkKPiAgIGZiY29uOiBEb2N1bWVudCB3aGF0IEkgbGVhcm5lZCBhYm91dCBmYmNvbiBsb2Nr
aW5nCj4gICBzdGFnaW5nL29scGNfZGNvbjogQWRkIGRybSBjb252ZXJzaW9uIHRvIFRPRE8KPiAg
IGJhY2tsaWdodDogc2ltcGxpZnkgbGNkIG5vdGlmaWVyCj4KPiAgYXJjaC9hcm0vbWFjaC1weGEv
YW0yMDBlcGQuYyAgICAgICAgICAgICAgICAgIHwgIDEzICstCj4gIGRyaXZlcnMvZ3B1L3ZnYS92
Z2Ffc3dpdGNoZXJvby5jICAgICAgICAgICAgICB8ICAxMSArLQo+ICBkcml2ZXJzL21lZGlhL3Bj
aS9pdnR2L2l2dHZmYi5jICAgICAgICAgICAgICAgfCAgIDYgKy0KPiAgZHJpdmVycy9zdGFnaW5n
L2ZidGZ0L2ZidGZ0LWNvcmUuYyAgICAgICAgICAgIHwgICA0ICstCj4gIGRyaXZlcnMvc3RhZ2lu
Zy9vbHBjX2Rjb24vVE9ETyAgICAgICAgICAgICAgICB8ICAgNyArCj4gIGRyaXZlcnMvc3RhZ2lu
Zy9vbHBjX2Rjb24vb2xwY19kY29uLmMgICAgICAgICB8ICAgNiArLQo+ICBkcml2ZXJzL3R0eS92
dC92dC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTggKwo+ICBkcml2ZXJzL3ZpZGVv
L2JhY2tsaWdodC9iYWNrbGlnaHQuYyAgICAgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy92aWRl
by9iYWNrbGlnaHQvbGNkLmMgICAgICAgICAgICAgICAgIHwgIDEyIC0KPiAgZHJpdmVycy92aWRl
by9jb25zb2xlL2R1bW15Y29uLmMgICAgICAgICAgICAgIHwgICA2ICsKPiAgZHJpdmVycy92aWRl
by9mYmRldi9hdHkvYXR5MTI4ZmIuYyAgICAgICAgICAgIHwgIDY0IC0tLQo+ICBkcml2ZXJzL3Zp
ZGVvL2ZiZGV2L2F0eS9hdHlmYl9iYXNlLmMgICAgICAgICAgfCAgIDMgKy0KPiAgZHJpdmVycy92
aWRlby9mYmRldi9jb3JlL2ZiY21hcC5jICAgICAgICAgICAgIHwgICA2ICstCj4gIGRyaXZlcnMv
dmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jICAgICAgICAgICAgICB8IDMxMyArKysrKystLS0tLS0t
LQo+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uaCAgICAgICAgICAgICAgfCAgIDYg
Ky0KPiAgZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMgICAgICAgICAgICAgIHwgMzk5
ICsrKysrKystLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5j
ICAgICAgICAgICAgfCAgMjAgKy0KPiAgZHJpdmVycy92aWRlby9mYmRldi9jeWJlcjIwMDBmYi5j
ICAgICAgICAgICAgIHwgICAxIC0KPiAgZHJpdmVycy92aWRlby9mYmRldi9uZW9mYi5jICAgICAg
ICAgICAgICAgICAgIHwgICA5ICstCj4gIC4uLi92aWRlby9mYmRldi9vbWFwMi9vbWFwZmIvb21h
cGZiLXN5c2ZzLmMgICB8ICAyMSArLQo+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L3NhMTEwMGZiLmMg
ICAgICAgICAgICAgICAgfCAgMjUgLS0KPiAgZHJpdmVycy92aWRlby9mYmRldi9zYXZhZ2Uvc2F2
YWdlZmJfZHJpdmVyLmMgIHwgICA5ICstCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxl
X2xjZGNmYi5jICAgICAgICB8IDEzMiArLS0tLS0KPiAgZHJpdmVycy92aWRlby9mYmRldi9zaF9t
b2JpbGVfbGNkY2ZiLmggICAgICAgIHwgICA1IC0KPiAgaW5jbHVkZS9saW51eC9jb25zb2xlX3N0
cnVjdC5oICAgICAgICAgICAgICAgIHwgICA1ICstCj4gIGluY2x1ZGUvbGludXgvZmIuaCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICA0NSArLQo+ICBpbmNsdWRlL2xpbnV4L2ZiY29uLmgg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMzAgKysKPiAgMjcgZmlsZXMgY2hhbmdlZCwgMzk2
IGluc2VydGlvbnMoKyksIDc4MiBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4yMC4xCj4KCi0tCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
