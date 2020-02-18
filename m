Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71846162638
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 13:36:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5299589AC2;
	Tue, 18 Feb 2020 12:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525BB89AC2
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 12:36:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 04:36:06 -0800
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="228720818"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 04:36:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200205183546.9291-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200205183546.9291-1-ville.syrjala@linux.intel.com>
 <20200205183546.9291-2-ville.syrjala@linux.intel.com>
Date: Tue, 18 Feb 2020 14:36:02 +0200
Message-ID: <87sgj8ul71.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/hpd: Replace the
 loop-within-loop with two independent loops
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gV2VkLCAwNSBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBObyBwb2ludCBpbiBsb29waW5nIG92ZXIgYWxsIGNvbm5lY3Rv
cnMgZm9yIGVhY2ggaHBkIHBpbi4gSnVzdCBsb29wCj4gb3ZlciBlYWNoIGNvbm5lY3RvciBmaXJz
dCBhbmQgZGVhbCB3aXRoIGVhY2ggb25lJ3MgaHBkIHBpbi4gVGhlbgo+IGxvb3Agb3ZlciBhbGwg
dGhlIGhwZCBwaW5zIHRvIG1hcmsgdGhlbSBhcyBlbmFibGVkIGFnYWluLgo+Cj4gQWxzbyBnZXQg
cmlkIG9mIHRoZSBNU1Qgc3BlY2lhbCBjYXNlIGFzIE1TVCBlbmNvZGVycyBzaW1wbHkgZG9uJ3QK
PiBoYXZlIGEgSFBEIHBpbiBhbmQgd2lsbCBnZXQgbmF0dXJhbGx5IGZpdGVyZWQgb3V0LgoKSSB0
aGluayAwMTJlZTY5MDM3MmMgKCJkcm0vaTkxNTogSW50cm9kdWNlIGludGVsX2Nvbm5lY3Rvcl9o
cGRfcGluKCkiKQphbHJlYWR5IHRvb2sgY2FyZSBvZiB0aGlzIHBhcnQuIFBsZWFzZSBqdXN0IGRy
b3AgdGhlIHNlbnRlbmNlLgoKT3RoZXIgdGhhbiB0aGF0LAoKUmV2aWV3ZWQtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCAzOSArKysrKysrKysrKy0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3Rw
bHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+IGlu
ZGV4IDEyN2EyZjI4YzFhYy4uNTMxMDIxMDAyZTM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiBAQCAtMjQyLDM2ICsyNDIsMzkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfaHBkX2lycV9zdG9ybV9yZWVuYWJsZV93b3JrKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykKPiAgCQljb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpkZXZfcHJpdiksCj4g
IAkJCSAgICAgaG90cGx1Zy5yZWVuYWJsZV93b3JrLndvcmspOwo+ICAJc3RydWN0IGRybV9kZXZp
Y2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+ICsJc3RydWN0IGRybV9jb25uZWN0b3JfbGlzdF9p
dGVyIGNvbm5faXRlcjsKPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiAg
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICAJZW51bSBocGRfcGluIHBpbjsKPiAgCj4gIAl3
YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmRldl9wcml2LT5ydW50aW1lX3BtKTsKPiAg
Cj4gIAlzcGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwo+IC0JZm9yX2VhY2hfaHBk
X3BpbihwaW4pIHsKPiAtCQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXIgY29ubl9pdGVy
Owo+IC0JCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiAgCj4gLQkJaWYgKGRl
dl9wcml2LT5ob3RwbHVnLnN0YXRzW3Bpbl0uc3RhdGUgIT0gSFBEX0RJU0FCTEVEKQo+ICsJZHJt
X2Nvbm5lY3Rvcl9saXN0X2l0ZXJfYmVnaW4oZGV2LCAmY29ubl9pdGVyKTsKPiArCWZvcl9lYWNo
X2ludGVsX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3RvciwgJmNvbm5faXRlcikgewo+ICsJCXBpbiA9
IGludGVsX2Nvbm5lY3Rvcl9ocGRfcGluKGNvbm5lY3Rvcik7Cj4gKwkJaWYgKHBpbiA9PSBIUERf
Tk9ORSB8fAo+ICsJCSAgICBkZXZfcHJpdi0+aG90cGx1Zy5zdGF0c1twaW5dLnN0YXRlICE9IEhQ
RF9ESVNBQkxFRCkKPiAgCQkJY29udGludWU7Cj4gIAo+IC0JCWRldl9wcml2LT5ob3RwbHVnLnN0
YXRzW3Bpbl0uc3RhdGUgPSBIUERfRU5BQkxFRDsKPiAtCj4gLQkJZHJtX2Nvbm5lY3Rvcl9saXN0
X2l0ZXJfYmVnaW4oZGV2LCAmY29ubl9pdGVyKTsKPiAtCQlmb3JfZWFjaF9pbnRlbF9jb25uZWN0
b3JfaXRlcihjb25uZWN0b3IsICZjb25uX2l0ZXIpIHsKPiAtCQkJaWYgKGludGVsX2Nvbm5lY3Rv
cl9ocGRfcGluKGNvbm5lY3RvcikgPT0gcGluKSB7Cj4gLQkJCQlpZiAoY29ubmVjdG9yLT5iYXNl
LnBvbGxlZCAhPSBjb25uZWN0b3ItPnBvbGxlZCkKPiAtCQkJCQlEUk1fREVCVUdfRFJJVkVSKCJS
ZWVuYWJsaW5nIEhQRCBvbiBjb25uZWN0b3IgJXNcbiIsCj4gLQkJCQkJCQkgY29ubmVjdG9yLT5i
YXNlLm5hbWUpOwo+IC0JCQkJY29ubmVjdG9yLT5iYXNlLnBvbGxlZCA9IGNvbm5lY3Rvci0+cG9s
bGVkOwo+IC0JCQkJaWYgKCFjb25uZWN0b3ItPmJhc2UucG9sbGVkKQo+IC0JCQkJCWNvbm5lY3Rv
ci0+YmFzZS5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BPTExfSFBEOwo+IC0JCQl9Cj4gLQkJfQo+
IC0JCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKPiArCQlpZiAoY29u
bmVjdG9yLT5iYXNlLnBvbGxlZCAhPSBjb25uZWN0b3ItPnBvbGxlZCkKPiArCQkJRFJNX0RFQlVH
X0RSSVZFUigiUmVlbmFibGluZyBIUEQgb24gY29ubmVjdG9yICVzXG4iLAo+ICsJCQkJCSBjb25u
ZWN0b3ItPmJhc2UubmFtZSk7Cj4gKwkJY29ubmVjdG9yLT5iYXNlLnBvbGxlZCA9IGNvbm5lY3Rv
ci0+cG9sbGVkOwo+ICsJCWlmICghY29ubmVjdG9yLT5iYXNlLnBvbGxlZCkKPiArCQkJY29ubmVj
dG9yLT5iYXNlLnBvbGxlZCA9IERSTV9DT05ORUNUT1JfUE9MTF9IUEQ7Cj4gKwl9Cj4gKwlkcm1f
Y29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7Cj4gKwo+ICsJZm9yX2VhY2hfaHBk
X3BpbihwaW4pIHsKPiArCQlpZiAoZGV2X3ByaXYtPmhvdHBsdWcuc3RhdHNbcGluXS5zdGF0ZSA9
PSBIUERfRElTQUJMRUQpCj4gKwkJCWRldl9wcml2LT5ob3RwbHVnLnN0YXRzW3Bpbl0uc3RhdGUg
PSBIUERfRU5BQkxFRDsKPiAgCX0KPiArCj4gIAlpZiAoZGV2X3ByaXYtPmRpc3BsYXlfaXJxc19l
bmFibGVkICYmIGRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXApCj4gIAkJZGV2X3ByaXYt
PmRpc3BsYXkuaHBkX2lycV9zZXR1cChkZXZfcHJpdik7Cj4gKwo+ICAJc3Bpbl91bmxvY2tfaXJx
KCZkZXZfcHJpdi0+aXJxX2xvY2spOwo+ICAKPiAgCWludGVsX3J1bnRpbWVfcG1fcHV0KCZkZXZf
cHJpdi0+cnVudGltZV9wbSwgd2FrZXJlZik7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
