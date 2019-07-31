Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBD87B752
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 02:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9A86E649;
	Wed, 31 Jul 2019 00:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9136E648
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 00:49:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 17:49:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="177117437"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 17:49:31 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 17:48:59 -0700
Message-Id: <20190731004902.34672-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
References: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/tgl: add Gen12 default indirect
 ctx offset
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuMTIgdXNlcyBhIG5ldyBpbmRpcmVjdCBjdHggb2Zmc2V0LgoKQ2M6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICB8IDQgKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3JlZy5oIHwgMSArCiAyIGZpbGVzIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXgg
ZDkwNjFkOTM0OGNiLi5jMzc5MTg0YWM5ODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCkBAIC0yODkxLDYgKzI4OTEsMTAgQEAgc3RhdGljIHUzMiBpbnRlbF9scl9pbmRpcmVjdF9j
dHhfb2Zmc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlkZWZhdWx0OgogCQlN
SVNTSU5HX0NBU0UoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkpOwogCQkvKiBmYWxsIHRocm91Z2gg
Ki8KKwljYXNlIDEyOgorCQlpbmRpcmVjdF9jdHhfb2Zmc2V0ID0KKwkJCUdFTjEyX0NUWF9SQ1Nf
SU5ESVJFQ1RfQ1RYX09GRlNFVF9ERUZBVUxUOworCQlicmVhazsKIAljYXNlIDExOgogCQlpbmRp
cmVjdF9jdHhfb2Zmc2V0ID0KIAkJCUdFTjExX0NUWF9SQ1NfSU5ESVJFQ1RfQ1RYX09GRlNFVF9E
RUZBVUxUOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3JlZy5oCmluZGV4IDZiZjM0
NzM4YjRlNS4uYjhmMjBhZDcxMTY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmNfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
X3JlZy5oCkBAIC02NCw1ICs2NCw2IEBACiAjZGVmaW5lIEdFTjlfQ1RYX1JDU19JTkRJUkVDVF9D
VFhfT0ZGU0VUX0RFRkFVTFQJMHgyNgogI2RlZmluZSBHRU4xMF9DVFhfUkNTX0lORElSRUNUX0NU
WF9PRkZTRVRfREVGQVVMVAkweDE5CiAjZGVmaW5lIEdFTjExX0NUWF9SQ1NfSU5ESVJFQ1RfQ1RY
X09GRlNFVF9ERUZBVUxUCTB4MUEKKyNkZWZpbmUgR0VOMTJfQ1RYX1JDU19JTkRJUkVDVF9DVFhf
T0ZGU0VUX0RFRkFVTFQJMHhECiAKICNlbmRpZiAvKiBfSU5URUxfTFJDX1JFR19IXyAqLwotLSAK
Mi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
