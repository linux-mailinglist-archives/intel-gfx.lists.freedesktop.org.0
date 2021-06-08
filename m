Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EA639FD65
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 19:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1246E241;
	Tue,  8 Jun 2021 17:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC2486E40D;
 Tue,  8 Jun 2021 17:17:40 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id a15so1622633qtx.13;
 Tue, 08 Jun 2021 10:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aznicPYlWzblYwpbBQxJra26vLS9OcvKLIk8mTyre7o=;
 b=M+gLlTp/qwD+dj27MsNYAxUaPqORbjyMwsCk6NduTST1d5WKsdVU4sZPeowicI5skX
 vkCzJewXKDFC3B4bc+X8fJG3ECSx+D9iYEN1iX1P/VQoV5g5GbA6SYyDNSsVBEorAq/S
 Et5EwSiAMEWQslNrkG5E2HNU4TTOkzh3B1o64WDQoVrprkETZSLayntr3YewGeoq33B4
 gE494gwYTu5GaCwWI/p1P6s0mZjkx5Gd7eKrRg2QfCf5Drnuy6XLGPsUh7KoQ+T/sEct
 EHahk+dHOI0qIRzvrcVXocND73LbekhT4x3jTvoNXD5YUg4V999lvCRL3vaKT+mcdWMS
 J83A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aznicPYlWzblYwpbBQxJra26vLS9OcvKLIk8mTyre7o=;
 b=mh62AEvqkdLP9JDCBuGKWnW95Zs+bo8jQQaX1cKeV3P7uDjHDsi6CG5/ogYZ31iGJi
 jjsz7D5h7z9WweQJefb1p7yfVl6G0QXXyR7E4ZVJpO47hB2o1bqqsGiv1cpTeTn/U+Es
 Lmz+jfNf+E9hMtlQO4a/AlK7EfJZ+YWhomkSNboWSe02YvUbY8aGd2FTmeAcYcz2Ph4m
 Mapm3/m+41soYslnkzstkBZ2mdoz+bU4KFfs+CQ26tZVJTDRZaDq5WNUA6bCwnO0b3RC
 WIJEavLc4s05ZqpjvalOogcZhunsu5iNK1ReGCB2pjgGzJ4Oi55xIX0Htj3CAj0S1bub
 38kQ==
X-Gm-Message-State: AOAM530Nu0IW5lQFBcAaVtWNB4YbsbEJ0nRnFuk0jbF34FU9kWHVjN9j
 xvAvYKDcrFnPbwylgpD+diwVcXiAvS+b2k25W4xySFDJaW31BQ==
X-Google-Smtp-Source: ABdhPJxISsogEgFxZLQo8/XNk3Oh9HabC19tq78iwVb/OUjQIJv7QSOI3pTEakFfbW9qcQPHcafHWSCUPhZAu6dVOps=
X-Received: by 2002:ac8:5c8c:: with SMTP id r12mr3256414qta.265.1623172660137; 
 Tue, 08 Jun 2021 10:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
 <20210608092846.64198-4-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210608092846.64198-4-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 8 Jun 2021 18:17:12 +0100
Message-ID: <CAM0jSHOyOtORECkqjYuiCncj=rFrgUeoXP4DNvxBxkF2nBmFpg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Introduce a ww transaction
 helper
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCA4IEp1biAyMDIxIGF0IDEwOjI5LCBUaG9tYXMgSGVsbHN0csO2bQo8dGhvbWFzLmhl
bGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gSW50cm9kdWNlIGEgZm9yX2k5MTVf
Z2VtX3d3KCl7fSB1dGlsaXR5IHRvIGhlbHAgbWFrZSB0aGUgY29kZQo+IGFyb3VuZCBhIHd3IHRy
YW5zYWN0aW9uIG1vcmUgcmVhZGFibGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0
csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmggfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaAo+IGluZGV4IGYyZDg3NjllNDExOC4uZjZi
MWE3OTY2NjdiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV93dy5oCj4gQEAgLTExLDEx
ICsxMSw0MCBAQCBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHsKPiAgICAgICAgIHN0cnVjdCB3d19h
Y3F1aXJlX2N0eCBjdHg7Cj4gICAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIG9ial9saXN0Owo+ICAg
ICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmNvbnRlbmRlZDsKPiAtICAgICAgIGJv
b2wgaW50cjsKPiArICAgICAgIHVuc2lnbmVkIHNob3J0IGludHI7Cj4gKyAgICAgICB1bnNpZ25l
ZCBzaG9ydCBsb29wOwoKV2h5IGFyZSB0aGVzZSBub3cgdW5zaWduZWQgc2hvcnQ/CgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKPiAgfTsKPgo+ICB2
b2lkIGk5MTVfZ2VtX3d3X2N0eF9pbml0KHN0cnVjdCBpOTE1X2dlbV93d19jdHggKmN0eCwgYm9v
bCBpbnRyKTsKPiAgdm9pZCBpOTE1X2dlbV93d19jdHhfZmluaShzdHJ1Y3QgaTkxNV9nZW1fd3df
Y3R4ICpjdHgpOwo+ICBpbnQgX19tdXN0X2NoZWNrIGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKHN0
cnVjdCBpOTE1X2dlbV93d19jdHggKmN0eCk7Cj4gIHZvaWQgaTkxNV9nZW1fd3dfdW5sb2NrX3Np
bmdsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKPiArCj4gKy8qIEludGVybmFs
IGZ1bmN0aW9ucyB1c2VkIGJ5IHRoZSBpbmxpbmVzISBEb24ndCB1c2UuICovCj4gK3N0YXRpYyBp
bmxpbmUgaW50IF9faTkxNV9nZW1fd3dfZmluaShzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dywg
aW50IGVycikKPiArewo+ICsgICAgICAgd3ctPmxvb3AgPSAwOwo+ICsgICAgICAgaWYgKGVyciA9
PSAtRURFQURMSykgewo+ICsgICAgICAgICAgICAgICBlcnIgPSBpOTE1X2dlbV93d19jdHhfYmFj
a29mZih3dyk7Cj4gKyAgICAgICAgICAgICAgIGlmICghZXJyKQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHd3LT5sb29wID0gMTsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBpZiAoIXd3LT5s
b29wKQo+ICsgICAgICAgICAgICAgICBpOTE1X2dlbV93d19jdHhfZmluaSh3dyk7Cj4gKwo+ICsg
ICAgICAgcmV0dXJuIGVycjsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkCj4gK19faTkx
NV9nZW1fd3dfaW5pdChzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dywgYm9vbCBpbnRyKQo+ICt7
Cj4gKyAgICAgICBpOTE1X2dlbV93d19jdHhfaW5pdCh3dywgaW50cik7Cj4gKyAgICAgICB3dy0+
bG9vcCA9IDE7Cj4gK30KPiArCj4gKyNkZWZpbmUgZm9yX2k5MTVfZ2VtX3d3KF93dywgX2Vyciwg
X2ludHIpICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIGZvciAoX19pOTE1X2dlbV93
d19pbml0KF93dywgX2ludHIpOyAoX3d3KS0+bG9vcDsgICAgICAgXAo+ICsgICAgICAgICAgICBf
ZXJyID0gX19pOTE1X2dlbV93d19maW5pKF93dywgX2VycikpCj4gKwo+ICAjZW5kaWYKPiAtLQo+
IDIuMzEuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
