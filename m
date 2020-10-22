Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A653296722
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2526E418;
	Thu, 22 Oct 2020 22:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB036E40F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:44 +0000 (UTC)
IronPort-SDR: Gr5+QbdOIYPG18Niqgzp7DfSKWQ/C3z3ybZEBNkPN/Nw7pxDzFDz3f/yz4T09s5E22mNdCj4Y3
 KUvhZWS3GiBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386821"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386821"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: PrQzwbVUwNNX/+zNLqXchYM7jerc5YaE4zkWYViRbAJKUOndPCIhld6ttRNS0ySsLz2MGyUCBb
 RPUCpVvoFS5A==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153969"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:27:07 -0700
Message-Id: <20201022222709.29386-10-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/display/vrr: Disable VRR in
 modeset disable path
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

VGhpcyBwYXRjaCBkaXNhYmxlcyB0aGUgVlJSIGVuYWJsZSBhbmQgVlJSIFBVU0gKYml0cyBpbiB0
aGUgSFcgZHVyaW5nIGNvbW1pdCBtb2Rlc2V0IGRpc2FibGUgc2VxdWVuY2UuCgpUaHNpIGRpc2Fi
bGUgd2lsbCBoYXBwZW4gd2hlbiB0aGUgcG9ydCBpcyBkaXNhYmxlZApvciB3aGVuIHRoZSB1c2Vy
c3BhY2Ugc2V0cyBWUlIgcHJvcCB0byBmYWxzZSBhbmQKcmVxdWVzdHMgdG8gZGlzYWJsZSBWUlIu
CgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDIgKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgfCAyMiArKysrKysrKysrKysrKysr
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIHwgIDEgKwog
MyBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMzkxYzUxOTc5MzM0Li41NjUxNTVhZjNmYjkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzgxOSw2ICszODE5LDgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwKIAogCQlpbnRlbF9kaXNhYmxlX3BpcGUob2xkX2NydGNfc3RhdGUpOwog
CisJCWludGVsX3Zycl9kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsKKwogCQlpbnRlbF9kZGlfZGlz
YWJsZV90cmFuc2NvZGVyX2Z1bmMob2xkX2NydGNfc3RhdGUpOwogCiAJCWludGVsX2RzY19kaXNh
YmxlKG9sZF9jcnRjX3N0YXRlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zy
ci5jCmluZGV4IGVjMWNlODhlODY5Yy4uNTA3NWVjYjliNWE3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKQEAgLTExOSwzICsxMTksMjUgQEAgdm9pZCBpbnRlbF92
cnJfc2VuZF9wdXNoKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
CQlwaXBlX25hbWUocGlwZSkpOwogfQogCit2b2lkIGludGVsX3Zycl9kaXNhYmxlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMob2xkX2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CisJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOworCXUzMiB0cmFuc192cnJfY3RsID0g
MCwgdHJhbnNfcHVzaCA9IDA7CisKKwlpZiAoIW9sZF9jcnRjX3N0YXRlLT52cnIuZW5hYmxlKQor
CQlyZXR1cm47CisKKwl0cmFuc192cnJfY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJB
TlNfVlJSX0NUTChwaXBlKSk7CisJdHJhbnNfdnJyX2N0bCAmPSB+KFZSUl9DVExfRkxJUF9MSU5F
X0VOIHwgVlJSX0NUTF9WUlJfRU5BQkxFKTsKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJB
TlNfVlJSX0NUTChwaXBlKSwgdHJhbnNfdnJyX2N0bCk7CisKKwl0cmFuc19wdXNoID0gaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNfUFVTSChwaXBlKSk7CisJdHJhbnNfcHVzaCAmPSB+VFJB
TlNfUFVTSF9FTjsKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfUFVTSChwaXBlKSwg
dHJhbnNfcHVzaCk7CisKKwlkcm1fZGJnKCZkZXZfcHJpdi0+ZHJtLCAiRGlzYWJsaW5nIFZSUiBv
biBQaXBlICglYylcbiIsCisJCXBpcGVfbmFtZShwaXBlKSk7Cit9CisKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCmluZGV4IGE2Yjc4ZTE2NzZjYi4uOGM2ZmQyZDFiZWU1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgKQEAgLTIwLDUgKzIw
LDYgQEAgdm9pZCBpbnRlbF92cnJfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKIHZvaWQgaW50ZWxfdnJyX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwog
dm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsKK3ZvaWQgaW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfVlJSX0hfXyAq
LwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
