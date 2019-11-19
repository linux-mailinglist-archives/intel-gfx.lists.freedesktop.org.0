Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A766102767
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 15:54:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8371D6E906;
	Tue, 19 Nov 2019 14:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5037A6E906
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 14:54:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 06:54:44 -0800
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="200373869"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 06:54:42 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1062f107-a341-ab18-69fd-703bea8ef16a@linux.intel.com>
Date: Tue, 19 Nov 2019 14:54:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230254.2615942-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/19] drm/i915/gt: Make intel_ring_unpin()
 safe for concurrent pint
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzExLzIwMTkgMjM6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbiBvcmRlciB0byBh
dm9pZCBzb21lIG5hc3R5IG11dGV4IGludmVyc2lvbnMsIGNvbW1pdCAwOWM1YWIzODRmNmYKPiAo
ImRybS9pOTE1OiBLZWVwIHJpbmdzIHBpbm5lZCB3aGlsZSB0aGUgY29udGV4dCBpcyBhY3RpdmUi
KSBhbGxvd2VkIHRoZQo+IGludGVsX3JpbmcgdW5waW5uaW5nIHRvIGJlIHJ1biBjb25jdXJyZW50
bHkgd2l0aCB0aGUgbmV4dCBjb250ZXh0Cj4gcGlubmluZyBpdC4gVGh1cyBlYWNoIHN0ZXAgaW4g
aW50ZWxfcmluZ191bnBpbigpIG5lZWRlZCB0byBiZSBhdG9taWMgYW5kCj4gb3JkZXJlZCBpbiBh
IG5pY2Ugb25pb24gd2l0aCBpbnRlbF9yaW5nX3BpbigpIHNvIHRoYXQgdGhlIGxpZmV0aW1lcwo+
IG92ZXJsYXBwZWQgYW5kIHdlcmUgYWx3YXlzIHNhZmUuCj4gCj4gU2FkbHksIGEgZmV3IHN0ZXBz
IGluIGludGVsX3JpbmdfdW5waW4oKSB3ZXJlIG92ZXJsb29rZWQsIHN1Y2ggYXMKPiBjbG9zaW5n
IHRoZSByZWFkL3dyaXRlIHBvaW50ZXJzIG9mIHRoZSByaW5nIGFuZCBkaXNjYXJkaW5nIHRoZQo+
IGludGVsX3JpbmcudmFkZHIsIGFzIHRoZXNlIHN0ZXBzIHdlcmUgbm90IHNlcmlhbGlzZWQgd2l0
aAo+IGludGVsX3JpbmdfcGluKCkgYW5kIHNvIGNvdWxkIGxlYXZlIHRoZSByaW5nIGluIGRpc2Fy
cmF5Lgo+IAo+IEZpeGVzOiAwOWM1YWIzODRmNmYgKCJkcm0vaTkxNTogS2VlcCByaW5ncyBwaW5u
ZWQgd2hpbGUgdGhlIGNvbnRleHQgaXMgYWN0aXZlIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yaW5nLmMgfCAxMyArKysrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5n
LmMKPiBpbmRleCBlY2UyMDUwNGQyNDAuLjM3NGIyOGYxM2NhMCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nLmMKPiBAQCAtNTcsOSArNTcsMTAgQEAgaW50IGludGVsX3Jpbmdf
cGluKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQo+ICAgCj4gICAJaTkxNV92bWFfbWFrZV91bnNo
cmlua2FibGUodm1hKTsKPiAgIAo+IC0JR0VNX0JVR19PTihyaW5nLT52YWRkcik7Cj4gLQlyaW5n
LT52YWRkciA9IGFkZHI7Cj4gKwkvKiBEaXNjYXJkIGFueSB1bnVzZWQgYnl0ZXMgYmV5b25kIHRo
YXQgc3VibWl0dGVkIHRvIGh3LiAqLwo+ICsJaW50ZWxfcmluZ19yZXNldChyaW5nLCByaW5nLT5l
bWl0KTsKPiAgIAo+ICsJcmluZy0+dmFkZHIgPSBhZGRyOwo+ICAgCXJldHVybiAwOwo+ICAgCj4g
ICBlcnJfcmluZzoKPiBAQCAtODUsMjAgKzg2LDE0IEBAIHZvaWQgaW50ZWxfcmluZ191bnBpbihz
dHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKPiAgIAlpZiAoIWF0b21pY19kZWNfYW5kX3Rlc3QoJnJp
bmctPnBpbl9jb3VudCkpCj4gICAJCXJldHVybjsKPiAgIAo+IC0JLyogRGlzY2FyZCBhbnkgdW51
c2VkIGJ5dGVzIGJleW9uZCB0aGF0IHN1Ym1pdHRlZCB0byBody4gKi8KPiAtCWludGVsX3Jpbmdf
cmVzZXQocmluZywgcmluZy0+ZW1pdCk7Cj4gLQo+ICAgCWk5MTVfdm1hX3Vuc2V0X2dndHRfd3Jp
dGUodm1hKTsKPiAgIAlpZiAoaTkxNV92bWFfaXNfbWFwX2FuZF9mZW5jZWFibGUodm1hKSkKPiAg
IAkJaTkxNV92bWFfdW5waW5faW9tYXAodm1hKTsKPiAgIAllbHNlCj4gICAJCWk5MTVfZ2VtX29i
amVjdF91bnBpbl9tYXAodm1hLT5vYmopOwo+ICAgCj4gLQlHRU1fQlVHX09OKCFyaW5nLT52YWRk
cik7Cj4gLQlyaW5nLT52YWRkciA9IE5VTEw7Cj4gLQo+IC0JaTkxNV92bWFfdW5waW4odm1hKTsK
PiAgIAlpOTE1X3ZtYV9tYWtlX3B1cmdlYWJsZSh2bWEpOwo+ICsJaTkxNV92bWFfdW5waW4odm1h
KTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqY3JlYXRlX3Jpbmdfdm1h
KHN0cnVjdCBpOTE1X2dndHQgKmdndHQsIGludCBzaXplKQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
