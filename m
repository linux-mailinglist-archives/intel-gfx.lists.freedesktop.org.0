Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 919B910251D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D686E51B;
	Tue, 19 Nov 2019 13:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1F76E51B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:04:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 05:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="209189497"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 05:04:18 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 18:03:12 +0530
Message-Id: <20191119123316.5094-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191119123316.5094-1-vandita.kulkarni@intel.com>
References: <20191119123316.5094-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V3 4/8] drm/i915/dsi: Add check for periodic command
 mode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlIEdPUCBoYXMgcHJvZ3JhbW1lZCBwZXJpb2RpYyBjb21tYW5kIG1vZGUsCndlIG5lZWQg
dG8gZGlzYWJsZSB0aGF0IHdoaWNoIHdvdWxkIG5lZWQgYQpkZWNvbmZpZ3VyZSBhbmQgY29uZmln
dXJlIHNlcXVlbmNlLgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5r
dWxrYXJuaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNs
X2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggOTZm
OTEyYjE1M2U5Li41YmJhYWM1OTgwY2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNs
X2RzaS5jCkBAIC0xMzA2LDYgKzEzMDYsMjEgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2dldF90
aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWFkanVzdGVkX21vZGUtPmNy
dGNfdmJsYW5rX2VuZCA9IGFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFsOwogfQogCitib29sIGdl
bjExX2RzaV9pc19wZXJpb2RpY19jbWRfbW9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCisJCQkJICAgIHN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSkKK3sKKwl1MzIgdmFs
OworCWVudW0gdHJhbnNjb2RlciBkc2lfdHJhbnM7CisKKwlpZiAoaW50ZWxfZHNpLT5wb3J0cyA9
PSBCSVQoUE9SVF9CKSkKKwkJZHNpX3RyYW5zID0gVFJBTlNDT0RFUl9EU0lfMTsKKwllbHNlCisJ
CWRzaV90cmFucyA9IFRSQU5TQ09ERVJfRFNJXzA7CisKKwl2YWwgPSBJOTE1X1JFQUQoRFNJX1RS
QU5TX0ZVTkNfQ09ORihkc2lfdHJhbnMpKTsKKwlyZXR1cm4gKHZhbCAmIERTSV9QRVJJT0RJQ19G
UkFNRV9VUERBVEVfRU5BQkxFKTsKK30KKwogc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2dldF9jb25m
aWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZykKIHsKQEAgLTEzMjQsNiArMTMzOSwxMCBAQCBzdGF0aWMgdm9p
ZCBnZW4xMV9kc2lfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAln
ZW4xMV9kc2lfZ2V0X3RpbWluZ3MoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCXBpcGVfY29uZmln
LT5vdXRwdXRfdHlwZXMgfD0gQklUKElOVEVMX09VVFBVVF9EU0kpOwogCXBpcGVfY29uZmlnLT5w
aXBlX2JwcCA9IGJkd19nZXRfcGlwZW1pc2NfYnBwKGNydGMpOworCisJaWYgKGdlbjExX2RzaV9p
c19wZXJpb2RpY19jbWRfbW9kZShkZXZfcHJpdiwgaW50ZWxfZHNpKSkKKwkJcGlwZV9jb25maWct
Pmh3LmFkanVzdGVkX21vZGUucHJpdmF0ZV9mbGFncyB8PQorCQkJCQlJOTE1X01PREVfRkxBR19E
U0lfUEVSSU9ESUNfQ01EX01PREU7CiB9CiAKIHN0YXRpYyBpbnQgZ2VuMTFfZHNpX2NvbXB1dGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLApAQCAtMTM1NCw2ICsxMzczLDkg
QEAgc3RhdGljIGludCBnZW4xMV9kc2lfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCiAJcGlwZV9jb25maWctPmNsb2NrX3NldCA9IHRydWU7CiAJcGlwZV9jb25m
aWctPnBvcnRfY2xvY2sgPSBpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIC8gNTsKIAorCS8q
IFdlIHdvdWxkIG5vdCBvcGVyZWF0ZSBpbiBwZXJpZG9jIGNvbW1hbmQgbW9kZSAqLworCXBpcGVf
Y29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLnByaXZhdGVfZmxhZ3MgJj0KKwkJCQkJfkk5MTVfTU9E
RV9GTEFHX0RTSV9QRVJJT0RJQ19DTURfTU9ERTsKIAlyZXR1cm4gMDsKIH0KIAotLSAKMi4yMS4w
LjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
