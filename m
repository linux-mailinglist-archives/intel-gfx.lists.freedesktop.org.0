Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF1A11701
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 12:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B94698934F;
	Thu,  2 May 2019 10:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E476E8934F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 10:15:08 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 03:15:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="145390572"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 May 2019 03:15:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2019 13:15:05 +0300
Date: Thu, 2 May 2019 13:15:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>
Message-ID: <20190502101505.GK24299@intel.com>
References: <20190502094942.21115-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502094942.21115-1-shashank.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/GLK: Properly handle plane CSC for
 BT2020 framebuffers
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
Cc: intel-gfx@lists.freedesktop.org, Ville Syrjala <ville.syrjala@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMDIsIDIwMTkgYXQgMDM6MTk6NDJQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1h
IHdyb3RlOgo+IEZyYW1lYnVmZmVyIGZvcm1hdHMgUDAxeCBhcmUgc3VwcG9ydGVkIGJ5IEdMSywg
YnV0IHRoZSBmdW5jdGlvbiB3aGljaAo+IGhhbmRsZXMgQ1NDIG9uIHBsYW5lIGNvbG9yIGNvbnRy
b2wgcmVnaXN0ZXIsIHN0aWxsIGV4cGVjdGVzIHRoZSBpbnB1dAo+IGJ1ZmZlciB0byBiZSBSRUM3
MDkuIFRoaXMgY2FuIGNhdXNlIGluYWNjdXJhdGUgb3V0cHV0IGZvciBkaXJlY3QgUDAxeAo+IGZs
aXBzLgo+IAo+IFRoaXMgcGF0Y2ggY2hlY2tzIGlmIHRoZSBjb2xvcl9lbmNvZGluZyBwcm9wZXJ0
eSBpcyBzZXQgdG8gWUNCQ1JfMjAyMCwKPiBhbmQgZW5hYmxlcyB0aGUgY29ycmVzcG9uZGluZyBj
b2xvciBjb252ZXJzaW9uIG1vZGUgb24gcGxhbmUgQ1NDLgo+IAo+IFBTOiByZW5hbWVkIHZhcmlh
YmxlIHBsYW5lX2NvbG9yX2N0bCB0byBjb2xvcl9jdGwgZm9yIDgwIGNoYXIgc3R1ZmYuCj4gCj4g
Q2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgo+IENjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAaW50ZWwuY29tPgo+IENjOiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJt
YSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGlzcGxheS5jIHwgMjYgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBkZDY1ZDdjNTIxYzEuLjJkNGQzMTI4
YmYxZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMzg2OCwy
NCArMzg2OCwzMCBAQCB1MzIgZ2xrX3BsYW5lX2NvbG9yX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCQl0b19pOTE1KHBsYW5lX3N0YXRlLT5iYXNlLnBs
YW5lLT5kZXYpOwo+ICAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9z
dGF0ZS0+YmFzZS5mYjsKPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9w
bGFuZShwbGFuZV9zdGF0ZS0+YmFzZS5wbGFuZSk7Cj4gLQl1MzIgcGxhbmVfY29sb3JfY3RsID0g
MDsKPiArCXUzMiBjb2xvcl9jdGwgPSAwOwo+ICAKPiAtCXBsYW5lX2NvbG9yX2N0bCB8PSBQTEFO
RV9DT0xPUl9QTEFORV9HQU1NQV9ESVNBQkxFOwo+IC0JcGxhbmVfY29sb3JfY3RsIHw9IGdsa19w
bGFuZV9jb2xvcl9jdGxfYWxwaGEocGxhbmVfc3RhdGUpOwo+ICsJY29sb3JfY3RsIHw9IFBMQU5F
X0NPTE9SX1BMQU5FX0dBTU1BX0RJU0FCTEU7Cj4gKwljb2xvcl9jdGwgfD0gZ2xrX3BsYW5lX2Nv
bG9yX2N0bF9hbHBoYShwbGFuZV9zdGF0ZSk7Cj4gIAo+ICAJaWYgKGZiLT5mb3JtYXQtPmlzX3l1
diAmJiAhaWNsX2lzX2hkcl9wbGFuZShkZXZfcHJpdiwgcGxhbmUtPmlkKSkgewo+IC0JCWlmIChw
bGFuZV9zdGF0ZS0+YmFzZS5jb2xvcl9lbmNvZGluZyA9PSBEUk1fQ09MT1JfWUNCQ1JfQlQ3MDkp
Cj4gLQkJCXBsYW5lX2NvbG9yX2N0bCB8PSBQTEFORV9DT0xPUl9DU0NfTU9ERV9ZVVY3MDlfVE9f
UkdCNzA5Owo+IC0JCWVsc2UKPiAtCQkJcGxhbmVfY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX0NT
Q19NT0RFX1lVVjYwMV9UT19SR0I3MDk7Cj4gKwkJc3dpdGNoIChwbGFuZV9zdGF0ZS0+YmFzZS5j
b2xvcl9lbmNvZGluZykgewo+ICsJCWNhc2UgRFJNX0NPTE9SX1lDQkNSX0JUNzA5Ogo+ICsJCQlj
b2xvcl9jdGwgfD0gUExBTkVfQ09MT1JfQ1NDX01PREVfWVVWNzA5X1RPX1JHQjcwOTsKPiArCQkJ
YnJlYWs7Cj4gKwkJY2FzZSBEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwOgo+ICsJCQljb2xvcl9jdGwg
fD0gUExBTkVfQ09MT1JfQ1NDX01PREVfWVVWMjAyMF9UT19SR0IyMDIwOwo+ICsJCQlicmVhazsK
PiArCQlkZWZhdWx0Ogo+ICsJCQljb2xvcl9jdGwgfD0gUExBTkVfQ09MT1JfQ1NDX01PREVfWVVW
NjAxX1RPX1JHQjcwOTsKPiArCQl9CgpUaGlzIGlzbid0IGdvaW5nIHRvIGRvIGFueXRoaW5nIHdp
dGhvdXQgYWRqdXN0aW5nIHRoZSBwcm9wZXJ0eSBzdXBwb3J0ZWQKZW5jb2RpbmdzIGFzIHdlbGwu
Cgo+ICAKPiAgCQlpZiAocGxhbmVfc3RhdGUtPmJhc2UuY29sb3JfcmFuZ2UgPT0gRFJNX0NPTE9S
X1lDQkNSX0ZVTExfUkFOR0UpCj4gLQkJCXBsYW5lX2NvbG9yX2N0bCB8PSBQTEFORV9DT0xPUl9Z
VVZfUkFOR0VfQ09SUkVDVElPTl9ESVNBQkxFOwo+ICsJCQljb2xvcl9jdGwgfD0gUExBTkVfQ09M
T1JfWVVWX1JBTkdFX0NPUlJFQ1RJT05fRElTQUJMRTsKPiAgCX0gZWxzZSBpZiAoZmItPmZvcm1h
dC0+aXNfeXV2KSB7Cj4gLQkJcGxhbmVfY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX0lOUFVUX0NT
Q19FTkFCTEU7Cj4gKwkJY29sb3JfY3RsIHw9IFBMQU5FX0NPTE9SX0lOUFVUX0NTQ19FTkFCTEU7
Cj4gIAl9Cj4gIAo+IC0JcmV0dXJuIHBsYW5lX2NvbG9yX2N0bDsKPiArCXJldHVybiBjb2xvcl9j
dGw7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQKPiAtLSAKPiAyLjE3LjEKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJq
w6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
