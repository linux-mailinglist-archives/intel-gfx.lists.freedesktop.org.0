Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EC111A9F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C100E8945A;
	Thu,  2 May 2019 14:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B07891AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:00:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16429769-1500050 for multiple; Thu, 02 May 2019 15:00:54 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-7-chris@chris-wilson.co.uk>
 <8c7b0892-d100-f64b-37c0-e601471708a8@linux.intel.com>
In-Reply-To: <8c7b0892-d100-f64b-37c0-e601471708a8@linux.intel.com>
Message-ID: <155680565207.9023.4775855077538661232@skylake-alporthouse-com>
Date: Thu, 02 May 2019 15:00:52 +0100
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915: Stop spinning for DROP_IDLE
 (debugfs/i915_drop_caches)
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNDozNDoxMSkKPiAKPiBPbiAwMS8w
NS8yMDE5IDEyOjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJZiB0aGUgdXNlciBpcyByYWNp
bmcgYSBjYWxsIHRvIGRlYnVnZnMvaTkxNV9kcm9wX2NhY2hlcyB3aXRoIG9uZ29pbmcKPiA+IHN1
Ym1pc3Npb24gZnJvbSBhbm90aGVyIHRocmVhZC9wcm9jZXNzLCB3ZSBtYXkgbmV2ZXIgZW5kIHVw
IGlkbGluZyB0aGUKPiA+IEdQVSBhbmQgYmUgdW5pbnRlcnJ1cHRpYmx5IHNwaW5uaW5nIGluIGRl
YnVnZnMvaTkxNV9kcm9wX2NhY2hlcyB0cnlpbmcKPiA+IHRvIGNhdGNoIGFuIGlkbGUgbW9tZW50
Lgo+ID4gCj4gPiBKdXN0IGZsdXNoIHRoZSB3b3JrIG9uY2UsIHRoYXQgc2hvdWxkIGJlIGVub3Vn
aCB0byBwYXJrIHRoZSBzeXN0ZW0gdW5kZXIKPiA+IGNvcnJlY3QgY29uZGl0aW9ucy4gT3V0c2lk
ZSBvZiB0aG9zZSB3ZSBlaXRoZXIgaGF2ZSBhIGRyaXZlciBidWcgb3IgdGhlCj4gPiB1c2VyIGlz
IHJhY2luZyB0aGVtc2VsdmVzLiBTYWRseSwgYmVjYXVzZSB0aGUgdXNlciBtYXkgYmUgcHJvdm9r
aW5nIHRoZQo+ID4gdW53YW50ZWQgc2l0dWF0aW9uIHdlIGNhbid0IHB1dCBhIHdhcm4gaGVyZSB0
byBhdHRyYWN0IGF0dGVudGlvbiB0byBhCj4gPiBwcm9iYWJsZSBidWcuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0t
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgNCArLS0tCj4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+IGluZGV4IDdlODg5OGQwYjc4Yi4uMmVj
ZWZhY2IxZTY2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gPiBA
QCAtMzkzMyw5ICszOTMzLDcgQEAgaTkxNV9kcm9wX2NhY2hlc19zZXQodm9pZCAqZGF0YSwgdTY0
IHZhbCkKPiA+ICAgICAgIGZzX3JlY2xhaW1fcmVsZWFzZShHRlBfS0VSTkVMKTsKPiA+ICAgCj4g
PiAgICAgICBpZiAodmFsICYgRFJPUF9JRExFKSB7Cj4gPiAtICAgICAgICAgICAgIGRvIHsKPiA+
IC0gICAgICAgICAgICAgICAgICAgICBmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRp
cmVfd29yayk7Cj4gPiAtICAgICAgICAgICAgIH0gd2hpbGUgKFJFQURfT05DRShpOTE1LT5ndC5h
d2FrZSkpOwo+ID4gKyAgICAgICAgICAgICBmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5y
ZXRpcmVfd29yayk7Cj4gPiAgICAgICAgICAgICAgIGZsdXNoX3dvcmsoJmk5MTUtPmdlbS5pZGxl
X3dvcmspOwo+ID4gICAgICAgfQo+ID4gICAKPiA+IAo+IAo+IFdoYXQgd2VyZSBzdXBwb3NlZCB0
byBiZSBzZW1hbnRpY3Mgb2YgRFJPUF9JRExFPyBOb3cgaXQgc2VlbXMgcmF0aGVyIAo+IHdlYWsu
IFNob3VsZCBpdCBmb3IgaW5zdGFuY2UgYWxzbyBpbXBseSBEUk9QX0FDVElWRT8KCkFsbCBJIG5l
ZWQgZm9yIERST1BfSURMRSBpcyB0aGF0IHRoZSBpZGxlIHdvcmtlciBpcyBmbHVzaGVkLiBJJ3Zl
IGFsd2F5cwphc3N1bWVkIHlvdSB3b3VsZCBwYXNzIGluIERST1BfQUNUSVZFIHwgRFJPUF9SRVRJ
UkUgfCBEUk9QX0lETEUgYXMgdGhlCnRyaWZlY3RhLgoKVGhlIGJpZ2dlc3QgcHJvYmxlbSBoZXJl
IGlzIHRoYXQncyBpdCBpcyBhbiB1bmludGVycnVwdGlibGUgbG9vcC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
