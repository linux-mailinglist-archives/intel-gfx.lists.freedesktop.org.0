Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C3CA3F9E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 23:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B046E299;
	Fri, 30 Aug 2019 21:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68B06E02F
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 21:25:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 14:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="265438431"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 30 Aug 2019 14:25:00 -0700
Date: Fri, 30 Aug 2019 14:26:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190830212642.GM701@intel.com>
References: <20190830101644.8740-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830101644.8740-1-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix regression with crtc disable
 ordering
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVzaGVkIHRvIGRpbnEsIHRoYW5rcyBmb3IgdGhlIHBhdGNoIGFuZCByZXZpZXdzCgpNYW5hc2kK
Ck9uIEZyaSwgQXVnIDMwLCAyMDE5IGF0IDEyOjE2OjQ0UE0gKzAyMDAsIE1hYXJ0ZW4gTGFua2hv
cnN0IHdyb3RlOgo+IFdoZW4gd2UgbW92ZWQgdGhlIGNvZGUgdG8gZGlzYWJsZSBjcnRjJ3MgdG8g
YSBzZXBhcmF0ZSBwYXRjaCwKPiB3ZSBmb3Jnb3QgdG8gZW5zdXJlIHRoYXQgZm9yX2VhY2hfb2xk
bmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZSgpCj4gd2FzIG1vdmVkIGFzIHdlbGwuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxp
bnV4LmludGVsLmNvbT4KPiBGaXhlczogNjZkOWNlYzhhNmM5ICgiZHJtL2k5MTUvZGlzcGxheTog
TW92ZSB0aGUgY29tbWl0X3RhaWwoKSBkaXNhYmxlIHNlcXVlbmNlIHRvIHNlcGFyYXRlIGZ1bmN0
aW9uIikKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiBDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjEgKysrKysrKysr
Ky0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gaW5kZXggYjM4ZDg0MmZmNmVjLi5lNjYxZTIwOTkxMTggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMzc4NCw3ICsxMzc4
NCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+
ICAJaW50IGk7Cj4gIAo+IC0JZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3Rh
dGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+ICsJLyoKPiAr
CSAqIERpc2FibGUgQ1JUQy9waXBlcyBpbiByZXZlcnNlIG9yZGVyIGJlY2F1c2Ugc29tZSBmZWF0
dXJlcyhNU1QgaW4KPiArCSAqIFRHTCspIHJlcXVpcmVzIG1hc3RlciBhbmQgc2xhdmUgcmVsYXRp
b25zaGlwIGJldHdlZW4gcGlwZXMsIHNvIGl0Cj4gKwkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhl
IGxvd2VzdCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3aWxsIGJlIGVuYWJsZWQKPiArCSAqIGZpcnN0
IGFuZCBkaXNhYmxlIGluIHRoZSByZXZlcnNlIG9yZGVyIHNvIHRoZSBtYXN0ZXIgd2lsbCBiZSB0
aGUKPiArCSAqIGxhc3Qgb25lIHRvIGJlIGRpc2FibGVkLgo+ICsJICovCj4gKwlmb3JfZWFjaF9v
bGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19z
dGF0ZSwKPiArCQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gIAkJaWYgKCFuZWVkc19t
b2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkKPiAgCQkJY29udGludWU7Cj4gIAo+IEBAIC0xMzk2Mywx
NSArMTM5NzEsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAlpZiAoc3RhdGUtPm1vZGVzZXQpCj4gIAkJ
d2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9wcml2LCBQT1dFUl9ET01BSU5f
TU9ERVNFVCk7Cj4gIAo+IC0JLyoKPiAtCSAqIERpc2FibGUgQ1JUQy9waXBlcyBpbiByZXZlcnNl
IG9yZGVyIGJlY2F1c2Ugc29tZSBmZWF0dXJlcyhNU1QgaW4KPiAtCSAqIFRHTCspIHJlcXVpcmVz
IG1hc3RlciBhbmQgc2xhdmUgcmVsYXRpb25zaGlwIGJldHdlZW4gcGlwZXMsIHNvIGl0Cj4gLQkg
KiBzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxvd2VzdCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3aWxs
IGJlIGVuYWJsZWQKPiAtCSAqIGZpcnN0IGFuZCBkaXNhYmxlIGluIHRoZSByZXZlcnNlIG9yZGVy
IHNvIHRoZSBtYXN0ZXIgd2lsbCBiZSB0aGUKPiAtCSAqIGxhc3Qgb25lIHRvIGJlIGRpc2FibGVk
Lgo+IC0JICovCj4gLQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNl
KHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKPiAtCQkJCQkJICAgIG5ld19jcnRjX3N0YXRl
LCBpKSB7Cj4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0
Yywgb2xkX2NydGNfc3RhdGUsCj4gKwkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gIAkJ
aWYgKG5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpIHx8Cj4gIAkJICAgIG5ld19jcnRjX3N0
YXRlLT51cGRhdGVfcGlwZSkgewo+ICAKPiAtLSAKPiAyLjIwLjEKPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
