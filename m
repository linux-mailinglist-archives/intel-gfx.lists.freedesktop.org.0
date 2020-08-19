Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7599624A63B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 20:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3770C6E5CA;
	Wed, 19 Aug 2020 18:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB54E6E5C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 18:49:18 +0000 (UTC)
IronPort-SDR: fm9GjrNW24wEXSmRxAOauneq3G88kRib9vVuoynhCbZNSvaiFrYWK0XZmDsE3FeKJj3vvqRpPu
 gFbSNa76zQ5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="142811996"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="142811996"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 11:49:18 -0700
IronPort-SDR: Sh4/x6kVRJYnqFXSlUZLclzz27UYzGvx3RxPjJq4yFjWgFNyswcfcKxKbWJWM7r+tXG8q+SiM0
 5LZagIQ6q4qA==
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="497338914"
Received: from wagenett-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.62.64])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 11:49:17 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 11:51:45 -0700
Message-Id: <20200819185146.22109-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819185146.22109-1-jose.souza@intel.com>
References: <20200819185146.22109-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display/ehl: Use EHL DP tables for
 eDP ports without low power support
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

UmV1c2luZyBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucygpIGZvciBlRFAgd2FzIGNhdXNpbmcgdGhl
IHdyb25nIHRhYmxlCmJlaW5nIHVzZWQgd2hlbiB0aGUgZURQIHBvcnQgZG9uJ3Qgc3VwcG9ydCBs
b3cgcG93ZXIgdm9sdGFnZSBzd2luZyB0YWJsZS4KCkNjOiBMZWUgU2hhd24gQyA8c2hhd24uYy5s
ZWVAaW50ZWwuY29tPgpDYzogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIHwgMjAgKysrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCmluZGV4IDlhMDM1YmI3YmQwNi4uMGZhNDA3NTAzNmU2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTEwNzQsMTIgKzEwNzQsMjYgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqCiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFu
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLAogCQkJ
aW50ICpuX2VudHJpZXMpCiB7Ci0JaWYgKHR5cGUgIT0gSU5URUxfT1VUUFVUX0hETUkgJiYgdHlw
ZSAhPSBJTlRFTF9PVVRQVVRfRURQKSB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisKKwlzd2l0Y2ggKHR5cGUpIHsKKwlj
YXNlIElOVEVMX09VVFBVVF9IRE1JOgorCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29t
Ym9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGRtaSk7CisJCXJldHVybiBpY2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfaGRtaTsKKwljYXNlIElOVEVMX09VVFBVVF9FRFA6CisJCWlmIChyYXRl
ID4gNTQwMDAwKSB7CisJCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfZWRwX2hicjMpOworCQkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3Ry
YW5zbGF0aW9uc19lZHBfaGJyMzsKKwkJfSBlbHNlIGlmIChkZXZfcHJpdi0+dmJ0LmVkcC5sb3df
dnN3aW5nKSB7CisJCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90
cmFuc2xhdGlvbnNfZWRwX2hicjIpOworCQkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19lZHBfaGJyMjsKKwkJfQorCQkvKiBmYWxsIHRocm91Z2ggKi8KKwlkZWZhdWx0Ogor
CQkvKiBBbGwgY29tYm8gRFAgYW5kIGVEUCBwb3J0cyB0aGF0IGRvIG5vdCBzdXBwb3J0IGxvd192
c3dpbmcgKi8KIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoZWhsX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2RwKTsKIAkJcmV0dXJuIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19k
cDsKIAl9Ci0KLQlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2RlciwgdHlwZSwg
cmF0ZSwgbl9lbnRyaWVzKTsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90
cmFucyAqCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
