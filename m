Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 238EC63D14
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B09C6E0AA;
	Tue,  9 Jul 2019 21:06:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F0789E57
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:06:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 14:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="364267292"
Received: from dawalker-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.80.131])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2019 14:06:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 22:06:18 +0100
Message-Id: <20190709210620.15805-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Fix
 WaProgramMgsrForL3BankSpecificMmioReads
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClR3byBpc3N1
ZXMgaW4gdGhpcyBjb2RlOgoKMS4KZmxzKCkgdXNhZ2UgaXMgaW5jb3JyZWN0IGNhdXNpbmcgb2Zm
IGJ5IG9uZSBpbiBzdWJzbGljZSBtYXNrIGxvb2t1cCwKd2hpY2ggaW4gb3RoZXIgd29yZHMgbWVh
bnMgc3Vic2xpY2UgbWFzayBvZiBhbGwgemVyb2VzIGlzIGFsd2F5cyB1c2VkCihzdWJzbGljZSBt
YXNrIG9mIGEgc2xpY2Ugd2hpY2ggaXMgbm90IHByZXNlbnQsIG9yIGV2ZW4gb3V0IG9mIGJvdW5k
cwphcnJheSBhY2Nlc3MpLCByZW5kZXJpbmcgdGhlIGNoZWNrcyBpbiB3YV9pbml0X21jciBlaXRo
ZXIgZnV0aWxlIG9yCnJhbmRvbS4KCjIuCkNvbmRpdGlvbiBpbiBXQVJOX09OIGlzIG5vdCBjb3Jy
ZWN0LiBJdCBpcyBkb2luZyBhIGJpdHdpc2UgYW5kIG9wZXJhdGlvbgpiZXR3ZWVuIGEgcG9zaXRp
dmUgKHByZXNlbnQgc3Vic2xpY2VzKSBhbmQgbmVnYXRpdmUgbWFzayAoZGlzYWJsZWQgTDMKYmFu
a3MpLgoKVGhpcyBtZWFucyB0aGF0IHdpdGggY29ycmVjdGVkIGZscygpIHVzYWdlIHRoZSBhc3Nl
cnQgd291bGQgYWx3YXlzCmluY29ycmVjdGx5IGZhaWwuCgpXZSBjYW4gZml4IHRoaXMgYnkgaW52
ZXJldGluZyB0aGUgZnVzZSBiaXRzIGluIHRoZSBjaGVjay4KClNpZ25lZC1vZmYtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkZpeGVzOiBmZTg2NGI3NmMyYWIg
KCJkcm0vaTkxNTogSW1wbGVtZW50IFdhUHJvZ3JhbU1nc3JGb3JMM0JhbmtTcGVjaWZpY01taW9S
ZWFkcyIpCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8
IDI2ICsrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCmluZGV4IDllMDY5Mjg2ZDNjZS4uYjVmMTlhZDQ4ZDIyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTc3NiwyNiArNzc2LDI2IEBA
IHdhX2luaXRfbWNyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93
YV9saXN0ICp3YWwpCiAJICogc29tZXRoaW5nIG1vcmUgY29tcGxleCB0aGF0IHJlcXVpcmVzIGNo
ZWNraW5nIHRoZSByYW5nZSBvZiBldmVyeQogCSAqIE1NSU8gcmVhZCkuCiAJICovCi0JaWYgKElO
VEVMX0dFTihpOTE1KSA+PSAxMCAmJgotCSAgICBpc19wb3dlcl9vZl8yKHNzZXUtPnNsaWNlX21h
c2spKSB7CisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMCAmJiBpc19wb3dlcl9vZl8yKHNzZXUt
PnNsaWNlX21hc2spKSB7CiAJCS8qCi0JCSAqIHJlYWQgRlVTRTMgZm9yIGVuYWJsZWQgTDMgQmFu
ayBJRHMsIGlmIEwzIEJhbmsgbWF0Y2hlcwotCQkgKiBlbmFibGVkIHN1YnNsaWNlLCBubyBuZWVk
IHRvIHJlZGlyZWN0IE1DUiBwYWNrZXQKKwkJICogUmVhZCBGVVNFMyBmb3IgZW5hYmxlZCBMMyBC
YW5rIElEcywgaWYgTDMgQmFuayBtYXRjaGVzCisJCSAqIGVuYWJsZWQgc3Vic2xpY2UsIG5vIG5l
ZWQgdG8gcmVkaXJlY3QgTUNSIHBhY2tldC4KIAkJICovCi0JCXUzMiBzbGljZSA9IGZscyhzc2V1
LT5zbGljZV9tYXNrKTsKLQkJdTMyIGZ1c2UzID0KLQkJCWludGVsX3VuY29yZV9yZWFkKCZpOTE1
LT51bmNvcmUsIEdFTjEwX01JUlJPUl9GVVNFMyk7Ci0JCXU4IHNzX21hc2sgPSBzc2V1LT5zdWJz
bGljZV9tYXNrW3NsaWNlXTsKKwkJdW5zaWduZWQgaW50IHNsaWNlID0gZmxzKHNzZXUtPnNsaWNl
X21hc2spIC0gMTsKKwkJdTggc3MsIGVuLCBkaXM7CiAKLQkJdTggZW5hYmxlZF9tYXNrID0gKHNz
X21hc2sgfCBzc19tYXNrID4+Ci0JCQkJICAgR0VOMTBfTDNCQU5LX1BBSVJfQ09VTlQpICYgR0VO
MTBfTDNCQU5LX01BU0s7Ci0JCXU4IGRpc2FibGVkX21hc2sgPSBmdXNlMyAmIEdFTjEwX0wzQkFO
S19NQVNLOworCQlHRU1fQlVHX09OKHNsaWNlID49IEFSUkFZX1NJWkUoc3NldS0+c3Vic2xpY2Vf
bWFzaykpOworCQlzcyA9IHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdOworCisJCWVuID0gKHNz
IHwgc3MgPj4gR0VOMTBfTDNCQU5LX1BBSVJfQ09VTlQpICYgR0VOMTBfTDNCQU5LX01BU0s7CisJ
CWRpcyA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIEdFTjEwX01JUlJPUl9GVVNF
MykgJgorCQkgICAgICBHRU4xMF9MM0JBTktfTUFTSzsKIAogCQkvKgogCQkgKiBQcm9kdWN0aW9u
IHNpbGljb24gc2hvdWxkIGhhdmUgbWF0Y2hlZCBMM0JhbmsgYW5kCi0JCSAqIHN1YnNsaWNlIGVu
YWJsZWQKKwkJICogc3Vic2xpY2UgZW5hYmxlZC4KIAkJICovCi0JCVdBUk5fT04oKGVuYWJsZWRf
bWFzayAmIGRpc2FibGVkX21hc2spICE9IGVuYWJsZWRfbWFzayk7CisJCVdBUk5fT04oKGVuICYg
fmRpcykgIT0gZW4pOwogCX0KIAogCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
