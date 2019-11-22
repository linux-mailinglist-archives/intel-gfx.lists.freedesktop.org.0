Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5061068BB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 10:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A276F50B;
	Fri, 22 Nov 2019 09:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9AA6F507;
 Fri, 22 Nov 2019 09:20:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19296928-1500050 for multiple; Fri, 22 Nov 2019 09:20:13 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Petri Latvala <petri.latvala@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191122091407.GI25209@platvala-desk.ger.corp.intel.com>
References: <20191121151930.25464-1-mika.kuoppala@linux.intel.com>
 <20191122091407.GI25209@platvala-desk.ger.corp.intel.com>
Message-ID: <157441441103.2524.18134843549599284090@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 22 Nov 2019 09:20:11 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] cve: Add checker for cve-2019-0155
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
Cc: igt-dev@lists.freedesktop.org, Joonas Lahtinen <joonas.lahtinen@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBQZXRyaSBMYXR2YWxhICgyMDE5LTExLTIyIDA5OjE0OjA3KQo+IE9uIFRodSwgTm92
IDIxLCAyMDE5IGF0IDA1OjE5OjMwUE0gKzAyMDAsIE1pa2EgS3VvcHBhbGEgd3JvdGU6Cj4gPiBB
ZGQgdnVsbmVyYWJpbGl0eSBjaGVja2VyIGZvciBjdmUtMjAxOS0wMTU1Cj4gPiAKPiA+IHYyOiBz
eW5jLCBiYWlsb3V0IGVhcmx5IGlmIG5vIHBhcnNlciAoQ2hyaXMpCj4gPiAKPiA+IENjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBKb24gQmxvb21maWVs
ZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGludGVsLmNvbT4KPiA+IFJlZmVyZW5jZXM6IGh0dHA6Ly9jdmUubWl0cmUu
b3JnL2NnaS1iaW4vY3ZlbmFtZS5jZ2k/bmFtZT1DVkUtMjAxOS0wMTU1Cj4gPiBSZWZlcmVuY2Vz
OiBodHRwczovL3d3dy5pbnRlbC5jb20vY29udGVudC93d3cvdXMvZW4vc2VjdXJpdHktY2VudGVy
L2Fkdmlzb3J5L2ludGVsLXNhLTAwMjQyLmh0bWwKPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgTWFrZWZp
bGUuYW0gICAgICAgICAgfCAgIDIgKy0KPiA+ICBjb25maWd1cmUuYWMgICAgICAgICB8ICAgMSAr
Cj4gPiAgY3ZlL01ha2VmaWxlLmFtICAgICAgfCAgMTQgKysKPiA+ICBjdmUvTWFrZWZpbGUuc291
cmNlcyB8ICAgNSArCj4gPiAgY3ZlL2N2ZS0yMDE5LTAxNTUuYyAgfCA0NzAgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIGN2ZS9tZXNvbi5idWlsZCAgICAg
IHwgIDEyICsrCj4gPiAgbWVzb24uYnVpbGQgICAgICAgICAgfCAgIDEgKwo+IAo+IFdoeSBkbyB3
ZSBuZWVkIGEgbmV3IHNvdXJjZSBkaXJlY3RvcnkgYW5kIG5ldyBpbnN0YWxsIGRpcmVjdG9yeSBm
b3IKPiB0aGlzPyBDYW4ndCB0aGlzIGJlIGluIHRvb2xzLz8KCkJlY2F1c2Ugd2Ugd291bGQgbGlr
ZSB0byBjYXJ2ZSBvdXQgYSBuaWNoZSBmb3IgdGhlc2UuIElmIEdvb2dsZSBhc2tzIGZvcgphIHZl
cmlmaWVyIGZvciBldmVyeSBzaW5nbGUgYnVnIHdlIGVuY291bnRlciwgaXQncyBnb2luZyB0byBi
ZSBhIGh1Z2UKZGlyZWN0b3J5LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
