Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95C370BE9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 23:46:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23EB89E03;
	Mon, 22 Jul 2019 21:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CFA89E03
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 21:46:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17516245-1500050 for multiple; Mon, 22 Jul 2019 22:46:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190718124220.26623-1-chris@chris-wilson.co.uk>
 <4b24f426-7817-1805-0c09-b93c13221b16@linux.intel.com>
In-Reply-To: <4b24f426-7817-1805-0c09-b93c13221b16@linux.intel.com>
Message-ID: <156383196297.31349.6122104767892051649@skylake-alporthouse-com>
Date: Mon, 22 Jul 2019 22:46:03 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move global activity tracking
 from GEM to GT
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxMzoxNjozOCkKPiAKPiBPbiAxOC8w
Ny8yMDE5IDEzOjQyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcyBvdXIgZ2xvYmFsIHVucGFy
ay9wYXJrIGtlZXAgdHJhY2sgb2YgdGhlIG51bWJlciBvZiBhY3RpdmUgdXNlcnMsIHdlCj4gPiBj
YW4gc2ltcGx5IG1vdmUgdGhlIGFjY291bnRpbmcgZnJvbSB0aGUgR0VNIGxheWVyIHRvIHRoZSBi
YXNlIEdUIGxheWVyLgo+ID4gSXQgd2FzIHBsYWNlZCBvcmlnaW5hbGx5IGluc2lkZSBHRU0gdG8g
YmVuZWZpdCBmcm9tIHRoZSAxMDBtcyBleHRyYQo+ID4gZGVsYXkgb24gaWRsZW5lc3MsIGJ1dCB0
aGF0IGhhcyBiZWVuIGVsaW1pbmF0ZWQgYW5kIG5vdyB0aGVyZSBpcyBubwo+ID4gc3Vic3RhbnRp
dmUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBsYXllcnMuIEluIG1vdmluZyBpdCwgd2UgbW92ZSBh
bm90aGVyCj4gPiBwaWVjZSBvZiB0aGUgcHV6emxlIG91dCBmcm9tIHVuZGVybmVhdGggc3RydWN0
X211dGV4Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
bS5jIHwgNCAtLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMg
IHwgNSArKysrKwo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiA+
IGluZGV4IDhmYWYyNjIyNzhhZS4uMWFmYjA0NjYwNzI1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCj4gPiBAQCAtOSw3ICs5LDYgQEAKPiA+ICAgI2luY2x1
ZGUgImd0L2ludGVsX2d0X3BtLmgiCj4gPiAgIAo+ID4gICAjaW5jbHVkZSAiaTkxNV9kcnYuaCIK
PiA+IC0jaW5jbHVkZSAiaTkxNV9nbG9iYWxzLmgiCj4gPiAgIAo+ID4gICBzdGF0aWMgdm9pZCBj
YWxsX2lkbGVfYmFycmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICB7
Cj4gPiBAQCAtNDEsOCArNDAsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2dlbV9wYXJrKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQo+ID4gICAKPiA+ICAgICAgIGludGVsX3RpbWVsaW5lc19w
YXJrKGk5MTUpOwo+ID4gICAgICAgaTkxNV92bWFfcGFya2VkKGk5MTUpOwo+ID4gLQo+ID4gLSAg
ICAgaTkxNV9nbG9iYWxzX3BhcmsoKTsKPiAKPiBCZW5lZml0IG9mIHRoaXMgcGxhY2VtZW50IHdh
cyBhbHNvIHRoYXQgd2hhdCB3aWxsIGJlIGZyZWVkIG9uIHBhcmtpbmcgCj4gd2FzIGZyZWVkIGJ5
IHRoaXMgcG9pbnQgc28gc2hyaW5raW5nIG9mIHNsYWJzIGlzIGVmZmVjdGl2ZS4gSWYgeW91IG1v
dmUgCj4gaXQgdG8gZ3QgcGFya2luZyB0aGVuIHRoYXQgcnVucyB0byBlYXJseS4gU28gSSB0aGlu
ayBpdCBpcyBiZXR0ZXIgdGhhdCAKPiBpdCBzdGF5cyB3aGVyZSBpdCBpcy4KCkJ1dCB0aGVyZSdz
IG5vdGhpbmcgaGVyZS4gWW91IGFyZSBpbWFnaW5nIHRoaW5ncy4gY2FsbF9pZGxlX2JhcnJpZXJz
IGFuZApiYXRjaF9wb29sIGFyZSBpbiBlbmdpbmVfcGFyaywgdGltZWxpbmVzX3BhcmsgaXMgZ29u
ZSwgYW5kIHZtYV9wYXJrZWQgaXMKbm93IGEgdGltZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
