Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 550673010EE
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CB36EA7F;
	Fri, 22 Jan 2021 23:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 362B26EA76
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:32 +0000 (UTC)
IronPort-SDR: mn8fII+IvD7JrTLpSWXeO5R8I9GRTv7KBdGP0G9HRGO8TFKTx86DLPv7EO9hKxlfuP+KVzGltj
 /LVHGKFK1lfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344456"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344456"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: VtoYXKOy9P3oXQfGruCMYDbMWLaUKX6oOuqoGJ0lrZrnTZTWnp6PXvnRik6Lmc+4A7uxg08g2X
 wz7iOvYxpYTw==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466026"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:41 -0800
Message-Id: <20210122232647.22688-12-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 12/18] drm/i915/display/vrr: Disable VRR in
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
Cgp2MjoKKiBVc2UgaW50ZWxfZGVfcm13IChKYW5pIE4pCgp2MzoKKiBSZW1vdmUgcm13IChWaWxs
ZSkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDIgKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgfCAxMyArKysrKysrKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIHwgIDEgKwogMyBm
aWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKaW5kZXggZDFjYjA0OTlhNWM0Li43MDQ4NTZiNDQ1YjEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNDA2MCw2ICs0MDYwLDggQEAg
c3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKIAogCQlpbnRlbF9kaXNhYmxlX3BpcGUob2xkX2NydGNfc3RhdGUpOwogCisJ
CWludGVsX3Zycl9kaXNhYmxlKG9sZF9jcnRjX3N0YXRlKTsKKwogCQlpbnRlbF9kZGlfZGlzYWJs
ZV90cmFuc2NvZGVyX2Z1bmMob2xkX2NydGNfc3RhdGUpOwogCiAJCWludGVsX2RzY19kaXNhYmxl
KG9sZF9jcnRjX3N0YXRlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdnJyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5j
CmluZGV4IDQ1OTZhMTg4NTdmZS4uNzc2YjhjNWY5M2E0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdnJyLmMKQEAgLTEzNCwzICsxMzQsMTYgQEAgdm9pZCBpbnRlbF92cnJf
c2VuZF9wdXNoKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19QVVNIKGNwdV90cmFuc2NvZGVyKSwKIAkJICAg
ICAgIFRSQU5TX1BVU0hfRU4gfCBUUkFOU19QVVNIX1NFTkQpOwogfQorCit2b2lkIGludGVsX3Zy
cl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkK
K3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMob2xkX2NydGNfc3Rh
dGUtPnVhcGkuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjLT5iYXNlLmRldik7CisJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0g
b2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOworCisJaWYgKCFvbGRfY3J0Y19zdGF0ZS0+
dnJyLmVuYWJsZSkKKwkJcmV0dXJuOworCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5T
X1ZSUl9DVEwoY3B1X3RyYW5zY29kZXIpLCAwKTsKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
VFJBTlNfUFVTSChjcHVfdHJhbnNjb2RlciksIDApOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmgKaW5kZXggMWI3YzUzYjU2MDRhLi40MzM3OWMyYmQ0ZDkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaApAQCAtMjMsNSArMjMsNiBAQCB2
b2lkIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKIHZvaWQgaW50ZWxfdnJyX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Owogdm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsKK3ZvaWQgaW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfVlJSX0hf
XyAqLwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
