Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1DF1CD7E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 19:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66D4892E6;
	Tue, 14 May 2019 17:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCFDC892E6;
 Tue, 14 May 2019 17:09:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:09:38 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2019 10:09:35 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 23:06:25 +0530
Message-Id: <1557855394-12214-4-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v10 03/12] drm: Parse HDR metadata info from EDID
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SERSIG1ldGFkYXRhIGJsb2NrIGlzIGludHJvZHVjZWQgaW4gQ0VBLTg2MS4zIHNwZWMuClBhcnNp
bmcgdGhlIHNhbWUgdG8gZ2V0IHRoZSBwYW5lbCdzIEhEUiBtZXRhZGF0YS4KCnYyOiBSZWJhc2Ug
YW5kIGFkZGVkIFZpbGxlJ3MgUE9DIGNoYW5nZXMgdG8gdGhlIHBhdGNoLgoKdjM6IE5vIENoYW5n
ZQoKdjQ6IEFkZHJlc3NlZCBTaGFzaGFuaydzIHJldmlldyBjb21tZW50cwoKdjU6IEFkZHJlc3Nl
ZCBTaGFzaGFuaydzIGNvbW1lbnQgYW5kIGFkZGVkIGhpcyBSQi4KCnY2OiBBZGRyZXNzZWQgSm9u
YXMgS2FybG1hbiByZXZpZXcgY29tbWVudHMuCgp2NzogQWRyZXNzZWQgVmlsbGUncyByZXZpZXcg
Y29tbWVudHMgYW5kIGZpeGVkIHRoZSBpc3N1ZQp3aXRoIGxlbmd0aCBoYW5kbGluZy4KClNpZ25l
ZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2RybV9lZGlkLmMgfCA0OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9l
ZGlkLmMKaW5kZXggODUyYmRkOC4uMmUwYjViZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9lZGlkLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKQEAgLTI4NTIsNiAr
Mjg1Miw3IEBAIHN0YXRpYyBpbnQgZHJtX2N2dF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAogI2RlZmluZSBWSURFT19CTE9DSyAgICAgMHgwMgogI2RlZmluZSBWRU5ET1Jf
QkxPQ0sgICAgMHgwMwogI2RlZmluZSBTUEVBS0VSX0JMT0NLCTB4MDQKKyNkZWZpbmUgSERSX1NU
QVRJQ19NRVRBREFUQV9CTE9DSwkweDYKICNkZWZpbmUgVVNFX0VYVEVOREVEX1RBRyAweDA3CiAj
ZGVmaW5lIEVYVF9WSURFT19DQVBBQklMSVRZX0JMT0NLIDB4MDAKICNkZWZpbmUgRVhUX1ZJREVP
X0RBVEFfQkxPQ0tfNDIwCTB4MEUKQEAgLTM4MzQsNiArMzgzNSw1MiBAQCBzdGF0aWMgdm9pZCBm
aXh1cF9kZXRhaWxlZF9jZWFfbW9kZV9jbG9jayhzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9k
ZSkKIAltb2RlLT5jbG9jayA9IGNsb2NrOwogfQogCitzdGF0aWMgYm9vbCBjZWFfZGJfaXNfaGRt
aV9oZHJfbWV0YWRhdGFfYmxvY2soY29uc3QgdTggKmRiKQoreworCWlmIChjZWFfZGJfdGFnKGRi
KSAhPSBVU0VfRVhURU5ERURfVEFHKQorCQlyZXR1cm4gZmFsc2U7CisKKwlpZiAoZGJbMV0gIT0g
SERSX1NUQVRJQ19NRVRBREFUQV9CTE9DSykKKwkJcmV0dXJuIGZhbHNlOworCisJcmV0dXJuIHRy
dWU7Cit9CisKK3N0YXRpYyB1aW50OF90IGVvdGZfc3VwcG9ydGVkKGNvbnN0IHU4ICplZGlkX2V4
dCkKK3sKKwlyZXR1cm4gZWRpZF9leHRbMl0gJgorCQkoQklUKEhETUlfRU9URl9UUkFESVRJT05B
TF9HQU1NQV9TRFIpIHwKKwkJIEJJVChIRE1JX0VPVEZfVFJBRElUSU9OQUxfR0FNTUFfSERSKSB8
CisJCSBCSVQoSERNSV9FT1RGX1NNUFRFX1NUMjA4NCkpOworfQorCitzdGF0aWMgdWludDhfdCBo
ZHJfbWV0YWRhdGFfdHlwZShjb25zdCB1OCAqZWRpZF9leHQpCit7CisJcmV0dXJuIGVkaWRfZXh0
WzNdICYKKwkJQklUKEhETUlfU1RBVElDX01FVEFEQVRBX1RZUEUxKTsKK30KKworc3RhdGljIHZv
aWQKK2RybV9wYXJzZV9oZHJfbWV0YWRhdGFfYmxvY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciwgY29uc3QgdTggKmRiKQoreworCXUxNiBsZW47CisKKwlsZW4gPSBjZWFfZGJfcGF5
bG9hZF9sZW4oZGIpOworCWlmIChsZW4gPj0gMykgeworCQljb25uZWN0b3ItPmhkcl9zaW5rX21l
dGFkYXRhLmhkbWlfdHlwZTEuZW90ZiA9CisJCQkJCQllb3RmX3N1cHBvcnRlZChkYik7CisJCWNv
bm5lY3Rvci0+aGRyX3NpbmtfbWV0YWRhdGEuaGRtaV90eXBlMS5tZXRhZGF0YV90eXBlID0KKwkJ
CQkJCWhkcl9tZXRhZGF0YV90eXBlKGRiKTsKKwl9CisKKwlpZiAobGVuID49IDQpCisJCWNvbm5l
Y3Rvci0+aGRyX3NpbmtfbWV0YWRhdGEuaGRtaV90eXBlMS5tYXhfY2xsID0gZGJbNF07CisJaWYg
KGxlbiA+PSA1KQorCQljb25uZWN0b3ItPmhkcl9zaW5rX21ldGFkYXRhLmhkbWlfdHlwZTEubWF4
X2ZhbGwgPSBkYls1XTsKKwlpZiAobGVuID49IDYpCisJCWNvbm5lY3Rvci0+aGRyX3NpbmtfbWV0
YWRhdGEuaGRtaV90eXBlMS5taW5fY2xsID0gZGJbNl07Cit9CisKIHN0YXRpYyB2b2lkCiBkcm1f
cGFyc2VfaGRtaV92c2RiX2F1ZGlvKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIGNv
bnN0IHU4ICpkYikKIHsKQEAgLTQ0NjEsNiArNDUwOCw4IEBAIHN0YXRpYyB2b2lkIGRybV9wYXJz
ZV9jZWFfZXh0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQlkcm1fcGFyc2Vf
eTQyMGNtZGJfYml0bWFwKGNvbm5lY3RvciwgZGIpOwogCQlpZiAoY2VhX2RiX2lzX3ZjZGIoZGIp
KQogCQkJZHJtX3BhcnNlX3ZjZGIoY29ubmVjdG9yLCBkYik7CisJCWlmIChjZWFfZGJfaXNfaGRt
aV9oZHJfbWV0YWRhdGFfYmxvY2soZGIpKQorCQkJZHJtX3BhcnNlX2hkcl9tZXRhZGF0YV9ibG9j
ayhjb25uZWN0b3IsIGRiKTsKIAl9CiB9CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
