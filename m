Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A02433CB81C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 15:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70746E98B;
	Fri, 16 Jul 2021 13:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479766E989;
 Fri, 16 Jul 2021 13:54:36 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id f3so4593114qvm.2;
 Fri, 16 Jul 2021 06:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yYjwCI5bKDMbYefTBdJbOoEUPrf75E8PlGLY6ZxxMts=;
 b=Jb6pGIZrI/StAzOO02+eOAf+8vGsNMKfgjXFzZVOFofoJiAmQib08sFRWYj4vWP4B6
 KbojJ4Vn5abcFzXwJOitWzju41SuK1uan1ln2AW/WdTQjBTCpd88XlSwaezY260iq0lQ
 YcZuvGYX2Cd/T342rmdgbQzAGGQttuufFBo4S880F9FvLZ2njWEQSJrrjY2GceAbIGpm
 4C/S1SId5jWwo2YcH4z4o2fD2LFBsSXBmFQOp4nMAU9DsJpPODwBjgwy8IhPN8Z7Pgur
 zwJy76jzySb3FNpPZv/1nDkNCJKyisxhLAcjPcMFZbeNm6l58gJs/PVGpm1ZQ1+PQpb+
 CxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yYjwCI5bKDMbYefTBdJbOoEUPrf75E8PlGLY6ZxxMts=;
 b=YPVbx/m44yrb4cisPSEMihoyyPETTLi3zj+MQe4NGRC2/fM+7h0QarY995AZZB3w53
 GeIC7v4lj4dFfTbXcuOpwMSL0kIGfkvA8nxwecBh8utLTjn839V7VZG/5VLGDZbffiqX
 N2d+Pka+7sWah6bKZxqleuGNCeBqmSjGxdKQO6TwGweVEsz5UeVFl10IDzP9LqinqWHx
 lDuWGhkk/B7w1T8+hxPG61yqUznyGENgL7hP6HCP51Uruir1X96Loq+FISI1PBI7i85Y
 ACxaiM2mqbv17T5JNcHGrXo3R1tyWLWhJu9bqjF3EX5edCBxR15unLSyCK8SxHzHY4Y8
 EarA==
X-Gm-Message-State: AOAM530AcQl/OWO1+ut6FR+jO/QSKWMGvbIpHsEqIlH2zbNi2GxFx7xK
 BmyjTar504fNErSttTvpbmNHSoJ4WK2UREXB/PQ=
X-Google-Smtp-Source: ABdhPJzxPq4G48jM8jElp3fVPpY1fyIreaqc4vFmBD6PBtsX1D4h3oCgM4EI2r82AW1OQ7fZAyrd1VoMZh1tKxv1g7Q=
X-Received: by 2002:ad4:456d:: with SMTP id o13mr10339305qvu.48.1626443675478; 
 Fri, 16 Jul 2021 06:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-6-jason@jlekstrand.net>
In-Reply-To: <20210715223900.1840576-6-jason@jlekstrand.net>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 16 Jul 2021 14:54:06 +0100
Message-ID: <CAM0jSHPu1EBfnAJ06Dp51a1Qbg+9QnmP=EyUfYXS0fZnJzxR8g@mail.gmail.com>
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

T24gVGh1LCAxNSBKdWwgMjAyMSBhdCAyMzozOSwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PiB3cm90ZToKPgo+IFdoZW5ldmVyIHdlIGhhZCBhIHVzZXIgb2JqZWN0IChuX3Bs
YWNlbWVudHMgPiAwKSwgd2Ugd2VyZSBpZ25vcmluZwo+IG9iai0+bW0ucmVnaW9uIGFuZCBhbHdh
eXMgcHV0dGluZyBvYmotPnBsYWNlbWVudHNbMF0gYXMgdGhlIHJlcXVlc3RlZAo+IHJlZ2lvbi4g
IEZvciBMTUVNK1NNRU0gb2JqZWN0cywgdGhpcyB3YXMgY2F1c2luZyB0aGVtIHRvIGdldCBzaG92
ZWQgaW50bwo+IExNRU0gb24gZXZlcnkgaTkxNV90dG1fZ2V0X3BhZ2VzKCkgZXZlbiB3aGVuIFNN
RU0gd2FzIHJlcXVlc3RlZCBieSwgc2F5LAo+IGk5MTVfZ2VtX29iamVjdF9taWdyYXRlKCkuCgpp
OTE1X3R0bV9taWdyYXRlIGNhbGxzIGk5MTVfdHRtX3BsYWNlX2Zyb21fcmVnaW9uKCkgZGlyZWN0
bHkgd2l0aCB0aGUKcmVxdWVzdGVkIHJlZ2lvbiwgc28gdGhlcmUgc2hvdWxkbid0IGJlIGFuIGlz
c3VlIHdpdGggbWlncmF0aW9uIHJpZ2h0PwpEbyB5b3UgaGF2ZSBzb21lIG1vcmUgZGV0YWlscz8K
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+
Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNv
bT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAzICstLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5kZXggZDMwZjI3NGMzMjljNy4uNTk4NWU5
OTRkNTZjZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiBA
QCAtMTUwLDggKzE1MCw3IEBAIGk5MTVfdHRtX3BsYWNlbWVudF9mcm9tX29iaihjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4K
PiAgICAgICAgIHBsYWNlbWVudC0+bnVtX3BsYWNlbWVudCA9IDE7Cj4gLSAgICAgICBpOTE1X3R0
bV9wbGFjZV9mcm9tX3JlZ2lvbihudW1fYWxsb3dlZCA/IG9iai0+bW0ucGxhY2VtZW50c1swXSA6
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPm1tLnJlZ2lvbiwgcmVx
dWVzdGVkLCBmbGFncyk7Cj4gKyAgICAgICBpOTE1X3R0bV9wbGFjZV9mcm9tX3JlZ2lvbihvYmot
Pm1tLnJlZ2lvbiwgcmVxdWVzdGVkLCBmbGFncyk7Cj4KPiAgICAgICAgIC8qIENhY2hlIHRoaXMg
b24gb2JqZWN0PyAqLwo+ICAgICAgICAgcGxhY2VtZW50LT5udW1fYnVzeV9wbGFjZW1lbnQgPSBu
dW1fYWxsb3dlZDsKPiAtLQo+IDIuMzEuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
