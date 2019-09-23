Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47C8BB5CE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447206E91B;
	Mon, 23 Sep 2019 13:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88746E91B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 13:53:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18587813-1500050 for multiple; Mon, 23 Sep 2019 14:53:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
 <20190921095542.23205-5-chris@chris-wilson.co.uk>
 <89c1b924-6060-61fc-b674-c7fb836283b6@linux.intel.com>
In-Reply-To: <89c1b924-6060-61fc-b674-c7fb836283b6@linux.intel.com>
Message-ID: <156924680103.29243.10544911080982776801@skylake-alporthouse-com>
Date: Mon, 23 Sep 2019 14:53:21 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yMyAxNDo0ODo0NCkKPiAKPiBPbiAyMS8w
OS8yMDE5IDEwOjU1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGb3JjZSBib25kZWQgcmVxdWVz
dHMgdG8gcnVuIG9uIGRpc3RpbmN0IGVuZ2luZXMgc28gdGhhdCB0aGV5IGNhbm5vdCBiZQo+ID4g
c2h1ZmZsZWQgb250byB0aGUgc2FtZSBlbmdpbmUgd2hlcmUgdGltZXNsaWNpbmcgd2lsbCByZXZl
cnNlIHRoZSBvcmRlci4KPiA+IEEgYm9uZGVkIHJlcXVlc3Qgd2lsbCBvZnRlbiB3YWl0IG9uIGEg
c2VtYXBob3JlIHNpZ25hbGVkIGJ5IGl0cyBtYXN0ZXIsCj4gPiBjcmVhdGluZyBhbiBpbXBsaWNp
dCBkZXBlbmRlbmN5IC0tIGlmIHdlIGlnbm9yZSB0aGF0IGltcGxpY2l0IGRlcGVuZGVuY3kKPiA+
IGFuZCBhbGxvdyB0aGUgYm9uZGVkIHJlcXVlc3QgdG8gcnVuIG9uIHRoZSBzYW1lIGVuZ2luZSBh
bmQgYmVmb3JlIGl0cwo+ID4gbWFzdGVyLCB3ZSB3aWxsIGNhdXNlIGEgR1BVIGhhbmcuIFtXaGV0
aGVyIGl0IHdpbGwgaGFuZyB0aGUgR1BVIGlzCj4gPiBkZWJhdGFibGUsIHdlIHNob3VsZCBrZWVw
IG9uIHRpbWVzbGljaW5nIGFuZCBlYWNoIHRpbWVzbGljZSBzaG91bGQgYmUKPiA+ICJhY2NpZGVu
dGFsbHkiIGNvdW50ZWQgYXMgZm9yd2FyZCBwcm9ncmVzcywgaW4gd2hpY2ggY2FzZSBpdCBzaG91
bGQgcnVuCj4gPiBidXQgYXQgb25lLWhhbGYgdG8gb25lLXRoaXJkIHNwZWVkLl0KPiA+IAo+ID4g
V2UgY2FuIHByZXZlbnQgdGhpcyBpbnZlcnNpb24gYnkgcmVzdHJpY3Rpbmcgd2hpY2ggZW5naW5l
cyB3ZSBhbGxvdwo+ID4gb3Vyc2VsdmVzIHRvIGp1bXAgdG8gdXBvbiBwcmVlbXB0aW9uLCBpLmUu
IGJha2luZyBpbiB0aGUgYXJyYW5nZW1lbnQKPiA+IGVzdGFibGlzaGVkIGF0IGZpcnN0IGV4ZWN1
dGlvbi4gKFdlIHNob3VsZCBhbHNvIGNvbnNpZGVyIGNhcHR1cmluZyB0aGUKPiA+IGltcGxpY2l0
IGRlcGVuZGVuY3kgdXNpbmcgaTkxNV9zY2hlZF9hZGRfZGVwZW5kZW5jeSgpLCBidXQgZmlyc3Qg
d2UgbmVlZAo+ID4gdG8gdGhpbmsgYWJvdXQgdGhlIGNvbnN0cmFpbnRzIHRoYXQgcmVxdWlyZXMg
b24gdGhlIGV4ZWN1dGlvbi9yZXRpcmVtZW50Cj4gPiBvcmRlcmluZy4pCj4gPiAKPiA+IEZpeGVz
OiA4ZWUzNmUwNDhjOTggKCJkcm0vaTkxNS9leGVjbGlzdHM6IE1pbmltYWxpc3RpYyB0aW1lc2xp
Y2luZyIpCj4gPiBSZWZlcmVuY2VzOiBlZTExMzY5MDhlOWIgKCJkcm0vaTkxNS9leGVjbGlzdHM6
IFZpcnR1YWwgZW5naW5lIGJvbmRpbmciKQo+ID4gVGVzdGNhc2U6IGlndC9nZW1fZXhlY19iYWxh
bmNlci9ib25kZWQtc2xpY2UKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYyB8IDIwICsrKysrKysrKysrKy0tLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+ID4gaW5kZXggM2VhZGQyOTRiY2Q3Li45ODcyYmI0Yzk5ZmMgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0zODQ2LDE4ICszODQ2LDIy
IEBAIHN0YXRpYyB2b2lkCj4gPiAgIHZpcnR1YWxfYm9uZF9leGVjdXRlKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxLCBzdHJ1Y3QgZG1hX2ZlbmNlICpzaWduYWwpCj4gPiAgIHsKPiA+ICAgICAgIHN0
cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSB0b192aXJ0dWFsX2VuZ2luZShycS0+ZW5naW5lKTsK
PiA+ICsgICAgIGludGVsX2VuZ2luZV9tYXNrX3QgYWxsb3dlZCwgZXhlYzsKPiA+ICAgICAgIHN0
cnVjdCB2ZV9ib25kICpib25kOwo+ID4gICAKPiA+ICsgICAgIGFsbG93ZWQgPSB+dG9fcmVxdWVz
dChzaWduYWwpLT5lbmdpbmUtPm1hc2s7Cj4gPiArCj4gPiAgICAgICBib25kID0gdmlydHVhbF9m
aW5kX2JvbmQodmUsIHRvX3JlcXVlc3Qoc2lnbmFsKS0+ZW5naW5lKTsKPiA+IC0gICAgIGlmIChi
b25kKSB7Cj4gPiAtICAgICAgICAgICAgIGludGVsX2VuZ2luZV9tYXNrX3Qgb2xkLCBuZXcsIGNt
cDsKPiA+ICsgICAgIGlmIChib25kKQo+ID4gKyAgICAgICAgICAgICBhbGxvd2VkICY9IGJvbmQt
PnNpYmxpbmdfbWFzazsKPiA+ICAgCj4gPiAtICAgICAgICAgICAgIGNtcCA9IFJFQURfT05DRShy
cS0+ZXhlY3V0aW9uX21hc2spOwo+ID4gLSAgICAgICAgICAgICBkbyB7Cj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgb2xkID0gY21wOwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIG5ldyA9IGNt
cCAmIGJvbmQtPnNpYmxpbmdfbWFzazsKPiA+IC0gICAgICAgICAgICAgfSB3aGlsZSAoKGNtcCA9
IGNtcHhjaGcoJnJxLT5leGVjdXRpb25fbWFzaywgb2xkLCBuZXcpKSAhPSBvbGQpOwo+ID4gLSAg
ICAgfQo+ID4gKyAgICAgLyogUmVzdHJpY3QgdGhlIGJvbmRlZCByZXF1ZXN0IHRvIHJ1biBvbiBv
bmx5IHRoZSBhdmFpbGFibGUgZW5naW5lcyAqLwo+ID4gKyAgICAgZXhlYyA9IFJFQURfT05DRShy
cS0+ZXhlY3V0aW9uX21hc2spOwo+ID4gKyAgICAgd2hpbGUgKCF0cnlfY21weGNoZygmcnEtPmV4
ZWN1dGlvbl9tYXNrLCAmZXhlYywgZXhlYyAmIGFsbG93ZWQpKQo+ID4gKyAgICAgICAgICAgICA7
Cj4gPiArCj4gPiArICAgICAvKiBQcmV2ZW50IHRoZSBtYXN0ZXIgZnJvbSBiZWluZyByZS1ydW4g
b24gdGhlIGJvbmRlZCBlbmdpbmVzICovCj4gPiArICAgICB0b19yZXF1ZXN0KHNpZ25hbCktPmV4
ZWN1dGlvbl9tYXNrICY9IH5hbGxvd2VkOwo+IAo+IEkgaGFkIGFuIG9wZW4gaGVyZSB3aGV0aGVy
IHdlIHNob3VsZCBhbHNvIGZpeCB0aGUgc2xhdmUuIEF0IHJlLXN1Ym1pdCAKPiB0aW1lIHdoYXQg
aXMgcHJldmVudGluZyB0aGUgc2xhdmUgYmVpbmcgcHV0IG9uIHRoZSBzYW1lIGVuZ2luZSBhcyB0
aGUgCj4gbWFzdGVyPwoKV2UgcmVtb3ZlZCB0aGUgbWFzdGVyIGVuZ2luZSBmcm9tIHRoZSBsaXN0
IG9mIGFsbG93ZWQgZW5naW5lcyBmb3IgdGhlCnNsYXZlLCBhbmQgd2UgbmV2ZXIgcmVzZXQgdGhl
IGV4ZWN1dGlvbl9tYXNrIG9uIHVuc3VibWl0IChhbmQgd2UgZG9uJ3QKcmUtZXhlY3V0ZSB0aGUg
Ym9uZGluZyBvbiByZXN1Ym1pdCkuIFRoYXQncyB0aGUgaGFyZCBiaXQgSSBsZWZ0IG9wZW4gZm9y
CnRoZSByZWFkZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
