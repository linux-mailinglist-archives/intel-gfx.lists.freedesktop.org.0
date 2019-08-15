Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 030DD8F5CE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 22:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCA36E461;
	Thu, 15 Aug 2019 20:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB7E6E461
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 20:33:34 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id b204so642890vka.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 13:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pVKL+Vt7TTMhf8EoKEksSvn3C10ygdtjM4GgBHp640M=;
 b=O5IEpj2sZmtfIamZxMSrMnVZCFDt7cNRRQSATKE5Emk4Ub0LLp+PVVjZVDGfDK6ypf
 0JWIK8Y58JEM5G1YtdGM/PnI8d6jSJluR0PEvu+XrcJX7KDqRIqZx130AoWXQlCBP2pO
 3HgcxUi2VQDHhpBmyuuKl5Gy3ajt2B4KscYNriJC0WsnIysmm6pN1wdzQ5UqoZ+lDHv7
 /K5SJWzq7citJr01pLXRQ7mGBk8Sc3k/dYD3yk9uI5VqHuBfT54QaSYDdBzJ7ZRZdjx0
 LJMfI0wwznGGwPmot5a6F/bd6DiavoEgZfaN3vUyhGSydx9Uc5sk/4THgJp4LJL+2rDy
 UCrA==
X-Gm-Message-State: APjAAAXvn9/YNJoJIcbq/IUdJ/JkXcduMciRyL9yViTYhUWnqfP8VmhP
 9R87QnlqVvJVXcwqfnosyFoZ+3u4TGULxZXghmE=
X-Google-Smtp-Source: APXvYqzhg3SLazrq2u9Nm6/9mZhToPDENyOR9idu3XDhUakV1F5u7G+P5SOhpBaefefKYEvk6F7+L9lg94Rn+bqCI1U=
X-Received: by 2002:a1f:ce47:: with SMTP id e68mr2761765vkg.79.1565901213501; 
 Thu, 15 Aug 2019 13:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-5-chris@chris-wilson.co.uk>
