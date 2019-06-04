Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A9634B23
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734128979D;
	Tue,  4 Jun 2019 14:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6050B897B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:16 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:05 +0300
Message-Id: <20190604145826.16424-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/23] drm/i915: Tune down WARNs about TBT AUX
 power well enabling
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

VGhlIEhXIGNvbXBsZXRpb24gZmxhZyBmb3IgdGhlIFRCVCBBVVggcG93ZXIgd2VsbCBlbmFibGlu
Zy9kaXNhYmxpbmcKZ2V0cyBzdHVjayBpZiB0aGUgZmlybXdhcmUgdGVhcnMgZG93biB0aGUgVEJU
IERQIHR1bm5lbCBiZWZvcmUgdGhlCmNvbXBsZXRpb24uCgpXZSBzaG91bGRuJ3QgY29tcGxhaW4g
YWJvdXQgdGhlIHRpbWVvdXQsIHNpbmNlIGl0J3MgZXhwZWN0ZWQgdG8gaGFwcGVuCmFuZCBkb2Vz
bid0IGNhdXNlIGZ1cnRoZXIgaXNzdWVzLiBXZSBzdXBwcmVzcyB0aGUgZGlzYWJsaW5nIHRpbWVv
dXQKYWxyZWFkeSwgZG8gdGhlIHNhbWUgZm9yIGVuYWJsaW5nLgoKQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDE1ICsr
KysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9w
b3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4
IDI3OGE3ZWRjOTRmNS4uMjQ5YTVmYTU1ZGY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheV9wb3dlci5jCkBAIC0yNjgsMTEgKzI2OCwxNiBAQCBzdGF0aWMgdm9pZCBoc3df
d2FpdF9mb3JfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAogCWludCBwd19pZHggPSBwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4OwogCiAJLyogVGlt
ZW91dCBmb3IgUFcxOjEwIHVzLCBBVVg6bm90IHNwZWNpZmllZCwgb3RoZXIgUFdzOjIwIHVzLiAq
LwotCVdBUk5fT04oaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsCi0J
CQkJCXJlZ3MtPmRyaXZlciwKLQkJCQkJSFNXX1BXUl9XRUxMX0NUTF9TVEFURShwd19pZHgpLAot
CQkJCQlIU1dfUFdSX1dFTExfQ1RMX1NUQVRFKHB3X2lkeCksCi0JCQkJCTEpKTsKKwlpZiAoaW50
ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsCisJCQkJICAgIHJlZ3MtPmRy
aXZlciwKKwkJCQkgICAgSFNXX1BXUl9XRUxMX0NUTF9TVEFURShwd19pZHgpLAorCQkJCSAgICBI
U1dfUFdSX1dFTExfQ1RMX1NUQVRFKHB3X2lkeCksCisJCQkJICAgIDEpKSB7CisJCURSTV9ERUJV
R19LTVMoIiVzIGZvcmNlZCBvZmZcbiIsIHBvd2VyX3dlbGwtPmRlc2MtPm5hbWUpOworCisJCS8q
IEFuIEFVWCB0aW1lb3V0IGlzIGV4cGVjdGVkIGlmIHRoZSBUQlQgRFAgdHVubmVsIGlzIGRvd24u
ICovCisJCVdBUk5fT04oIXBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQpOworCX0KIH0K
IAogc3RhdGljIHUzMiBoc3dfcG93ZXJfd2VsbF9yZXF1ZXN0ZXJzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
