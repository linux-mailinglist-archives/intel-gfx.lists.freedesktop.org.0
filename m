Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8DE6FC8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 11:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9396E593;
	Mon, 28 Oct 2019 10:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5673D6E595;
 Mon, 28 Oct 2019 10:39:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 03:39:17 -0700
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="198041204"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 03:39:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 28 Oct 2019 12:38:22 +0200
Message-Id: <63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1572258935.git.jani.nikula@intel.com>
References: <cover.1572258935.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND 8/8] drm/print: introduce new struct
 drm_device based logging macros
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG5ldyBzdHJ1Y3QgZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nIG1hY3JvcyBtb2RlbGVkIGFm
dGVyIHRoZSBjb3JlCmtlcm5lbCBkZXZpY2UgYmFzZWQgbG9nZ2luZyBtYWNyb3MuIFRoZXNlIHdv
dWxkIGJlIHByZWZlcnJlZCBvdmVyIHRoZQpkcm0gcHJpbnRrIGFuZCBzdHJ1Y3QgZGV2aWNlIGJh
c2VkIG1hY3JvcyBpbiBkcm0gY29kZSwgd2hlcmUgcG9zc2libGUuCgpXZSBoYXZlIGV4aXN0aW5n
IGRybSBzcGVjaWZpYyBzdHJ1Y3QgZGV2aWNlIGJhc2VkIGxvZ2dpbmcgZnVuY3Rpb25zLCBidXQK
dGhleSBhcmUgdG9vIHZlcmJvc2UgdG8gdXNlIGZvciB0d28gbWFpbiByZWFzb25zOgoKICogVGhl
IG5hbWVzIGFyZSB1bm5lY2Vzc2FyaWx5IGxvbmcsIGZvciBleGFtcGxlIERSTV9ERVZfREVCVUdf
S01TKCkuCgogKiBUaGUgdXNlIG9mIHN0cnVjdCBkZXZpY2Ugb3ZlciBzdHJ1Y3QgZHJtX2Rldmlj
ZSBpcyB0b28gZ2VuZXJpYyBmb3IKICAgbW9zdCB1c2VycywgbGVhZGluZyB0byBhbiBleHRyYSBk
ZXJlZmVyZW5jZS4KCkZvciBleGFtcGxlOgoKCURSTV9ERVZfREVCVUdfS01TKGRybS0+ZGV2LCAi
SGVsbG8sIHdvcmxkXG4iKTsKCnZzLgoKCWRybV9kYmdfa21zKGRybSwgIkhlbGxvLCB3b3JsZFxu
Iik7CgpJdCdzIGEgbWF0dGVyIG9mIHRhc3RlLCBidXQgdGhlIFNIT1VUSU5HIFVQUEVSQ0FTRSBo
YXMgYmVlbiBhcmd1ZWQgdG8gYmUKbGVzcyByZWFkYWJsZSB0aGFuIGxvd2VyY2FzZS4KClNvbWUg
bmFtZXMgYXJlIGNoYW5nZWQgZnJvbSBvbGQgRFJNIG5hbWVzIHRvIGJlIGJhc2VkIG9uIHRoZSBj
b3JlIGtlcm5lbApsb2dnaW5nIGZ1bmN0aW9ucy4gRm9yIGV4YW1wbGUsIE5PVEUgLT4gbm90aWNl
LCBFUlJPUiAtPiBlcnIsIERFQlVHIC0+CmRiZy4KCkR1ZSB0byB0aGUgY29uZmxhdGlvbiBvZiBE
Uk1fREVCVUcgYW5kIERSTV9ERUJVR19EUklWRVIgbWFjcm8gdXNlCihEUk1fREVCVUcgaXMgdXNl
ZCB3aWRlbHkgaW4gZHJpdmVycyB0aG91Z2ggaXQncyBzdXBwb3NlZCB0byBiZSBhIGNvcmUKZGVi
dWdnaW5nIGNhdGVnb3J5KSwgdGhleSBhcmUgbmFtZWQgYXMgZHJtX2RiZ19jb3JlIGFuZCBkcm1f
ZGJnLApyZXNwZWN0aXZlbHkuCgpUaGUgZHJtX2VyciBhbmQgX29uY2UvX3JhdGVsaW1pdGVkIHZh
cmlhbnRzIG5vIGxvbmdlciBpbmNsdWRlIHRoZQpmdW5jdGlvbiBuYW1lIGluIG9yZGVyIHRvIGJl
IGFibGUgdG8gdXNlIHRoZSBjb3JlIGRldmljZSBiYXNlZCBsb2dnaW5nCm1hY3Jvcy4gQXJndWFi
bHkgdGhpcyBpcyBub3QgYSBzaWduaWZpY2FudCBjaGFuZ2U7IGVycm9yIG1lc3NhZ2VzIHNob3Vs
ZApub3QgYmUgc28gY29tbW9uIHRvIGJlIG9ubHkgZGlzdGluZ3Vpc2hhYmxlIGJ5IHRoZSBmdW5j
dGlvbiBuYW1lLgoKUmF0ZWxpbWl0ZWQgZGVidWcgbG9nZ2luZyBtYWNyb3MgYXJlIHRvIGJlIGFk
ZGVkIGxhdGVyLgoKQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCi0tLQoKV2l0aCBzb21l
dGhpbmcgbGlrZSB0aGlzLCBJIHRoaW5rIGk5MTUgY291bGQgc3RhcnQgbWlncmF0aW5nIHRvCmRy
bV9kZXZpY2UgYmFzZWQgbG9nZ2luZy4gSSBoYXZlIGEgaGFyZCB0aW1lIGNvbnZpbmNpbmcgbXlz
ZWxmIG9yIGFueW9uZQphYm91dCBtaWdyYXRpbmcgdG8gdGhlIERSTV9ERVZfKiB2YXJpYW50cy4K
LS0tCiBpbmNsdWRlL2RybS9kcm1fcHJpbnQuaCB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9wcmludC5oIGIvaW5jbHVkZS9kcm0vZHJtX3ByaW50
LmgKaW5kZXggMDg1YTk2ODUyNzBjLi5lNDA0MGRlYTBkOGMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2RybV9wcmludC5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9wcmludC5oCkBAIC0zMjIsNiAr
MzIyLDggQEAgc3RhdGljIGlubGluZSBib29sIGRybV9kZWJ1Z19lbmFibGVkKGVudW0gZHJtX2Rl
YnVnX2NhdGVnb3J5IGNhdGVnb3J5KQogCiAvKgogICogc3RydWN0IGRldmljZSBiYXNlZCBsb2dn
aW5nCisgKgorICogUHJlZmVyIGRybV9kZXZpY2UgYmFzZWQgbG9nZ2luZyBvdmVyIGRldmljZSBv
ciBwcmluayBiYXNlZCBsb2dnaW5nLgogICovCiAKIF9fcHJpbnRmKDMsIDQpCkBAIC00MTcsOCAr
NDE5LDcxIEBAIHZvaWQgZHJtX2Rldl9kYmcoY29uc3Qgc3RydWN0IGRldmljZSAqZGV2LCBlbnVt
IGRybV9kZWJ1Z19jYXRlZ29yeSBjYXRlZ29yeSwKIAlfRFJNX0RFVl9ERUZJTkVfREVCVUdfUkFU
RUxJTUlURUQoZGV2LCBEUk1fVVRfUFJJTUUsCQlcCiAJCQkJCSAgZm10LCAjI19fVkFfQVJHU19f
KQogCisvKgorICogc3RydWN0IGRybV9kZXZpY2UgYmFzZWQgbG9nZ2luZworICoKKyAqIFByZWZl
ciBkcm1fZGV2aWNlIGJhc2VkIGxvZ2dpbmcgb3ZlciBkZXZpY2Ugb3IgcHJpbmsgYmFzZWQgbG9n
Z2luZy4KKyAqLworCisvKiBIZWxwZXIgZm9yIHN0cnVjdCBkcm1fZGV2aWNlIGJhc2VkIGxvZ2dp
bmcuICovCisjZGVmaW5lIF9fZHJtX3ByaW50ayhkcm0sIGxldmVsLCB0eXBlLCBmbXQsIC4uLikJ
CQlcCisJZGV2XyMjbGV2ZWwjI3R5cGUoZHJtLT5kZXYsICJbZHJtXSAiIGZtdCwgIyNfX1ZBX0FS
R1NfXykKKworCisjZGVmaW5lIGRybV9pbmZvKGRybSwgZm10LCAuLi4pCQkJCQlcCisJX19kcm1f
cHJpbnRrKGRybSwgaW5mbywsIGZtdCwgIyNfX1ZBX0FSR1NfXykKKworI2RlZmluZSBkcm1fbm90
aWNlKGRybSwgZm10LCAuLi4pCQkJCVwKKwlfX2RybV9wcmludGsoZHJtLCBub3RpY2UsLCBmbXQs
ICMjX19WQV9BUkdTX18pCisKKyNkZWZpbmUgZHJtX3dhcm4oZHJtLCBmbXQsIC4uLikJCQkJCVwK
KwlfX2RybV9wcmludGsoZHJtLCB3YXJuLCwgZm10LCAjI19fVkFfQVJHU19fKQorCisjZGVmaW5l
IGRybV9lcnIoZHJtLCBmbXQsIC4uLikJCQkJCVwKKwlfX2RybV9wcmludGsoZHJtLCBlcnIsLCAi
KkVSUk9SKiAiIGZtdCwgIyNfX1ZBX0FSR1NfXykKKworCisjZGVmaW5lIGRybV9pbmZvX29uY2Uo
ZHJtLCBmbXQsIC4uLikJCQkJXAorCV9fZHJtX3ByaW50ayhkcm0sIGluZm8sIF9vbmNlLCBmbXQs
ICMjX19WQV9BUkdTX18pCisKKyNkZWZpbmUgZHJtX25vdGljZV9vbmNlKGRybSwgZm10LCAuLi4p
CQkJCVwKKwlfX2RybV9wcmludGsoZHJtLCBub3RpY2UsIF9vbmNlLCBmbXQsICMjX19WQV9BUkdT
X18pCisKKyNkZWZpbmUgZHJtX3dhcm5fb25jZShkcm0sIGZtdCwgLi4uKQkJCQlcCisJX19kcm1f
cHJpbnRrKGRybSwgd2FybiwgX29uY2UsIGZtdCwgIyNfX1ZBX0FSR1NfXykKKworI2RlZmluZSBk
cm1fZXJyX29uY2UoZHJtLCBmbXQsIC4uLikJCQkJXAorCV9fZHJtX3ByaW50ayhkcm0sIGVyciwg
X29uY2UsICIqRVJST1IqICIgZm10LCAjI19fVkFfQVJHU19fKQorCisKKyNkZWZpbmUgZHJtX2Vy
cl9yYXRlbGltaXRlZChkcm0sIGZtdCwgLi4uKQkJCQlcCisJX19kcm1fcHJpbnRrKGRybSwgZXJy
LCBfcmF0ZWxpbWl0ZWQsICIqRVJST1IqICIgZm10LCAjI19fVkFfQVJHU19fKQorCisKKyNkZWZp
bmUgZHJtX2RiZ19jb3JlKGRybSwgZm10LCAuLi4pCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJtLT5k
ZXYsIERSTV9VVF9DT1JFLCBmbXQsICMjX19WQV9BUkdTX18pCisjZGVmaW5lIGRybV9kYmcoZHJt
LCBmbXQsIC4uLikJCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJtLT5kZXYsIERSTV9VVF9EUklWRVIs
IGZtdCwgIyNfX1ZBX0FSR1NfXykKKyNkZWZpbmUgZHJtX2RiZ19rbXMoZHJtLCBmbXQsIC4uLikJ
CQkJCVwKKwlkcm1fZGV2X2RiZyhkcm0tPmRldiwgRFJNX1VUX0tNUywgZm10LCAjI19fVkFfQVJH
U19fKQorI2RlZmluZSBkcm1fZGJnX3ByaW1lKGRybSwgZm10LCAuLi4pCQkJCQlcCisJZHJtX2Rl
dl9kYmcoZHJtLT5kZXYsIERSTV9VVF9QUklNRSwgZm10LCAjI19fVkFfQVJHU19fKQorI2RlZmlu
ZSBkcm1fZGJnX2F0b21pYyhkcm0sIGZtdCwgLi4uKQkJCQkJXAorCWRybV9kZXZfZGJnKGRybS0+
ZGV2LCBEUk1fVVRfQVRPTUlDLCBmbXQsICMjX19WQV9BUkdTX18pCisjZGVmaW5lIGRybV9kYmdf
dmJsKGRybSwgZm10LCAuLi4pCQkJCQlcCisJZHJtX2Rldl9kYmcoZHJtLT5kZXYsIERSTV9VVF9W
QkwsIGZtdCwgIyNfX1ZBX0FSR1NfXykKKyNkZWZpbmUgZHJtX2RiZ19zdGF0ZShkcm0sIGZtdCwg
Li4uKQkJCQkJXAorCWRybV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1fVVRfU1RBVEUsIGZtdCwgIyNf
X1ZBX0FSR1NfXykKKyNkZWZpbmUgZHJtX2RiZ19sZWFzZShkcm0sIGZtdCwgLi4uKQkJCQkJXAor
CWRybV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1fVVRfTEVBU0UsIGZtdCwgIyNfX1ZBX0FSR1NfXykK
KyNkZWZpbmUgZHJtX2RiZ19kcChkcm0sIGZtdCwgLi4uKQkJCQkJXAorCWRybV9kZXZfZGJnKGRy
bS0+ZGV2LCBEUk1fVVRfRFAsIGZtdCwgIyNfX1ZBX0FSR1NfXykKKworCiAvKgogICogcHJpbnRr
IGJhc2VkIGxvZ2dpbmcKKyAqCisgKiBQcmVmZXIgZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nIG92
ZXIgZGV2aWNlIG9yIHByaW5rIGJhc2VkIGxvZ2dpbmcuCiAgKi8KIAogX19wcmludGYoMiwgMykK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
