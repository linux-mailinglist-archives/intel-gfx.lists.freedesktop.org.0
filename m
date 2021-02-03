Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E1530DD1F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 15:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB8F6E1B3;
	Wed,  3 Feb 2021 14:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125906E1B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 14:44:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23776683-1500050 for multiple; Wed, 03 Feb 2021 14:44:24 +0000
MIME-Version: 1.0
In-Reply-To: <20210203141313.498462-1-matthew.auld@intel.com>
References: <20210203141313.498462-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 03 Feb 2021 14:44:25 +0000
Message-ID: <161236346518.21832.16814493238735395899@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Distinction of memory
 regions
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMjEtMDItMDMgMTQ6MTM6MTEpCj4gRnJvbTogWmJpZ25p
ZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gCj4gSW4g
cHJlcGFyYXRpb24gZm9yIFhlIEhQIG11bHRpLXRpbGUgYXJjaGl0ZWN0dXJlIHdpdGggbXVsdGlw
bGUgbWVtb3J5Cj4gcmVnaW9ucywgd2UgbmVlZCB0byBiZSBhYmxlIGRpZmZlcmVudGlhdGUgbXVs
dGlwbGUgaW5zdGFuY2VzIG9mIGRldmljZQo+IGxvY2FsLW1lbW9yeS4KPiAKPiBOb3RlIHRoYXQg
dGhlIHJlZ2lvbiBuYW1lIGlzIGp1c3QgdG8gZ2l2ZSBpdCBhIGh1bWFuIGZyaWVuZGx5Cj4gaWRl
bnRpZmllciwgaW5zdGVhZCBvZiB1c2luZyBjbGFzcy9pbnN0YW5jZSB3aGljaCBhbHNvIHVuaXF1
ZWx5Cj4gaWRlbnRpZmllcyB0aGUgcmVnaW9uLiBTbyBmYXIgdGhlIHJlZ2lvbiBuYW1lIGlzIG9u
bHkgZm9yIG91ciBvd24KPiBpbnRlcm5hbCBkZWJ1Z2dpbmcgaW4gdGhlIGtlcm5lbChsaWtlIGlu
IHRoZSBzZWxmdGVzdHMpLCBvciBkZWJ1Z2ZzCj4gd2hpY2ggcHJpbnRzIHRoZSBsaXN0IG9mIHJl
Z2lvbnMsIGluY2x1ZGluZyB0aGUgcmVnaW9ucyBuYW1lLgo+IAo+IHYyOiBhZGQgY29tbWVudGFy
eSBmb3Igb3VyIGN1cnJlbnQgcmVnaW9uIG5hbWUgdXNlCj4gCj4gU2lnbmVkLW9mZi1ieTogWmJp
Z25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICAgIHwgMiArKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZWdpb25fbG1lbS5jIHwgMiAtLQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0LmMKPiBpbmRleCAzNWZmNjhhZGE0ZjEuLmNhNzZmOTNiYzAzZCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+IEBAIC02OCw2ICs2OCw4IEBAIGlu
dCBpbnRlbF9ndF9wcm9iZV9sbWVtKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gICAgICAgICBtZW0t
PnR5cGUgPSBJTlRFTF9NRU1PUllfTE9DQUw7Cj4gICAgICAgICBtZW0tPmluc3RhbmNlID0gMDsK
PiAgCj4gKyAgICAgICBpbnRlbF9tZW1vcnlfcmVnaW9uX3NldF9uYW1lKG1lbSwgImxvY2FsJXUi
LCBtZW0tPmluc3RhbmNlKTsKPiArCj4gICAgICAgICBHRU1fQlVHX09OKCFIQVNfUkVHSU9OKGk5
MTUsIGlkKSk7Cj4gICAgICAgICBHRU1fQlVHX09OKGk5MTUtPm1tLnJlZ2lvbnNbaWRdKTsKPiAg
ICAgICAgIGk5MTUtPm1tLnJlZ2lvbnNbaWRdID0gbWVtOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZWdpb25fbG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYwo+IGluZGV4IDhjNDk4ZTk2YjAxZC4uYmU2ZjJjOGY1
MTg0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9s
bWVtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZWdpb25fbG1lbS5j
Cj4gQEAgLTkwLDggKzkwLDYgQEAgcmVnaW9uX2xtZW1faW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5
X3JlZ2lvbiAqbWVtKQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgaW9fbWFw
cGluZ19maW5pKCZtZW0tPmlvbWFwKTsKPiAgCj4gLSAgICAgICBpbnRlbF9tZW1vcnlfcmVnaW9u
X3NldF9uYW1lKG1lbSwgImxvY2FsIik7CgpPay4gU28gaW4gZ3RfcHJvYmVfbG1lbSB3ZSBzZXQg
dXAgdGhlIHN0cnVjdCwgYW5kIGluIHJlZ2lvbl9sbWVtX2luaXQoKQp3ZSBzZXQgdXAgdGhlIEhX
IGludGVyZmFjZSBhbmQgYm9va2tlZXBpbmcuCgpNb3ZpbmcgdGhlIG5hbWUgdG8gcHJvYmVfbG1l
bSBhbG9uZ3NpZGUgdGhlIG90aGVyIG5hbWluZyBtYWtlcyBzZW5zZSwKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
