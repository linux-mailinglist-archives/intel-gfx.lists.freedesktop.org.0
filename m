Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B37E514BD3E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B449E6EE8B;
	Tue, 28 Jan 2020 15:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7CB6EE8A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:50:08 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id r27so12399340otc.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nc6zEDXW8JJ+3wMLQz+Td4KltH/qS/E9W/fNWd91GVE=;
 b=aexZ6lqWaGA4Yqgfmv0EU2IOl51VB56G0IGfVO2bQMi5mn/PXPqJ+Mgj7dw7+QEHJO
 qRF8siw3EGSQY+5ShcjuCbmhzF8CBuuH2jAsX/qlyOiSxEVCKFKvuSosWdnUkNtMcMJ3
 cYDwrWmvboYVimo5vXWX8mOO0/W90LEfKjGDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nc6zEDXW8JJ+3wMLQz+Td4KltH/qS/E9W/fNWd91GVE=;
 b=ci/0gvt/zSMMZVUTfFxWsLjD6Pg9ZuwbR0/BW+JtjiumokllKNDhhMI6ojoDBgW1ws
 pf1IOuU5X5bN4w5W9J/VXIqgJR6PKTIewJCGgLyt9tCBRXnh4VbfezdchBYBeUpXNSHv
 3ZkHw8Dk2ie+6SLwzWpe9B5SDPQ2Fnv/VfoTf/9hBme18w4glwRiJKFoMQcK1ry7CvlD
 Jjw3ss9eYzvEF2gDctPsZcqOk1gkNWsmuMJlBWOSp3osrrhVM/GffnHkJzL/7A/mmEqZ
 7NcoXZ/W0HJWSQf7cTbJR/yIkHENnYSiu1yNT269J9eKz7ZofYwQrzeSmslsUw/O136p
 kR0w==
X-Gm-Message-State: APjAAAX3wl6Yo30sgTnbixSUa+1LXTT5sQnwUSk7SnTjY4Io68XqUbFO
 7sKKrpDwE7B2Vlaswv7eJRXDn9ZFL5t7H+WcecwFQQ==
X-Google-Smtp-Source: APXvYqwh8ncpMiFVjXYefVItDpoiwQzhG8050eHpaLpG6eiCmNlj6Nh2jaVbtG9Wuk22BAaHia9csZ47hMVFYiRkVPo=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr17632223otq.281.1580226607561; 
 Tue, 28 Jan 2020 07:50:07 -0800 (PST)
MIME-Version: 1.0
References: <20190821203835.18314-1-daniel.vetter@ffwll.ch>
 <20190822122038.GK5942@intel.com>
In-Reply-To: <20190822122038.GK5942@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 28 Jan 2020 16:49:56 +0100
Message-ID: <CAKMK7uHYJBsYbSkUbrAa4e6odrax4uij=CaNHkDewcoLJ3D6=w@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/crc: Actually allow to change the crc
 source
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMjoyMCBQTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0
IDEwOjM4OjM1UE0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiBPb3BzLgo+ID4KPiA+
IEZpeGVzOiA5ZWRiZjFmYTYwMGEgKCJkcm06IEFkZCBBUEkgZm9yIGNhcHR1cmluZyBmcmFtZSBD
UkNzIikKPiA+IENjOiBUb21ldSBWaXpvc28gPHRvbWV1LnZpem9zb0Bjb2xsYWJvcmEuY29tPgo+
ID4gQ2M6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gPiBDYzog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZGVidWdmc19jcmMuYyB8IDIgKy0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kZWJ1Z2ZzX2NyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9kZWJ1Z2ZzX2NyYy5jCj4gPiBpbmRleCBiZTFiN2JhOTJmZmUuLjZmZTY5M2VlMTVmOSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZGVidWdmc19jcmMuYwo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kZWJ1Z2ZzX2NyYy5jCj4gPiBAQCAtMzY5LDcgKzM2OSw3
IEBAIHZvaWQgZHJtX2RlYnVnZnNfY3J0Y19jcmNfYWRkKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykK
PiA+Cj4gPiAgICAgICBjcmNfZW50ID0gZGVidWdmc19jcmVhdGVfZGlyKCJjcmMiLCBjcnRjLT5k
ZWJ1Z2ZzX2VudHJ5KTsKPiA+Cj4gPiAtICAgICBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJjb250cm9s
IiwgU19JUlVHTywgY3JjX2VudCwgY3J0YywKPiA+ICsgICAgIGRlYnVnZnNfY3JlYXRlX2ZpbGUo
ImNvbnRyb2wiLCBTX0lSVUdPIHwgU19JV1VTUiwgY3JjX2VudCwgY3J0YywKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJmRybV9jcnRjX2NyY19jb250cm9sX2ZvcHMpOwo+Cj4gUmV2aWV3
ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpG
b3VuZCB0aGlzIG9sZCBwYXRjaCBvZiBtaW5lLCBmaW5hbGx5IGFwcGxpZWQgaXQuIFRoYW5rcyBm
b3IgeW91ciByZXZpZXcuCi1EYW5pZWwKCj4KPiBCdXQgY291bGQgd2UgcGxlYXNlIGdvIG9jdGFs
PyBNeSBicmFpbiBjYW4ndCBkZWNvZGUgdGhhdCBhbHBoYWJldCBzb3VwLgo+Cj4gPiAgICAgICBk
ZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJkYXRhIiwgU19JUlVHTywgY3JjX2VudCwgY3J0YywKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgJmRybV9jcnRjX2NyY19kYXRhX2ZvcHMpOwo+ID4gLS0K
PiA+IDIuMjMuMC5yYzEKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwKPgo+IC0tCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwK
CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
