Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0EC92848
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 17:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDA789B62;
	Mon, 19 Aug 2019 15:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8B789A1F;
 Mon, 19 Aug 2019 15:24:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 08:24:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="182898196"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga006.jf.intel.com with ESMTP; 19 Aug 2019 08:24:48 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sharma Shashank <shashank.sharma@intel.com>
Date: Mon, 19 Aug 2019 20:54:10 +0530
Message-Id: <20190819152412.21318-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819152412.21318-1-ramalingam.c@intel.com>
References: <20190819152412.21318-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915: enum transcoder and pipe are
 moved into i915_drm.h
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

Rm9yIHRoZSByZXVzYWJpbGl0eSBvZiB0aGUgZW51bSB0cmFuc2NvZGVyIGFuZCBlbnVtIHBpcGUg
aW4gb3RoZXIgZHJpdmVyCm1vZHVsZXMgKGxpa2UgbWVpX2hkY3ApLCBlbnVtIHBvcnQgZGVmaW5p
dGlvbiBpcyBtb3ZlZCBmcm9tIEk5MTUgbG9jYWwKaGVhZGVyIGludGVsX2Rpc3BsYXkuaCB0byBk
cm0vaTkxNV9kcm0uaAoKU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oIHwgNDQgLS0tLS0tLS0tLS0tLS0tLS0tLQogaW5jbHVkZS9kcm0vaTkxNV9kcm0uaCAgICAg
ICAgICAgICAgICAgICAgICAgfCA0NiArKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFu
Z2VkLCA0NiBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IGQyYzcxOGYyNTQ3OC4uYWEzMTRh
YzUyYWE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
aApAQCAtNDksNTAgKzQ5LDYgQEAgZW51bSBpOTE1X2dwaW8gewogCUdQSU9PLAogfTsKIAotLyoK
LSAqIEtlZXAgdGhlIHBpcGUgZW51bSB2YWx1ZXMgZml4ZWQ6IHRoZSBjb2RlIGFzc3VtZXMgdGhh
dCBQSVBFX0E9MCwgdGhlCi0gKiByZXN0IGhhdmUgY29uc2VjdXRpdmUgdmFsdWVzIGFuZCBtYXRj
aCB0aGUgZW51bSB2YWx1ZXMgb2YgdHJhbnNjb2RlcnMKLSAqIHdpdGggYSAxOjEgdHJhbnNjb2Rl
ciAtPiBwaXBlIG1hcHBpbmcuCi0gKi8KLWVudW0gcGlwZSB7Ci0JSU5WQUxJRF9QSVBFID0gLTEs
Ci0KLQlQSVBFX0EgPSAwLAotCVBJUEVfQiwKLQlQSVBFX0MsCi0JUElQRV9ELAotCV9QSVBFX0VE
UCwKLQotCUk5MTVfTUFYX1BJUEVTID0gX1BJUEVfRURQCi19OwotCi0jZGVmaW5lIHBpcGVfbmFt
ZShwKSAoKHApICsgJ0EnKQotCi1lbnVtIHRyYW5zY29kZXIgewotCS8qCi0JICogVGhlIGZvbGxv
d2luZyB0cmFuc2NvZGVycyBoYXZlIGEgMToxIHRyYW5zY29kZXIgLT4gcGlwZSBtYXBwaW5nLAot
CSAqIGtlZXAgdGhlaXIgdmFsdWVzIGZpeGVkOiB0aGUgY29kZSBhc3N1bWVzIHRoYXQgVFJBTlND
T0RFUl9BPTAsIHRoZQotCSAqIHJlc3QgaGF2ZSBjb25zZWN1dGl2ZSB2YWx1ZXMgYW5kIG1hdGNo
IHRoZSBlbnVtIHZhbHVlcyBvZiB0aGUgcGlwZXMKLQkgKiB0aGV5IG1hcCB0by4KLQkgKi8KLQlU
UkFOU0NPREVSX0EgPSBQSVBFX0EsCi0JVFJBTlNDT0RFUl9CID0gUElQRV9CLAotCVRSQU5TQ09E
RVJfQyA9IFBJUEVfQywKLQlUUkFOU0NPREVSX0QgPSBQSVBFX0QsCi0KLQkvKgotCSAqIFRoZSBm
b2xsb3dpbmcgdHJhbnNjb2RlcnMgY2FuIG1hcCB0byBhbnkgcGlwZSwgdGhlaXIgZW51bSB2YWx1
ZQotCSAqIGRvZXNuJ3QgbmVlZCB0byBzdGF5IGZpeGVkLgotCSAqLwotCVRSQU5TQ09ERVJfRURQ
LAotCVRSQU5TQ09ERVJfRFNJXzAsCi0JVFJBTlNDT0RFUl9EU0lfMSwKLQlUUkFOU0NPREVSX0RT
SV9BID0gVFJBTlNDT0RFUl9EU0lfMCwJLyogbGVnYWN5IERTSSAqLwotCVRSQU5TQ09ERVJfRFNJ
X0MgPSBUUkFOU0NPREVSX0RTSV8xLAkvKiBsZWdhY3kgRFNJICovCi0KLQlJOTE1X01BWF9UUkFO
U0NPREVSUwotfTsKLQogc3RhdGljIGlubGluZSBjb25zdCBjaGFyICp0cmFuc2NvZGVyX25hbWUo
ZW51bSB0cmFuc2NvZGVyIHRyYW5zY29kZXIpCiB7CiAJc3dpdGNoICh0cmFuc2NvZGVyKSB7CmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X2RybS5oIGIvaW5jbHVkZS9kcm0vaTkxNV9kcm0u
aAppbmRleCAyMzI3NGNmOTI3MTIuLmIwNzc5YjgyNjdiOSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9k
cm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X2RybS5oCkBAIC0xMTgsNCArMTE4
LDUwIEBAIGVudW0gcG9ydCB7CiAKICNkZWZpbmUgcG9ydF9uYW1lKHApICgocCkgKyAnQScpCiAK
Ky8qCisgKiBLZWVwIHRoZSBwaXBlIGVudW0gdmFsdWVzIGZpeGVkOiB0aGUgY29kZSBhc3N1bWVz
IHRoYXQgUElQRV9BPTAsIHRoZQorICogcmVzdCBoYXZlIGNvbnNlY3V0aXZlIHZhbHVlcyBhbmQg
bWF0Y2ggdGhlIGVudW0gdmFsdWVzIG9mIHRyYW5zY29kZXJzCisgKiB3aXRoIGEgMToxIHRyYW5z
Y29kZXIgLT4gcGlwZSBtYXBwaW5nLgorICovCitlbnVtIHBpcGUgeworCUlOVkFMSURfUElQRSA9
IC0xLAorCisJUElQRV9BID0gMCwKKwlQSVBFX0IsCisJUElQRV9DLAorCVBJUEVfRCwKKwlfUElQ
RV9FRFAsCisKKwlJOTE1X01BWF9QSVBFUyA9IF9QSVBFX0VEUAorfTsKKworI2RlZmluZSBwaXBl
X25hbWUocCkgKChwKSArICdBJykKKworZW51bSB0cmFuc2NvZGVyIHsKKwlJTlZBTElEX1RSQU5T
Q09ERVIgPSAtMSwKKworCS8qCisJICogVGhlIGZvbGxvd2luZyB0cmFuc2NvZGVycyBoYXZlIGEg
MToxIHRyYW5zY29kZXIgLT4gcGlwZSBtYXBwaW5nLAorCSAqIGtlZXAgdGhlaXIgdmFsdWVzIGZp
eGVkOiB0aGUgY29kZSBhc3N1bWVzIHRoYXQgVFJBTlNDT0RFUl9BPTAsIHRoZQorCSAqIHJlc3Qg
aGF2ZSBjb25zZWN1dGl2ZSB2YWx1ZXMgYW5kIG1hdGNoIHRoZSBlbnVtIHZhbHVlcyBvZiB0aGUg
cGlwZXMKKwkgKiB0aGV5IG1hcCB0by4KKwkgKi8KKwlUUkFOU0NPREVSX0EgPSBQSVBFX0EsCisJ
VFJBTlNDT0RFUl9CID0gUElQRV9CLAorCVRSQU5TQ09ERVJfQyA9IFBJUEVfQywKKwlUUkFOU0NP
REVSX0QgPSBQSVBFX0QsCisKKwkvKgorCSAqIFRoZSBmb2xsb3dpbmcgdHJhbnNjb2RlcnMgY2Fu
IG1hcCB0byBhbnkgcGlwZSwgdGhlaXIgZW51bSB2YWx1ZQorCSAqIGRvZXNuJ3QgbmVlZCB0byBz
dGF5IGZpeGVkLgorCSAqLworCVRSQU5TQ09ERVJfRURQLAorCVRSQU5TQ09ERVJfRFNJXzAsCisJ
VFJBTlNDT0RFUl9EU0lfMSwKKwlUUkFOU0NPREVSX0RTSV9BID0gVFJBTlNDT0RFUl9EU0lfMCwJ
LyogbGVnYWN5IERTSSAqLworCVRSQU5TQ09ERVJfRFNJX0MgPSBUUkFOU0NPREVSX0RTSV8xLAkv
KiBsZWdhY3kgRFNJICovCisKKwlJOTE1X01BWF9UUkFOU0NPREVSUworfTsKKwogI2VuZGlmCQkJ
CS8qIF9JOTE1X0RSTV9IXyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
