Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C95A2581DB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC2C6E0D2;
	Thu, 27 Jun 2019 11:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFF36E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:53:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17043239-1500050 for multiple; Thu, 27 Jun 2019 12:53:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
 <20190627090116.10847-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190627090116.10847-3-lionel.g.landwerlin@intel.com>
Message-ID: <156163639890.9225.152357471609418453@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 12:53:18 +0100
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAxMDowMToxNSkKPiBDRkw6QzAr
IGNoYW5nZWQgdGhlIHN0YXR1cyBvZiB0aG9zZSByZWdpc3RlcnMgd2hpY2ggYXJlIG5vdwo+IGJs
YWNrbGlzdGVkIGJ5IGRlZmF1bHQuCj4gCj4gVGhpcyBpcyBicmVha2luZyBhIG51bWJlciBvZiBD
VFMgdGVzdHMgb24gR0wgJiBWdWxrYW4gOgo+IAo+ICAgS0hSLUdMNDUucGlwZWxpbmVfc3RhdGlz
dGljc19xdWVyeV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlv
bnMgKEdMKQo+IAo+ICAgZEVRUC1WSy5xdWVyeV9wb29sLnN0YXRpc3RpY3NfcXVlcnkuZnJhZ21l
bnRfc2hhZGVyX2ludm9jYXRpb25zLiogKFZ1bGthbikKPiAKPiB2MjogT25seSB1c2Ugb25lIHdo
aXRlbGlzdCBlbnRyeSAoTGlvbmVsKQo+IAo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2Vy
bGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDE3ICsrKysrKysrKysrKysrKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggOTkzODA0
ZDA5NTE3Li5iMTE3NTgzZTM4YmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMKPiBAQCAtMTA5MiwxMCArMTA5MiwyNSBAQCBzdGF0aWMgdm9pZCBn
bGtfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCj4g
IHN0YXRpYyB2b2lkIGNmbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+ICB7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3ID0gJmVuZ2luZS0+
d2hpdGVsaXN0Owo+ICsKPiAgICAgICAgIGlmIChlbmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFT
UykKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAKPiAtICAgICAgIGdlbjlfd2hpdGVsaXN0
X2J1aWxkKCZlbmdpbmUtPndoaXRlbGlzdCk7Cj4gKyAgICAgICBnZW45X3doaXRlbGlzdF9idWls
ZCh3KTsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogV2FBbGxvd1BNRGVwdGhBbmRJbnZv
Y2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EOmNmbCx3aGwsY21sLGFtbAo+ICsgICAgICAgICoKPiAr
ICAgICAgICAqIFRoaXMgY292ZXJzIDQgcmVnaXN0ZXIgd2hpY2ggYXJlIG5leHQgdG8gb25lIGFu
b3RoZXIgOgo+ICsgICAgICAgICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlQKPiArICAgICAgICAq
ICAgLSBQU19JTlZPQ0FUSU9OX0NPVU5UX1VEVwo+ICsgICAgICAgICogICAtIFBTX0RFUFRIX0NP
VU5UCj4gKyAgICAgICAgKiAgIC0gUFNfREVQVEhfQ09VTlRfVURXCj4gKyAgICAgICAgKi8KPiAr
ICAgICAgIHdoaXRlbGlzdF9yZWdfZXh0KHcsIFBTX0lOVk9DQVRJT05fQ09VTlQsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQgfAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzQpOwoKTWFnaWMh
IEFzIHdlIGNhbid0IHJlbHkgb24gb3VyIHNlbGZ0ZXN0cyB0byB2ZXJpZnkgdGhhdCB0aGlzIGFs
bG93cwphY2Nlc3MgZnJvbSB1c2VyIGJhdGNoZXMsIGNvdWxkIHlvdSBwb2tlIEFudWogZm9yIGFu
b3RoZXIgdGVzdGVkIGJ5PwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
