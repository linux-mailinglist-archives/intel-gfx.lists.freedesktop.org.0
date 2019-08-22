Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AE099E66
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 20:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7849A6E9E9;
	Thu, 22 Aug 2019 18:02:08 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC8A6E9E9
 for <Intel-GFX@lists.freedesktop.org>; Thu, 22 Aug 2019 18:02:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 11:02:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="330471911"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2019 11:02:05 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 22 Aug 2019 11:02:05 -0700
Message-Id: <20190822180205.21071-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190822180205.21071-1-John.C.Harrison@Intel.com>
References: <20190822180205.21071-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Engine relative MMIO for Gen12
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCkdlbjEyIGlu
dHJvZHVjZXMgYSBjb21wbGV0ZWx5IG5ldyBhbmQgZGlmZmVyZW50IHNjaGVtZSBmb3IKaW1wbGVt
ZW50aW5nIGVuZ2luZSByZWxhdGl2ZSBNTUlPIGFjY2Vzc2VzIC0gTUlfTFJJX01NSU9fUkVNQVAu
IFRoaXMKcmVxdWlyZXMgdXNpbmcgdGhlIGJhc2UgYWRkcmVzcyBvZiBpbnN0YW5jZSB6ZXJvIG9m
IHRoZSByZWxldmFudAplbmdpbmUgY2xhc3MuIEFuZCB0aGVuLCBpdCBpcyBvbmx5IHZhbGlkIGlm
IHRoZSByZWdpc3RlciBpbgpxdWVzdGlvbiBmYWxscyB3aXRoaW4gYSBjZXJ0YWluIHJhbmdlIGFz
IHNwZWNpZmllZCBieSBhIHRhYmxlLgoKU2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9o
bi5DLkhhcnJpc29uQEludGVsLmNvbT4KQ0M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMgICAgfCAxODUgKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggfCAgIDcgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgIHwgICAzICstCiA0IGZpbGVzIGNoYW5nZWQs
IDE5NSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggZWZlMWMzNzdkNzk3Li5hNjVlOGNjZDlkOGQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCkBAIC0yMzYsNiArMjM2
LDEyNyBAQCBzdGF0aWMgdTMyIF9fZW5naW5lX21taW9fYmFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAlyZXR1cm4gYmFzZXNbaV0uYmFzZTsKIH0KIAorc3RhdGljIHZvaWQgbHJp
X2luaXRfcmVtYXBfYmFzZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqcmVtYXBfZW5naW5lOworCisJZW5naW5lLT5scmlfbW1pb19i
YXNlID0gMDsKKworCWlmIChJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSA8IDEyKQorCQlyZXR1cm47
CisKKwlyZW1hcF9lbmdpbmUgPSBlbmdpbmUtPmk5MTUtPmd0LmVuZ2luZV9jbGFzc1tlbmdpbmUt
PmNsYXNzXVswXTsKKwlHRU1fQlVHX09OKCFyZW1hcF9lbmdpbmUpOworCisJZW5naW5lLT5scmlf
bW1pb19iYXNlID0gcmVtYXBfZW5naW5lLT5tbWlvX2Jhc2U7Cit9CisKK3N0YXRpYyB2b2lkIGxy
aV9hZGRfcmFuZ2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCB1MzIgbWluLCB1MzIg
bWF4KQoreworCUdFTV9CVUdfT04oZW5naW5lLT5scmlfbnVtX3JhbmdlcyA+PSBJTlRFTF9NQVhf
TFJJX1JBTkdFUyk7CisKKwllbmdpbmUtPmxyaV9yYW5nZXNbZW5naW5lLT5scmlfbnVtX3Jhbmdl
c10ubWluID0gbWluOworCWVuZ2luZS0+bHJpX3Jhbmdlc1tlbmdpbmUtPmxyaV9udW1fcmFuZ2Vz
XS5tYXggPSBtYXg7CisJZW5naW5lLT5scmlfbnVtX3JhbmdlcysrOworfQorCitzdGF0aWMgdm9p
ZCBscmlfaW5pdF9yZW1hcF9yYW5nZXMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQor
eworCWJvb2wgaGFzX2F1eF90YWJsZXMgPSB0cnVlOwkvKiBSZW1vdmVkIGFmdGVyIFRHTD8gKi8K
Kwl1MzIgb2Zmc2V0OworCisJZW5naW5lLT5scmlfbnVtX3JhbmdlcyA9IDA7CisKKwlpZiAoSU5U
RUxfR0VOKGVuZ2luZS0+aTkxNSkgPCAxMikKKwkJcmV0dXJuOworCisJc3dpdGNoIChlbmdpbmUt
PmNsYXNzKSB7CisJY2FzZSBSRU5ERVJfQ0xBU1M6CisJCS8qIEhhcmR3YXJlIEZyb250IEVuZCAq
LworCQlscmlfYWRkX3JhbmdlKGVuZ2luZSwgMHgwMDAgKyBlbmdpbmUtPm1taW9fYmFzZSwKKwkJ
CSAgICAgIDB4N0ZGICsgZW5naW5lLT5tbWlvX2Jhc2UpOworCisJCS8qIFRSVFQgKi8KKwkJbHJp
X2FkZF9yYW5nZShlbmdpbmUsIDB4NDQwMCwgMHg0NDFGKTsKKworCQkvKiBBdXggVGFibGVzIC0g
UkVNT1ZFREJZKEdFTjpIQVM6MTQwNjkyOTY3MikgKi8KKwkJaWYgKGhhc19hdXhfdGFibGVzKQor
CQkJbHJpX2FkZF9yYW5nZShlbmdpbmUsIDB4NDIwMCwgMHg0MjBGKTsKKwkJYnJlYWs7CisKKwlj
YXNlIFZJREVPX0RFQ09ERV9DTEFTUzoKKwkJbHJpX2FkZF9yYW5nZShlbmdpbmUsIDB4MDAwMCAr
IGVuZ2luZS0+bW1pb19iYXNlLAorCQkJICAgICAgMHgzRkZGICsgZW5naW5lLT5tbWlvX2Jhc2Up
OworCisJCS8qIFRSVFQgKi8KKwkJb2Zmc2V0ID0gKChlbmdpbmUtPmluc3RhbmNlICYgMHgxKSAq
IDB4MjApICsKKwkJCSAoKGVuZ2luZS0+aW5zdGFuY2UgPj4gMSkgKiAweDEwMCk7CisJCWxyaV9h
ZGRfcmFuZ2UoZW5naW5lLCAweDQ0MjAgKyBvZmZzZXQsIDB4NDQzRiArIG9mZnNldCk7CisKKwkJ
LyogQXV4IFRhYmxlcyAtIFJFTU9WRURCWShHRU46SEFTOjE0MDY5Mjk2NzIpICovCisJCWlmICho
YXNfYXV4X3RhYmxlcykgeworCQkJc3dpdGNoIChlbmdpbmUtPmluc3RhbmNlKSB7CisJCQljYXNl
IDA6CisJCQkJbHJpX2FkZF9yYW5nZShlbmdpbmUsIDB4NDIxMCwgMHg0MjFGKTsKKwkJCQlicmVh
azsKKworCQkJY2FzZSAxOgorCQkJCWxyaV9hZGRfcmFuZ2UoZW5naW5lLCAweDQyMjAsIDB4NDIy
Rik7CisJCQkJYnJlYWs7CisKKwkJCWNhc2UgMjoKKwkJCQlscmlfYWRkX3JhbmdlKGVuZ2luZSwg
MHg0MjkwLCAweDQyOUYpOworCQkJCWJyZWFrOworCisJCQljYXNlIDM6CisJCQkJbHJpX2FkZF9y
YW5nZShlbmdpbmUsIDB4NDJBMCwgMHg0MkFGKTsKKwkJCQlicmVhazsKKworCQkJZGVmYXVsdDoK
KwkJCQlicmVhazsKKwkJCX0KKwkJfQorCQlicmVhazsKKworCWNhc2UgVklERU9fRU5IQU5DRU1F
TlRfQ0xBU1M6CisJCWxyaV9hZGRfcmFuZ2UoZW5naW5lLCAweDAwMDAgKyBlbmdpbmUtPm1taW9f
YmFzZSwKKwkJCSAgICAgIDB4M0ZGRiArIGVuZ2luZS0+bW1pb19iYXNlKTsKKworCQkvKiBUUlRU
ICovCisJCW9mZnNldCA9IGVuZ2luZS0+aW5zdGFuY2UgKiAweDEwMDsKKwkJbHJpX2FkZF9yYW5n
ZShlbmdpbmUsIDB4NDQ2MCArIG9mZnNldCwgMHg0NDdGICsgb2Zmc2V0KTsKKworCQkvKiBBdXgg
VGFibGVzIC0gUkVNT1ZFREJZKEdFTjpIQVM6MTQwNjkyOTY3MikgKi8KKwkJaWYgKGhhc19hdXhf
dGFibGVzKSB7CisJCQlzd2l0Y2ggKGVuZ2luZS0+aW5zdGFuY2UpIHsKKwkJCWNhc2UgMDoKKwkJ
CQlscmlfYWRkX3JhbmdlKGVuZ2luZSwgMHg0MjMwLCAweDQyM0YpOworCQkJCWJyZWFrOworCisJ
CQljYXNlIDE6CisJCQkJbHJpX2FkZF9yYW5nZShlbmdpbmUsIDB4NDJCMCwgMHg0MkJGKTsKKwkJ
CQlicmVhazsKKworCQkJY2FzZSAyOgorCQkJCWxyaV9hZGRfcmFuZ2UoZW5naW5lLCAweDQyOTAs
IDB4NDI5Rik7CisJCQkJYnJlYWs7CisKKwkJCWNhc2UgMzoKKwkJCQkvLyBTYW1lIGFkZHJlc3Mg
YXMgaW5zdGFuY2UgMT8/PworCQkJCWxyaV9hZGRfcmFuZ2UoZW5naW5lLCAweDQyQjAsIDB4NDJC
Rik7CisJCQkJYnJlYWs7CisKKwkJCWRlZmF1bHQ6CisJCQkJYnJlYWs7CisJCQl9CisJCX0KKwkJ
YnJlYWs7CisKKwlkZWZhdWx0OgorCQlicmVhazsKKwl9Cit9CisKIHN0YXRpYyB1MzIgaTkxNV9n
ZXRfbHJpX2NtZF9sZWdhY3koY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAog
CQkJCSAgIHUzMiB3b3JkX2NvdW50KQogewpAQCAtMjQ5LDYgKzM3MCwyNyBAQCBzdGF0aWMgdTMy
IGk5MTVfZ2V0X2xyaV9jbWRfYWRkX29mZnNldChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsCiAJICAgICAgIE1JX0xSSV9BRERfQ1NfTU1JT19TVEFSVF9HRU4xMTsKIH0KIAor
c3RhdGljIHUzMiBpOTE1X2dldF9scmlfY21kX3JlbWFwKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKKwkJCQkgIHUzMiB3b3JkX2NvdW50KQoreworCXUzMiB3b3JkOworCisJ
d29yZCA9IF9fTUlfTE9BRF9SRUdJU1RFUl9JTU0od29yZF9jb3VudCk7CisKKwkvKiBpZiAobHJp
X2lzX3JlZ19pbl9yZW1hcF90YWJsZShlbmdpbmUsIHJlZykpID8/PyAqLworCQl3b3JkIHw9IE1J
X0xSSV9NTUlPX1JFTUFQX0dFTjEyOworCisJLyoKKwkgKiBOQjogVG8gZ2F0ZSB0aGlzIG9uIHRo
ZSByZWcgYWRkcmVzcyB3aWxsIHJlcXVpcmUga25vd2luZworCSAqIGFsbCByZWcgYWRkcmVzc2Vz
IGluIGFkdmFuY2UuIFRoaXMgaXMgbm90IGN1cnJlbnRseSB0aGUKKwkgKiBjYXNlIGFzIHNvbWUg
TFJJIGNvbW1hbmRzIGFyZSBidWlsdCBmcm9tIG11bHRpcGxlIHNvdXJjZXMuCisJICogQWxzbywg
d2hhdCBpZiBzb21lIHJlZ3MgcmVxdWlyZSByZW1hcCBhbmQgc29tZSBkbyBub3Q/CisJICogVGhl
IExSSSBjb21tYW5kIHdvdWxkIG5lZWQgdG8gYmUgc3BsaXQgaW50byBtdWx0aXBsZSBwaWVjZXMu
CisJICovCisKKwlyZXR1cm4gd29yZDsKK30KKwogc3RhdGljIGJvb2wgaTkxNV9lbmdpbmVfaGFz
X3JlbGF0aXZlX2xyaShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJ
aWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpIDwgMTEpCkBAIC0yNjIsMTggKzQwNCw1MyBAQCBz
dGF0aWMgYm9vbCBpOTE1X2VuZ2luZV9oYXNfcmVsYXRpdmVfbHJpKGNvbnN0IHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogc3RhdGljIHZvaWQgbHJpX2luaXQoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQogewotCWlmIChpOTE1X2VuZ2luZV9oYXNfcmVsYXRpdmVfbHJp
KGVuZ2luZSkpCi0JCWVuZ2luZS0+Z2V0X2xyaV9jbWQgPSBpOTE1X2dldF9scmlfY21kX2FkZF9v
ZmZzZXQ7Ci0JZWxzZQorCWlmIChpOTE1X2VuZ2luZV9oYXNfcmVsYXRpdmVfbHJpKGVuZ2luZSkp
IHsKKwkJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpIDwgMTIpCisJCQllbmdpbmUtPmdldF9s
cmlfY21kID0gaTkxNV9nZXRfbHJpX2NtZF9hZGRfb2Zmc2V0OworCQllbHNlIHsKKwkJCWVuZ2lu
ZS0+Z2V0X2xyaV9jbWQgPSBpOTE1X2dldF9scmlfY21kX3JlbWFwOworCisJCQlscmlfaW5pdF9y
ZW1hcF9iYXNlKGVuZ2luZSk7CisJCQlscmlfaW5pdF9yZW1hcF9yYW5nZXMoZW5naW5lKTsKKwkJ
fQorCX0gZWxzZQogCQllbmdpbmUtPmdldF9scmlfY21kID0gaTkxNV9nZXRfbHJpX2NtZF9sZWdh
Y3k7CiB9CiAKK3N0YXRpYyBib29sIGxyaV9pc19yZWdfaW5fcmVtYXBfdGFibGUoY29uc3Qgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJCSAgICAgIGk5MTVfcmVnX3QgcmVnKQor
eworCWludCBpOworCXUzMiBvZmZzZXQgPSBpOTE1X21taW9fcmVnX29mZnNldChyZWcpOworCisJ
Zm9yIChpID0gMDsgaSA8IGVuZ2luZS0+bHJpX251bV9yYW5nZXM7IGkrKykgeworCQlpZiAob2Zm
c2V0IDwgZW5naW5lLT5scmlfcmFuZ2VzW2ldLm1pbikKKwkJCWNvbnRpbnVlOworCisJCWlmIChv
ZmZzZXQgPiBlbmdpbmUtPmxyaV9yYW5nZXNbaV0ubWF4KQorCQkJY29udGludWU7CisKKwkJcmV0
dXJuIHRydWU7CisJfQorCisJcmV0dXJuIGZhbHNlOworfQorCiB1MzIgaTkxNV9nZXRfbHJpX3Jl
Zyhjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGk5MTVfcmVnX3QgcmVnKQog
ewogCWlmICghaTkxNV9lbmdpbmVfaGFzX3JlbGF0aXZlX2xyaShlbmdpbmUpKQogCQlyZXR1cm4g
aTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKTsKIAotCXJldHVybiBpOTE1X21taW9fcmVnX29mZnNl
dChyZWcpIC0gZW5naW5lLT5tbWlvX2Jhc2U7CisJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUp
IDwgMTIpCisJCXJldHVybiBpOTE1X21taW9fcmVnX29mZnNldChyZWcpIC0gZW5naW5lLT5tbWlv
X2Jhc2U7CisKKwlpZiAoIVdBUk5fT04obHJpX2lzX3JlZ19pbl9yZW1hcF90YWJsZShlbmdpbmUs
IHJlZykpKSB7CisJCS8qIElzIHRoaXMgbWVhbnQgdG8gaGFwcGVuPyAqLworCQlyZXR1cm4gaTkx
NV9tbWlvX3JlZ19vZmZzZXQocmVnKTsKKwl9CisKKwlyZXR1cm4gaTkxNV9tbWlvX3JlZ19vZmZz
ZXQocmVnKSAtIGVuZ2luZS0+bW1pb19iYXNlICsKKwkgICAgICAgZW5naW5lLT5scmlfbW1pb19i
YXNlOwogfQogCiBzdGF0aWMgdm9pZCBfX3NwcmludF9lbmdpbmVfbmFtZShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV90eXBlcy5oCmluZGV4IDdjYTZjODZhMzNmNi4uMWUyNmY2NjhlNzNiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtMzA2LDYgKzMwNiwxMyBA
QCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzIHsKIAl1MzIgY29udGV4dF9zaXplOwogCXUzMiBtbWlv
X2Jhc2U7CiAKKyNkZWZpbmUgSU5URUxfTUFYX0xSSV9SQU5HRVMJMworCXN0cnVjdCBscmlfcmFu
Z2UgeworCQl1MzIgbWluLCBtYXg7CisJfSBscmlfcmFuZ2VzW0lOVEVMX01BWF9MUklfUkFOR0VT
XTsKKwl1MzIgbHJpX251bV9yYW5nZXM7CisJdTMyIGxyaV9tbWlvX2Jhc2U7CisKIAl1MzIgKCpn
ZXRfbHJpX2NtZCkoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJICAg
dTMyIHdvcmRfY291bnQpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ncHVfY29tbWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oCmluZGV4IGVhYTAxOWRmMGNlNy4uMGVlNjJhNjFkN2I1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApAQCAtMTMwLDE0ICsxMzAsMTUg
QEAKICAqICAgc2ltcGx5IGlnbm9yZXMgdGhlIHJlZ2lzdGVyIGxvYWQgdW5kZXIgY2VydGFpbiBj
b25kaXRpb25zLgogICogLSBPbmUgY2FuIGFjdHVhbGx5IGxvYWQgYXJiaXRyYXJ5IG1hbnkgYXJi
aXRyYXJ5IHJlZ2lzdGVyczogU2ltcGx5IGlzc3VlIHgKICAqICAgYWRkcmVzcy92YWx1ZSBwYWly
cy4gRG9uJ3Qgb3ZlcmR1ZSBpdCwgdGhvdWdoLCB4IDw9IDJeNCBtdXN0IGhvbGQhCi0gKiAtIE5l
d2VyIGhhcmR3YXJlIHN1cHBvcnRzIGVuZ2luZSByZWxhdGl2ZSBhZGRyZXNzaW5nIGJ1dCBvbGRl
ciBoYXJkd2FyZSBkb2VzCi0gKiAgIG5vdC4gVGhpcyBpcyByZXF1aXJlZCBmb3IgaHcgZW5naW5l
IGxvYWQgYmFsYW5jaW5nLiBIZW5jZSB0aGUgTUlfTFJJCi0gKiAgIGluc3RydWN0aW9uIGl0c2Vs
ZiBpcyBwcmVmaXhlZCB3aXRoICdfXycgYW5kIHNob3VsZCBvbmx5IGJlIHVzZWQgb24KLSAqICAg
bGVnYWN5IGhhcmR3YXJlIGNvZGUgcGF0aHMuIEdlbmVyaWMgY29kZSBtdXN0IGFsd2F5cyB1c2Ug
dGhlIE1JX0xSSQorICogLSBOZXdlciBoYXJkd2FyZSBzdXBwb3J0cyBlbmdpbmUgcmVsYXRpdmUg
YWRkcmVzc2luZyBidXQgdXNpbmcgbXVsdGlwbGUKKyAqICAgaW5jb21wYXRpYmxlIHNjaGVtZXMu
IFRoaXMgaXMgcmVxdWlyZWQgZm9yIGh3IGVuZ2luZSBsb2FkIGJhbGFuY2luZy4gSGVuY2UKKyAq
ICAgdGhlIE1JX0xSSSBpbnN0cnVjdGlvbiBpdHNlbGYgaXMgcHJlZml4ZWQgd2l0aCAnX18nIGFu
ZCBzaG91bGQgb25seSBiZQorICogICB1c2VkIG9uIGxlZ2FjeSBoYXJkd2FyZSBjb2RlIHBhdGhz
LiBHZW5lcmljIGNvZGUgbXVzdCBhbHdheXMgdXNlIHRoZSBNSV9MUkkKICAqICAgYW5kIGk5MTVf
Z2V0X2xyaV9yZWcoKSBoZWxwZXIgZnVuY3Rpb25zIGluc3RlYWQuCiAgKi8KICNkZWZpbmUgX19N
SV9MT0FEX1JFR0lTVEVSX0lNTSh4KQlNSV9JTlNUUigweDIyLCAyKih4KS0xKQogI2RlZmluZSAg
IE1JX0xSSV9GT1JDRV9QT1NURUQJCSgxPDwxMikKKyNkZWZpbmUgICBNSV9MUklfTU1JT19SRU1B
UF9HRU4xMgkJKDE8PDE3KQogI2RlZmluZSAgIE1JX0xSSV9BRERfQ1NfTU1JT19TVEFSVF9HRU4x
MQkoMTw8MTkpCiAjZGVmaW5lIE1JX1NUT1JFX1JFR0lTVEVSX01FTSAgICAgICAgTUlfSU5TVFIo
MHgyNCwgMSkKICNkZWZpbmUgTUlfU1RPUkVfUkVHSVNURVJfTUVNX0dFTjggICBNSV9JTlNUUigw
eDI0LCAyKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCA4M2FiZGRhMDViYTIuLmY4ODY0
MjIwOTI4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE2OTQsNyArMTY5NCw4IEBA
IGdlbjhfdXBkYXRlX3JlZ19zdGF0ZV91bmxvY2tlZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAq
c3RyZWFtLAogCiAJLyoKIAkgKiBOQjogVGhlIExSSSBpbnN0cnVjdGlvbiBpcyBnZW5lcmF0ZWQg
YnkgdGhlIGhhcmR3YXJlLgotCSAqIFNob3VsZCB3ZSByZWFkIGl0IGluIGFuZCBhc3NlcnQgdGhh
dCB0aGUgb2Zmc2V0IGZsYWcgaXMgc2V0PworCSAqIFNob3VsZCB3ZSByZWFkIGl0IGluIGFuZCBh
c3NlcnQgdGhhdCB0aGUgYXBwcm9wcmlhdGUKKwkgKiBvZmZzZXQgZmxhZyBpcyBzZXQ/CiAJICov
CiAKIAlDVFhfUkVHKGNlLT5lbmdpbmUsIHJlZ19zdGF0ZSwgY3R4X29hY3R4Y3RybCwgR0VOOF9P
QUNUWENPTlRST0wsCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
