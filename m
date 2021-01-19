Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876B52FBCF3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6BB6E429;
	Tue, 19 Jan 2021 16:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D886E429
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:53:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23641524-1500050 for multiple; Tue, 19 Jan 2021 16:53:01 +0000
MIME-Version: 1.0
In-Reply-To: <YAcL/GQ0B3H1lJ5I@intel.com>
References: <20210118115929.23509-1-chris@chris-wilson.co.uk>
 <YAcL/GQ0B3H1lJ5I@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Tue, 19 Jan 2021 16:53:00 +0000
Message-ID: <161107518018.7548.5387427247860402232@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Apply interactive
 priority to explicit flip fences
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjEtMDEtMTkgMTY6NDI6MzYpCj4gT24gTW9uLCBK
YW4gMTgsIDIwMjEgYXQgMTE6NTk6MjlBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
K3ZvaWQgaTkxNV9nZW1fZmVuY2Vfd2FpdF9wcmlvcml0eShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGk5MTVf
c2NoZWRfYXR0ciAqYXR0cikKPiA+ICt7Cj4gPiArICAgICBpZiAoZG1hX2ZlbmNlX2lzX3NpZ25h
bGVkKGZlbmNlKSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuOwo+ID4gKwo+ID4gKyAgICAgbG9j
YWxfYmhfZGlzYWJsZSgpOwo+ID4gKwo+ID4gICAgICAgLyogUmVjdXJzZSBvbmNlIGludG8gYSBm
ZW5jZS1hcnJheSAqLwo+ID4gICAgICAgaWYgKGRtYV9mZW5jZV9pc19hcnJheShmZW5jZSkpIHsK
PiA+ICAgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXkgPSB0b19kbWFf
ZmVuY2VfYXJyYXkoZmVuY2UpOwo+ID4gICAgICAgICAgICAgICBpbnQgaTsKPiA+ICAKPiA+ICAg
ICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyBpKyspCj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgX19mZW5jZV9zZXRfcHJpb3JpdHkoYXJyYXktPmZlbmNlc1tp
XSwgYXR0cik7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZmVuY2Vfc2V0X3ByaW9yaXR5KGFy
cmF5LT5mZW5jZXNbaV0sIGF0dHIpOwo+ID4gKyAgICAgfSBlbHNlIGlmIChfX2RtYV9mZW5jZV9p
c19jaGFpbihmZW5jZSkpIHsKPiA+ICsgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqaXRl
cjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKGl0ZXIs
IGZlbmNlKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKCFmZW5jZV9zZXRfcHJpb3Jp
dHkodG9fZG1hX2ZlbmNlX2NoYWluKGl0ZXIpLT5mZW5jZSwKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhdHRyKSkKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJyZWFrOwo+IAo+IERvZXMgdGhpcyBtZWFuIHRoZSBmZW5jZSBjaGFpbiBp
cyBvcmRlcmVkIGluIHNvbWUgd2F5LCBpZS4gdGhlCj4gcmVzdCBvZiB0aGUgZmVuY2VzIGluIHRo
ZSBjaGFpbiB3aWxsIGhhdmUgYmVlbiBzaWduYWxsZWQgYWxyZWFkeT8KPiBJIGNvdWxkbid0IGZp
bmQgYW55IGRlc2NyaXB0aW9uIG9mIHdoYXQgYSBmZW5jZSBjaGFpbiByZWFsbHkgaXMKPiBhbnl3
aGVyZS4KClllcywgYSBmZW5jZSBjaGFpbiBpcyBhIHRpbWVsaW5lIGNvbnN0cnVjdGVkIGJ5IGZl
bmNlcy4gSXQgaXMgYXNzdW1lZAp0aGUgaW5kaXZpZHVhbCBmZW5jZXMgYXJlIGluIG9yZGVyIGJ1
dCB0aGF0J3Mgbm90IHN0cmljdGx5IGVuZm9yY2VkLApleGNlcHQgdGhhdCB0aGUgY2hhaW4gaXMg
YnJva2VuIGJldHdlZW4gZGlmZmVyZW50IGZlbmNlIGNvbnRleHRzLgoKRm9yIG91ciBwdXJwb3Nl
LCB3ZSByZWFsbHkganVzdCBuZWVkIHRvIGZpbmQgdGhlIGxhc3QgaTkxNV9yZXF1ZXN0IGFzCm9u
Y2Ugd2UgYXBwbHkgdGhlIHByaW9yaXR5IGJvb3N0IHRvIHRoYXQgb25lLCBldmVyeXRoaW5nIGVh
cmxpZXIgd2lsbCBiZQpib29zdGVkIGJ5IHByaW9yaXR5IGluaGVyaXRhbmNlLiBXZSBrZWVwIGNo
YXNpbmcgdGhlIGNoYWluIGFzIGV4dHJhCmJvb3N0cyB3aWxsIGJlIHJlZHVuZGFudCBhbmQgc2tp
cHBlZC4gU28gZm9yIHNpbXBsaWNpdHksIEkgb3B0ZWQgdG8gYnVtcAp0aGUgY2hhaW4gcmF0aGVy
IHRoYW4gd29yayBvdXQgaWYgdGhlIGJvb3N0cyBhcmUgbm8gbG9uZ2VyIG5lZWRlZC4gT3Igd2UK
Y291bGQganVzdCBzdG9wIGFmdGVyIHRoZSBmaXJzdCBhbmQgZXhwZWN0IGl0IHRvIHdvcmsgYXMg
d2VsbCBhcyB3ZSBjYW4KZXhwZWN0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
