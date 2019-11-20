Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F38FF103AED
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 14:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576F46E5CF;
	Wed, 20 Nov 2019 13:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E896E5CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 13:19:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 05:19:33 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200713266"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 05:19:32 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f4ce9baf-69fa-784d-c0d8-9f108996af42@linux.intel.com>
Date: Wed, 20 Nov 2019 13:19:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120093302.3723715-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gt: Close race between
 engine_park and intel_gt_retire_requests
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwLzExLzIwMTkgMDk6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgZ2VuZXJhbCBj
b25jZXB0IHdhcyB0aGF0IGludGVsX3RpbWVsaW5lLmFjdGl2ZV9jb3VudCB3YXMgbG9ja2VkIGJ5
Cj4gdGhlIGludGVsX3RpbWVsaW5lLm11dGV4LiBUaGUgZXhjZXB0aW9uIHdhcyBmb3IgcG93ZXIg
bWFuYWdlbWVudCwgd2hlcmUKPiB0aGUgZW5naW5lLT5rZXJuZWxfY29udGV4dC0+dGltZWxpbmUg
Y291bGQgYmUgbWFuaXB1bGF0ZWQgdW5kZXIgdGhlCj4gZ2xvYmFsIHdha2VyZWYubXV0ZXguCj4g
Cj4gVGhpcyB3YXMgcXVpdGUgc29saWQsIGFzIHdlIGFsd2F5cyBtYW5pcHVsYXRlZCB0aGUgdGlt
ZWxpbmUgb25seSB3aGlsZQo+IHdlIGhlbGQgYW4gZW5naW5lIHdha2VyZWYuCj4gCj4gQW5kIHRo
ZW4gd2Ugc3RhcnRlZCByZXRpcmluZyByZXF1ZXN0cyBvdXRzaWRlIG9mIHN0cnVjdF9tdXRleCwg
b25seQo+IHVzaW5nIHRoZSB0aW1lbGluZXMuYWN0aXZlX2xpc3QgYW5kIHRoZSB0aW1lbGluZS0+
bXV0ZXguIFRoZXJlIHdlCj4gc3RhcnRlZCBtYW5pcHVsYXRpbmcgaW50ZWxfdGltZWxpbmUuYWN0
aXZlX2NvdW50IG91dHNpZGUgb2YgYW4gZW5naW5lCj4gd2FrZXJlZiwgYW5kIHNvIGludHJvZHVj
ZWQgYSByYWNlIGJldHdlZW4gX19lbmdpbmVfcGFyaygpIGFuZAo+IGludGVsX2d0X3JldGlyZV9y
ZXF1ZXN0cygpLCBhIHJhY2UgdGhhdCBjb3VsZCByZXN1bHQgaW4gdGhlCj4gZW5naW5lLT5rZXJu
ZWxfY29udGV4dCBub3QgYmVpbmcgYWRkZWQgdG8gdGhlIGFjdGl2ZSB0aW1lbGluZXMgYW5kIHNv
Cj4gbG9zaW5nIHJlcXVlc3RzLCB3aGljaCBjYXVzZWQgdXMgdG8ga2VlcCB0aGUgc3lzdGVtIHBl
cm1hbmVudGx5IHBvd2VyZWQKPiB1cCBbYW5kIHVubG9hZGFibGVdLgo+IAo+IFRoZSByYWNlIHdv
dWxkIGJlIGVhc3kgdG8gY2xvc2UgaWYgd2UgY291bGQgdGFrZSB0aGUgZW5naW5lIHdha2VyZWYg
Zm9yCj4gdGhlIHRpbWVsaW5lIGJlZm9yZSB3ZSByZXRpcmUgLS0gZXhjZXB0IHRpbWVsaW5lcyBh
cmUgbm90IGJvdW5kIHRvIGFueQo+IGVuZ2luZSBhbmQgc28gd2Ugd291bGQgbmVlZCB0byBrZWVw
IGFsbCBhY3RpdmUgZW5naW5lcyBhd2FrZS4gVGhlCj4gYWx0ZXJuYXRpdmUgaXMgdG8gZ3VhcmQg
aW50ZWxfdGltZWxpbmVfZW50ZXIvaW50ZWxfdGltZWxpbmVfZXhpdCBmb3IgdXNlCj4gb3V0c2lk
ZSBvZiB0aGUgdGltZWxpbmUtPm11dGV4Lgo+IAo+IEZpeGVzOiBlNWRhZGZmNGIwOTMgKCJkcm0v
aTkxNTogUHJvdGVjdCByZXF1ZXN0IHJldGlyZW1lbnQgd2l0aCB0aW1lbGluZS0+bXV0ZXgiKQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jICAgfCAgOCArKy0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyAgICAgIHwgMzQgKysrKysrKysrKysrKysr
LS0tLQo+ICAgLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oICAgIHwg
IDIgKy0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3Jl
cXVlc3RzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCj4g
aW5kZXggMjUyOTFlMmFmMjFlLi4xYTAwNWRhOGM1ODggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMKPiBAQCAtNDksOCArNDksOCBAQCBsb25nIGlu
dGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGxvbmcg
dGltZW91dCkKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCj4gICAJCWludGVsX3RpbWVsaW5lX2dldCh0
bCk7Cj4gLQkJR0VNX0JVR19PTighdGwtPmFjdGl2ZV9jb3VudCk7Cj4gLQkJdGwtPmFjdGl2ZV9j
b3VudCsrOyAvKiBwaW4gdGhlIGxpc3QgZWxlbWVudCAqLwo+ICsJCUdFTV9CVUdfT04oIWF0b21p
Y19yZWFkKCZ0bC0+YWN0aXZlX2NvdW50KSk7Cj4gKwkJYXRvbWljX2luYygmdGwtPmFjdGl2ZV9j
b3VudCk7IC8qIHBpbiB0aGUgbGlzdCBlbGVtZW50ICovCj4gICAJCXNwaW5fdW5sb2NrX2lycXJl
c3RvcmUoJnRpbWVsaW5lcy0+bG9jaywgZmxhZ3MpOwo+ICAgCj4gICAJCWlmICh0aW1lb3V0ID4g
MCkgewo+IEBAIC03MSwxNCArNzEsMTQgQEAgbG9uZyBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHNf
dGltZW91dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCj4gICAKPiAgIAkJLyog
UmVzdW1lIGl0ZXJhdGlvbiBhZnRlciBkcm9wcGluZyBsb2NrICovCj4gICAJCWxpc3Rfc2FmZV9y
ZXNldF9uZXh0KHRsLCB0biwgbGluayk7Cj4gLQkJaWYgKCEtLXRsLT5hY3RpdmVfY291bnQpCj4g
KwkJaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnRsLT5hY3RpdmVfY291bnQpKQo+ICAgCQkJbGlz
dF9kZWwoJnRsLT5saW5rKTsKPiAgIAo+ICAgCQltdXRleF91bmxvY2soJnRsLT5tdXRleCk7Cj4g
ICAKPiAgIAkJLyogRGVmZXIgdGhlIGZpbmFsIHJlbGVhc2UgdG8gYWZ0ZXIgdGhlIHNwaW5sb2Nr
ICovCj4gICAJCWlmIChyZWZjb3VudF9kZWNfYW5kX3Rlc3QoJnRsLT5rcmVmLnJlZmNvdW50KSkg
ewo+IC0JCQlHRU1fQlVHX09OKHRsLT5hY3RpdmVfY291bnQpOwo+ICsJCQlHRU1fQlVHX09OKGF0
b21pY19yZWFkKCZ0bC0+YWN0aXZlX2NvdW50KSk7Cj4gICAJCQlsaXN0X2FkZCgmdGwtPmxpbmss
ICZmcmVlKTsKPiAgIAkJfQo+ICAgCX0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Rp
bWVsaW5lLmMKPiBpbmRleCAwZTI3NzgzNWFhZDAuLmIzNWYxMjcyOTk4MyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwo+IEBAIC0zMzQsMTUgKzMzNCwzMyBA
QCB2b2lkIGludGVsX3RpbWVsaW5lX2VudGVyKHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4g
ICAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJnRsLT5ndC0+dGltZWxp
bmVzOwo+ICAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gICAKPiArCS8qCj4gKwkgKiBQcmV0ZW5k
IHdlIGFyZSBzZXJpYWxpc2VkIGJ5IHRoZSB0aW1lbGluZS0+bXV0ZXguCj4gKwkgKgo+ICsJICog
V2hpbGUgZ2VuZXJhbGx5IHRydWUsIHRoZXJlIGFyZSBhIGZldyBleGNlcHRpb25zIHRvIHRoZSBy
dWxlCj4gKwkgKiBmb3IgdGhlIGVuZ2luZS0+a2VybmVsX2NvbnRleHQgYmVpbmcgdXNlZCB0byBt
YW5hZ2UgcG93ZXIKPiArCSAqIHRyYW5zaXRpb25zLiBBcyB0aGUgZW5naW5lX3BhcmsgbWF5IGJl
IGNhbGxlZCBmcm9tIHVuZGVyIGFueQo+ICsJICogdGltZWxpbmUsIGl0IHVzZXMgdGhlIHBvd2Vy
IG11dGV4IGFzIGEgZ2xvYmFsIHNlcmlhbGlzYXRpb24KPiArCSAqIGxvY2sgdG8gcHJldmVudCBh
bnkgb3RoZXIgcmVxdWVzdCBlbnRlcmluZyBpdHMgdGltZWxpbmUuCj4gKwkgKgo+ICsJICogVGhl
IHJ1bGUgaXMgZ2VuZXJhbGx5IHRsLT5tdXRleCwgb3RoZXJ3aXNlIGVuZ2luZS0+d2FrZXJlZi5t
dXRleC4KPiArCSAqCj4gKwkgKiBIb3dldmVyLCBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdCgpIGRv
ZXMgbm90IGtub3cgd2hpY2ggZW5naW5lCj4gKwkgKiBpdCBpcyByZXRpcmluZyBhbG9uZyBhbmQg
c28gY2Fubm90IHBhcnRha2UgaW4gdGhlIGVuZ2luZS1wbQo+ICsJICogYmFycmllciwgYW5kIHRo
ZXJlIHdlIHVzZSB0aGUgdGwtPmFjdGl2ZV9jb3VudCBhcyBhIG1lYW5zIHRvCj4gKwkgKiBwaW4g
dGhlIHRpbWVsaW5lIGluIHRoZSBhY3RpdmVfbGlzdCB3aGlsZSB0aGUgbG9ja3MgYXJlIGRyb3Bw
ZWQuCj4gKwkgKiBFcmdvLCBhcyB0aGF0IGlzIG91dHNpZGUgb2YgdGhlIGVuZ2luZS1wbSBiYXJy
aWVyLCB3ZSBuZWVkIHRvCj4gKwkgKiB1c2UgYXRvbWljIHRvIG1hbmlwdWxhdGUgdGwtPmFjdGl2
ZV9jb3VudC4KPiArCSAqLwo+ICAgCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnRsLT5tdXRleCk7Cj4g
LQo+ICAgCUdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZ0bC0+cGluX2NvdW50KSk7Cj4gLQlpZiAo
dGwtPmFjdGl2ZV9jb3VudCsrKQo+ICsKPiArCWlmIChhdG9taWNfYWRkX3VubGVzcygmdGwtPmFj
dGl2ZV9jb3VudCwgMSwgMCkpCj4gICAJCXJldHVybjsKPiAtCUdFTV9CVUdfT04oIXRsLT5hY3Rp
dmVfY291bnQpOyAvKiBvdmVyZmxvdz8gKi8KPiAgIAo+ICAgCXNwaW5fbG9ja19pcnFzYXZlKCZ0
aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKPiAtCWxpc3RfYWRkX3RhaWwoJnRsLT5saW5rLCAmdGlt
ZWxpbmVzLT5hY3RpdmVfbGlzdCk7Cj4gKwlpZiAoIWF0b21pY19mZXRjaF9pbmMoJnRsLT5hY3Rp
dmVfY291bnQpKQo+ICsJCWxpc3RfYWRkX3RhaWwoJnRsLT5saW5rLCAmdGltZWxpbmVzLT5hY3Rp
dmVfbGlzdCk7Cj4gICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5sb2NrLCBm
bGFncyk7Cj4gICB9Cj4gICAKPiBAQCAtMzUxLDE0ICszNjksMTYgQEAgdm9pZCBpbnRlbF90aW1l
bGluZV9leGl0KHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4gICAJc3RydWN0IGludGVsX2d0
X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJnRsLT5ndC0+dGltZWxpbmVzOwo+ICAgCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7Cj4gICAKPiArCS8qIFNlZSBpbnRlbF90aW1lbGluZV9lbnRlcigpICovCj4g
ICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmdGwtPm11dGV4KTsKPiAgIAo+IC0JR0VNX0JVR19PTigh
dGwtPmFjdGl2ZV9jb3VudCk7Cj4gLQlpZiAoLS10bC0+YWN0aXZlX2NvdW50KQo+ICsJR0VNX0JV
R19PTighYXRvbWljX3JlYWQoJnRsLT5hY3RpdmVfY291bnQpKTsKPiArCWlmIChhdG9taWNfYWRk
X3VubGVzcygmdGwtPmFjdGl2ZV9jb3VudCwgLTEsIDEpKQo+ICAgCQlyZXR1cm47Cj4gICAKPiAg
IAlzcGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gLQlsaXN0X2Rl
bCgmdGwtPmxpbmspOwo+ICsJaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnRsLT5hY3RpdmVfY291
bnQpKQo+ICsJCWxpc3RfZGVsKCZ0bC0+bGluayk7Cj4gICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gICAKPiAgIAkvKgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaAo+IGluZGV4IDk4ZDllZTE2NjM3
OS4uNTI0NDYxNWVkMWNiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3RpbWVsaW5lX3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF90aW1lbGluZV90eXBlcy5oCj4gQEAgLTQyLDcgKzQyLDcgQEAgc3RydWN0IGludGVsX3RpbWVs
aW5lIHsKPiAgIAkgKiBmcm9tIHRoZSBpbnRlbF9jb250ZXh0IGNhbGxlciBwbHVzIGludGVybmFs
IGF0b21pY2l0eS4KPiAgIAkgKi8KPiAgIAlhdG9taWNfdCBwaW5fY291bnQ7Cj4gLQl1bnNpZ25l
ZCBpbnQgYWN0aXZlX2NvdW50Owo+ICsJYXRvbWljX3QgYWN0aXZlX2NvdW50Owo+ICAgCj4gICAJ
Y29uc3QgdTMyICpod3NwX3NlcW5vOwo+ICAgCXN0cnVjdCBpOTE1X3ZtYSAqaHdzcF9nZ3R0Owo+
IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
