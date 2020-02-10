Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D550715845D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAAB76E235;
	Mon, 10 Feb 2020 20:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D226E235
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 20:47:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:47:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="226274620"
Received: from nheyde-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.150])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:47:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200210184057.296698-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200210184057.296698-1-jose.souza@intel.com>
Date: Mon, 10 Feb 2020 22:47:58 +0200
Message-ID: <871rr2w4n5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: Set intel_dp_set_m_n() for
 MST slaves
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

T24gTW9uLCAxMCBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbW1pdCAxYzlkMmViMjQxNTMgKCJkcm0vaTkxNTogbW92ZSBp
bnRlbF9kcF9zZXRfbV9uKCkgdG8gZW5jb2RlciBmb3IKPiBEREkgcGxhdGZvcm1zIikgbW92ZWQg
dGhlIGludGVsX2RwX3NldF9tX24oKSBmcm9tIGhzd19jcnRjX2VuYWJsZSgpCj4gdG8gaW50ZWxf
ZGRpX3ByZV9lbmFibGVfZHAoKSBidXQgaXQgbWlzc2VkIGFkZCBpdCB0bwo+IGludGVsX21zdF9w
cmVfZW5hYmxlX2RwKCkgY2F1c2luZyBNU1Qgc2xhdmVzIHRvIG5vdCB3b3JrLgo+Cj4gRml4ZXM6
IDFjOWQyZWIyNDE1MyAoImRybS9pOTE1OiBtb3ZlIGludGVsX2RwX3NldF9tX24oKSB0byBlbmNv
ZGVyIGZvciBEREkgcGxhdGZvcm1zIikKPiBDYzogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5r
dWxrYXJuaUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+CgpEYW1uIGl0LCB0aGlzIGlzIHRoZSBzZWNvbmQgRFAgTVNUIHRoaW5nIEkgbWlz
c2VkIGluIHRoZSBzYW1lCnNlcmllcy4gKmZhY2VwYWxtKi4gVGhlIGZpcnN0IGdvb2YtdXAgd2Fz
IGZpeGVkIGluIGNvbW1pdCAyNzQ5NTk2MjIwMTcKKCJkcm0vaTkxNS9tc3Q6IGZpeCBwaXBlIGFu
ZCB2YmxhbmsgZW5hYmxlIikuIFdlIHJlYWxseSBuZWVkIG1vcmUgTVNUIGluCkNJLgoKUmV2aWV3
ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMiArKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMKPiBpbmRleCA5Y2Q1OTE0MTk1M2QuLmQ3YmZhN2MzNTBlOSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IEBAIC00
ODAsNiArNDgwLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3ByZV9lbmFibGVfZHAoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJaW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2Nr
KHBpcGVfY29uZmlnKTsKPiAgCj4gIAlpbnRlbF9kZGlfc2V0X2RwX21zYShwaXBlX2NvbmZpZywg
Y29ubl9zdGF0ZSk7Cj4gKwo+ICsJaW50ZWxfZHBfc2V0X21fbihwaXBlX2NvbmZpZywgTTFfTjEp
Owo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfZW5hYmxlX2RwKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
