Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82724C2E87
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 10:03:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372E86E536;
	Tue,  1 Oct 2019 08:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9596E536
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 08:03:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 01:03:15 -0700
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="274923763"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 01:03:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191001063128.10566-1-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191001063128.10566-1-swati2.sharma@intel.com>
Date: Tue, 01 Oct 2019 11:03:08 +0300
Message-ID: <87pnjgdhab.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
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
Cc: ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMSBPY3QgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gUHJlbWF0dXJlIGdhbW1hIGx1dCBwcmVwcmF0aW9uIGFuZCBsb2FkaW5nIHdo
aWNoIHdhcyBnZXR0aW5nCj4gcmVmbGVjdGVkIGluIGZpcnN0IG1vZGVzZXQgY2F1c2luZyBkaWZm
ZXJlbnQgY29sb3JzIG9uCj4gc2NyZWVuIGR1cmluZyBib290Lgo+Cj4gSXNzdWU6IEluIEJJT1Ms
IGdhbW1hIGlzIGRpc2FibGVkIGJ5IGRlZmF1bHQuIEhvd2V2ZXIsCj4gbGVnYWN5X3JlYWRfbHV0
cygpIHdhcyBnZXR0aW5nIGNhbGxlZCBldmVuIGJlZm9yZSB0aGUgbGVnYWN5X2xvYWRfbHV0cygp
Cj4gd2hpY2ggd2FzIHNldHRpbmcgY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgYW5kIGdhbW1h
X2x1dCB3YXMKPiBwcm9ncmFtbWVkIHdpdGgganVuayB2YWx1ZXMgd2hpY2ggbGVkIHRvIHZpc3Vh
bCBhcnRpZmFjdHMgKGRpZmZlcmVudAo+IGNvbG9yZWQgc2NyZWVucyBpbnN0ZWFkIG9mIHVzdWFs
IGJsYWNrIGR1cmluZyBib290KS4KPgo+IEZpeDogQ2FsbGluZyByZWFkX2x1dHMoKSBvbmx5IHdo
ZW4gZ2FtbWEgaXMgZW5hYmxlZCB3aGljaCB3aWxsIGhhcHBlbgo+IGFmdGVyIGZpcnN0IG1vZGVz
ZXQuCj4KPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTExODA5CgpJJ20gY29uZnVzZWQuIElzIHRoZXJlIGEgY3VycmVudCBwcm9ibGVtIHVw
c3RyZWFtIGFmdGVyIHRoZSByZXZlcnQKMWI4NTg4NzQxZmRjICgiUmV2ZXJ0ICJkcm0vaTkxNS9j
b2xvcjogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkiIik/CgpPciBkb2VzIHRoaXMgZml4IGEgcHJv
YmxlbSB0aGF0IG9ubHkgb2NjdXJzIGluIGNvbmp1bmN0aW9uIHdpdGggdGhlCnJldmVydGVkIGNv
bW1pdD8gVGhlbiBzYXkgc28uCgpOb3RlIGlubGluZS4KCj4gU2lnbmVkLW9mZi1ieTogU3dhdGkg
U2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBmMTMyOGMwOGY0YWQuLmY4OWFhNGJi
OWY0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gQEAgLTEwNTI4LDcgKzEwNTI4LDkgQEAgc3RhdGljIGJvb2wgaGFzd2VsbF9nZXRfcGlw
ZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gIAkJaTl4eF9nZXRfcGlwZV9jb2xv
cl9jb25maWcocGlwZV9jb25maWcpOwo+ICAJfQo+ICAKPiAtCWludGVsX2NvbG9yX2dldF9jb25m
aWcocGlwZV9jb25maWcpOwo+ICsJaWYgKChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmIChw
aXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSAmIFBPU1RfQ1NDX0dBTU1BX0VOQUJMRSkpIHx8Cj4gKwkg
ICAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5ICYmIChwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxl
KSkpCj4gKwkJCWludGVsX2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwoKUHV0IGFsbCBv
ZiB0aGUgY29uZGl0aW9ucyBpbnNpZGUgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpLgoKQlIsCkph
bmkuCgoKPiAgCj4gIAlwb3dlcl9kb21haW4gPSBQT1dFUl9ET01BSU5fUElQRV9QQU5FTF9GSVRU
RVIoY3J0Yy0+cGlwZSk7Cj4gIAlXQVJOX09OKHBvd2VyX2RvbWFpbl9tYXNrICYgQklUX1VMTChw
b3dlcl9kb21haW4pKTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
