Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9737539AB09
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 21:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172086E1F8;
	Thu,  3 Jun 2021 19:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2966E1F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 19:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622749538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DdL3iApBcvg4MiGgoxpQ3CucoVrg58zMkJEldwLiid8=;
 b=Ci1FzwwpztNh9XtBnQVh8u8UYOVFIPhXXrUNplhO1c443tpZjyqnZ0X9Y5RYcDvfsM5yU2
 HF+pSUNmxbCcDLUA8/xSgL9LaQbveHa4r2E5i3J7QZo3bWKsBI6iR0TuZA8t7x2OxFbxuS
 TAyT+kSJygwPbX4vjBszzZOyKHsplwE=
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-uqSt90LcNBaOZd7fxaSXyw-1; Thu, 03 Jun 2021 15:45:36 -0400
X-MC-Unique: uqSt90LcNBaOZd7fxaSXyw-1
Received: by mail-oo1-f69.google.com with SMTP id
 w11-20020a4ad02b0000b029023970099d97so4185584oor.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 12:45:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DdL3iApBcvg4MiGgoxpQ3CucoVrg58zMkJEldwLiid8=;
 b=RNUTuwsgj/mUfVcl+5QLt8nnkOJWkEkvorXzwqDZw0dvi3zQ/x4PQImcTLmGvTUd6A
 gN4zqTOnT+yEE0OdaUljFfQIWdTgeMEkHX+b5Jiemi7Dr0FzyvVQkUrWHlJVL1RZguVF
 BZImXlP2CdiYVecVGvva4f0Va9oPCoEGrsFHaFG+uiymGGNizodUiOY3rRBLl7lXUsH5
 DxtyRWd3ckEwNvtTaASl43KD336ka11bvu+ci4JAFlDPcJmFz9c/rPLojhdCes2Y4+dC
 +1wX3fZ1ZanIgFUl1uG9RZ7lVWcMgejVZ05pUoLjaBFDou9f8By08p80GLDUkWe88FkN
 r4cg==
X-Gm-Message-State: AOAM5335dE8V3A7fyZ1YtAHAl3Lb6bLgUK4DS/7Y5W6hTa5zuSq6pNzr
 INPX1HhZPQs7eSKKc9QoNqExMo1qlpN8ZrdHksmg021TBeGXKHxwNbcyMRK+gvPf4PKxDvRTOyd
 JKKRH3wY+LctqPfO4MpDtx5/GnGcVgtDGj9yPvb+LaO2+
X-Received: by 2002:a05:6808:193:: with SMTP id
 w19mr583350oic.152.1622749536174; 
 Thu, 03 Jun 2021 12:45:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwUVIaTI8SDTCkQukARPu8i7TT95bPWOCz5FxSQMInH26W1TksWTZihrYr9pzIZKTsjGAbkDIOIGegCFLXmvDE=
X-Received: by 2002:a05:6808:193:: with SMTP id
 w19mr583337oic.152.1622749536024; 
 Thu, 03 Jun 2021 12:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
From: David Airlie <airlied@redhat.com>
Date: Fri, 4 Jun 2021 05:45:24 +1000
Message-ID: <CAMwc25px1ZkCbThbpTtL+Dv+6b9aeXR4igpfC41pTDDFq6Uehg@mail.gmail.com>
To: =?UTF-8?Q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, "Development,
 Intel" <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMiwgMjAyMSBhdCAxMjoyNSBBTSBaYmlnbmlldyBLZW1wY3p5xYRza2kKPHpi
aWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBXZSBoYXZlIGVzdGFibGlz
aGVkIHByZXZpb3VzbHkgd2Ugc3RvcCB1c2luZyByZWxvY2F0aW9ucyBzdGFydGluZwo+IGZyb20g
Z2VuMTIgcGxhdGZvcm1zIHdpdGggVGlnZXJsYWtlIGFzIGFuIGV4Y2VwdGlvbi4gV2Uga2VlcCB0
aGlzCj4gc3RhdGVtZW50IGJ1dCB3ZSB3YW50IHRvIGVuYWJsZSByZWxvY2F0aW9ucyBjb25kaXRp
b25hbGx5IGZvcgo+IFJvY2tldGxha2UgYW5kIEFsZGVybGFrZSB1bmRlciByZXF1aXJlX2ZvcmNl
X3Byb2JlIGZsYWcgc2V0Lgo+Cj4gS2VlcGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1aXJlX2Zv
cmNlX3Byb2JlIGZsYWcgaXMgaW50ZXJpbSBzb2x1dGlvbgo+IHVudGlsIElHVHMgd2lsbCBiZSBy
ZXdyaXR0ZW4gdG8gdXNlIHNvZnRwaW4uCj4KPiB2MjogLSByZW1vdmUgaW5saW5lIGZyb20gZnVu
Y3Rpb24gZGVmaW5pdGlvbiAoSmFuaSkKPiAgICAgLSBmaXggaW5kZW50YXRpb24KPgo+IFNpZ25l
ZC1vZmYtYnk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50
ZWwuY29tPgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgo+IENjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogSmFzb24gRWtzdHJhbmQg
PGphc29uQGpsZWtzdHJhbmQubmV0PgoKQWNrZWQtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJl
ZGhhdC5jb20+Cj4gLS0tCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYyAgICB8IDI0ICsrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCAyOTcxNDM1MTFmOTkuLjc4Yjg2YTdi
YzM5YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYwo+IEBAIC00OTEsMTYgKzQ5MSwzMCBAQCBlYl91bnJlc2VydmVfdm1hKHN0cnVjdCBl
Yl92bWEgKmV2KQo+ICAgICAgICAgZXYtPmZsYWdzICY9IH5fX0VYRUNfT0JKRUNUX1JFU0VSVkVE
Owo+ICB9Cj4KPiArc3RhdGljIGJvb2wgcGxhdGZvcm1faGFzX3JlbG9jc19lbmFibGVkKGNvbnN0
IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKyAgICAgICAvKgo+ICsgICAgICAg
ICogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgc3RhcnRpbmcgZnJvbSBnZW4xMiB3aXRoIFRp
Z2VybGFrZQo+ICsgICAgICAgICogYXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3Jhcmls
eSB1c2UgcmVsb2NhdGlvbnMgZm9yIFJvY2tldGxha2UKPiArICAgICAgICAqIGFuZCBBbGRlcmxh
a2Ugd2hlbiByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgc2V0Lgo+ICsgICAgICAgICovCj4g
KyAgICAgICBpZiAoSU5URUxfR0VOKGViLT5pOTE1KSA8IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+
aTkxNSkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ICsKPiArICAgICAgIGlmIChJ
TlRFTF9JTkZPKGViLT5pOTE1KS0+cmVxdWlyZV9mb3JjZV9wcm9iZSAmJgo+ICsgICAgICAgICAg
IChJU19ST0NLRVRMQUtFKGViLT5pOTE1KSB8fCBJU19BTERFUkxBS0VfUyhlYi0+aTkxNSkgfHwK
PiArICAgICAgICAgICAgSVNfQUxERVJMQUtFX1AoZWItPmk5MTUpKSkKPiArICAgICAgICAgICAg
ICAgcmV0dXJuIHRydWU7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGZhbHNlOwo+ICt9Cj4gKwo+ICBz
dGF0aWMgaW50Cj4gIGViX3ZhbGlkYXRlX3ZtYShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwK
PiAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmVudHJ5
LAo+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgewo+IC0gICAgICAg
LyogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdM
LUxQLiAgVGhpcwo+IC0gICAgICAgICogYWxzbyBjb3ZlcnMgYWxsIHBsYXRmb3JtcyB3aXRoIGxv
Y2FsIG1lbW9yeS4KPiAtICAgICAgICAqLwo+IC0gICAgICAgaWYgKGVudHJ5LT5yZWxvY2F0aW9u
X2NvdW50ICYmCj4gLSAgICAgICAgICAgSU5URUxfR0VOKGViLT5pOTE1KSA+PSAxMiAmJiAhSVNf
VElHRVJMQUtFKGViLT5pOTE1KSkKPiArICAgICAgIGlmIChlbnRyeS0+cmVsb2NhdGlvbl9jb3Vu
dCAmJiAhcGxhdGZvcm1faGFzX3JlbG9jc19lbmFibGVkKGViKSkKPiAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7Cj4KPiAgICAgICAgIGlmICh1bmxpa2VseShlbnRyeS0+ZmxhZ3MgJiBl
Yi0+aW52YWxpZF9mbGFncykpCj4gLS0KPiAyLjI2LjAKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
