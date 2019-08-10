Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0691888B19
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 13:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E5F6E3C9;
	Sat, 10 Aug 2019 11:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E696E3C6;
 Sat, 10 Aug 2019 11:45:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17952729-1500050 for multiple; Sat, 10 Aug 2019 12:45:40 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190809222643.23142-35-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
 <20190809222643.23142-35-matthew.auld@intel.com>
Message-ID: <156543753750.2301.512255701223709088@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 12:45:37 +0100
Subject: Re: [Intel-gfx] [PATCH v3 34/37] drm/i915: support basic object
 migration
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjM6MjY6NDApCj4gV2UgYXJlIGdvaW5n
IHdhbnQgdG8gYWJsZSB0byBtb3ZlIG9iamVjdHMgYmV0d2VlbiBkaWZmZXJlbnQgcmVnaW9ucwo+
IGxpa2Ugc3lzdGVtIG1lbW9yeSBhbmQgbG9jYWwgbWVtb3J5LiBJbiB0aGUgZnV0dXJlIGV2ZXJ5
dGhpbmcgc2hvdWxkCj4gYmUganVzdCBhbm90aGVyIHJlZ2lvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
QWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IENRIFRhbmcgPGNxLnRhbmdAaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEFiZGllbCBKYW51bGd1
ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgMTQwICsrKysrKysrKysrKysrKysr
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAgIDgg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAgIDIg
Ky0KPiAgLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgIHwgMTI5
ICsrKysrKysrKysrKysrKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCAyNzggaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMKPiBpbmRleCAyNGY3MzdiMDBlODQuLjU5ODJhZWFhYTJlMyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiBAQCAtMjgsNiArMjgsOCBAQAo+
ICAjaW5jbHVkZSAiaTkxNV9nZW1fY2xmbHVzaC5oIgo+ICAjaW5jbHVkZSAiaTkxNV9nZW1fY29u
dGV4dC5oIgo+ICAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCj4gKyNpbmNsdWRlICJpOTE1
X2dlbV9vYmplY3RfYmx0LmgiCj4gKyNpbmNsdWRlICJpOTE1X2dlbV9yZWdpb24uaCIKPiAgI2lu
Y2x1ZGUgImk5MTVfZ2xvYmFscy5oIgo+ICAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgo+ICAKPiBA
QCAtMTcwLDYgKzE3MiwxNDQgQEAgc3RhdGljIHZvaWQgX19pOTE1X2dlbV9mcmVlX29iamVjdF9y
Y3Uoc3RydWN0IHJjdV9oZWFkICpoZWFkKQo+ICAgICAgICAgYXRvbWljX2RlYygmaTkxNS0+bW0u
ZnJlZV9jb3VudCk7Cj4gIH0KPiAgCj4gKwo+ICtpbnQgaTkxNV9nZW1fb2JqZWN0X3ByZXBhcmVf
bW92ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICt7Cj4gKyAgICAgICBpbnQg
ZXJyOwo+ICsKPiArICAgICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJm9iai0+YmFzZS5kZXYtPnN0
cnVjdF9tdXRleCk7CgpObywgc3RyYWlnaHQgdXAgbm8uCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
