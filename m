Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149E2D6B91
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 00:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E996EC11;
	Thu, 10 Dec 2020 23:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A536EC11
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 23:38:58 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id d189so7764671oig.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 15:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Xttzg5wtWSJuyhvkLFy4JuwjAoezoQVbTNmf9lADQNA=;
 b=ZMxjz+98OSTTvCm6iKTKs0Izn4dStWiO8NSIiWzZz9JP3LuRFFkihx14S5Sf8QkpeD
 TqAGFUOfzxH3zfStfqJlDXf1JDrLD1l9cLea6SqP+0LZjK/KujLR4sS1TY/dylUls2a6
 fYuxzSOblCstan/P9KcAht6xQrA+wkRXxClFXI7Ns12f9vfmriEzY0WXFYBLKfoKvZo5
 N3FGeAbCUUoLHJlrUNQXWyqRzQgPvddSkiR9uQrfl4/3ikEJGM1TNmfuINSkyXsfq+oT
 ya/iMAbFMA5IMuXySY9We1g4W5AtAu0+8fzGvbZv6zCYz+/AOb/y+IRxyCDzjlJmjzF/
 LHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Xttzg5wtWSJuyhvkLFy4JuwjAoezoQVbTNmf9lADQNA=;
 b=UwHCbgOCUxq/MSK5WtBCf08hv05eLgFDu6pqKlkU2esnJ7K47qQtWb99wOjKbNQeXh
 e6gfuwy1YxOFQzqDeg2vfVgwydJMWuNfIhEw0CrCpUQaQ8G5IuZhz2tctq3WiU4NR4LK
 N8QQd3gRDFkvVl/aAoRCnXidYNCYhVI16aw0DCJvqaJO7xpPpzhuGPkBUXWvmJB9jiN7
 bl4GyuFT5hMfkl7+1jd+WAKFIHIygLKwF+JgJpEADA1XT30PhGj5BDkpPSumhA3F9rea
 FyEkdch8azQ/Z0r9/DsSLDAHIG5VA69L2JKSEJTomerm+8uTDKcuhRdV80RH9OiBoJnC
 8ang==
X-Gm-Message-State: AOAM530gp0HwiaoOrxrOam1uREkc+9BY3mxpbRExYrmwzI4/UAmmA5Ln
 82hrY7Zs/YQI/VEZrgeLx3WbwL7ZrFeGAqgNtmc=
X-Google-Smtp-Source: ABdhPJw5A7+1DNciZqsMcEjwV3sB2U3OlkZg+KzZp3dpXSDK2jzzXVuE9Jba7dTmUcoil9SJjg4ktktXm7GKwTd1wpk=
X-Received: by 2002:aca:4d8b:: with SMTP id a133mr7512968oib.79.1607643537618; 
 Thu, 10 Dec 2020 15:38:57 -0800 (PST)
MIME-Version: 1.0
References: <20201210230741.17140-1-chris@chris-wilson.co.uk>
 <20201210231322.GA117137@intel.com>
In-Reply-To: <20201210231322.GA117137@intel.com>
From: "H.J. Lu" <hjl.tools@gmail.com>
Date: Thu, 10 Dec 2020 15:38:21 -0800
Message-ID: <CAMe9rOrcQHmc+EY3oNYMgD9mtq8ihd_J=E3hRJa9m31TNP_oNA@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Go softly softly on
 initial modeset failure
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMzoxMyBQTSBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTE6MDc6NDFQ
TSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUmVkdWNlIHRoZSBtb2R1bGUvZGV2aWNl
IHByb2JlIGVycm9yIGludG8gYSBtZXJlIGRlYnVnIHRvIGhpZGUgaXNzdWVzCj4gPiB3aGVyZSB0
aGUgaW5pdGlhbCBtb2Rlc2V0IGlzIGZhaWxpbmcgKGFmdGVyIGxpZXMgdG9sZCBieSBodyBwcm9i
ZSkgYW5kCj4gPiB0aGUgc3lzdGVtIGhhbmdzIHdpdGggYSBsaXZlbG9jayBpbiBjbGVhbmluZyB1
cCB0aGUgZmFpbGVkIGNvbW1pdC4KPiA+Cj4gPiBSZXBvcnRlZC1ieTogSC5KLiBMdSA8aGpsLnRv
b2xzQGdtYWlsLmNvbT4KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcv
c2hvd19idWcuY2dpP2lkPTIxMDYxOQo+ID4gRml4ZXM6IGIzYmY5OWRhYWVlOSAoImRybS9pOTE1
L2Rpc3BsYXk6IERlZmVyIGluaXRpYWwgbW9kZXNldCB1bnRpbCBhZnRlciBHR1RUIGlzIGluaXRp
YWxpc2VkIikKPiA+IEZpeGVzOiBjY2M5ZTY3YWIyNmYgKCJkcm0vaTkxNS9kaXNwbGF5OiBEZWZl
ciBpbml0aWFsIG1vZGVzZXQgdW50aWwgYWZ0ZXIgR0dUVCBpcyBpbml0aWFsaXNlZCIpCj4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+
IENjOiAiVmlsbGUgU3lyasOkbMOkIiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gQ2M6IEguSi4g
THUgPGhqbC50b29sc0BnbWFpbC5jb20+Cj4gPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVk
aGF0LmNvbT4KPgo+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+ID4gaW5kZXggYzU2N2MwY2FkYTdlLi43NjFiZThkZWFhOWIgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IEBAIC0x
ODc1NSw3ICsxODc1NSw3IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCj4gPiAgICAgICAgKi8KPiA+ICAgICAgIHJldCA9IGludGVsX2luaXRp
YWxfY29tbWl0KCZpOTE1LT5kcm0pOwo+ID4gICAgICAgaWYgKHJldCkKPiA+IC0gICAgICAgICAg
ICAgcmV0dXJuIHJldDsKPiA+ICsgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwg
IkluaXRpYWwgbW9kZXNldCBmYWlsZWQsICVkXG4iLCByZXQpOwoKWWVzLCBpdCBmaXhlZCB0aGUg
cHJvYmxlbS4KClRoYW5rcy4KCj4gPiAgICAgICBpbnRlbF9vdmVybGF5X3NldHVwKGk5MTUpOwo+
ID4KPiA+IC0tCj4gPiAyLjIwLjEKPiA+CgoKCi0tIApILkouCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
