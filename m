Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788BA17F93
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 20:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D0E898A3;
	Wed,  8 May 2019 18:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CA938989F;
 Wed,  8 May 2019 18:12:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 11:12:12 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2019 11:12:08 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  9 May 2019 00:08:43 +0530
Message-Id: <1557340733-9629-4-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
References: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v9 03/13] drm: Parse HDR metadata info from EDID
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org,
 ville.syrjala@intel.com, maarten.lankhorst@intel.com
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
YXMgS2FybG1hbiByZXZpZXcgY29tbWVudHMuCgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU2hhc2hhbmsgU2hhcm1hIDxzaGFz
aGFuay5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIHwg
NTIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDUyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
ZHJtX2VkaWQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDg1MmJkZDguLmZl
MmMyOWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZWRpZC5jCkBAIC0yODUyLDYgKzI4NTIsNyBAQCBzdGF0aWMgaW50IGRy
bV9jdnRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKICNkZWZpbmUgVklE
RU9fQkxPQ0sgICAgIDB4MDIKICNkZWZpbmUgVkVORE9SX0JMT0NLICAgIDB4MDMKICNkZWZpbmUg
U1BFQUtFUl9CTE9DSwkweDA0CisjZGVmaW5lIEhEUl9TVEFUSUNfTUVUQURBVEFfQkxPQ0sJMHg2
CiAjZGVmaW5lIFVTRV9FWFRFTkRFRF9UQUcgMHgwNwogI2RlZmluZSBFWFRfVklERU9fQ0FQQUJJ
TElUWV9CTE9DSyAweDAwCiAjZGVmaW5lIEVYVF9WSURFT19EQVRBX0JMT0NLXzQyMAkweDBFCkBA
IC0zNTk5LDYgKzM2MDAsMTIgQEAgc3RhdGljIGludCBhZGRfM2Rfc3RydWN0X21vZGVzKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsIHUxNiBzdHJ1Y3R1cmUsCiB9CiAKIHN0YXRpYyBp
bnQKK2NlYV9kYl9wYXlsb2FkX2xlbl9leHQoY29uc3QgdTggKmRiKQoreworCXJldHVybiAoZGJb
MF0gJiAweDFmKSAtIDE7Cit9CisKK3N0YXRpYyBpbnQKIGNlYV9kYl9leHRlbmRlZF90YWcoY29u
c3QgdTggKmRiKQogewogCXJldHVybiBkYlsxXTsKQEAgLTM4MzQsNiArMzg0MSw0OSBAQCBzdGF0
aWMgdm9pZCBmaXh1cF9kZXRhaWxlZF9jZWFfbW9kZV9jbG9jayhzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqbW9kZSkKIAltb2RlLT5jbG9jayA9IGNsb2NrOwogfQogCitzdGF0aWMgYm9vbCBjZWFf
ZGJfaXNfaGRtaV9oZHJfbWV0YWRhdGFfYmxvY2soY29uc3QgdTggKmRiKQoreworCWlmIChjZWFf
ZGJfdGFnKGRiKSAhPSBVU0VfRVhURU5ERURfVEFHKQorCQlyZXR1cm4gZmFsc2U7CisKKwlpZiAo
ZGJbMV0gIT0gSERSX1NUQVRJQ19NRVRBREFUQV9CTE9DSykKKwkJcmV0dXJuIGZhbHNlOworCisJ
cmV0dXJuIHRydWU7Cit9CisKK3N0YXRpYyB1aW50OF90IGVvdGZfc3VwcG9ydGVkKGNvbnN0IHU4
ICplZGlkX2V4dCkKK3sKKwlyZXR1cm4gZWRpZF9leHRbMl0gJgorCQkoQklUKEhETUlfRU9URl9U
UkFESVRJT05BTF9HQU1NQV9TRFIpIHwKKwkJIEJJVChIRE1JX0VPVEZfVFJBRElUSU9OQUxfR0FN
TUFfSERSKSB8CisJCSBCSVQoSERNSV9FT1RGX1NNUFRFX1NUMjA4NCkpOworfQorCitzdGF0aWMg
dWludDhfdCBoZHJfbWV0YWRhdGFfdHlwZShjb25zdCB1OCAqZWRpZF9leHQpCit7CisJcmV0dXJu
IGVkaWRfZXh0WzNdICYKKwkJQklUKEhETUlfU1RBVElDX01FVEFEQVRBX1RZUEUxKTsKK30KKwor
c3RhdGljIHZvaWQKK2RybV9wYXJzZV9oZHJfbWV0YWRhdGFfYmxvY2soc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3RvciwgY29uc3QgdTggKmRiKQoreworCXUxNiBsZW47CisKKwlsZW4gPSBj
ZWFfZGJfcGF5bG9hZF9sZW5fZXh0KGRiKTsKKwljb25uZWN0b3ItPmhkcl9zaW5rX21ldGFkYXRh
LmhkbWlfdHlwZTEuZW90ZiA9IGVvdGZfc3VwcG9ydGVkKGRiKTsKKwljb25uZWN0b3ItPmhkcl9z
aW5rX21ldGFkYXRhLmhkbWlfdHlwZTEubWV0YWRhdGFfdHlwZSA9CisJCQkJCWhkcl9tZXRhZGF0
YV90eXBlKGRiKTsKKworCWlmIChsZW4gPj0gNCkKKwkJY29ubmVjdG9yLT5oZHJfc2lua19tZXRh
ZGF0YS5oZG1pX3R5cGUxLm1heF9jbGwgPSBkYls0XTsKKwlpZiAobGVuID49IDUpCisJCWNvbm5l
Y3Rvci0+aGRyX3NpbmtfbWV0YWRhdGEuaGRtaV90eXBlMS5tYXhfZmFsbCA9IGRiWzVdOworCWlm
IChsZW4gPj0gNikKKwkJY29ubmVjdG9yLT5oZHJfc2lua19tZXRhZGF0YS5oZG1pX3R5cGUxLm1p
bl9jbGwgPSBkYls2XTsKK30KKwogc3RhdGljIHZvaWQKIGRybV9wYXJzZV9oZG1pX3ZzZGJfYXVk
aW8oc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgY29uc3QgdTggKmRiKQogewpAQCAt
NDQ2MSw2ICs0NTExLDggQEAgc3RhdGljIHZvaWQgZHJtX3BhcnNlX2NlYV9leHQoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCWRybV9wYXJzZV95NDIwY21kYl9iaXRtYXAoY29u
bmVjdG9yLCBkYik7CiAJCWlmIChjZWFfZGJfaXNfdmNkYihkYikpCiAJCQlkcm1fcGFyc2VfdmNk
Yihjb25uZWN0b3IsIGRiKTsKKwkJaWYgKGNlYV9kYl9pc19oZG1pX2hkcl9tZXRhZGF0YV9ibG9j
ayhkYikpCisJCQlkcm1fcGFyc2VfaGRyX21ldGFkYXRhX2Jsb2NrKGNvbm5lY3RvciwgZGIpOwog
CX0KIH0KIAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
