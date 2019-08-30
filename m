Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45124A3E8A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 21:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A3B6E3BB;
	Fri, 30 Aug 2019 19:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0F26E3BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 19:39:25 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 12:39:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="265414031"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 30 Aug 2019 12:39:24 -0700
Date: Fri, 30 Aug 2019 12:41:06 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190830194106.GL701@intel.com>
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

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTI6MTY6NDRQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gV2hlbiB3ZSBtb3ZlZCB0aGUgY29kZSB0byBkaXNhYmxlIGNydGMncyB0byBh
IHNlcGFyYXRlIHBhdGNoLAo+IHdlIGZvcmdvdCB0byBlbnN1cmUgdGhhdCBmb3JfZWFjaF9vbGRu
ZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKCkKPiB3YXMgbW92ZWQgYXMgd2VsbC4KPgoK
T29wcyB5ZXMgSSBtaXNzZWQgbXZpbmcgdGhlIGZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2lu
X3N0YXRlX3JldmVyc2UoKSBwYXJ0IHdoaWNoCmdvdCBtZXJnZWQgYWZ0ZXIgdGhlIG9yaWdpbmFs
IHZlcnNpb24gb2YgdGhpcyBwYXRjaCBzbyBzbyBhdXRvbWF0aWMgcmViYXNlIHNraXBwZSBkaXQK
VGhhbmtzIGZvciB0aGUgY2F0Y2guCgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNp
LmQubmF2YXJlQGludGVsLmNvbT4KCk1hbmFzaQogCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBGaXhlczogNjZk
OWNlYzhhNmM5ICgiZHJtL2k5MTUvZGlzcGxheTogTW92ZSB0aGUgY29tbWl0X3RhaWwoKSBkaXNh
YmxlIHNlcXVlbmNlIHRvIHNlcGFyYXRlIGZ1bmN0aW9uIikKPiBDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFu
YXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgMjEgKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYjM4ZDg0MmZmNmVjLi5l
NjYxZTIwOTkxMTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IEBAIC0xMzc4NCw3ICsxMzc4NCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9j
b21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
PiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ICAJaW50IGk7Cj4gIAo+IC0JZm9yX2VhY2hf
b2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBu
ZXdfY3J0Y19zdGF0ZSwgaSkgewo+ICsJLyoKPiArCSAqIERpc2FibGUgQ1JUQy9waXBlcyBpbiBy
ZXZlcnNlIG9yZGVyIGJlY2F1c2Ugc29tZSBmZWF0dXJlcyhNU1QgaW4KPiArCSAqIFRHTCspIHJl
cXVpcmVzIG1hc3RlciBhbmQgc2xhdmUgcmVsYXRpb25zaGlwIGJldHdlZW4gcGlwZXMsIHNvIGl0
Cj4gKwkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxvd2VzdCBwaXBlIGFzIG1hc3RlciBhcyBp
dCB3aWxsIGJlIGVuYWJsZWQKPiArCSAqIGZpcnN0IGFuZCBkaXNhYmxlIGluIHRoZSByZXZlcnNl
IG9yZGVyIHNvIHRoZSBtYXN0ZXIgd2lsbCBiZSB0aGUKPiArCSAqIGxhc3Qgb25lIHRvIGJlIGRp
c2FibGVkLgo+ICsJICovCj4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9y
ZXZlcnNlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKPiArCQkJCQkJICAgIG5ld19jcnRj
X3N0YXRlLCBpKSB7Cj4gIAkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkKPiAg
CQkJY29udGludWU7Cj4gIAo+IEBAIC0xMzk2MywxNSArMTM5NzEsOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
Cj4gIAlpZiAoc3RhdGUtPm1vZGVzZXQpCj4gIAkJd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93
ZXJfZ2V0KGRldl9wcml2LCBQT1dFUl9ET01BSU5fTU9ERVNFVCk7Cj4gIAo+IC0JLyoKPiAtCSAq
IERpc2FibGUgQ1JUQy9waXBlcyBpbiByZXZlcnNlIG9yZGVyIGJlY2F1c2Ugc29tZSBmZWF0dXJl
cyhNU1QgaW4KPiAtCSAqIFRHTCspIHJlcXVpcmVzIG1hc3RlciBhbmQgc2xhdmUgcmVsYXRpb25z
aGlwIGJldHdlZW4gcGlwZXMsIHNvIGl0Cj4gLQkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxv
d2VzdCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3aWxsIGJlIGVuYWJsZWQKPiAtCSAqIGZpcnN0IGFu
ZCBkaXNhYmxlIGluIHRoZSByZXZlcnNlIG9yZGVyIHNvIHRoZSBtYXN0ZXIgd2lsbCBiZSB0aGUK
PiAtCSAqIGxhc3Qgb25lIHRvIGJlIGRpc2FibGVkLgo+IC0JICovCj4gLQlmb3JfZWFjaF9vbGRu
ZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0
ZSwKPiAtCQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gKwlmb3JfZWFjaF9vbGRuZXdf
aW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCj4gKwkJCQkJ
ICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gIAkJaWYgKG5lZWRzX21vZGVzZXQobmV3X2NydGNf
c3RhdGUpIHx8Cj4gIAkJICAgIG5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSkgewo+ICAKPiAt
LSAKPiAyLjIwLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
