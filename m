Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CBD151CEC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D306F3A0;
	Tue,  4 Feb 2020 15:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08AF56F3A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:07:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20114171-1500050 for multiple; Tue, 04 Feb 2020 15:07:10 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200204142623.GL13686@intel.com>
References: <20200204094801.877288-1-chris@chris-wilson.co.uk>
 <20200204094801.877288-2-chris@chris-wilson.co.uk>
 <20200204142623.GL13686@intel.com>
Message-ID: <158082882771.1394.16698726466514839955@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 04 Feb 2020 15:07:07 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Be explicit in
 handling the preallocated vma
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMDQgMTQ6MjY6MjMpCj4gT24gVHVlLCBG
ZWIgMDQsIDIwMjAgYXQgMDk6NDg6MDJBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
QXMgb25seSB0aGUgZGlzcGxheSBjb2RlcyB0cmllcyB0byBwaW4gaXRzIHByZWFsbG9jYXRlZCBm
cmFtZWJ1ZmZlciBpbnRvCj4gPiBhbiBleGFjdCBsb2NhdGlvbiBpbiB0aGUgR0dUVCwgcmVtb3Zl
IHRoZSBjb252ZW5pZW5jZSBmdW5jdGlvbiBhbmQgbWFrZQo+ID4gdGhlIHBpbiBtYW5hZ2VtZW50
IGV4cGxpY2l0IGluIHRoZSBkaXNwbGF5IGNvZGUuIFRoZW4gdGhyb3VnaG91dCB0aGUKPiA+IGRp
c3BsYXkgbWFuYWdlbWVudCwgd2UgdHJhY2sgdGhlIGZyYW1lYnVmZmVyIGFuZCBpdHMgcGxhbmUt
PnZtYTsgd2l0aAo+ID4gbGVzcyBzaW5nbGUgcHVycG9zZSBjb2RlIGFuZCByZWFkeSBmb3IgZmly
c3QgY2xhc3MgaTkxNV92bWEuCj4gPiAKPiA+IEluIGRvaW5nIHNvLCB0aGlzIHNob3VsZCBmaXgg
dGhlIEJVR19PTih2bWEtPnBhZ2VzKSBvbiBmaS1rYmwtc29yYWthLgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+
ID4gVmlsbGUsIHlvdSBtZW50aW9uZWQgeW91IGhhZCBhIHBsYW4uLi4gVGhpcyBzaG91bGQgcHJl
dmVudCBhbiBvb3BzIGR1cmluZwo+ID4gYm9vdCBmb3Iga2JsLXNvcmFrYSwgc28gaXQgd291bGQg
YmUgbmljZSA6KQo+ID4gLUNocmlzCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAxNDEgKysrKysrKysrKystLS0tLS0tCj4gPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAxICsKPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgICAgfCAgODIgKystLS0t
LS0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uaCAgICB8
ICAgMSAtCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgICAgICAgICAg
IHwgICAxIC0KPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRpb25zKCspLCAxMjQgZGVs
ZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gPiBpbmRleCBiMDc5NzEyMDQ0OTIuLmMzNjk1MzE3ZDc0YSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAg
LTMzODksNiArMzM4OSw2OCBAQCBpbnQgc2tsX2Zvcm1hdF90b19mb3VyY2MoaW50IGZvcm1hdCwg
Ym9vbCByZ2Jfb3JkZXIsIGJvb2wgYWxwaGEpCj4gPiAgICAgICB9Cj4gPiAgfQo+ID4gIAo+ID4g
K3N0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKgo+ID4gK2luaXRpYWxfcGxhbmVfdm1hKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LAo+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9p
bml0aWFsX3BsYW5lX2NvbmZpZyAqcGxhbmVfY29uZmlnKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gPiArICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZt
YTsKPiA+ICsgICAgIHUzMiBiYXNlLCBzaXplOwo+ID4gKwo+ID4gKyAgICAgaWYgKHBsYW5lX2Nv
bmZpZy0+c2l6ZSA9PSAwKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICsKPiA+
ICsgICAgIGJhc2UgPSByb3VuZF9kb3duKHBsYW5lX2NvbmZpZy0+YmFzZSwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIEk5MTVfR1RUX01JTl9BTElHTk1FTlQpOwo+ID4gKyAgICAgc2l6ZSA9
IHJvdW5kX3VwKHBsYW5lX2NvbmZpZy0+YmFzZSArIHBsYW5lX2NvbmZpZy0+c2l6ZSwKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBJOTE1X0dUVF9NSU5fQUxJR05NRU5UKTsKPiA+ICsgICAgIHNp
emUgLT0gYmFzZTsKPiA+ICsKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBJZiB0aGUgRkIgaXMg
dG9vIGJpZywganVzdCBkb24ndCB1c2UgaXQgc2luY2UgZmJkZXYgaXMgbm90IHZlcnkKPiA+ICsg
ICAgICAqIGltcG9ydGFudCBhbmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0IHNwYWNlIHdp
dGggRkJDIG9yIG90aGVyCj4gPiArICAgICAgKiBmZWF0dXJlcy4KPiA+ICsgICAgICAqLwo+ID4g
KyAgICAgaWYgKHNpemUgKiAyID4gaTkxNS0+c3RvbGVuX3VzYWJsZV9zaXplKQo+ID4gKyAgICAg
ICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICsKPiA+ICsgICAgIG9iaiA9IGk5MTVfZ2VtX29iamVj
dF9jcmVhdGVfc3RvbGVuX2Zvcl9wcmVhbGxvY2F0ZWQoaTkxNSwgYmFzZSwgc2l6ZSk7Cj4gPiAr
ICAgICBpZiAoSVNfRVJSKG9iaikpCj4gPiArICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4g
Kwo+ID4gKyAgICAgc3dpdGNoIChwbGFuZV9jb25maWctPnRpbGluZykgewo+ID4gKyAgICAgY2Fz
ZSBJOTE1X1RJTElOR19OT05FOgo+ID4gKyAgICAgICAgICAgICBicmVhazsKPiA+ICsgICAgIGNh
c2UgSTkxNV9USUxJTkdfWDoKPiA+ICsgICAgIGNhc2UgSTkxNV9USUxJTkdfWToKPiA+ICsgICAg
ICAgICAgICAgb2JqLT50aWxpbmdfYW5kX3N0cmlkZSA9Cj4gPiArICAgICAgICAgICAgICAgICAg
ICAgcGxhbmVfY29uZmlnLT5mYi0+YmFzZS5waXRjaGVzWzBdIHwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBwbGFuZV9jb25maWctPnRpbGluZzsKPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4g
PiArICAgICBkZWZhdWx0Ogo+ID4gKyAgICAgICAgICAgICBNSVNTSU5HX0NBU0UocGxhbmVfY29u
ZmlnLT50aWxpbmcpOwo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9vYmo7Cj4gPiArICAgICB9
Cj4gPiArCj4gPiArICAgICB2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosICZpOTE1LT5nZ3R0
LnZtLCBOVUxMKTsKPiA+ICsgICAgIGlmIChJU19FUlIodm1hKSkKPiA+ICsgICAgICAgICAgICAg
Z290byBlcnJfb2JqOwo+ID4gKwo+ID4gKyAgICAgaWYgKGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAs
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgIFBJTl9HTE9CQUwgfCBQSU5fTUFQUEFCTEUgfCBQ
SU5fT0ZGU0VUX0ZJWEVEIHwgYmFzZSkpCj4gPiArICAgICAgICAgICAgIGdvdG8gZXJyX29iajsK
PiA+ICsKPiA+ICsgICAgIGlmIChpOTE1X2dlbV9vYmplY3RfaXNfdGlsZWQob2JqKSAmJgo+ID4g
KyAgICAgICAgICFpOTE1X3ZtYV9pc19tYXBfYW5kX2ZlbmNlYWJsZSh2bWEpKQo+ID4gKyAgICAg
ICAgICAgICBnb3RvIGVycl9vYmo7Cj4gPiArCj4gPiArICAgICByZXR1cm4gdm1hOwo+ID4gKwo+
ID4gK2Vycl9vYmo6Cj4gPiArICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gPiArICAg
ICByZXR1cm4gTlVMTDsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGJvb2wKPiA+ICBpbnRlbF9h
bGxvY19pbml0aWFsX3BsYW5lX29iaihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcg
KnBsYW5lX2NvbmZpZykKPiA+IEBAIC0zMzk3LDIyICszNDU5LDcgQEAgaW50ZWxfYWxsb2NfaW5p
dGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gPiAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gPiAgICAgICBzdHJ1
Y3QgZHJtX21vZGVfZmJfY21kMiBtb2RlX2NtZCA9IHsgMCB9Owo+ID4gICAgICAgc3RydWN0IGRy
bV9mcmFtZWJ1ZmZlciAqZmIgPSAmcGxhbmVfY29uZmlnLT5mYi0+YmFzZTsKPiA+IC0gICAgIHUz
MiBiYXNlX2FsaWduZWQgPSByb3VuZF9kb3duKHBsYW5lX2NvbmZpZy0+YmFzZSwgUEFHRV9TSVpF
KTsKPiA+IC0gICAgIHUzMiBzaXplX2FsaWduZWQgPSByb3VuZF91cChwbGFuZV9jb25maWctPmJh
c2UgKyBwbGFuZV9jb25maWctPnNpemUsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUEFHRV9TSVpFKTsKPiA+IC0gICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7Cj4gPiAtICAgICBib29sIHJldCA9IGZhbHNlOwo+ID4gLQo+ID4gLSAgICAgc2l6ZV9hbGln
bmVkIC09IGJhc2VfYWxpZ25lZDsKPiA+IC0KPiA+IC0gICAgIGlmIChwbGFuZV9jb25maWctPnNp
emUgPT0gMCkKPiA+IC0gICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gLQo+ID4gLSAgICAg
LyogSWYgdGhlIEZCIGlzIHRvbyBiaWcsIGp1c3QgZG9uJ3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlz
IG5vdCB2ZXJ5Cj4gPiAtICAgICAgKiBpbXBvcnRhbnQgYW5kIHdlIHNob3VsZCBwcm9iYWJseSB1
c2UgdGhhdCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcgo+ID4gLSAgICAgICogZmVhdHVyZXMuICov
Cj4gPiAtICAgICBpZiAoc2l6ZV9hbGlnbmVkICogMiA+IGRldl9wcml2LT5zdG9sZW5fdXNhYmxl
X3NpemUpCj4gPiAtICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ICsgICAgIHN0cnVjdCBp
OTE1X3ZtYSAqdm1hOwo+ID4gIAo+ID4gICAgICAgc3dpdGNoIChmYi0+bW9kaWZpZXIpIHsKPiA+
ICAgICAgIGNhc2UgRFJNX0ZPUk1BVF9NT0RfTElORUFSOgo+ID4gQEAgLTM0MjYsMjUgKzM0NzMs
MTAgQEAgaW50ZWxfYWxsb2NfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMgKmNy
dGMsCj4gPiAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ICAgICAgIH0KPiA+ICAKPiA+
IC0gICAgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuX2Zvcl9wcmVhbGxvY2F0
ZWQoZGV2X3ByaXYsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGJhc2VfYWxpZ25lZCwKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFzZV9hbGlnbmVkLAo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzaXplX2FsaWduZWQpOwo+ID4gLSAgICAgaWYgKElTX0VSUihvYmopKQo+ID4gKyAgICAgdm1h
ID0gaW5pdGlhbF9wbGFuZV92bWEoZGV2X3ByaXYsIHBsYW5lX2NvbmZpZyk7Cj4gPiArICAgICBp
ZiAoIXZtYSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gIAo+ID4gLSAgICAg
c3dpdGNoIChwbGFuZV9jb25maWctPnRpbGluZykgewo+ID4gLSAgICAgY2FzZSBJOTE1X1RJTElO
R19OT05FOgo+ID4gLSAgICAgICAgICAgICBicmVhazsKPiA+IC0gICAgIGNhc2UgSTkxNV9USUxJ
TkdfWDoKPiA+IC0gICAgIGNhc2UgSTkxNV9USUxJTkdfWToKPiA+IC0gICAgICAgICAgICAgb2Jq
LT50aWxpbmdfYW5kX3N0cmlkZSA9IGZiLT5waXRjaGVzWzBdIHwgcGxhbmVfY29uZmlnLT50aWxp
bmc7Cj4gPiAtICAgICAgICAgICAgIGJyZWFrOwo+ID4gLSAgICAgZGVmYXVsdDoKPiA+IC0gICAg
ICAgICAgICAgTUlTU0lOR19DQVNFKHBsYW5lX2NvbmZpZy0+dGlsaW5nKTsKPiA+IC0gICAgICAg
ICAgICAgZ290byBvdXQ7Cj4gPiAtICAgICB9Cj4gPiAtCj4gPiAgICAgICBtb2RlX2NtZC5waXhl
bF9mb3JtYXQgPSBmYi0+Zm9ybWF0LT5mb3JtYXQ7Cj4gPiAgICAgICBtb2RlX2NtZC53aWR0aCA9
IGZiLT53aWR0aDsKPiA+ICAgICAgIG1vZGVfY21kLmhlaWdodCA9IGZiLT5oZWlnaHQ7Cj4gPiBA
QCAtMzQ1MiwxNyArMzQ4NCwxOCBAQCBpbnRlbF9hbGxvY19pbml0aWFsX3BsYW5lX29iaihzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ICAgICAgIG1vZGVfY21kLm1vZGlmaWVyWzBdID0gZmIt
Pm1vZGlmaWVyOwo+ID4gICAgICAgbW9kZV9jbWQuZmxhZ3MgPSBEUk1fTU9ERV9GQl9NT0RJRklF
UlM7Cj4gPiAgCj4gPiAtICAgICBpZiAoaW50ZWxfZnJhbWVidWZmZXJfaW5pdCh0b19pbnRlbF9m
cmFtZWJ1ZmZlcihmYiksIG9iaiwgJm1vZGVfY21kKSkgewo+ID4gKyAgICAgaWYgKGludGVsX2Zy
YW1lYnVmZmVyX2luaXQodG9faW50ZWxfZnJhbWVidWZmZXIoZmIpLAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdm1hLT5vYmosICZtb2RlX2NtZCkpIHsKPiA+ICAgICAgICAg
ICAgICAgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJpbnRlbCBmYiBpbml0IGZhaWxlZFxu
Iik7Cj4gPiAtICAgICAgICAgICAgIGdvdG8gb3V0Owo+ID4gKyAgICAgICAgICAgICBnb3RvIGVy
cl92bWE7Cj4gPiAgICAgICB9Cj4gPiAgCj4gPiArICAgICBwbGFuZV9jb25maWctPnZtYSA9IHZt
YTsKPiA+ICsgICAgIHJldHVybiB0cnVlOwo+ID4gIAo+ID4gLSAgICAgZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sICJpbml0aWFsIHBsYW5lIGZiIG9iaiAlcFxuIiwgb2JqKTsKPiA+IC0gICAg
IHJldCA9IHRydWU7Cj4gPiAtb3V0Ogo+ID4gLSAgICAgaTkxNV9nZW1fb2JqZWN0X3B1dChvYmop
Owo+ID4gLSAgICAgcmV0dXJuIHJldDsKPiA+ICtlcnJfdm1hOgo+ID4gKyAgICAgaTkxNV92bWFf
cHV0KHZtYSk7Cj4gPiArICAgICByZXR1cm4gZmFsc2U7Cj4gPiAgfQo+ID4gIAo+ID4gIHN0YXRp
YyB2b2lkCj4gPiBAQCAtMzU2MSwxMiArMzU5NCwxNCBAQCBpbnRlbF9maW5kX2luaXRpYWxfcGxh
bmVfb2JqKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjLAo+ID4gICAgICAgc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICppbnRlbF9zdGF0ZSA9Cj4gPiAgICAgICAgICAgICAgIHRvX2ludGVs
X3BsYW5lX3N0YXRlKHBsYW5lX3N0YXRlKTsKPiA+ICAgICAgIHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiOwo+ID4gKyAgICAgc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gPiAgCj4gPiAgICAgICBp
ZiAoIXBsYW5lX2NvbmZpZy0+ZmIpCj4gPiAgICAgICAgICAgICAgIHJldHVybjsKPiA+ICAKPiA+
ICAgICAgIGlmIChpbnRlbF9hbGxvY19pbml0aWFsX3BsYW5lX29iaihpbnRlbF9jcnRjLCBwbGFu
ZV9jb25maWcpKSB7Cj4gPiAgICAgICAgICAgICAgIGZiID0gJnBsYW5lX2NvbmZpZy0+ZmItPmJh
c2U7Cj4gPiArICAgICAgICAgICAgIHZtYSA9IHBsYW5lX2NvbmZpZy0+dm1hOwo+ID4gICAgICAg
ICAgICAgICBnb3RvIHZhbGlkX2ZiOwo+ID4gICAgICAgfQo+ID4gIAo+ID4gQEAgLTM1ODksNiAr
MzYyNCw3IEBAIGludGVsX2ZpbmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0IGludGVsX2NydGMg
KmludGVsX2NydGMsCj4gPiAgCj4gPiAgICAgICAgICAgICAgIGlmIChpbnRlbF9wbGFuZV9nZ3R0
X29mZnNldChzdGF0ZSkgPT0gcGxhbmVfY29uZmlnLT5iYXNlKSB7Cj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgZmIgPSBzdGF0ZS0+aHcuZmI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdm1h
ID0gc3RhdGUtPnZtYTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBnb3RvIHZhbGlkX2ZiOwo+
ID4gICAgICAgICAgICAgICB9Cj4gPiAgICAgICB9Cj4gPiBAQCAtMzYxMSwyMSArMzY0NywxMSBA
QCBpbnRlbF9maW5kX2luaXRpYWxfcGxhbmVfb2JqKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9j
cnRjLAo+ID4gICAgICAgaW50ZWxfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnN0cmlkZSA9Cj4gPiAg
ICAgICAgICAgICAgIGludGVsX2ZiX3BpdGNoKGZiLCAwLCBpbnRlbF9zdGF0ZS0+aHcucm90YXRp
b24pOwo+ID4gIAo+ID4gLSAgICAgaW50ZWxfc3RhdGUtPnZtYSA9Cj4gPiAtICAgICAgICAgICAg
IGludGVsX3Bpbl9hbmRfZmVuY2VfZmJfb2JqKGZiLAo+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmaW50ZWxfc3RhdGUtPnZpZXcsCj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX3BsYW5lX3VzZXNfZmVuY2UoaW50ZWxf
c3RhdGUpLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmaW50
ZWxfc3RhdGUtPmZsYWdzKTsKPiA+IC0gICAgIGlmIChJU19FUlIoaW50ZWxfc3RhdGUtPnZtYSkp
IHsKPiA+IC0gICAgICAgICAgICAgZHJtX2VycigmZGV2X3ByaXYtPmRybSwKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAiZmFpbGVkIHRvIHBpbiBib290IGZiIG9uIHBpcGUgJWQ6ICVsaVxuIiwK
PiA+IC0gICAgICAgICAgICAgICAgICAgICBpbnRlbF9jcnRjLT5waXBlLCBQVFJfRVJSKGludGVs
X3N0YXRlLT52bWEpKTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgaW50ZWxfc3RhdGUtPnZtYSA9
IE5VTEw7Cj4gPiAtICAgICAgICAgICAgIHJldHVybjsKPiA+IC0gICAgIH0KPiA+IC0KPiA+IC0g
ICAgIGludGVsX2Zyb250YnVmZmVyX2ZsdXNoKHRvX2ludGVsX2Zyb250YnVmZmVyKGZiKSwgT1JJ
R0lOX0RJUlRZRkIpOwo+ID4gKyAgICAgX19pOTE1X3ZtYV9waW4odm1hKTsKPiA+ICsgICAgIGlu
dGVsX3N0YXRlLT52bWEgPSBpOTE1X3ZtYV9nZXQodm1hKTsKPiA+ICsgICAgIGlmIChpbnRlbF9w
bGFuZV91c2VzX2ZlbmNlKGludGVsX3N0YXRlKSAmJiBpOTE1X3ZtYV9waW5fZmVuY2Uodm1hKSA9
PSAwKQo+ID4gKyAgICAgICAgICAgICBpZiAodm1hLT5mZW5jZSkKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBpbnRlbF9zdGF0ZS0+ZmxhZ3MgfD0gUExBTkVfSEFTX0ZFTkNFOwo+IAo+IFdhcyBz
bGlnaGx5IHdvcnJpZWQgd2hldGhlciB0aGUgZ2VuMi8zIHNwZWNpYWwgY2FzZSB3b3VsZCBiZSBu
ZWVkZWQKPiBoZXJlLCBidXQgSSBkb3VidCB3ZSBjb3VsZCBnZXQgdGhpcyBmYXIgb24gdGhvc2Ug
YW55d2F5IHNpbmNlIHRoZQo+IEJJT1Mgd2lsbCBiZSB1c2luZyBWR0EgbW9kZSBhbnl3YXkuIEFu
ZCBldmVuIGlmIHdlIGRpZCBJIGd1ZXNzIHRoZXJlJ3MKPiBubyByZWFsIHdheSB3ZSB3b3VsZG4n
dCBiZSBhYmxlIHRvIGdldCB0aGUgZmVuY2UuCj4gCj4gPiAgCj4gPiAgICAgICBwbGFuZV9zdGF0
ZS0+c3JjX3ggPSAwOwo+ID4gICAgICAgcGxhbmVfc3RhdGUtPnNyY195ID0gMDsKPiA+IEBAIC0z
NjQ5LDYgKzM2NzUsOCBAQCBpbnRlbF9maW5kX2luaXRpYWxfcGxhbmVfb2JqKHN0cnVjdCBpbnRl
bF9jcnRjICppbnRlbF9jcnRjLAo+ID4gICAgICAgcGxhbmVfc3RhdGUtPmNydGMgPSAmaW50ZWxf
Y3J0Yy0+YmFzZTsKPiA+ICAgICAgIGludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShp
bnRlbF9zdGF0ZSwgaW50ZWxfc3RhdGUpOwo+ID4gIAo+ID4gKyAgICAgaW50ZWxfZnJvbnRidWZm
ZXJfZmx1c2godG9faW50ZWxfZnJvbnRidWZmZXIoZmIpLCBPUklHSU5fRElSVFlGQik7Cj4gPiAr
Cj4gPiAgICAgICBhdG9taWNfb3IodG9faW50ZWxfcGxhbmUocHJpbWFyeSktPmZyb250YnVmZmVy
X2JpdCwKPiA+ICAgICAgICAgICAgICAgICAmdG9faW50ZWxfZnJvbnRidWZmZXIoZmIpLT5iaXRz
KTsKPiA+ICB9Cj4gPiBAQCAtMTc4NjMsNiArMTc4OTEsOSBAQCBzdGF0aWMgdm9pZCBwbGFuZV9j
b25maWdfZmluaShzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcgKnBsYW5lX2NvbmZp
ZykKPiA+ICAgICAgICAgICAgICAgZWxzZQo+ID4gICAgICAgICAgICAgICAgICAgICAgIGtmcmVl
KGZiKTsKPiA+ICAgICAgIH0KPiA+ICsKPiA+ICsgICAgIGlmIChwbGFuZV9jb25maWctPnZtYSkK
PiA+ICsgICAgICAgICAgICAgaTkxNV92bWFfcHV0KHBsYW5lX2NvbmZpZy0+dm1hKTsKPiA+ICB9
Cj4gPiAgCj4gPiAgaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oCj4gPiBpbmRleCA3YzYxMzNhOWM1MWIuLjdhZTBiYzhiODBkMSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaAo+ID4gQEAgLTU5Miw2ICs1OTIsNyBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgewo+ID4gIAo+ID4gIHN0cnVjdCBpbnRlbF9pbml0aWFsX3BsYW5lX2NvbmZpZyB7Cj4gPiAg
ICAgICBzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmZiOwo+ID4gKyAgICAgc3RydWN0IGk5MTVf
dm1hICp2bWE7Cj4gPiAgICAgICB1bnNpZ25lZCBpbnQgdGlsaW5nOwo+ID4gICAgICAgaW50IHNp
emU7Cj4gPiAgICAgICB1MzIgYmFzZTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc3RvbGVuLmMKPiA+IGluZGV4IGI0N2U3MTA5YmU2YS4uNDkxY2ZiYWFhMzMwIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKPiA+IEBA
IC02ODYsMjggKzY4NiwyNCBAQCBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqaTkxNV9nZW1f
c3RvbGVuX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ID4gIHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICoKPiA+ICBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9m
b3JfcHJlYWxsb2NhdGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHN0
b2xlbl9vZmZzZXQsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZXNvdXJjZV9zaXplX3QgZ3R0X29mZnNldCwKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlc291cmNlX3NpemVfdCBzaXplKQo+ID4gIHsKPiA+
ICAgICAgIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0gPSBpOTE1LT5tbS5yZWdpb25z
W0lOVEVMX1JFR0lPTl9TVE9MRU5dOwo+ID4gLSAgICAgc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9
ICZpOTE1LT5nZ3R0Owo+ID4gICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsK
PiA+ICAgICAgIHN0cnVjdCBkcm1fbW1fbm9kZSAqc3RvbGVuOwo+ID4gLSAgICAgc3RydWN0IGk5
MTVfdm1hICp2bWE7Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4gIAo+ID4gICAgICAgaWYgKCFkcm1f
bW1faW5pdGlhbGl6ZWQoJmk5MTUtPm1tLnN0b2xlbikpCj4gPiAgICAgICAgICAgICAgIHJldHVy
biBFUlJfUFRSKC1FTk9ERVYpOwo+ID4gIAo+ID4gICAgICAgZHJtX2RiZygmaTkxNS0+ZHJtLAo+
ID4gLSAgICAgICAgICAgICAiY3JlYXRpbmcgcHJlYWxsb2NhdGVkIHN0b2xlbiBvYmplY3Q6IHN0
b2xlbl9vZmZzZXQ9JXBhLCBndHRfb2Zmc2V0PSVwYSwgc2l6ZT0lcGFcbiIsCj4gPiAtICAgICAg
ICAgICAgICZzdG9sZW5fb2Zmc2V0LCAmZ3R0X29mZnNldCwgJnNpemUpOwo+ID4gKyAgICAgICAg
ICAgICAiY3JlYXRpbmcgcHJlYWxsb2NhdGVkIHN0b2xlbiBvYmplY3Q6IHN0b2xlbl9vZmZzZXQ9
JXBhLCBzaXplPSVwYVxuIiwKPiA+ICsgICAgICAgICAgICAgJnN0b2xlbl9vZmZzZXQsICZzaXpl
KTsKPiA+ICAKPiA+ICAgICAgIC8qIEtJU1MgYW5kIGV4cGVjdCBldmVyeXRoaW5nIHRvIGJlIHBh
Z2UtYWxpZ25lZCAqLwo+ID4gLSAgICAgaWYgKGRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHNpemUg
PT0gMCkgfHwKPiA+IC0gICAgICAgICBkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhSVNfQUxJR05F
RChzaXplLCBJOTE1X0dUVF9QQUdFX1NJWkUpKSB8fAo+ID4gLSAgICAgICAgIGRybV9XQVJOX09O
KCZpOTE1LT5kcm0sCj4gPiAtICAgICAgICAgICAgICAgICAgICAgIUlTX0FMSUdORUQoc3RvbGVu
X29mZnNldCwgSTkxNV9HVFRfTUlOX0FMSUdOTUVOVCkpKQo+ID4gKyAgICAgaWYgKEdFTV9XQVJO
X09OKHNpemUgPT0gMCkgfHwKPiA+ICsgICAgICAgICBHRU1fV0FSTl9PTighSVNfQUxJR05FRChz
aXplLCBJOTE1X0dUVF9QQUdFX1NJWkUpKSB8fAo+ID4gKyAgICAgICAgIEdFTV9XQVJOX09OKCFJ
U19BTElHTkVEKHN0b2xlbl9vZmZzZXQsIEk5MTVfR1RUX01JTl9BTElHTk1FTlQpKSkKPiAKPiBX
ZXJlIHRoZXNlIGludGVudGlvbmFsPwoKWWVzLiBUaGV5IHNob3VsZG4ndCBoYXZlIGJlZW4gY29u
dmVydGVkIHRvIGRybV8uCgo+ID4gIAo+ID4gICAgICAgc3RvbGVuID0ga3phbGxvYyhzaXplb2Yo
KnN0b2xlbiksIEdGUF9LRVJORUwpOwo+ID4gQEAgLTcyMCw2OCArNzE2LDIwIEBAIGk5MTVfZ2Vt
X29iamVjdF9jcmVhdGVfc3RvbGVuX2Zvcl9wcmVhbGxvY2F0ZWQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCj4gPiAgICAgICByZXQgPSBkcm1fbW1fcmVzZXJ2ZV9ub2RlKCZpOTE1LT5t
bS5zdG9sZW4sIHN0b2xlbik7Cj4gPiAgICAgICBtdXRleF91bmxvY2soJmk5MTUtPm1tLnN0b2xl
bl9sb2NrKTsKPiA+ICAgICAgIGlmIChyZXQpIHsKPiA+IC0gICAgICAgICAgICAgZHJtX2RiZygm
aTkxNS0+ZHJtLCAiZmFpbGVkIHRvIGFsbG9jYXRlIHN0b2xlbiBzcGFjZVxuIik7Cj4gPiAtICAg
ICAgICAgICAgIGtmcmVlKHN0b2xlbik7Cj4gPiAtICAgICAgICAgICAgIHJldHVybiBFUlJfUFRS
KHJldCk7Cj4gPiArICAgICAgICAgICAgIG9iaiA9IEVSUl9QVFIocmV0KTsKPiA+ICsgICAgICAg
ICAgICAgZ290byBlcnJfZnJlZTsKPiA+ICAgICAgIH0KPiA+ICAKPiA+ICAgICAgIG9iaiA9IF9f
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4obWVtLCBzdG9sZW4pOwo+ID4gLSAgICAgaWYg
KElTX0VSUihvYmopKSB7Cj4gPiAtICAgICAgICAgICAgIGRybV9kYmcoJmk5MTUtPmRybSwgImZh
aWxlZCB0byBhbGxvY2F0ZSBzdG9sZW4gb2JqZWN0XG4iKTsKPiA+IC0gICAgICAgICAgICAgaTkx
NV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGk5MTUsIHN0b2xlbik7Cj4gPiAtICAgICAgICAgICAg
IGtmcmVlKHN0b2xlbik7Cj4gPiAtICAgICAgICAgICAgIHJldHVybiBvYmo7Cj4gPiAtICAgICB9
Cj4gPiAtCj4gPiAtICAgICAvKiBTb21lIG9iamVjdHMganVzdCBuZWVkIHBoeXNpY2FsIG1lbSBm
cm9tIHN0b2xlbiBzcGFjZSAqLwo+ID4gLSAgICAgaWYgKGd0dF9vZmZzZXQgPT0gSTkxNV9HVFRf
T0ZGU0VUX05PTkUpCj4gPiAtICAgICAgICAgICAgIHJldHVybiBvYmo7Cj4gPiAtCj4gPiAtICAg
ICByZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4gPiAtICAgICBpZiAocmV0
KQo+ID4gLSAgICAgICAgICAgICBnb3RvIGVycjsKPiA+IC0KPiA+IC0gICAgIHZtYSA9IGk5MTVf
dm1hX2luc3RhbmNlKG9iaiwgJmdndHQtPnZtLCBOVUxMKTsKPiA+IC0gICAgIGlmIChJU19FUlIo
dm1hKSkgewo+ID4gLSAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKHZtYSk7Cj4gPiAtICAgICAg
ICAgICAgIGdvdG8gZXJyX3BhZ2VzOwo+ID4gLSAgICAgfQo+ID4gLQo+ID4gLSAgICAgLyogVG8g
c2ltcGxpZnkgdGhlIGluaXRpYWxpc2F0aW9uIHNlcXVlbmNlIGJldHdlZW4gS01TIGFuZCBHVFQs
Cj4gPiAtICAgICAgKiB3ZSBhbGxvdyBjb25zdHJ1Y3Rpb24gb2YgdGhlIHN0b2xlbiBvYmplY3Qg
cHJpb3IgdG8KPiA+IC0gICAgICAqIHNldHRpbmcgdXAgdGhlIEdUVCBzcGFjZS4gVGhlIGFjdHVh
bCByZXNlcnZhdGlvbiB3aWxsIG9jY3VyCj4gPiAtICAgICAgKiBsYXRlci4KPiA+IC0gICAgICAq
Lwo+ID4gLSAgICAgbXV0ZXhfbG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwo+ID4gLSAgICAgcmV0ID0g
aTkxNV9nZW1fZ3R0X3Jlc2VydmUoJmdndHQtPnZtLCAmdm1hLT5ub2RlLAo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSwgZ3R0X29mZnNldCwgb2JqLT5jYWNoZV9sZXZl
bCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDApOwo+ID4gLSAgICAgaWYg
KHJldCkgewo+ID4gLSAgICAgICAgICAgICBkcm1fZGJnKCZpOTE1LT5kcm0sICJmYWlsZWQgdG8g
YWxsb2NhdGUgc3RvbGVuIEdUVCBzcGFjZVxuIik7Cj4gPiAtICAgICAgICAgICAgIG11dGV4X3Vu
bG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwo+ID4gLSAgICAgICAgICAgICBnb3RvIGVycl9wYWdlczsK
PiA+IC0gICAgIH0KPiA+IC0KPiA+IC0gICAgIEdFTV9CVUdfT04oIWRybV9tbV9ub2RlX2FsbG9j
YXRlZCgmdm1hLT5ub2RlKSk7Cj4gPiAtCj4gPiAtICAgICBHRU1fQlVHX09OKHZtYS0+cGFnZXMp
Owo+ID4gLSAgICAgdm1hLT5wYWdlcyA9IG9iai0+bW0ucGFnZXM7Cj4gPiAtICAgICBhdG9taWNf
c2V0KCZ2bWEtPnBhZ2VzX2NvdW50LCBJOTE1X1ZNQV9QQUdFU19BQ1RJVkUpOwo+ID4gLQo+ID4g
LSAgICAgc2V0X2JpdChJOTE1X1ZNQV9HTE9CQUxfQklORF9CSVQsIF9faTkxNV92bWFfZmxhZ3Mo
dm1hKSk7Cj4gPiAtICAgICBfX2k5MTVfdm1hX3NldF9tYXBfYW5kX2ZlbmNlYWJsZSh2bWEpOwo+
ID4gLQo+ID4gLSAgICAgbGlzdF9hZGRfdGFpbCgmdm1hLT52bV9saW5rLCAmZ2d0dC0+dm0uYm91
bmRfbGlzdCk7Cj4gPiAtICAgICBtdXRleF91bmxvY2soJmdndHQtPnZtLm11dGV4KTsKPiA+IC0K
PiA+IC0gICAgIEdFTV9CVUdfT04oaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSk7
Cj4gPiAtICAgICBhdG9taWNfaW5jKCZvYmotPmJpbmRfY291bnQpOwo+ID4gKyAgICAgaWYgKElT
X0VSUihvYmopKQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9zdG9sZW47Cj4gPiAgCj4gPiAr
ICAgICBpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIEk5MTVfQ0FDSEVf
Tk9ORSk7Cj4gCj4gTW92ZWQgaGVyZSBmcm9tIHBpbl9hbmRfZmVuY2UoKSBJIGd1ZXNzLiBEbyB3
ZSBvdmVyd3JpdGUgdGhlIFBURXMKPiB3aGVuIHdlIHBpbiB0aGUgdm1hPyBPciBqdXN0IGFzc3Vt
aW5nIHRoZXkgYWxyZWFkeSBtYXRjaCB0aGlzPwoKV2UgcmV3cml0ZSB0aGUgUFRFIG9uIGJpbmRp
bmc7IHdlIGRvbid0IGFzc3VtZSB0aGUgY3VycmVudCBlbnRyaWVzIHBvaW50CmFueXdoZXJlLgoK
PiBJSVJDIHdlIGFueXdheSBhc3N1bWUgdGhhdCBnZ3R0IGhhcyBhIDE6MSBtYXBwaW5nIG9mIHN0
b2xlbiBhdCB0aGlzCj4gcG9pbnQgYW5kIHdlIGRvbid0IGRvdWJsZSBjaGVjayB0aGF0IHRoZSBQ
VEVzIHJlYWxseSBwb2ludCB0byBzdG9sZW4uCgpSaWdodC4gV2UgYXNzdW1lIHRoZSBsYXlvdXQg
aXMgc3RyYWlnaHRmb3J3YXJkLCBhbmQgd2UgZG9uJ3QgYWN0dWFsbHkKd3JpdGUgdGhlIFBURXMg
dW50aWwgbGF0ZXIgd2hlbiBpbml0aWFsaXNpbmcgdGhlIEdUVCAoYWZ0ZXIgcmVzZXJ2aW5nCmFs
bCB0aGUgaG9sZXMgcmVxdWlyZWQgZm9yIHByZWFsbG9jYXRlZCBvYmplY3RzKS4gV2VsbCB0aGF0
J3MgdGhlIHBsYW4KYXQgbGVhc3QuCgpUaGlzIHBhdGNoIHdpbGwgaW50cm9kdWNlIGEgY2hhbmdl
IHdoZXJlIHdlIHJld3JpdGUgdGhlIFBURXMKaW1tZWRpYXRlbHkuIEJ1dCBlaXRoZXIgdGhleSBh
bHJlYWR5IHBvaW50ZWQgdG8gb3VyIHByZWFsbG9jYXRlZCBzdG9sZW4sCm9yIHdlIGFyZSBhbHJl
YWR5IGluIHRyb3VibGUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
