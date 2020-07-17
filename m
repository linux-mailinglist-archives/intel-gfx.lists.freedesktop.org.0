Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB482245B4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E736B6E22D;
	Fri, 17 Jul 2020 21:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19226E233
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:14:22 +0000 (UTC)
IronPort-SDR: Pa4BkChol2O8qjBxNP3hAXPDQ1r1ikxA3SSB3onXUb8SixJ8G429nTrvierscnsD6QUKuxIpsV
 yxDX3yuxy/5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="129245063"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="129245063"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:14:22 -0700
IronPort-SDR: Jb84YDJD7veKlG9a6sBbl9CKqXi91ftFTAVD2XZAJZ6GeyvqqXpgCQZiVi8KCtQJPiatiFv0kd
 k4Pp5I7tdejA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="300687425"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 Jul 2020 14:14:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:14:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:37 +0300
Message-Id: <20200717211345.26851-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/20] drm/i915: Polish bdw_read_lut_10() a bit
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIGJkd19yZWFkX2x1dF8xMCgpIHVzZXMgdGhlIGF1dG8taW5jcmVtZW50IG1vZGUgd2UgbXVz
dApoYXZlIGFuIGVxdWFsIG51bWJlciBvZiBlbnRyaWVzIGluIHRoZSBzb2Z0d2FyZSBMVVQgYW5k
IHRoZQpoYXJkd2FyZSBMVVQuIFdBUk4gaWYgdGhhdCBpcyBub3QgdGhlIGNhc2UuCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDcgKysrKyst
LQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggZjM0MjU3OTIyZTRk
Li45ZjAxZmIzMTZlZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMKQEAgLTIwMDUsMTIgKzIwMDUsMTUgQEAgc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlf
YmxvYiAqYmR3X3JlYWRfbHV0XzEwKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwog
CWludCBpLCBod19sdXRfc2l6ZSA9IGl2Yl9sdXRfMTBfc2l6ZShwcmVjX2luZGV4KTsKKwlpbnQg
bHV0X3NpemUgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+Y29sb3IuZ2FtbWFfbHV0X3NpemU7CiAJ
ZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAq
YmxvYjsKIAlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0OwogCisJZHJtX1dBUk5fT04oJmRldl9w
cml2LT5kcm0sIGx1dF9zaXplICE9IGh3X2x1dF9zaXplKTsKKwogCWJsb2IgPSBkcm1fcHJvcGVy
dHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sCi0JCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2Nv
bG9yX2x1dCkgKiBod19sdXRfc2l6ZSwKKwkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0
KSAqIGx1dF9zaXplLAogCQkJCQlOVUxMKTsKIAlpZiAoSVNfRVJSKGJsb2IpKQogCQlyZXR1cm4g
TlVMTDsKQEAgLTIwMjAsNyArMjAyMyw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Js
b2IgKmJkd19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgUFJFQ19QQUxfSU5ERVgocGlwZSksCiAJCSAgICAgICBwcmVjX2luZGV4
IHwgUEFMX1BSRUNfQVVUT19JTkNSRU1FTlQpOwogCi0JZm9yIChpID0gMDsgaSA8IGh3X2x1dF9z
aXplOyBpKyspIHsKKwlmb3IgKGkgPSAwOyBpIDwgbHV0X3NpemU7IGkrKykgewogCQl1MzIgdmFs
ID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgUFJFQ19QQUxfREFUQShwaXBlKSk7CiAKIAkJaWxr
X2x1dF8xMF9wYWNrKCZsdXRbaV0sIHZhbCk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
