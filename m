Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E2610C00A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 23:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B008F89402;
	Wed, 27 Nov 2019 22:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D34589402
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 22:12:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 14:12:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="359634208"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.108])
 by orsmga004.jf.intel.com with ESMTP; 27 Nov 2019 14:12:56 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 14:11:21 -0800
Message-Id: <20191127221119.384754-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: fix cmd_buf being wrongly set
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

VGhlICJlcnIiIGxhYmVsIGlzIG5vdCByZWFsbHkgImVyciIsIGJ1dCByYXRoZXIgIm91dCIgc2lu
Y2UgdGhlIHJldHVybgpwYXRoIGlzIHNoYXJlZCBiZXR3ZWVuIGVycm9yIGNvbmRpdGlvbiBhbmQg
bm9ybWFsIHBhdGguIFRoaXMgYnJva2Ugd2hlbgpjb21taXQgMDNjZWE2MTA3NmYwICgiZHJtL2k5
MTUvZHNiOiBmaXggZXh0cmEgd2FybmluZyBvbiBlcnJvciBwYXRoCmhhbmRsaW5nIikgYWRkZWQg
YSAiZHNiLT5jbWRfYnVmID0gTlVMTDsiIHRoZXJlLCBtYWtpbmcgRFNCIHRvIHN0b3AKd29ya2lu
ZyBzaW5jZSBub3cgYWxsIHdyaXRlcyB3b3VsZCBwYXNzLXRocm91Z2ggdmlhIG1taW8uCgpSZW1v
dmUgdGhlIHNldCB0byBOVUxMIHNpbmNlIGl0J3MgYWN0dWFsbHkgbm90IG5lZWRlZDogd2Ugb25s
eSBzZXQgaXQgaWYKYWxsIHN0ZXBzIGFyZSBzdWNjZXNmdWwuIFdoaWxlIGF0IGl0LCByZW5hbWUg
dGhlIGxhYmVsIHNvIHRoaXMgY29uZnVzaW9uCmRvZXNuJ3QgaGFwcGVuIGFnYWluLgoKRml4ZXM6
IDAzY2VhNjEwNzZmMCAoImRybS9pOTE1L2RzYjogZml4IGV4dHJhIHdhcm5pbmcgb24gZXJyb3Ig
cGF0aCBoYW5kbGluZyIKUmVzb2x2ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaW50ZWwvaXNzdWVzLzgKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQoKUmlnaHQgbm93IEkgZG9uJ3QgaGF2ZSBhY2Nlc3MgdG8g
dGhlIGh3IHRvIHJlcHJvZHVjZSBpdCwgc28gdGhpcyBpcwpidWlsZC10ZXN0ZWQgb25seS4KCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMTggKysrKysrKysrLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4IDViZjY3YmRjODE4
Mi4uYWRhMDA2YTY5MGRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKQEAgLTExNiwzNCArMTE2LDM0IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMg
KmNydGMpCiAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBEU0Jf
QlVGX1NJWkUpOwogCWlmIChJU19FUlIob2JqKSkgewogCQlEUk1fRVJST1IoIkdlbSBvYmplY3Qg
Y3JlYXRpb24gZmFpbGVkXG4iKTsKLQkJZ290byBlcnI7CisJCWdvdG8gb3V0OwogCX0KIAogCXZt
YSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIDApOwogCWlmIChJ
U19FUlIodm1hKSkgewogCQlEUk1fRVJST1IoIlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOwogCQlp
OTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0JCWdvdG8gZXJyOworCQlnb3RvIG91dDsKIAl9CiAK
IAlidWYgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0MpOwog
CWlmIChJU19FUlIoYnVmKSkgewogCQlEUk1fRVJST1IoIkNvbW1hbmQgYnVmZmVyIGNyZWF0aW9u
IGZhaWxlZFxuIik7Ci0JCWdvdG8gZXJyOworCQlnb3RvIG91dDsKIAl9CiAKIAlkc2ItPmlkID0g
RFNCMTsKIAlkc2ItPnZtYSA9IHZtYTsKIAlkc2ItPmNtZF9idWYgPSBidWY7CiAKLWVycjoKK291
dDoKIAkvKgotCSAqIFNldCBjbWRfYnVmIHRvIE5VTEwgc28gdGhlIHdyaXRlcyBwYXNzLXRocm91
Z2gsIGJ1dCBsZWF2ZSB0aGUKLQkgKiBkYW5nbGluZyByZWZjb3VudCB0byBiZSByZW1vdmVkIGxh
dGVyIGJ5IHRoZSBjb3JyZXNwb25kaW5nCi0JICogaW50ZWxfZHNiX3B1dCgpOiB0aGUgaW1wb3J0
YW50IGVycm9yIG1lc3NhZ2Ugd2lsbCBhbHJlYWR5IGJlCi0JICogbG9nZ2VkIGFib3ZlLgorCSAq
IE9uIGVycm9yIGRzYi0+Y21kX2J1ZiB3aWxsIGNvbnRpbnVlIHRvIGJlIE5VTEwsIG1ha2luZyB0
aGUgd3JpdGVzCisJICogcGFzcy10aHJvdWdoLiBMZWF2ZSB0aGUgZGFuZ2xpbmcgcmVmIHRvIGJl
IHJlbW92ZWQgbGF0ZXIgYnkgdGhlCisJICogY29ycmVzcG9uZGluZyBpbnRlbF9kc2JfcHV0KCk6
IHRoZSBpbXBvcnRhbnQgZXJyb3IgbWVzc2FnZSB3aWxsCisJICogYWxyZWFkeSBiZSBsb2dnZWQg
YWJvdmUuCiAJICovCi0JZHNiLT5jbWRfYnVmID0gTlVMTDsKKwogCWludGVsX3J1bnRpbWVfcG1f
cHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKIAogCXJldHVybiBkc2I7Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
