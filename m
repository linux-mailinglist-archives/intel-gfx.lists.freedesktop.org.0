Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A89111B4E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 23:04:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9FE898B7;
	Tue,  3 Dec 2019 22:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1FC898B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 22:04:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 14:04:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; d="scan'208";a="213562643"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga006.jf.intel.com with ESMTP; 03 Dec 2019 14:04:47 -0800
Date: Tue, 3 Dec 2019 14:08:21 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191203220821.GM28227@intel.com>
References: <20191202222513.337777-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202222513.337777-1-jose.souza@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH CI 1/3] drm/i915/display: Check the old
 state to find port sync slave
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

T24gTW9uLCBEZWMgMDIsIDIwMTkgYXQgMDI6MjU6MTFQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBJZiB0aGUgQ1JUQyBpcyBnb2luZyBmcm9tIGVuYWJsZWQgdG8gZGlz
YWJsZWQgYW5kIGl0IGlzIGEgcG9ydCBzeW5jCj4gc2xhdmUsIGl0IG5lZWRzIHRvIGNoZWNrIHRv
IHRoZSBvbGQgc3RhdGUgdG8gYmUgZGlzYWJsZWQgYmVmb3JlIHRoZQo+IHBvcnQgc3luYyBtYXN0
ZXIuCgpZZXMgdGhpcyBtYWtlcyBzZW5zZSwgdGhhbmsgeW91IGZvciB0aGUgZml4CgpSZXZpZXdl
ZC1ieTogTWFuYXNpIG5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KCk1hbmFzaQoK
PiAKPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiBDYzog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDFm
MWNkNzU3ODcwNi4uMzA2MjU3OGUyYmRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTQ0OTcsOCArMTQ0OTcsOCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkKPiAgCQkgKiBzbGF2ZSBDUlRDcyBhcmUgZGlzYWJsZWQgZmlyc3QgYW5kIHRo
ZW4gbWFzdGVyIENSVEMgc2luY2UKPiAgCQkgKiBTbGF2ZSB2YmxhbmtzIGFyZSBtYXNrZWQgdGls
bCBNYXN0ZXIgVmJsYW5rcy4KPiAgCQkgKi8KPiAtCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21v
ZGUobmV3X2NydGNfc3RhdGUpKSB7Cj4gLQkJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbWFzdGVy
KG5ld19jcnRjX3N0YXRlKSkKPiArCQlpZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21vZGUob2xkX2Ny
dGNfc3RhdGUpKSB7Cj4gKwkJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbWFzdGVyKG9sZF9jcnRj
X3N0YXRlKSkKPiAgCQkJCWludGVsX3RyYW5zX3BvcnRfc3luY19tb2Rlc2V0X2Rpc2FibGVzKHN0
YXRlLAo+ICAJCQkJCQkJCSAgICAgICBjcnRjLAo+ICAJCQkJCQkJCSAgICAgICBvbGRfY3J0Y19z
dGF0ZSwKPiAtLSAKPiAyLjI0LjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
