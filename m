Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC99294D7A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A9B6EB0E;
	Wed, 21 Oct 2020 13:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749D86EB13
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:26:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22765843-1500050 for multiple; Wed, 21 Oct 2020 14:26:51 +0100
MIME-Version: 1.0
In-Reply-To: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
References: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 14:26:49 +0100
Message-ID: <160328680949.24927.6953743823876644711@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Restore ILK-M RPS support
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTIxIDE0OjE0OjM5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUmVzdG9yZSBS
UFMgZm9yIElMSy1NLiBXZSBsb3N0IGl0IHdoZW4gYW4gZXh0cmEgSEFTX1JQUygpCj4gY2hlY2sg
YXBwZWFyZWQgaW4gaW50ZWxfcnBzX2VuYWJsZSgpLgo+IAo+IFVuZm9ydHVuYWx0ZXkgdGhpcyBq
dXN0IG1ha2VzIHRoZSBwZXJmb3JtYW5jZSB3b3JzZSBvbiBteQo+IElMSyBiZWNhdXNlIGludGVs
X2lwcyBpbnNpc3RzIG9uIGxpbWl0aW5nIHRoZSBHUFUgZnJlcSB0bwo+IHRoZSBtaW5pbXVtLiBJ
ZiB3ZSBkb24ndCBkbyB0aGUgUlBTIGluaXQgdGhlbiBpbnRlbF9pcHMgd2lsbAo+IG5vdCBsaW1p
dCB0aGUgZnJlcXVlbmN5IGZvciB3aGF0ZXZlciByZWFzb24uIEVpdGhlciBpdCBjYW4ndAo+IGdl
dCBhdCBzb21lIHJlcXVpcmVkIGluZm9ybWF0aW9uIGFuZCB0aHVzIG1ha2VzIHdyb25nIGRlY2lz
aW9ucywKPiBvciB3ZSBtZXNzIHVwIHNvbWUgd2VpZ2h0cy9ldGMuIGFuZCBjYXVzZSBpdCB0byBt
YWtlIHRoZSB3cm9uZwo+IGRlY2lzaW9ucyB3aGVuIFJQUyBpbml0IGhhcyBiZWVuIGRvbmUsIG9y
IHRoZSBlbnRpcmUgdGhpbmcgaXMKPiBqdXN0IHdyb25nLiBXb3VsZCByZXF1aXJlIGEgYnVuY2gg
b2YgcmV2ZXJzZSBlbmdpbmVlcmluZyB0bwo+IGZpZ3VyZSBvdXQgd2hhdCdzIGdvaW5nIG9uLgo+
IAo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IEZpeGVzOiA5Yzg3ODU1N2IxZWIgKCJkcm0vaTkxNS9ndDog
VXNlIHRoZSBSUE0gY29uZmlnIHJlZ2lzdGVyIHRvIGRldGVybWluZSBjbGsgZnJlcXVlbmNpZXMi
KQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxICsK
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCj4gaW5kZXggMjc5NjRhYzA2MzhhLi4xZmUzOTA3MjdkODAgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKPiBAQCAtMzg5LDYgKzM4OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZGV2aWNlX2luZm8gaWxrX21faW5mbyA9IHsKPiAgICAgICAgIEdFTjVfRkVBVFVSRVMsCj4g
ICAgICAgICBQTEFURk9STShJTlRFTF9JUk9OTEFLRSksCj4gICAgICAgICAuaXNfbW9iaWxlID0g
MSwKPiArICAgICAgIC5oYXNfcnBzID0gdHJ1ZSwKCk9vcHMuCgpUb28gYmFkIHdlIGhhdmUgdG8g
ZmlnaHQgd2l0aCBpcHMsIGJ1dCBwcmVzdW1hYmx5IGl0IG1ha2VzIHNvbWUKd29ya2xvYWRzIGJl
dHRlciwgYW5kIG1vcmUgaW1wb3J0YW50bHkgcmVzdG9yZXMgb3VyIHByZXZpb3VzIGJlaGF2aW91
ci4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
