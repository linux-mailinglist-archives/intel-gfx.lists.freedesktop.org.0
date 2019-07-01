Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D30A5BB29
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A7F89CD8;
	Mon,  1 Jul 2019 12:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9319B89CD8
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:03:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17084419-1500050 for multiple; Mon, 01 Jul 2019 13:03:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-10-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-10-lionel.g.landwerlin@intel.com>
Message-ID: <156198262577.1583.959905049922494081@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 13:03:45 +0100
Subject: Re: [Intel-gfx] [PATCH v6 09/11] drm/i915/perf: allow holding
 preemption on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDozNSkKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCBmOTJi
YWNlOWNhZmYuLjAxMmQ2ZDdmNTRlMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IEBAIC0yMTA0LDYgKzIxMDQsMTQgQEAgc3RhdGlj
IGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gICAgICAgICBp
ZiAoZXJyKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+ICAKPiArICAgICAgIC8qCj4g
KyAgICAgICAgKiBJZiB0aGUgcGVyZiBzdHJlYW0gd2FzIG9wZW5lZCB3aXRoIGhvbGQgcHJlZW1w
dGlvbiwgZmxhZyB0aGUKPiArICAgICAgICAqIHJlcXVlc3QgcHJvcGVybHkgc28gdGhhdCB0aGUg
cHJpb3JpdHkgb2YgdGhlIHJlcXVlc3QgaXMgYnVtcGVkIG9uY2UKPiArICAgICAgICAqIGl0IHJl
YWNoZXMgdGhlIGV4ZWNsaXN0IHBvcnRzLgo+ICsgICAgICAgICovCj4gKyAgICAgICBpZiAoZWIt
Pmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbS0+aG9sZF9wcmVlbXB0aW9uKQo+ICsgICAg
ICAgICAgICAgICBlYi0+cmVxdWVzdC0+ZmxhZ3MgfD0gSTkxNV9SRVFVRVNUX0ZMQUdTX1BFUkY7
CgpKdXN0IHRvIHJlYXNzdXJlIG15c2VsZiB0aGF0IHRoaXMgaXMgdGhlIGJlaGF2aW91ciB5b3U6
CgpJZiB0aGUgZXhjbHVzaXZlX3N0cmVhbSBpcyBjaGFuZ2VkIGJlZm9yZSB0aGUgcmVxdWVzdCBp
cyBleGVjdXRlZCwgaXQgaXMKbGlrZWx5IHRoYXQgd2Ugbm8gbG9uZ2VyIG5vdGljZSB0aGUgZWFy
bGllciBwcmVlbXB0aW9uLXByb3RlY3Rpb24uIFRoaXMKc2hvdWxkIG5vdCBtYXR0ZXIgYmVjYXVz
ZSB0aGUgbGlzdGVuZXIgaXMgbm8gbG9uZ2VyIGludGVyZXN0ZWQgaW4gdGhvc2UKZXZlbnRzPwot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
