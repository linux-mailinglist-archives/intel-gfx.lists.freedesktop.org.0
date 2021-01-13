Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153B12F54C4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 23:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460B56EC73;
	Wed, 13 Jan 2021 22:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B563B6EC7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 22:05:33 +0000 (UTC)
IronPort-SDR: 8bTSuAegRZ8MjIn+IyjHt2PNrkSUb4IHnL0ZTY9gSQRY+dUXBF0wqBy35uIbKI5aKu/SJqUcNu
 NMIzBQojoDRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="165950105"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="165950105"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 14:05:32 -0800
IronPort-SDR: zDYKs8+vVZpL/czrXFqfragWPOnLFquDrNJi2HKUm4U4TEKbA4HunoC1HNqdgvXbwEsLvbAsAO
 YFwJl2O0+dpA==
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="400696574"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 13 Jan 2021 14:05:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:09:29 -0800
Message-Id: <20210113220935.4151-13-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 12/18] drm/i915/display/vrr: Disable VRR in
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
aWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAgMiArKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYyB8IDEzICsrKysrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmggfCAgMSArCiAzIGZpbGVz
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwppbmRleCBiNDQyZjA2ZTk4MDAuLjE2YjU1ZjQ5YWE1NCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00MDYzLDYgKzQwNjMsOCBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAogCiAJCWludGVsX2Rpc2FibGVfcGlwZShvbGRfY3J0Y19zdGF0ZSk7CiAKKwkJaW50
ZWxfdnJyX2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOworCiAJCWludGVsX2RkaV9kaXNhYmxlX3Ry
YW5zY29kZXJfZnVuYyhvbGRfY3J0Y19zdGF0ZSk7CiAKIAkJaW50ZWxfZHNjX2Rpc2FibGUob2xk
X2NydGNfc3RhdGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92cnIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKaW5k
ZXggMWIyNjgwNmQzNDE2Li41MDFjOGQ5MTQyZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYwpAQCAtMTM0LDMgKzEzNCwxNiBAQCB2b2lkIGludGVsX3Zycl9zZW5k
X3B1c2goY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5TX1BVU0goY3B1X3RyYW5zY29kZXIpLAogCQkgICAgICAg
VFJBTlNfUFVTSF9FTiB8IFRSQU5TX1BVU0hfU0VORCk7CiB9CisKK3ZvaWQgaW50ZWxfdnJyX2Rp
c2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQorewor
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+
dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNydGMtPmJhc2UuZGV2KTsKKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBvbGRf
Y3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7CisKKwlpZiAoIW9sZF9jcnRjX3N0YXRlLT52cnIu
ZW5hYmxlKQorCQlyZXR1cm47CisKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfVlJS
X0NUTChjcHVfdHJhbnNjb2RlciksIDApOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFO
U19QVVNIKGNwdV90cmFuc2NvZGVyKSwgMCk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuaAppbmRleCAxYjdjNTNiNTYwNGEuLjQzMzc5YzJiZDRkOSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oCkBAIC0yMyw1ICsyMyw2IEBAIHZvaWQg
aW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAogdm9pZCBpbnRlbF92cnJfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2
b2lkIGludGVsX3Zycl9zZW5kX3B1c2goY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpOwordm9pZCBpbnRlbF92cnJfZGlzYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpOwogCiAjZW5kaWYgLyogX19JTlRFTF9WUlJfSF9fICov
Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
