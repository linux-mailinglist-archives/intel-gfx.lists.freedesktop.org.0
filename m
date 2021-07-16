Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E9B3CBC69
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A01456E9CF;
	Fri, 16 Jul 2021 19:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D28A6E9CF;
 Fri, 16 Jul 2021 19:24:18 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id i4so5111297qvq.10;
 Fri, 16 Jul 2021 12:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8Tlcfwlh61VvBfUuFwx0JAkGhthlhwqsds2zjxw3FFc=;
 b=nyCHzGNzvyIOfv/0FnBGg2DfPyQdxi/zLxb5Pr85zPf25qE6ER/dCG0Lx3RloP9lbZ
 F1loKvZHTgFw3KWOy0nEoPT+gMnMKsxTTFT7zD2CB7g9nFaM9O+WZoaGAaKQkUM5CSFF
 RrMhHgoHEYJapxHOcrxwItpPs6LMLEj1m8Tro4wTT3DlNj3jJ/ix4umOgzl4VxO8CG/e
 ZutPBOQkuV91Qb2YIChP/mX5DNAPddgNjnWu9duOjTjqBY5FgkM2hG/tP+ViB6EMIBSW
 tjibZXcUqRqMuxh617i/gP/elp7xt7TZbm+GOlHbWLq7oQo+mgWBfxaO2QVLVoDRFpJQ
 u+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8Tlcfwlh61VvBfUuFwx0JAkGhthlhwqsds2zjxw3FFc=;
 b=NgAAUPvBdSLdV7VVea1WWL7Jqdv/fXViMNpxyHHSYmVOeeifEH5Dau1m+AMP0M66zA
 qjbTh5m4DrOv8jWihPLxuJobsyhuwCPPdTjRb4AGuNIWFwi0J678SRLUAlOXZngc0Ypt
 4DQywBiISQrlJwYOCg5UZRfTXkxISeHitapiK2zH5sRjVerwrlpvEdbApkYfLLFxLTm8
 P15f8frK2WR4wAxCDJzijj1EWMaQlz4ufM2DsNMBN0beAgLFvODZ47ft+4q54mIZ3/iN
 Rdmv071kkBlYS+R3zpyqa8n4NLLrzA4ePVd60wDBAD0qukdmh9/jnzRMwOJKzok4clpi
 FWyQ==
X-Gm-Message-State: AOAM530IaL59h4Im9ADMGaqUzFLjbdqEslgvbP+3UVgsSpuf+zT1W3UX
 SL5jSLSVGqjM1vWBQUxXlJHFAWD22XdSCVGe1/o=
X-Google-Smtp-Source: ABdhPJzR39No7NPmXgI1WMgWZlGXlv0Mfvg3s23OIIdqdq0v8oksApsGB/29vPHAU51Hvr6VjC4l/IytetqtYG4Tjkw=
X-Received: by 2002:a0c:f6c6:: with SMTP id d6mr11898323qvo.30.1626463457392; 
 Fri, 16 Jul 2021 12:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210716141426.1904528-1-jason@jlekstrand.net>
 <20210716141426.1904528-6-jason@jlekstrand.net>
In-Reply-To: <20210716141426.1904528-6-jason@jlekstrand.net>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 16 Jul 2021 20:23:51 +0100
Message-ID: <CAM0jSHP2oNbsvqp__njc7yuK7j-HE7pO4p5G=-UkUEnHZjXSFw@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/gem/ttm: Respect the objection
 region in placement_from_obj
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNiBKdWwgMjAyMSBhdCAxNToxNCwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PiB3cm90ZToKPgo+IFdoZW5ldmVyIHdlIGhhZCBhIHVzZXIgb2JqZWN0IChuX3Bs
YWNlbWVudHMgPiAwKSwgd2Ugd2VyZSBpZ25vcmluZwo+IG9iai0+bW0ucmVnaW9uIGFuZCBhbHdh
eXMgcHV0dGluZyBvYmotPnBsYWNlbWVudHNbMF0gYXMgdGhlIHJlcXVlc3RlZAo+IHJlZ2lvbi4g
IEZvciBMTUVNK1NNRU0gb2JqZWN0cywgdGhpcyB3YXMgY2F1c2luZyB0aGVtIHRvIGdldCBzaG92
ZWQgaW50bwo+IExNRU0gb24gZXZlcnkgaTkxNV90dG1fZ2V0X3BhZ2VzKCkgZXZlbiB3aGVuIFNN
RU0gd2FzIHJlcXVlc3RlZCBieSwgc2F5LAo+IGk5MTVfZ2VtX29iamVjdF9taWdyYXRlKCkuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4g
Q2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4K
PiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKQUZBSUsgbWFr
ZXMgc2Vuc2UsIGp1c3QgYSBxdWVzdGlvbiBvZiBwcm9wZXJseSB1bmRlcnN0YW5kaW5nIHRoYXQK
d2VpcmQgbWlncmF0aW9uIGlzc3VlIGZpcnN0LgoKQXNzdW1pbmcgQ0kgaXMgaGFwcHksClJldmll
d2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAzICstLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5kZXggNjU4OTQxMTM5NmQzZi4uOGVlYjczYzdj
NDAxYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRt
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiBAQCAt
MTUwLDggKzE1MCw3IEBAIGk5MTVfdHRtX3BsYWNlbWVudF9mcm9tX29iaihjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4KPiAg
ICAgICAgIHBsYWNlbWVudC0+bnVtX3BsYWNlbWVudCA9IDE7Cj4gLSAgICAgICBpOTE1X3R0bV9w
bGFjZV9mcm9tX3JlZ2lvbihudW1fYWxsb3dlZCA/IG9iai0+bW0ucGxhY2VtZW50c1swXSA6Cj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPm1tLnJlZ2lvbiwgcmVxdWVz
dGVkLCBmbGFncyk7Cj4gKyAgICAgICBpOTE1X3R0bV9wbGFjZV9mcm9tX3JlZ2lvbihvYmotPm1t
LnJlZ2lvbiwgcmVxdWVzdGVkLCBmbGFncyk7Cj4KPiAgICAgICAgIC8qIENhY2hlIHRoaXMgb24g
b2JqZWN0PyAqLwo+ICAgICAgICAgcGxhY2VtZW50LT5udW1fYnVzeV9wbGFjZW1lbnQgPSBudW1f
YWxsb3dlZDsKPiAtLQo+IDIuMzEuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
