Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9520F104011
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D3D6E634;
	Wed, 20 Nov 2019 15:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16DD6E634;
 Wed, 20 Nov 2019 15:53:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19273846-1500050 for multiple; Wed, 20 Nov 2019 15:53:33 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <15750995.rd5hDIP3c3@jkrzyszt-desk.ger.corp.intel.com>
References: <20191120153219.30989-1-janusz.krzysztofik@linux.intel.com>
 <157426420137.13839.15400764934886889585@skylake-alporthouse-com>
 <15750995.rd5hDIP3c3@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <157426521008.13839.11819538026836369743@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 20 Nov 2019 15:53:30 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/prime_vgem: Skip
 basic-read/write subtests if no mappable GGTT
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
Cc: Joonas Lahtinen <joonas.lahtinen@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTEtMjAgMTU6NDk6MzMpCj4gKGZpeGlu
ZyBtYWxmb3JtZWQgaW50ZWwtZ2Z4IGxpc3QgYWRkcmVzcyBpbiBDYzopCj4gCj4gT24gV2VkbmVz
ZGF5LCBOb3ZlbWJlciAyMCwgMjAxOSA0OjM2OjQxIFBNIENFVCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4gPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0xMS0yMCAxNTozMjoxOSkKPiA+
ID4gQXMgd2UndmUgYWdyZWVkIHRoYXQgdXNpbmcgSTkxNV9HRU1fUFJFQUQvUFdSSVRFIElPQ1RM
cyBvbiBkbWEtYnVmCj4gPiA+IG9iamVjdHMgZG9lc24ndCBtYWtlIG11Y2ggc2Vuc2UsIHdlIGFy
ZSBub3QgZ29pbmcgdG8gZXh0ZW5kIHRoZWlyCj4gPiA+IGhhbmRsZXJzIGluIHRoZSBpOTE1IGRy
aXZlciB3aXRoIG5ldyBwcm9jZXNzaW5nIHBhdGhzIHJlcXVpcmVkIGZvciB0aGVtCj4gPiA+IHRv
IHdvcmsgY29ycmVjdGx5IHdpdGggZG1hLWJ1ZiBvYmplY3RzIG9uIGZ1dHVyZSBoYXJkd2FyZSB3
aXRoIG5vCj4gPiA+IG1hcHBhYmxlIGFwZXJ0dXJlLiAgV2hlbiBydW5uaW5nIG9uIHRoYXQga2lu
ZCBvZiBoYXJkd2FyZSwganVzdCBza2lwCj4gPiA+IHN1YnRlc3RzIHdoaWNoIHVzZSB0aG9zZSBJ
T0NUTHMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGph
bnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWxAZmZ3bGwuY2g+Cj4gPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBpbnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgdGVzdHMvcHJpbWVfdmdlbS5jIHwgNiAr
KysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+
IGRpZmYgLS1naXQgYS90ZXN0cy9wcmltZV92Z2VtLmMgYi90ZXN0cy9wcmltZV92Z2VtLmMKPiA+
ID4gaW5kZXggMmIyMWZmNDEuLmI3YmJkOTg5IDEwMDY0NAo+ID4gPiAtLS0gYS90ZXN0cy9wcmlt
ZV92Z2VtLmMKPiA+ID4gKysrIGIvdGVzdHMvcHJpbWVfdmdlbS5jCj4gPiA+IEBAIC0zNyw2ICsz
Nyw4IEBAIHN0YXRpYyB2b2lkIHRlc3RfcmVhZChpbnQgdmdlbSwgaW50IGk5MTUpCj4gPiA+ICAg
ICAgICAgdWludDMyX3QgKnB0cjsKPiA+ID4gICAgICAgICBpbnQgZG1hYnVmLCBpOwo+ID4gPiAg
Cj4gPiA+ICsgICAgICAgZ2VtX3JlcXVpcmVfbWFwcGFibGVfZ2d0dChpOTE1KTsKPiA+IAo+ID4g
SWYgdGhhdCB3ZXJlIHRoZSBjYXNlLCB0aGUgY2hhbmdlIGluIEFCSSB3b3VsZCBub3QgYmUgdGll
ZCB0byB0aGUgbW1hcAo+ID4gQUJJLgo+IAo+IFNJbmNlIGRtYS1idWYgb2JqZWN0cyBoYXZlIG5v
IHN0dWN0IHBhZ2UsIHRoZSBwd3JpdGUgaW9jdGwgaGFuZGxlciB0cmllcyB0byAKPiB1c2UgaTkx
NV9nZW1fZ3R0X3B3cml0ZV9mYXN0KCkuICBUaGVyZSwgYm90aCBpOTE1X2dlbV9vYmplY3RfZ2d0
dF9waW4oKSBhbmQgCj4gaW5zZXJ0X21hcHBhYmxlX25vZGUoKSBmYWlsLiAgSXNuJ3QgdGhhdCBi
ZWNhdXNlIG9mIG1pc3NpbmcgbWFwcGFibGUgYXBlcnR1cmU/CgpCdXQgdGhlIHF1ZXJ5IHlvdSBt
YWtlIHdvdWxkIGJlICJ3aGF0IGlzIHRoZSBwd3JpdGUvcHJlYWQgQUJJIj8gQW5kIHdlCndhbnQg
dGhhdCB0byB0aWNrIGluZGVwZW5kZW50bHkgb2Ygb3RoZXIgaW9jdGxzLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
