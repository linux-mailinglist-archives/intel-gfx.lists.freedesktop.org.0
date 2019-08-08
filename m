Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB84C8678F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 18:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3CB6E03D;
	Thu,  8 Aug 2019 16:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DE56E03D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 16:59:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17933993-1500050 for multiple; Thu, 08 Aug 2019 17:59:12 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190808014423.20377-2-daniele.ceraolospurio@intel.com>
References: <20190808014423.20377-1-daniele.ceraolospurio@intel.com>
 <20190808014423.20377-2-daniele.ceraolospurio@intel.com>
Message-ID: <156528355017.22627.10953858306313094651@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 08 Aug 2019 17:59:10 +0100
Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915: split out uncore_mmio_debug
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTA4IDAyOjQ0OjIxKQo+IE11
bHRpcGxlIHVuY29yZSBzdHJ1Y3R1cmVzIHdpbGwgc2hhcmUgdGhlIGRlYnVnIGluZnJhc3RydWN0
dXJlLCBzbwo+IG1vdmUgaXQgdG8gYSBjb21tb24gcGxhY2UgYW5kIGFkZCBleHRyYSBsb2NraW5n
IGFyb3VuZCBpdC4KPiBBbHNvLCBzaW5jZSB3ZSBub3cgaGF2ZSBhIHNlcGFyYXRlIG9iamVjdCwg
aXQgaXMgY2xlYW5lciB0byBoYXZlCj4gZGVkaWNhdGVkIGZ1bmN0aW9ucyB3b3JraW5nIG9uIHRo
ZSBvYmplY3QgdG8gc3RvcCBhbmQgcmVzdGFydCB0aGUKPiBtbWlvIGRlYnVnLiBBcGFydCBmcm9t
IHRoZSBjb3NtZXRpYyBjaGFuZ2VzLCB0aGlzIHBhdGNoIGludHJvZHVjZXMKPiAyIGZ1bmN0aW9u
YWwgdXBkYXRlczoKPiAKPiAtIEFsbCBjYWxscyB0byBjaGVja19mb3JfdW5jbGFpbWVkX21taW8g
d2lsbCBub3cgcmV0dXJuIGZhbHNlIHdoZW4KPiAgIHRoZSBkZWJ1ZyBpcyBzdXNwZW5kZWQsIG5v
dCBqdXN0IHRoZSBvbmVzIHRoYXQgYXJlIGFjdGl2ZSBvbmx5IHdoZW4KPiAgIGk5MTVfbW9kcGFy
YW1zLm1taW9fZGVidWcgaXMgc2V0LiBJZiB3ZSBkb24ndCB0cnVzdCB0aGUgcmVzdWx0IG9mIHRo
ZQo+ICAgY2hlY2sgd2hpbGUgYSB1c2VyIGlzIGRvaW5nIG1taW8gYWNjZXNzIHRoZW4gd2Ugc2hv
dWxkbid0IGF0dGVtcHQgdGhlCj4gICBjaGVjayBhbnl3aGVyZS4KPiAKPiAtIGk5MTVfbW9kcGFy
YW1zLm1taW9fZGVidWcgaXMgbm90IHNhdmUvcmVzdG9yZWQgYW55bW9yZSBhcm91bmQgdXNlcgo+
ICAgYWNjZXNzLiBUaGUgdmFsdWUgaXMgbm93IG5ldmVyIHRvdWNoZWQgYnkgdGhlIGtlcm5lbCB3
aGlsZSBkZWJ1ZyBpcwo+ICAgZGlzYWJsZWQgc28gbm8gbmVlZCBmb3Igc2F2ZS9yZXN0b3JlLgoK
WXVwLiBFYXJseSByZXR1cm4gZnJvbSBjaGVja19mb3JfdW5jbGFpbWVkX21taW8oKSBpZiBzdXNw
ZW5kZWQsIHdpdGgKdXNlcl9mb3JjZXdha2UgY2FsbGluZyBtbWlvX3N1c3BlbmQuCgo+IHYyOiBz
cXVhc2ggbW1pb19kZWJ1ZyBwYXRjaGVzLCByZXN0cmljdCBtbWlvX2RlYnVnIGxvY2sgdXNhZ2Ug
KENocmlzKQo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
