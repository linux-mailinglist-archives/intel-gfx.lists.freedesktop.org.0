Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD681B0EC9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 16:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EC76E5A9;
	Mon, 20 Apr 2020 14:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7A96E5A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 14:45:06 +0000 (UTC)
IronPort-SDR: /maKQqhEXLn3iQenNcFSetChfa+DPDvHYOCYzY9D5xQDgX3mZ46MaHTUnAMroCTLUDGw1U+xoo
 laH1520a4a7A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:45:05 -0700
IronPort-SDR: POw6JN37Qf/uJWSMolJYtyR90u8fCYDGQ8PdQFWnZEbTzzpw1RowAZ3XkwjzjByVvLFM1rbywP
 ApTrBKTRqs8g==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429149490"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 07:45:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200417134720.16654-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
 <20200417134720.16654-2-ville.syrjala@linux.intel.com>
Date: Mon, 20 Apr 2020 17:45:01 +0300
Message-ID: <87mu761aj6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Move the TRANS_DDI_FUNC_CTL
 enable to a later point
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

T24gRnJpLCAxNyBBcHIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBObyByZWFzb24gdGhhdCBJIGNhbiBzZWUgd2h5IHdlIHNob3Vs
ZCBlbmFibGUgVFJBTlNfRERJX0ZVTkNfQ1RMCj4gYmVmb3JlIHdlIHNldCB1cCB0aGUgd2F0ZXJt
YXJrcyBvZiBjb25mb2dpdXJlIHRoZSBtYnVzIHN0dWZmLgo+IEluIGZhY3QgcmVvcmRlcmluZyB0
aGVzZSBzZWVtcyB0byBtYXRjaCB0aGUgYnNwZWMgc2VxdWVuY2UgYmV0dGVyLAo+IGFuZCBjcmlj
dWFsbHkgd2lsbCBhbGxvdyB1cyB0byBwdXNoIHRoZSBUUkFOU19ERElfRlVOQ19DVEwgZW5hYmxl
CiAgICAgIF5eXl5eXl5eXgoKVGhlIGVudGlyZSBzZXJpZXMgaXMgbmljZSwgYnV0IEkgZXNwZWNp
YWxseSBsaWtlIHRoaXMgImNydWNpYWxseSIKdHlwby4gSXQgbG9va3MgcHJlemFjdGx5IGxpa2Ug
YSBtaXggb2YgY3J1Y2lhbGx5IGFuZCBjcml0aWNhbGx5LgoKRldJVyB0aGUgc2VyaWVzIGlzIEFj
a2VkLWJ5IG1lLCBhcyBDaHJpcyBiZWF0IG1lIHRvIHJldmlldy4gSSBhbHNvCmRpZG4ndCBzcG90
IGFueXRoaW5nIG9idmlvdXNseSB3cm9uZy4KCkJSLApKYW5pLgoKCj4gaW50byB0aGUgZW5jb2Rl
ciBlbmFibGUgaG9vayBhcyBhIGZvbGxvd3VwLgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBhZjViNDA1NWIzOGEu
LjdhMWU3YjVhZTg0ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gQEAgLTcwNzEsMTUgKzcwNzEsMTUgQEAgc3RhdGljIHZvaWQgaHN3X2Ny
dGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTEpCj4gIAkJaWNsX3NldF9waXBlX2NoaWNrZW4oY3J0Yyk7Cj4g
IAo+IC0JaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpCj4gLQkJaW50ZWxf
ZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMobmV3X2NydGNfc3RhdGUpOwo+IC0KPiAgCWlmIChk
ZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3MpCj4gIAkJZGV2X3ByaXYtPmRpc3Bs
YXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRlLCBjcnRjKTsKPiAgCj4gIAlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkKPiAgCQlpY2xfcGlwZV9tYnVzX2VuYWJsZShjcnRjKTsKPiAgCj4g
KwlpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKSkKPiArCQlpbnRlbF9kZGlf
ZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhuZXdfY3J0Y19zdGF0ZSk7Cj4gKwo+ICAJaW50ZWxfZW5j
b2RlcnNfZW5hYmxlKHN0YXRlLCBjcnRjKTsKPiAgCj4gIAlpZiAocHNsX2Nsa2dhdGVfd2EpIHsK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
