Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4192C323
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F97898C7;
	Tue, 28 May 2019 09:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E131898C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:27:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16703137-1500050 for multiple; Tue, 28 May 2019 10:27:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190527111053.12486-1-chris@chris-wilson.co.uk>
 <20190527115114.13448-1-chris@chris-wilson.co.uk>
 <755ef77a-c639-080c-4f50-0d5de5e4b4da@linux.intel.com>
In-Reply-To: <755ef77a-c639-080c-4f50-0d5de5e4b4da@linux.intel.com>
Message-ID: <155903562398.2573.6149672701796769076@skylake-alporthouse-com>
Date: Tue, 28 May 2019 10:27:04 +0100
Subject: Re: [Intel-gfx] [CI] drm/i915: Keep user GGTT alive for a minimum
 of 250ms
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

UXVvdGluZyBNYWFydGVuIExhbmtob3JzdCAoMjAxOS0wNS0yOCAxMDoyNDo0MCkKPiBPcCAyNy0w
NS0yMDE5IG9tIDEzOjUxIHNjaHJlZWYgQ2hyaXMgV2lsc29uOgo+ID4gRG8gbm90IGFsbG93IHJ1
bnRpbWUgcG0gYXV0b3N1c3BlbmQgdG8gcmVtb3ZlIHVzZXJzcGFjZSBHR1RUIG1tYXBzIHRvbwo+
ID4gcXVpY2tseS4gRm9yIGV4YW1wbGUsIGlndCBzZXRzIHRoZSBhdXRvc3VzcGVuZCBkZWxheSB0
byAwLCBhbmQgc28gd2UKPiA+IGltbWVkaWF0ZWx5IGF0dGVtcHQgdG8gcGVyZm9ybSBydW50aW1l
IHN1c3BlbmQgdXBvbiByZWxlYXNpbmcgdGhlCj4gPiB3YWtlcmVmLiBVbmZvcnR1bmF0ZWx5LCB0
aGF0IGludm9sdmVzIHRlYXJpbmcgZG93biBHR1RUIG1tYXBzIGFzIHRoZXkKPiA+IHJlcXVpcmUg
YW4gYWN0aXZlIGRldmljZS4KPiA+Cj4gPiBPdmVycmlkZSB0aGUgYXV0b3N1c3BlbmQgZm9yIEdH
VFQgbW1hcHMsIGJ5IGtlZXBpbmcgdGhlIHdha2VyZWYgYXJvdW5kCj4gPiBmb3IgMjUwbXMgYWZ0
ZXIgcG9wdWxhdGluZyB0aGUgUFRFIGZvciBhIGZyZXNoIG1tYXAuCj4gPgo+ID4gdjI6IFByZWZl
ciByZWZjb3VudF90IGZvciBpdHMgdW5kZXIvb3ZlcmZsb3cgZXJyb3IgZGV0ZWN0aW9uCj4gPiB2
MzogRmx1c2ggdGhlIHVzZXIgcnVudGltZSBhdXRvc3VzcGVuZCBwcmlvciB0byBzeXN0ZW0gc3lz
dGVtLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgo+IAo+IENhbid0IHRoaXMgZXh0cmEgZGVsYXkgYmUgYWRkZWQgdG8gdGhl
IGtlcm5lbCBjb3JlPyBGZWVscyBsaWtlIHdlJ3JlIGp1c3QgZHVwbGljYXRpbmcgYXV0b3N1c3Bl
bmQgYmVoYXZpb3IgaGVyZS4uCgpZZXMuIEluIHRoZSBlbmQsIHdlIHdvdWxkIG5lZWQgdG8gYWRq
dXN0IHRoZSBkZXZpY2UgcG0gdG8gY2xhbXAgdGhlIHVzZXIKc3lzZnMgdmFsdWUuIEJ1dCByZWFs
bHksIHdlIHdhbnQgZGlmZmVyZW50IGZsb29ycyBmb3IgZGlmZmVyZW50Cm9wZXJhdGlvbnMgYXMg
d2Ugd291bGQgZXhwZWN0IGRpZmZlcmVudCB3YWtldXAgbGF0ZW5jaWVzIC8gcGVuYWx0aWVzLgpF
LmcuIHJlYXBpbmcgR1RUIG1tYXBzIGlzIGV4cGVuc2l2ZSwgYnV0IGlmIG5vbmUgYXJlIGluIHVz
ZS4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
