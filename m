Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA54675F7
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0526E391;
	Fri, 12 Jul 2019 20:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8636E39B
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:36:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="193859586"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2019 13:36:33 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 13:38:08 -0700
Message-Id: <20190712203808.4126-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712202214.3906-2-manasi.d.navare@intel.com>
References: <20190712202214.3906-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5] drm/i915/display/icl: Bump up the plane/fb
 height
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

T24gSUNMKywgdGhlIG1heCBzdXBwb3J0ZWQgcGxhbmUgaGVpZ2h0IGlzIDQzMjAsIHNvIGJ1bXAg
aXQgdXAKVG8gc3VwcG9ydCA0MzIwLCB3ZSBuZWVkIHRvIGluY3JlYXNlIHRoZSBudW1iZXIgb2Yg
Yml0cyB1c2VkIHRvCnJlYWQgcGxhbmVfaGVpZ2h0IHRvIDEzIGFzIG9wcG9zZWQgdG8gb2xkZXIg
MTIgYml0cy4KCnY0OgoqIEFkanVzdCB0aGUgd2lkdGggbWFzayBhbHNvIHNpbmNlIGV4dHJhIGJp
dHMgYXJlIG1ieiAoVmlsbGUpCnYzOgoqIFVzZSAweGZmZmYgZm9yIG1hc2sgYXMgZXh0cmEgYml0
cyBhcmUgbWJ6IChWaWxsZSkKdjI6CiogSUNMIHBsYW5lIGhlaWdodCBzdXBwb3J0ZWQgaXMgNDMy
MCAoVmlsbGUpCiogQWRkIGEgbmV3IGxpbmUgYmV0d2VlbiBtYXggd2lkdGggYW5kIG1heCBoZWln
aHQgKEpvc2UpCgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgMjEgKysrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggMTUwMDY3NjQ4NjJiLi5mN2UzMWE4OWVkMmEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zMzQzLDYgKzMz
NDMsMTYgQEAgc3RhdGljIGludCBpY2xfbWF4X3BsYW5lX3dpZHRoKGNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiLAogCXJldHVybiA1MTIwOwogfQogCitzdGF0aWMgaW50IHNrbF9tYXhf
cGxhbmVfaGVpZ2h0KHZvaWQpCit7CisJcmV0dXJuIDQwOTY7Cit9CisKK3N0YXRpYyBpbnQgaWNs
X21heF9wbGFuZV9oZWlnaHQodm9pZCkKK3sKKwlyZXR1cm4gNDMyMDsKK30KKwogc3RhdGljIGJv
b2wgc2tsX2NoZWNrX21haW5fY2NzX2Nvb3JkaW5hdGVzKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUsCiAJCQkJCSAgIGludCBtYWluX3gsIGludCBtYWluX3ksIHUzMiBtYWlu
X29mZnNldCkKIHsKQEAgLTMzOTEsNyArMzQwMSw3IEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21h
aW5fc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWludCB3
ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJaW50IGgg
PSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJaW50IG1h
eF93aWR0aDsKLQlpbnQgbWF4X2hlaWdodCA9IDQwOTY7CisJaW50IG1heF9oZWlnaHQ7CiAJdTMy
IGFsaWdubWVudCwgb2Zmc2V0LCBhdXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5l
WzFdLm9mZnNldDsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQpAQCAtMzQwMSw2
ICszNDExLDExIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWVsc2UKIAkJbWF4X3dpZHRoID0gc2tsX21h
eF9wbGFuZV93aWR0aChmYiwgMCwgcm90YXRpb24pOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpCisJCW1heF9oZWlnaHQgPSBpY2xfbWF4X3BsYW5lX2hlaWdodCgpOworCWVsc2UK
KwkJbWF4X2hlaWdodCA9IHNrbF9tYXhfcGxhbmVfaGVpZ2h0KCk7CisKIAlpZiAodyA+IG1heF93
aWR0aCB8fCBoID4gbWF4X2hlaWdodCkgewogCQlEUk1fREVCVUdfS01TKCJyZXF1ZXN0ZWQgWS9S
R0Igc291cmNlIHNpemUgJWR4JWQgdG9vIGJpZyAobGltaXQgJWR4JWQpXG4iLAogCQkJICAgICAg
dywgaCwgbWF4X3dpZHRoLCBtYXhfaGVpZ2h0KTsKQEAgLTk4NjUsOCArOTg4MCw4IEBAIHNreWxh
a2VfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCW9m
ZnNldCA9IEk5MTVfUkVBRChQTEFORV9PRkZTRVQocGlwZSwgcGxhbmVfaWQpKTsKIAogCXZhbCA9
IEk5MTVfUkVBRChQTEFORV9TSVpFKHBpcGUsIHBsYW5lX2lkKSk7Ci0JZmItPmhlaWdodCA9ICgo
dmFsID4+IDE2KSAmIDB4ZmZmKSArIDE7Ci0JZmItPndpZHRoID0gKCh2YWwgPj4gMCkgJiAweDFm
ZmYpICsgMTsKKwlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYpICYgMHhmZmZmKSArIDE7CisJZmIt
PndpZHRoID0gKCh2YWwgPj4gMCkgJiAweGZmZmYpICsgMTsKIAogCXZhbCA9IEk5MTVfUkVBRChQ
TEFORV9TVFJJREUocGlwZSwgcGxhbmVfaWQpKTsKIAlzdHJpZGVfbXVsdCA9IHNrbF9wbGFuZV9z
dHJpZGVfbXVsdChmYiwgMCwgRFJNX01PREVfUk9UQVRFXzApOwotLSAKMi4xOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
