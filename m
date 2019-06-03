Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC0D33211
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 16:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7650989137;
	Mon,  3 Jun 2019 14:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EBA89137
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 14:25:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 07:25:03 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 03 Jun 2019 07:25:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Jun 2019 17:25:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 17:25:00 +0300
Message-Id: <20190603142500.25680-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix per-pixel alpha with CCS
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGZvcmdvdCB0byBzZXQgLmhhc19hbHBoYT10cnVlIGZvciB0aGUgQStDQ1MgZm9ybWF0cyB3aGVu
IHRoZSBjb2RlCnN0YXJ0ZWQgdG8gY29uc3VsdCAuaGFzX2FscGhhLiBUaGlzIG1hbmlmZXN0cyBh
cyBBK0NDUyBiZWluZyB0cmVhdGVkCmFzIFgrQ0NTIHdoaWNoIG1lYW5zIG5vIHBlci1waXhlbCBh
bHBoYSBibGVuZGluZy4gRml4IHRoZSBmb3JtYXQKbGlzdCBhcHByb3ByaWF0ZWx5LgoKQ2M6IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgpDYzogSGVpbnJpY2ggRmluayA8aGVpbnJpY2guZmlua0BkYXFyaS5jb20+ClJlcG9y
dGVkLWJ5OiBIZWlucmljaCBGaW5rIDxoZWlucmljaC5maW5rQGRhcXJpLmNvbT4KRml4ZXM6IGIy
MDgxNTI1NTY5MyAoImRybS9pOTE1OiBBZGQgcGxhbmUgYWxwaGEgYmxlbmRpbmcgc3VwcG9ydCwg
djIuIikKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAx
MiArKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCmluZGV4IGMzZTJiMTE3OGQ1
NS4uNjdkNzk2ZjQ3NDdlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCkBAIC0y
NDYzLDEwICsyNDYzLDE0IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZmJfbW9kaWZpZXJf
dG9fdGlsaW5nKHU2NCBmYl9tb2RpZmllcikKICAqIG1haW4gc3VyZmFjZS4KICAqLwogc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gY2NzX2Zvcm1hdHNbXSA9IHsKLQl7IC5mb3Jt
YXQgPSBEUk1fRk9STUFUX1hSR0I4ODg4LCAuZGVwdGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLCAu
Y3BwID0geyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIH0sCi0JeyAuZm9ybWF0ID0g
RFJNX0ZPUk1BVF9YQkdSODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwgLmNwcCA9
IHsgNCwgMSwgfSwgLmhzdWIgPSA4LCAudnN1YiA9IDE2LCB9LAotCXsgLmZvcm1hdCA9IERSTV9G
T1JNQVRfQVJHQjg4ODgsIC5kZXB0aCA9IDMyLCAubnVtX3BsYW5lcyA9IDIsIC5jcHAgPSB7IDQs
IDEsIH0sIC5oc3ViID0gOCwgLnZzdWIgPSAxNiwgfSwKLQl7IC5mb3JtYXQgPSBEUk1fRk9STUFU
X0FCR1I4ODg4LCAuZGVwdGggPSAzMiwgLm51bV9wbGFuZXMgPSAyLCAuY3BwID0geyA0LCAxLCB9
LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIH0sCisJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9YUkdC
ODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwKKwkgIC5jcHAgPSB7IDQsIDEsIH0s
IC5oc3ViID0gOCwgLnZzdWIgPSAxNiwgfSwKKwl7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hCR1I4
ODg4LCAuZGVwdGggPSAyNCwgLm51bV9wbGFuZXMgPSAyLAorCSAgLmNwcCA9IHsgNCwgMSwgfSwg
LmhzdWIgPSA4LCAudnN1YiA9IDE2LCB9LAorCXsgLmZvcm1hdCA9IERSTV9GT1JNQVRfQVJHQjg4
ODgsIC5kZXB0aCA9IDMyLCAubnVtX3BsYW5lcyA9IDIsCisJICAuY3BwID0geyA0LCAxLCB9LCAu
aHN1YiA9IDgsIC52c3ViID0gMTYsIC5oYXNfYWxwaGEgPSB0cnVlLCB9LAorCXsgLmZvcm1hdCA9
IERSTV9GT1JNQVRfQUJHUjg4ODgsIC5kZXB0aCA9IDMyLCAubnVtX3BsYW5lcyA9IDIsCisJICAu
Y3BwID0geyA0LCAxLCB9LCAuaHN1YiA9IDgsIC52c3ViID0gMTYsIC5oYXNfYWxwaGEgPSB0cnVl
LCB9LAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKgotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
