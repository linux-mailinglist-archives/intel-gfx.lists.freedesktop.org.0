Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 805636D008
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557F36E3E9;
	Thu, 18 Jul 2019 14:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FE46E3E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 14:43:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 07:43:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,278,1559545200"; d="scan'208";a="162090708"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 18 Jul 2019 07:43:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 17:43:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 17:43:39 +0300
Message-Id: <20190718144340.1114-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Refuse modes with hdisplay==4096
 on pre-HSW DP
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBEUCBwb3J0L3BpcGUgZ29lcyB3b25reSBpZiB3ZSB0cnkgdG8gdXNlIHRpbWluZ3Mgd2l0aApo
ZGlzcGxheT09NDA5NiBvbiBwcmUtSFNXIHBsYXRmb3Jtcy4gVGhlIGxpbmsgZmFpbHMgdG8gdHJh
aW4KYW5kIHRoZSBwaXBlIG1heSBub3Qgc2lnbmFsIHZibGFuayBpbnRlcnJ1cHRzLiBPbiBIRE1J
IHN1Y2ggYXQKbW9kZSB3b3JrcyBqdXN0IGZpbmUgKHRlc3RlZCBvbiBFTEsvU05CL0NIVikuIFNv
IGxldCdzIHJlZnVzZQpzdWNoIG1vZGVzIG9uIERQIG9uIG9sZGVyIHBsYXRmb3Jtcy4KClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMjUgKysrKysr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMGViNWQ2NmY4N2E3Li5j
OTYwMzA3NjFlYWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTQ5Myw2ICs0OTMsMjUgQEAgaW50IGludGVsX2RwX2dldF9saW5rX3RyYWluX2ZhbGxiYWNrX3Zh
bHVlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCXJldHVybiAwOwogfQogCitzdGF0aWMg
Ym9vbCBpbnRlbF9kcF9oZGlzcGxheV9iYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAorCQkJCSAgaW50IGhkaXNwbGF5KQoreworCS8qCisJICogT2xkZXIgcGxhdGZvcm1zIGRv
bid0IGxpa2UgaGRpc3BsYXk9PTQwOTYgd2l0aCBEUC4KKwkgKgorCSAqIE9uIElMSy9TTkIvSVZC
IHRoZSBwaXBlIHNlZW1zIHRvIGJlIHNvbWV3aGF0IHJ1bm5pbmcgKHNjYW5saW5lCisJICogYW5k
IGZyYW1lIGNvdW50ZXIgaW5jcmVtZW50KSwgYnV0IHdlIGRvbid0IGdldCB2YmxhbmsgaW50ZXJy
dXB0cywKKwkgKiBhbmQgdGhlIHBpcGUgdW5kZXJydW5zIGltbWVkaWF0ZWx5LiBUaGUgbGluayBh
bHNvIGRvZXNuJ3Qgc2VlbQorCSAqIHRvIGdldCB0cmFpbmVkIHByb3Blcmx5LgorCSAqCisJICog
T24gQ0hWIHRoZSB2YmxhbmsgaW50ZXJydXB0cyBkb24ndCBzZWVtIHRvIGRpc2FwcGVhciBidXQK
KwkgKiBvdGhlcndpc2UgdGhlIHN5bXB0b21zIGFyZSBzaW1pbGFyLgorCSAqCisJICogVE9ETzog
Y29uZmlybSB0aGUgYmVoYXZpb3VyIG9uIEhTVysKKwkgKi8KKwlyZXR1cm4gaGRpc3BsYXkgPT0g
NDA5NiAmJiAhSEFTX0RESShkZXZfcHJpdik7Cit9CisKIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0
YXR1cwogaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
LAogCQkgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCkBAIC01MjgsNiArNTQ3LDkg
QEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAog
CW1heF9yYXRlID0gaW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShtYXhfbGlua19jbG9jaywgbWF4X2xh
bmVzKTsKIAltb2RlX3JhdGUgPSBpbnRlbF9kcF9saW5rX3JlcXVpcmVkKHRhcmdldF9jbG9jaywg
MTgpOwogCisJaWYgKGludGVsX2RwX2hkaXNwbGF5X2JhZChkZXZfcHJpdiwgbW9kZS0+aGRpc3Bs
YXkpKQorCQlyZXR1cm4gTU9ERV9IX0lMTEVHQUw7CisKIAkvKgogCSAqIE91dHB1dCBicHAgaXMg
c3RvcmVkIGluIDYuNCBmb3JtYXQgc28gcmlnaHQgc2hpZnQgYnkgNCB0byBnZXQgdGhlCiAJICog
aW50ZWdlciB2YWx1ZSBzaW5jZSB3ZSBzdXBwb3J0IG9ubHkgaW50ZWdlciB2YWx1ZXMgb2YgYnBw
LgpAQCAtMjIwOCw2ICsyMjMwLDkgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaWYgKGFkanVzdGVkX21vZGUtPmZsYWdzICYgRFJNX01P
REVfRkxBR19EQkxDTEspCiAJCXJldHVybiAtRUlOVkFMOwogCisJaWYgKGludGVsX2RwX2hkaXNw
bGF5X2JhZChkZXZfcHJpdiwgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheSkpCisJCXJldHVy
biAtRUlOVkFMOworCiAJcmV0ID0gaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZpZyhlbmNvZGVy
LCBwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7CiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
