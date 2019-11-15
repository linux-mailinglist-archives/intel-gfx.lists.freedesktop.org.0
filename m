Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65081FDE1A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A7D6E5C8;
	Fri, 15 Nov 2019 12:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548C36E5C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:42:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19212297-1500050 for multiple; Fri, 15 Nov 2019 12:42:04 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <06c24a9a-bda1-7d0e-c718-7dc9be7f539c@linux.intel.com>
References: <20191115122755.830355-1-chris@chris-wilson.co.uk>
 <06c24a9a-bda1-7d0e-c718-7dc9be7f539c@linux.intel.com>
Message-ID: <157382172133.11997.12484199550648792839@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 12:42:01 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Simplify
 NEEDS_WaRsDisableCoarsePowerGating
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xNSAxMjozNDoyOCkKPiAKPiBPbiAxNS8x
MS8yMDE5IDEyOjI3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJdCBhcHBsaWVzIHRvIGFsbCBn
ZW45IGFuZCBnZW4xMCBub3csIHNvIHdlIGNhbiB1c2UgYSBzaW5nbGUgdGVzdAo+ID4gYWdhaW5z
dCB0aGUgZ2VuIGJpdG1hc2suCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50
ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAy
ICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiA+IGluZGV4IGE3MDU1NWU2YmVmYi4uNWZh
MzhjNTVkYWEzIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4gQEAgLTE2NjAs
NyArMTY2MCw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAo+ID4gICAKPiA+ICAgLyogV2FSc0Rpc2FibGVDb2Fyc2VQb3dlckdhdGluZzpza2ws
Y25sICovCj4gPiAgICNkZWZpbmUgTkVFRFNfV2FSc0Rpc2FibGVDb2Fyc2VQb3dlckdhdGluZyhk
ZXZfcHJpdikgXAo+ID4gLSAgICAgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTihk
ZXZfcHJpdiwgOSkpCj4gPiArICAgICBJU19HRU5fUkFOR0UoZGV2X3ByaXYsIDksIDEwKQo+ID4g
ICAKPiA+ICAgI2RlZmluZSBIQVNfR01CVVNfSVJRKGRldl9wcml2KSAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSA0KQo+ID4gICAjZGVmaW5lIEhBU19HTUJVU19CVVJTVF9SRUFEKGRldl9wcml2KSAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBcCj4gPiAKPiAKPiBNYXJnaW5hbCBiZW5lZml0
IGFuZCBkZXBlbmRzIG9uIGJlaW5nIGp1c3Qgb25lIGdlbiAxMCBidXQgb2theToKCkkgdGhpbmsg
eW91IG1lYW4gcy9vbmUvbm8vIDspCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
