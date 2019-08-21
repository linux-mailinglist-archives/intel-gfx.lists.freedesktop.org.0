Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A549836E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1006E972;
	Wed, 21 Aug 2019 18:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D19F66E972
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 18:45:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18218598-1500050 for multiple; Wed, 21 Aug 2019 19:45:33 +0100
MIME-Version: 1.0
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190821063236.19705-12-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-12-animesh.manna@intel.com>
Message-ID: <156641313145.20466.4812697405471325184@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 19:45:31 +0100
Subject: Re: [Intel-gfx] [PATCH v2 11/15] drm/i915/dsb: function to destroy
 DSB context.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIxIDA3OjMyOjMxKQo+IEZyZWVkIHRoZSBn
ZW0gb2JqZWN0IGFmdGVyIGNvbXBsZXRpb24gb2YgZHNiIHdvcmtsb2FkLgo+IAo+IENjOiBTaGFz
aGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+IGlu
ZGV4IDdlMGE5YjM3ZjcwMi4uYmZiMTM4OTUyZjYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gQEAgLTIzNCwzICsyMzQsMjYgQEAgdm9pZCBpbnRlbF9k
c2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKPiAgICAgICAgIGRzYi0+ZnJlZV9wb3Mg
PSAwOwo+ICAgICAgICAgaW50ZWxfZHNiX2Rpc2FibGVfZW5naW5lKGRzYik7Cj4gIH0KPiArCj4g
K3ZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4gK3sKPiArICAgICAg
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTU7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiArCj4gKyAgICAgICBp
ZiAoIWRzYikKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsKPiArICAgICAgIGNydGMgPSBk
c2ItPmNydGM7Cj4gKyAgICAgICBpOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gKwo+
ICsgICAgICAgaWYgKGRzYi0+Y21kX2J1Zikgewo+ICsgICAgICAgICAgICAgICB2bWEgPSBkc2It
PnZtYTsKPiArICAgICAgICAgICAgICAgbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRl
eCk7Cj4gKyAgICAgICAgICAgICAgIGNydGMtPmRzYl9pbl91c2UtLTsKClRoYXQgaXMgY29tcGxl
dGUgZ2FyYmFnZS4gVGhpcyBkc2IganVzdCBoYXBwZW5zIHRvIGJlIGNydGMtPmRzYl9pbl91c2U/
Cgo+ICsgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHZtYS0+b2JqKTsK
PiArICAgICAgICAgICAgICAgaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJnZtYSwgMCk7Cgpp
OTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSh2bWEsIEk5MTVfVk1BX1JFTEVBU0VfTUFQKTsKCkRv
ZXMgbm90IHJlcXVpcmUgc3RydWN0X211dGV4LgoKUHV0IHRoaXMgd2l0aCB0aGUgYWxsb2NhdG9y
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
