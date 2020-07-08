Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B0B219280
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 23:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C006E93B;
	Wed,  8 Jul 2020 21:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 533886E93B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 21:28:04 +0000 (UTC)
IronPort-SDR: MgmgJFZt7nHVy/nyquyCeYQ52D5hd3fdjA1F548DEq6KHQDQRyhwKE3Dma077ohgGOo2BUpBF/
 tToHkrmWkmYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="147899078"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="147899078"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 14:28:03 -0700
IronPort-SDR: Q0ibAc8kn48/Yeb43vz3tPr7F4BSDFA5bz/h6EZTgqg7OQn+meMG/NW+lqrhpTEEF1LcqUbeTx
 WYPhGCVnxM3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="324006988"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga007.jf.intel.com with ESMTP; 08 Jul 2020 14:28:03 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 14:29:47 -0700
Message-Id: <20200708212947.40178-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Implement WAs 18011464164 and
 22010931296
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgdG9kYXkgdGhvc2UgMiBXQXMgaGF2ZSBkaWZmZXJlbnQgaW1wbGVtZW50YXRpb24gYmV0d2Vl
biBUR0wgYW5kIERHMQpXQSBwYWdlcyBidXQgY2hlY2tpbmcgdGhlIEhTRCBpdCBpcyBjbGVhciB0
aGF0IERHMSBpbXBsZW1lbnRhdGlvbgpzaG91bGQgYmUgdXNlZCBmb3IgYm90aCwgYWxzbyB0byBk
byBzbyBpcyBlYXNpZXIgYXMgd2UganVzdCBuZWVkIHRvCmV4dGVuZCBXQSAxNDA3OTI4OTc5IHRv
IEIqIHN0ZXBwaW5nLgoKQm90aCBXQXMgYXJlIG5lZWQgdG8gZml4IHNvbWUgcG9zc2libGUgcmVu
ZGVyIGNvcnJ1cHRpb25zLgoKREcxIGluaXRpYWwgcGF0Y2hlcyB3ZXJlIG5vdCBtZXJnZWQgeWV0
LCBhcyBzb29uIGl0IGlzIHRoaXMgV0FzIHNob3VsZApiZSBhcHBsaWVkIHRvIERHMSBhcyB3ZWxs
LgoKQlNwZWM6IDUzNTA4CkJTcGVjOiA1Mjg5MApDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIHwgMTMgKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwppbmRleCAyZGEzNjY4MjFkZGEuLjNkMzFiNzYzZDljOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xNjQ5LDExICsxNjQ5LDYg
QEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkJICAgIEdFTjdfU0FSQ0hLTUQsCiAJCQkgICAgR0VO
N19ESVNBQkxFX1NBTVBMRVJfUFJFRkVUQ0gpOwogCi0JCS8qIFdhXzE0MDc5Mjg5Nzk6dGdsICov
Ci0JCXdhX3dyaXRlX29yKHdhbCwKLQkJCSAgICBHRU43X0ZGX1RIUkVBRF9NT0RFLAotCQkJICAg
IEdFTjEyX0ZGX1RFU1NFTEFUSU9OX0RPUF9HQVRFX0RJU0FCTEUpOwotCiAJCS8qIFdhXzE0MDg2
MTUwNzI6dGdsICovCiAJCXdhX3dyaXRlX29yKHdhbCwgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dB
VEUyLAogCQkJICAgIFZTVU5JVF9DTEtHQVRFX0RJU19UR0wpOwpAQCAtMTY3Nyw2ICsxNjcyLDE0
IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJICogV2FfMTQwMTAyMjkyMDY6dGdsCiAJCSAqLwog
CQl3YV9tYXNrZWRfZW4od2FsLCBHRU45X1JPV19DSElDS0VONCwgR0VOMTJfRElTQUJMRV9URExf
UFVTSCk7CisKKwkJLyoKKwkJICogV2FfMTQwNzkyODk3OTp0Z2wgQSoKKwkJICogV2FfMTgwMTE0
NjQxNjQ6dGdsIEIwKworCQkgKiBXYV8yMjAxMDkzMTI5Njp0Z2wgQjArCisJCSAqLworCQl3YV93
cml0ZV9vcih3YWwsIEdFTjdfRkZfVEhSRUFEX01PREUsCisJCQkgICAgR0VOMTJfRkZfVEVTU0VM
QVRJT05fRE9QX0dBVEVfRElTQUJMRSk7CiAJfQogCiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsK
LS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
