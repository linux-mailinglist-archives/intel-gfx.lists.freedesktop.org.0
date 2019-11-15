Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060FAFDE40
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4565F6E5CE;
	Fri, 15 Nov 2019 12:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F856E5CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:47:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 04:47:59 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199191277"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 04:47:57 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
 <20191114225736.616885-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3a147809-2dae-4840-8a06-d2b786aa3a31@linux.intel.com>
Date: Fri, 15 Nov 2019 12:47:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114225736.616885-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/selftests: Be explicit in
 ERR_PTR handling
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzExLzIwMTkgMjI6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIHNldHRpbmcg
dXAgYSBmdWxsIEdHVFQsIHdlIGV4cGVjdCB0aGUgbmV4dCBpbnNlcnQgdG8gZmFpbCB3aXRoCj4g
LUVOT1NQQy4gU2ltcGxpZnkgdGhlIHVzZSBvZiBFUlJfUFRSIHRvIG5vdCBjb25mdXNlIGVpdGhl
ciB0aGUgcmVhZGVyIG9yCj4gc21hdGNoLgo+IAo+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVy
IDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4gUmVmZXJlbmNlczogZjQwYTdiNzU1OGVmICgi
ZHJtL2k5MTU6IEluaXRpYWwgc2VsZnRlc3RzIGZvciBleGVyY2lzaW5nIGV2aWN0aW9uIikKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jICAgICAgICAgIHwg
OSArKysrKysrLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9l
dmljdC5jIHwgNCArKy0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfcmM2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYwo+IGlu
ZGV4IDZiNGNiNWM3ZDQ0Ni4uMzU1MTZkNDY5OWQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfcmM2LmMKPiBAQCAtMTE2LDExICsxMTYsMTYgQEAgaW50IGxpdmVfcmM2X2N0
eCh2b2lkICphcmcpCj4gICAJCQkJZ290byBvdXQ7Cj4gICAJCQl9Cj4gICAKPiAtCQkJaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzKGd0KTsKPiAtCQkJaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShn
dCk7Cj4gKwkJCWlmIChpbnRlbF9ndF93YWl0X2Zvcl9pZGxlKGd0LCBIWiAvIDUpID09IC1FVElN
RSkgewo+ICsJCQkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChndCk7Cj4gKwkJCQllcnIgPSAtRVRJTUU7
Cj4gKwkJCQlnb3RvIG91dDsKPiArCQkJfQo+ICAgCj4gKwkJCWludGVsX2d0X3BtX3dhaXRfZm9y
X2lkbGUoZ3QpOwo+ICAgCQkJcHJfZGVidWcoIiVzOiBDVFhfSU5GTz0lMHhcbiIsCj4gICAJCQkJ
IGVuZ2luZS0+bmFtZSwgUkVBRF9PTkNFKCpyZXMpKTsKPiArCgpUaGlzIGh1bmsgZG9lcyBub3Qg
cmVsYXRlIHRvIHRoZSBmaXguCgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgCQkJaWYgKHJlc2V0cyAh
PQo+ICAgCQkJICAgIGk5MTVfcmVzZXRfZW5naW5lX2NvdW50KCZndC0+aTkxNS0+Z3B1X2Vycm9y
LAo+ICAgCQkJCQkJICAgIGVuZ2luZSkpIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwo+IGluZGV4IDVmMTMzZDE3NzIxMi4uMDZlZjg4NTEw
MjA5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dl
bV9ldmljdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
X2V2aWN0LmMKPiBAQCAtMTk4LDggKzE5OCw4IEBAIHN0YXRpYyBpbnQgaWd0X292ZXJjb21taXQo
dm9pZCAqYXJnKQo+ICAgCXF1aXJrX2FkZChvYmosICZvYmplY3RzKTsKPiAgIAo+ICAgCXZtYSA9
IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIDApOwo+IC0JaWYgKCFJ
U19FUlIodm1hKSB8fCBQVFJfRVJSKHZtYSkgIT0gLUVOT1NQQykgewo+IC0JCXByX2VycigiRmFp
bGVkIHRvIGV2aWN0K2luc2VydCwgaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluIHJldHVybmVkIGVy
cj0lZFxuIiwgKGludClQVFJfRVJSKHZtYSkpOwo+ICsJaWYgKHZtYSAhPSBFUlJfUFRSKC1FTk9T
UEMpKSB7Cj4gKwkJcHJfZXJyKCJGYWlsZWQgdG8gZXZpY3QraW5zZXJ0LCBpOTE1X2dlbV9vYmpl
Y3RfZ2d0dF9waW4gcmV0dXJuZWQgZXJyPSVkXG4iLCAoaW50KVBUUl9FUlJfT1JfWkVSTyh2bWEp
KTsKPiAgIAkJZXJyID0gLUVJTlZBTDsKPiAgIAkJZ290byBjbGVhbnVwOwo+ICAgCX0KPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
