Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D98B1D560F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 18:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6A26ECEC;
	Fri, 15 May 2020 16:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3EA6ECEC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 16:31:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21207048-1500050 for multiple; Fri, 15 May 2020 17:31:46 +0100
MIME-Version: 1.0
In-Reply-To: <20191028113036.27553-2-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
 <20191028113036.27553-2-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158956030449.29850.16683939631256487044@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 15 May 2020 17:31:44 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Fix max cursor size for
 i915g/gm
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEwLTI4IDExOjMwOjMyKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQXBwYXJlbnRs
eSB0aGUgMTI4eDEyOCBhbmQgMjU2eDI1NiBBUkdCIGN1cnNvciBtb2RlcyB3ZXJlCj4gb25seSBh
ZGRlZCBvbiBMUFQvQ1NULgo+IAo+IFdoaWxlIHRoZSBkaXNwbGF5IHNlY3Rpb24gb2YgYnNwZWMg
aXNuJ3Qgc3VwZXIgY2xlYXIgb24gdGhlCj4gc3ViamVjdCwgaXQgZG9lcyBoaWdobGlnaHQgdGhl
c2UgdHdvIG1vZGVzIGluIGEgZGlmZmVyZW50Cj4gY29sb3IsIGhhcyBhIGZldyBjaGFuZ2xvZyBl
bnRyaWVzIGluZGljYXRpbmcgdGhlIDI1NngyNTYgbW9kZQo+IHdhcyBhZGRlZCBmb3IgYSBMUFQg
RENOLCBhbmQgdGhhdCB0aGUgMTI4eDEyOCBtb2RlIHdhcyBhbHNvCj4gYWRkZWQgbGF0ZXIgKHRo
b3VnaCBubyBEQ04vcGxhdGZvcm0gbm90ZSB0aGVyZSkuCj4gCj4gVGhlICJkZXZpY2UgZGVwZW5k
ZW5jaWVzIiBic3BlYyBzZWN0aW9uIGRvZXMgbGlzdCB0aGUgMjU2eDI1NngzMgo+IGFzIGEgbmV3
IGZlYXR1cmUgZm9yIExQVC9DU1QsIGFuZCBnb2VzIG9uIHRvIG1lbnRpb24gdGhhdCBjdXJyZW50
Cj4gaHcgb25seSBoYXMgdGhlIDY0eDY0eDMyIG1vZGUgKHdoaWNoIHJlaW5mb3JjZXMgdGhlIG5v
dGlvbiB0aGF0Cj4gdGhlIDEyOHgxMjggbW9kZSB3YXMgYWxzbyBhZGRlZCBhdCB0aGUgc2FtZSB0
aW1lKS4KPiAKPiBUZXN0aW5nIG9uIGFjdHVhbCBoYXJkd2FyZSBjb25maXJtcyBhbGwgb2YgdGhp
cy4gQ0kgc2hvd3MgYWxsCj4gdGhlIDEyOHgxMjggYW5kIDI1NngyNTYgdGVzdHMgZmFpbGluZyBv
biBHREcsIGFuZCBteSBBTFYKPiBkZWZpbml0ZWx5IGRvZXNuJ3QgbGlrZSB0aGVtLgo+IAo+IFNv
IHdlIHNoYWxsIGxpbWl0IEdERy9BTFYgdG8gNjR4NjQgb25seS4gQW5kIHdoaWxlIGF0IGl0Cj4g
bGV0J3MgYWRqdXN0IHRoZSBtb2JpbGUgZ2VuMiBjYXNlIHRvIGxpc3QgdGhlIHR3byBwbGF0Zm9y
bXMKPiBleHBsaWNpdGx5IHNvIHRoYXQgdGhlIGlmLWxhZGRlciBsb29rcyByZWFzb25hYmx5IHVu
aWZvcm0uCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
