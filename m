Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FAEE56F6
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A06C6EBC0;
	Fri, 25 Oct 2019 23:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5296EBC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:11:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:11:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="192685504"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga008.jf.intel.com with ESMTP; 25 Oct 2019 16:11:37 -0700
Date: Fri, 25 Oct 2019 16:11:35 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191025231135.375hu7sddxurlwc6@ldmartin-desk1.jf.intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025230623.27829-2-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/tgl: Handle AUX interrupts for
 TC ports
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MDY6MTlQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPldlJ3JlIGN1cnJlbnRseSBvbmx5IHByb2Nlc3NpbmcgQVVYIGludGVycnVwdHMgb24gdGhl
IGNvbWJvIHBvcnRzOyBtYWtlCj5zdXJlIHdlIGhhbmRsZSB0aGUgVEMgcG9ydHMgYXMgd2VsbC4K
Pgo+djI6IERyb3Agc3RhbGUgY29tbWVudAo+Cj5GaXhlczogZjY2Mzc2OWE1ZWVmICgiZHJtL2k5
MTUvdGdsOiBpbml0aWFsaXplIFRDIGFuZCBUQlQgcG9ydHMiKQo+Q2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KPlJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KCgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpMdWNhcyBEZSBNYXJjaGkKCj4tLS0KPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTAgKysrKysrKystLQo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggfCAgNiArKysrKysKPiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+aW5kZXgg
MzMwMjBjOGNhNWY2Li45ODdiNDZkNDk5ZmMgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj5A
QCAtMjU3NSwxMCArMjU3NSwxNiBAQCBzdGF0aWMgdTMyIGdlbjhfZGVfcG9ydF9hdXhfbWFzayhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gCXUzMiBtYXNrOwo+Cj4gCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+LQkJLyogVE9ETzogQWRkIEFVWCBlbnRyaWVzIGZv
ciBVU0JDICovCj4gCQlyZXR1cm4gVEdMX0RFX1BPUlRfQVVYX0RESUEgfAo+IAkJCVRHTF9ERV9Q
T1JUX0FVWF9ERElCIHwKPi0JCQlUR0xfREVfUE9SVF9BVVhfRERJQzsKPisJCQlUR0xfREVfUE9S
VF9BVVhfRERJQyB8Cj4rCQkJVEdMX0RFX1BPUlRfQVVYX1VTQkMxIHwKPisJCQlUR0xfREVfUE9S
VF9BVVhfVVNCQzIgfAo+KwkJCVRHTF9ERV9QT1JUX0FVWF9VU0JDMyB8Cj4rCQkJVEdMX0RFX1BP
UlRfQVVYX1VTQkM0IHwKPisJCQlUR0xfREVfUE9SVF9BVVhfVVNCQzUgfAo+KwkJCVRHTF9ERV9Q
T1JUX0FVWF9VU0JDNjsKPisKPgo+IAltYXNrID0gR0VOOF9BVVhfQ0hBTk5FTF9BOwo+IAlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5pbmRleCA3
NDYzMjY3ODRhNGQuLjhjZDQwZTdhZjYxOCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPkBA
IC03NDM5LDYgKzc0MzksMTIgQEAgZW51bSB7Cj4gI2RlZmluZSAgR0VOOF9QT1JUX0RQX0FfSE9U
UExVRwkJKDEgPDwgMykKPiAjZGVmaW5lICBCWFRfREVfUE9SVF9HTUJVUwkJKDEgPDwgMSkKPiAj
ZGVmaW5lICBHRU44X0FVWF9DSEFOTkVMX0EJCSgxIDw8IDApCj4rI2RlZmluZSAgVEdMX0RFX1BP
UlRfQVVYX1VTQkM2CQkoMSA8PCAxMykKPisjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfVVNCQzUJ
CSgxIDw8IDEyKQo+KyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDNAkJKDEgPDwgMTEpCj4r
I2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkMzCQkoMSA8PCAxMCkKPisjZGVmaW5lICBUR0xf
REVfUE9SVF9BVVhfVVNCQzIJCSgxIDw8IDkpCj4rI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VT
QkMxCQkoMSA8PCA4KQo+ICNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElDCQkoMSA8PCAyKQo+
ICNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElCCQkoMSA8PCAxKQo+ICNkZWZpbmUgIFRHTF9E
RV9QT1JUX0FVWF9ERElBCQkoMSA8PCAwKQo+LS0gCj4yLjIxLjAKPgo+X19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
PkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
