Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB91F2BA6FF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 11:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFFF589B0C;
	Fri, 20 Nov 2020 10:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BC86E8AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 10:06:02 +0000 (UTC)
Received: by mail-oo1-xc42.google.com with SMTP id s11so1254073oov.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 02:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FwZrZS2M8g80LqzTW2fm5Yrg4YpqArqxdpfJQU9jQQI=;
 b=HqdItk8eAfJ9g+K3HI5aMiUQzrvGRJOPlE6kLNI2lMu9ILhZMbvZZ6f8p9gmeEJne4
 zXq2974oLAywa/J335ISMg7Ntoqxln9e1JXz8qEiWYzK2Vyqj7OtjpeTBqm+Cdcs1QDt
 yKC7n5pCkW0BHszGjfK6qu4I1SzoqAQq/6Hcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FwZrZS2M8g80LqzTW2fm5Yrg4YpqArqxdpfJQU9jQQI=;
 b=GaISmz8/Bs7lDxNUhW9NDQBkh32Sww3aylyBXgkaUD/oYcnqEavQx/Y7hqDsCmYOPF
 UpwRZk1OEpZIIdn7Nlp9l5nzjH1VbO0CWoi1XDQKW7Ru87BICFpNcRspv0vveqdyIE3Y
 e4pElOwNOcacC3WUzX65w6Hht2QmR8hV1uRUOyqo2ZqzzJSWDDnECC65kDRMtlfFj3CX
 Ng5etWdsr3XhIJWBoqF8ufK48L6TUoeDouPOhk1s3YHpgD/DIpcXl6MoMdaH8Qhabx7V
 5mEOLeayxKGJ9yo5x/vDddvQTH59IeBGwMRANPpGZ7oH9p2ZbYERI5iY7u5NXmgf32ka
 tfiA==
X-Gm-Message-State: AOAM533as68Ipnkf2E1JfYsaCdfR74C8YSbEWMaZe9kCjtbfdOOuldZk
 JjzTL67vqykYDz7hXUu6eJETWhJLZP5dxWJC6ymvyA==
X-Google-Smtp-Source: ABdhPJyiON5L6xidYOyeZLAbz9U5Xis7bE3rvrWx7XK/ftrOp96yOttrxffYvb2YlOPVDvtJGHev197hecR9SxdWVzc=
X-Received: by 2002:a4a:8582:: with SMTP id t2mr13256498ooh.89.1605866761624; 
 Fri, 20 Nov 2020 02:06:01 -0800 (PST)
MIME-Version: 1.0
References: <20201120095445.1195585-1-daniel.vetter@ffwll.ch>
 <20201120095445.1195585-5-daniel.vetter@ffwll.ch>
 <26a62dfb-02e4-1707-c833-a3c8d5cbe828@amd.com>
In-Reply-To: <26a62dfb-02e4-1707-c833-a3c8d5cbe828@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 20 Nov 2020 11:05:50 +0100
Message-ID: <CAKMK7uHnYGiBsBLeyGA8sZXmAiaHaym9jnLKN_xY4VAtKJjG5A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: don't set page->mapping
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-xfs@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Huang Rui <ray.huang@amd.com>,
 Brian Paul <brianp@vmware.com>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjAsIDIwMjAgYXQgMTE6MDQgQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDIwLjExLjIwIHVtIDEwOjU0IHNjaHJp
