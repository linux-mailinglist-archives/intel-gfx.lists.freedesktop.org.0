Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E588910C22A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 03:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BC06E5E3;
	Thu, 28 Nov 2019 02:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B98EA6E5E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 02:10:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 18:10:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="240550800"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2019 18:10:40 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu, 28 Nov 2019 07:40:05 +0530
Message-Id: <20191128021005.3350-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkltcGxlbWVu
dCBXYV8xNjA0NTU1NjA3IChzZXQgdGhlIERTIHBhaXJpbmcgdGltZXIgdG8gMTI4IGN5Y2xlcyku
CkZGX01PREUyIGlzIHBhcnQgb2YgdGhlIHJlZ2lzdGVyIHN0YXRlIGNvbnRleHQsIHRoYXQncyB3
aHkgaXQgaXMKaW1wbGVtZW50ZWQgaGVyZS4KCkF0IFRHTCBBMCBzdGVwcGluZywgRkZfTU9ERTIg
cmVnaXN0ZXIgcmVhZCBiYWNrIGlzIGJyb2tlbiwgaGVuY2UKZGlzYWJsaW5nIHRoZSBXQSB2ZXJp
ZmljYXRpb24uCgp2MjogUmViYXNlZCBvbiB0b3Agb2YgdGhlIFdBIHJlZmFjdG9yaW5nIChPc2Nh
cikKdjM6IENvcnJlY3RseSBhZGQgdG8gY3R4X3dvcmthcm91bmRzX2luaXQgKE1pY2hlbCkKdjQ6
CiAgdW5jb3JlIHJlYWQgaXMgdXNlZCBbVHZydGtvXQogIE1hY3JvcyBhcyB1c2VkIGZvciBNQVNL
IGRlZmluaXRpb24gW0NocmlzXQp2NToKICBTa2lwIHRoZSBXYV8xNjA0NTU1NjA3IHZlcmlmaWNh
dGlvbiBbUmFtXQogIGk5MTUgcHRyIHJldHJpZXZlZCBmcm9tIGVuZ2luZS4gW1R2cnRrb10KdjY6
CiAgQWRkZWQgd2FfYWRkIGFzIGEgd3JhcHBlciBmb3IgX193YV9hZGQgW0NocmlzXQogIHdhX2Fk
ZCBpcyBkaXJlY3RseSBjYWxsZWQgaW5zdGVhZCBvZiBuZXcgd3JhcHBlciBbdHZydGtvXQoKQlNw
ZWM6IDE5MzYzCkhTREVTOiAxNjA0NTU1NjA3ClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5
IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8
cmFtbGluZ2FtLmNAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4gW3Y1XQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgfCAyOSArKysrKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAgNCArKysKIDIgZmlsZXMgY2hhbmdl
ZCwgMjkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCAzOTlhY2FlMmYzM2YuLjcyMjk3M2UwOTE4
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0x
NDYsMjAgKzE0NiwyNiBAQCBzdGF0aWMgdm9pZCBfd2FfYWRkKHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCwgY29uc3Qgc3RydWN0IGk5MTVfd2EgKndhKQogCX0KIH0KIAotc3RhdGljIHZvaWQKLXdh
X3dyaXRlX21hc2tlZF9vcihzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVn
LCB1MzIgbWFzaywKLQkJICAgdTMyIHZhbCkKK3N0YXRpYyB2b2lkIHdhX2FkZChzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywKKwkJICAgdTMyIHZhbCwg
dTMyIHJlYWRfbWFzaykKIHsKIAlzdHJ1Y3QgaTkxNV93YSB3YSA9IHsKIAkJLnJlZyAgPSByZWcs
CiAJCS5tYXNrID0gbWFzaywKIAkJLnZhbCAgPSB2YWwsCi0JCS5yZWFkID0gbWFzaywKKwkJLnJl
YWQgPSByZWFkX21hc2ssCiAJfTsKIAogCV93YV9hZGQod2FsLCAmd2EpOwogfQogCitzdGF0aWMg
dm9pZAord2Ffd3JpdGVfbWFza2VkX29yKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9y
ZWdfdCByZWcsIHUzMiBtYXNrLAorCQkgICB1MzIgdmFsKQoreworCXdhX2FkZCh3YWwsIHJlZywg
bWFzaywgdmFsLCBtYXNrKTsKK30KKwogc3RhdGljIHZvaWQKIHdhX21hc2tlZF9lbihzdHJ1Y3Qg
aTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogewpAQCAtNTY4LDkg
KzU3NCwyNCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAogc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCQkgICAgIHN0cnVjdCBpOTE1
X3dhX2xpc3QgKndhbCkKIHsKKwl1MzIgdmFsOworCiAJLyogV2FfMTQwOTE0MjI1OTp0Z2wgKi8K
IAlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsCiAJCQkgIEdF
TjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUpOworCisJLyogV2FfMTYwNDU1NTYwNzp0
Z2wgKi8KKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwgRkZfTU9ERTIp
OworCXZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7CisJdmFsIHw9IEZGX01PREUyX1RE
U19USU1FUl8xMjg7CisJLyoKKwkgKiBGSVhNRTogRkZfTU9ERTIgcmVnaXN0ZXIgaXMgbm90IHJl
YWRhYmxlIHRpbGwgVEdMIEIwLiBXZSBjYW4KKwkgKiBlbmFibGUgdmVyaWZpY2F0aW9uIG9mIFdB
IGZyb20gdGhlIGxhdGVyIHN0ZXBwaW5ncywgd2hpY2ggZW5hYmxlcworCSAqIHRoZSByZWFkIG9m
IEZGX01PREUyLgorCSAqLworCXdhX2FkZCh3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElN
RVJfTUFTSywgdmFsLAorCSAgICAgICBJU19UR0xfUkVWSUQoZW5naW5lLT5pOTE1LCBUR0xfUkVW
SURfQTAsIFRHTF9SRVZJRF9BMCkgPyAwIDoKKwkJCSAgICBGRl9NT0RFMl9URFNfVElNRVJfTUFT
Syk7CiB9CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA5NGQwZjU5
M2VlYjcuLmE5OWZkZjhlYTUzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03OTIyLDYg
Kzc5MjIsMTAgQEAgZW51bSB7CiAjZGVmaW5lICAgUElYRUxfUk9VTkRJTkdfVFJVTkNfRkJfUEFT
U1RIUlUgCSgxIDw8IDE1KQogI2RlZmluZSAgIFBFUl9QSVhFTF9BTFBIQV9CWVBBU1NfRU4JCSgx
IDw8IDcpCiAKKyNkZWZpbmUgRkZfTU9ERTIJCQlfTU1JTygweDY2MDQpCisjZGVmaW5lICAgRkZf
TU9ERTJfVERTX1RJTUVSX01BU0sJUkVHX0dFTk1BU0soMjMsIDE2KQorI2RlZmluZSAgIEZGX01P
REUyX1REU19USU1FUl8xMjgJUkVHX0ZJRUxEX1BSRVAoRkZfTU9ERTJfVERTX1RJTUVSX01BU0ss
IDQpCisKIC8qIFBDSCAqLwogCiAjZGVmaW5lIFBDSF9ESVNQTEFZX0JBU0UJMHhjMDAwMHUKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