In-Reply-To: <20190814092643.1908-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Aug 2019 21:33:07 +0100
Message-ID: <CAM0jSHM_Gcj8EayaDFf3Gte1HHKZ-ecbTiPTFTP5vtdX02gjXA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=pVKL+Vt7TTMhf8EoKEksSvn3C10ygdtjM4GgBHp640M=;
 b=E3aVFN82lbz6OeItR4uflkuYuTwe2QST6KnV1C6sNxxvYQ71wM40YQdi4I6Pb7bJzb
 rcQdd11XY5AYYV1XGslDrMKPkV8jGCVzib3oKu0ilykcKVPzsRXcKSJOtCURi4N3r7qn
 8FzhJyG2m8tPdU3MwCrFNda2ie0JrhsSjZzsk0pnHVNSU3cRAhwKDDEiePYM9dT00bkt
 MkusaB7FJa04ngrPJs05RulIQyzFvZjzY/8onM8bopkiCZotSHmY6qU5AZoo122YatUt
 aUR1uOjZH1TXD2DSpRKdQuLeGrfP5zoSuMJ5HIHUgVKJz4jZ1PD3IP43DY5AuKaEnpkB
 4guw==
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Protect request retirement
 with timeline->mutex
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDoyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gRm9yZ28gdGhlIHN0cnVjdF9tdXRleCByZXF1aXJlbWVu
dCBmb3IgcmVxdWVzdCByZXRpcmVtZW50IGFzIHdlIGhhdmUKPiBiZWVuIHRyYW5zaXRpb25pbmcg
b3ZlciB0byBvbmx5IHVzaW5nIHRoZSB0aW1lbGluZS0+bXV0ZXggZm9yCj4gY29udHJvbGxpbmcg
dGhlIGxpZmV0aW1lIG9mIGEgcmVxdWVzdCBvbiB0aGF0IHRpbWVsaW5lLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIC4u
Li9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDE4MyArKysrKysr
KysrLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oICAg
ICAgIHwgIDE4ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
ICAgICB8ICAgMSAtCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBl
cy5oICB8ICAgMyAtCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAg
ICAgICB8ICAgMiAtCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgg
ICAgICB8ICAgMiAtCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAg
ICAgICB8ICAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
YyAgICB8ICAxOSArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAg
ICAgICAgfCAgIDEgLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0
LmMgICAgfCAgIDkgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAg
ICAgICAgIHwgMTU2ICsrKysrKystLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuaCAgICAgICAgICAgfCAgIDMgLQo+ICAxMiBmaWxlcyBjaGFuZ2VkLCAyMDkgaW5z
ZXJ0aW9ucygrKSwgMTg5IGRlbGV0aW9ucygtKQo+Cgo+ICBib29sIGk5MTVfcmV0aXJlX3JlcXVl
c3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3Qg
aW50ZWxfcmluZyAqcmluZywgKnRtcDsKPiArICAgICAgIHN0cnVjdCBpbnRlbF9ndF90aW1lbGlu
ZXMgKnRpbWVsaW5lcyA9ICZpOTE1LT5ndC50aW1lbGluZXM7Cj4gKyAgICAgICBzdHJ1Y3QgaW50
ZWxfdGltZWxpbmUgKnRsLCAqdG47Cj4gKyAgICAgICBMSVNUX0hFQUQoZnJlZSk7Cj4gKwo+ICsg
ICAgICAgc3Bpbl9sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwo+ICsgICAgICAgbGlzdF9mb3JfZWFj
aF9lbnRyeV9zYWZlKHRsLCB0biwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxpbmspIHsKPiAr
ICAgICAgICAgICAgICAgaWYgKCFtdXRleF90cnlsb2NrKCZ0bC0+bXV0ZXgpKQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+Cj4gLSAgICAgICBsb2NrZGVwX2Fzc2VydF9oZWxk
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArICAgICAgICAgICAgICAgaW50ZWxfdGltZWxp
bmVfZ2V0KHRsKTsKPiArICAgICAgICAgICAgICAgR0VNX0JVR19PTighdGwtPmFjdGl2ZV9jb3Vu
dCk7Cj4gKyAgICAgICAgICAgICAgIHRsLT5hY3RpdmVfY291bnQrKzsgLyogcGluIHRoZSBsaXN0
IGVsZW1lbnQgKi8KPiArICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9j
ayk7Cj4KPiAtICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShyaW5nLCB0bXAsCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmk5MTUtPmd0LmFjdGl2ZV9yaW5ncywgYWN0
aXZlX2xpbmspIHsKPiAtICAgICAgICAgICAgICAgaW50ZWxfcmluZ19nZXQocmluZyk7IC8qIGxh
c3QgcnEgaG9sZHMgcmVmZXJlbmNlISAqLwo+IC0gICAgICAgICAgICAgICByaW5nX3JldGlyZV9y
ZXF1ZXN0cyhyaW5nKTsKPiAtICAgICAgICAgICAgICAgaW50ZWxfcmluZ19wdXQocmluZyk7Cj4g
KyAgICAgICAgICAgICAgIHJldGlyZV9yZXF1ZXN0cyh0bCk7Cj4gKwo+ICsgICAgICAgICAgICAg
ICBzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7Cj4gKwo+ICsgICAgICAgICAgICAgICAvKiBS
ZXN0YXJ0IGl0ZXJhdGlvbiBhZnRlciBkcm9wcGluZyBsb2NrICovCj4gKyAgICAgICAgICAgICAg
IGxpc3Rfc2FmZV9yZXNldF9uZXh0KHRsLCB0biwgbGluayk7CgpUaGF0J3MgYSBuZXcgb25lLgoK
IlNldmVyYWwgaG91cnMgbGF0ZXIiLApSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