ZWIgRGFuaWVsIFZldHRlcjoKPiA+IFJhbmRvbSBvYnNlcnZhdGlvbiB3aGlsZSB0cnlpbmcgdG8g
cmV2aWV3IENocmlzdGlhbidzIHBhdGNoIHNlcmllcyB0bwo+ID4gc3RvcCBsb29raW5nIGF0IHN0
cnVjdCBwYWdlIGZvciBkbWEtYnVmIGltcG9ydHMuCj4gPgo+ID4gVGhpcyB3YXMgb3JpZ2luYWxs
eSBhZGRlZCBpbgo+ID4KPiA+IGNvbW1pdCA1OGFhNjYyMmQzMmFmN2QyYzA4ZDQ1MDg1ZjQ0YzU0
NTU0YTE2ZWQ3Cj4gPiBBdXRob3I6IFRob21hcyBIZWxsc3Ryb20gPHRoZWxsc3Ryb21Adm13YXJl
LmNvbT4KPiA+IERhdGU6ICAgRnJpIEphbiAzIDExOjQ3OjIzIDIwMTQgKzAxMDAKPiA+Cj4gPiAg
ICAgIGRybS90dG06IENvcnJlY3RseSBzZXQgcGFnZSBtYXBwaW5nIGFuZCAtaW5kZXggbWVtYmVy
cwo+ID4KPiA+ICAgICAgTmVlZGVkIGZvciBzb21lIHZtIG9wZXJhdGlvbnM7IG1vc3Qgbm90YWJs
eSB1bm1hcF9tYXBwaW5nX3JhbmdlKCkgd2l0aAo+ID4gICAgICBldmVuX2Nvd3MgPSAwLgo+ID4K
PiA+ICAgICAgU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJvbUB2bXdh
cmUuY29tPgo+ID4gICAgICBSZXZpZXdlZC1ieTogQnJpYW4gUGF1bCA8YnJpYW5wQHZtd2FyZS5j
b20+Cj4gPgo+ID4gYnV0IHdlIGRvIG5vdCBoYXZlIGEgc2luZ2xlIGNhbGxlciBvZiB1bm1hcF9t
YXBwaW5nX3JhbmdlIHdpdGgKPiA+IGV2ZW5fY293cyA9PSAwLiBBbmQgYWxsIHRoZSBnZW0gZHJp
dmVycyBkb24ndCBkbyB0aGlzLCBzbyBhbm90aGVyCj4gPiBzbWFsbCB0aGluZyB3ZSBjb3VsZCBz
dGFuZGFyZGl6ZSBiZXR3ZWVuIGRybSBhbmQgdHRtIGRyaXZlcnMuCj4gPgo+ID4gUGx1cyBJIGRv
bid0IHJlYWxseSBzZWUgYSBuZWVkIGZvciB1bmFtcF9tYXBwaW5nX3JhbmdlIHdoZXJlIHdlIGRv
bid0Cj4gPiB3YW50IHRvIGluZGlzY3JpbWluYXRlbHkgc2hvb3QgZG93biBhbGwgcHRlcy4KPiA+
Cj4gPiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJvbUB2bXdhcmUuY29tPgo+ID4gQ2M6
IEJyaWFuIFBhdWwgPGJyaWFucEB2bXdhcmUuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXN0aWFuIEtvZW5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gQ2M6IEh1YW5nIFJ1aSA8cmF5Lmh1YW5n
QGFtZC5jb20+Cj4KPiBUaGlzIGlzIHN0aWxsIGEgTkFLIGFzIGxvbmcgYXMgd2UgY2FuJ3QgY29t
ZSB1cCB3aXRoIGEgYmV0dGVyIHdheSB0bwo+IHRyYWNrIFRUTXMgcGFnZSBhbGxvY2F0aW9ucy4K
Pgo+IEFkZGl0aW9uYWwgdG8gdGhhdCBwYWdlX21hcHBpbmcoKSBpcyB1c2VkIHF1aXRlIGV4dGVu
c2l2ZWx5IGluIHRoZSBtbQo+IGNvZGUgYW5kIEknbSBub3Qgc3VyZSBpZiB0aGF0IGlzbid0IG5l
ZWRlZCBmb3Igb3RoZXIgc3R1ZmYgYXMgd2VsbC4KCkFwb2xvZ2llcywgSSdtIGhvbmVzdGx5IG5v
dCBxdWl0ZSBzdXJlIGhvdyB0aGlzIGxvbmUgcGF0Y2ggaGVyZSBlbmRlZAp1cCBpbiB0aGlzIHN1
Ym1pc3Npb24uIEkgZGlkbid0IHdhbnQgdG8gc2VuZCBpdCBvdXQuCi1EYW5pZWwKCj4KPiBSZWdh
cmRzLAo+IENocmlzdGlhbi4KPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRt
X3R0LmMgfCAxMiAtLS0tLS0tLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV90dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fdHQuYwo+ID4gaW5kZXggZGE5ZWVmZmUwYzZkLi41YjJl
YjZkNThiYjcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV90dC5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV90dC5jCj4gPiBAQCAtMjg0LDE3ICsyODQs
NiBAQCBpbnQgdHRtX3R0X3N3YXBvdXQoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHN0cnVj
dCB0dG1fdHQgKnR0bSkKPiA+ICAgICAgIHJldHVybiByZXQ7Cj4gPiAgIH0KPiA+Cj4gPiAtc3Rh
dGljIHZvaWQgdHRtX3R0X2FkZF9tYXBwaW5nKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LCBz
dHJ1Y3QgdHRtX3R0ICp0dG0pCj4gPiAtewo+ID4gLSAgICAgcGdvZmZfdCBpOwo+ID4gLQo+ID4g
LSAgICAgaWYgKHR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU0cpCj4gPiAtICAgICAg
ICAgICAgIHJldHVybjsKPiA+IC0KPiA+IC0gICAgIGZvciAoaSA9IDA7IGkgPCB0dG0tPm51bV9w
YWdlczsgKytpKQo+ID4gLSAgICAgICAgICAgICB0dG0tPnBhZ2VzW2ldLT5tYXBwaW5nID0gYmRl
di0+ZGV2X21hcHBpbmc7Cj4gPiAtfQo+ID4gLQo+ID4gICBpbnQgdHRtX3R0X3BvcHVsYXRlKHN0
cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LAo+ID4gICAgICAgICAgICAgICAgICAgc3RydWN0IHR0
bV90dCAqdHRtLCBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCkKPiA+ICAgewo+ID4gQEAg
LTMxMyw3ICszMDIsNiBAQCBpbnQgdHRtX3R0X3BvcHVsYXRlKHN0cnVjdCB0dG1fYm9fZGV2aWNl
ICpiZGV2LAo+ID4gICAgICAgaWYgKHJldCkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIHJldDsK
PiA+Cj4gPiAtICAgICB0dG1fdHRfYWRkX21hcHBpbmcoYmRldiwgdHRtKTsKPiA+ICAgICAgIHR0
bS0+cGFnZV9mbGFncyB8PSBUVE1fUEFHRV9GTEFHX1BSSVZfUE9QVUxBVEVEOwo+ID4gICAgICAg
aWYgKHVubGlrZWx5KHR0bS0+cGFnZV9mbGFncyAmIFRUTV9QQUdFX0ZMQUdfU1dBUFBFRCkpIHsK
PiA+ICAgICAgICAgICAgICAgcmV0ID0gdHRtX3R0X3N3YXBpbih0dG0pOwo+CgoKLS0gCkRhbmll
bCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9n
LmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
