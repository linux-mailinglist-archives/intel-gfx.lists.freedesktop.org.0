Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9D558108
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601F76E0CD;
	Thu, 27 Jun 2019 10:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080026E0CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:59:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17042410-1500050 for multiple; Thu, 27 Jun 2019 11:59:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-7-lionel.g.landwerlin@intel.com>
 <156162694988.20851.13994445934808199507@skylake-alporthouse-com>
 <16ebcbdf-4358-62ca-9aad-a6d5dfe573e0@intel.com>
In-Reply-To: <16ebcbdf-4358-62ca-9aad-a6d5dfe573e0@intel.com>
Message-ID: <156163314737.8887.3106268670592572638@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 11:59:07 +0100
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915: add syncobj timeline
 support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAxMTo0OTo1NikKPiBUaGFua3Mg
YSBsb3QgZm9yIHlvdXIgY29tbWVudHMuCj4gCj4gT24gMjcvMDYvMjAxOSAxMjoxNSwgQ2hyaXMg
V2lsc29uIHdyb3RlOgo+ID4+ICsgICAgICAgICAgICAgICBzeW5jb2JqID0gZHJtX3N5bmNvYmpf
ZmluZChlYi0+ZmlsZSwgdXNlcl9mZW5jZS5oYW5kbGUpOwo+ID4+ICsgICAgICAgICAgICAgICBp
ZiAoIXN5bmNvYmopIHsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoIklu
dmFsaWQgc3luY29iaiBoYW5kbGUgcHJvdmlkZWRcbiIpOwo+ID4+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGVyciA9IC1FSU5WQUw7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBl
cnI7Cj4gPj4gKyAgICAgICAgICAgICAgIH0KPiA+PiArCj4gPj4gKyAgICAgICAgICAgICAgIGlm
ICh1c2VyX2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1dBSVQpIHsKPiA+PiArICAgICAg
ICAgICAgICAgICAgICAgICBmZW5jZSA9IGRybV9zeW5jb2JqX2ZlbmNlX2dldChzeW5jb2JqKTsK
PiA+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoIWZlbmNlKSB7Cj4gPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoIlN5bmNvYmogaGFuZGxlIGhhcyBubyBm
ZW5jZVxuIik7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fc3luY29i
al9wdXQoc3luY29iaik7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIg
PSAtRUlOVkFMOwo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7
Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgfQo+ID4+ICsKPiA+PiArICAgICAgICAgICAg
ICAgICAgICAgICBlcnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIHBvaW50
KTsKPiA+IElzIGFuIGltcG9ydGVkIHN5bmNvYmogYWx3YXlzIGEgZmVuY2UtY2hhaW4/Cj4gPgo+
ID4gZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZSgpIHNheXMgbm8uCj4gCj4gCj4g
ZHJtX3N5bmNvYmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZSgpIHdvdWxkIHR1cm4gYSB0aW1lbGlu
ZSBzZW1hcGhvcmUgCj4gaW50byBhIGJpbmFyeSBzZW1hcGhvcmUgYnkgYnJlYWtpbmcgdGhlIGNo
YWluLgo+IAo+IGRybV9zeW5jb2JqX3RyYW5zZmVyX3RvX3RpbWVsaW5lKCkgaXMgd2hhdCB5b3Ug
c2hvdWxkIHVzZSBpZiB5b3Ugd2lzaCB0byAKPiBpbXBvcnQgYSBmZW5jZSBpbnRvIHRoZSB0aW1l
bGluZS4KCldoYXQgSSBhbSB3b3JyeWluZyBhYm91dCBpcyB0aGUgbGVnYWxpdHkgb2YgdGhlIHVz
ZXIgcGFzc2luZyBpbiBhCm5vbi10aW1lbGluZSBmZW5jZSBoZXJlLiBJdCBsb29rcyBsaWtlIHRo
ZSBpbnRlcmZhY2Ugd2lsbCBpdHNlbGYKZ2VuZXJhdGUgbm9uLXRpbWVsaW5lIGZlbmNlcy4uLiBP
aCwgaWdub3JlIG1lLCBJIG92ZXJsb29rZWQgdGhlIGVhcmx5CnJldHVybiBmb3IgIXNlcW5vLgoK
U28gdGltZWxpbmVzIGFyZSBub3QgYWxsb3dlZCB0byB1c2UgMC4gRXZlci4gVGhhdCdzIGEgYml0
IG1vcmUgb2YgYSBoYXJkCnJ1bGUgdGhhbiBpbXBsaWVkIGJ5IHRoZSB1YXBpLmggOikKCj4gPj4g
QEAgLTEwMTQsOSArMTAyMCw0MCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfZmVuY2Ugewo+
ID4+ICAgfTsKPiA+PiAgIAo+ID4+ICAgZW51bSBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHQg
ewo+ID4+ICsgICAgICAgLyoqCj4gPj4gKyAgICAgICAgKiBUaGlzIGlkZW50aWZpZXIgaXMgYXNz
b2NpYXRlZCB3aXRoCj4gPj4gKyAgICAgICAgKiBkcm1faTkxNV9nZW1fZXhlY2J1Zl9leHRfdGlt
ZWxpbmVfZmVuY2VzLgo+ID4gT3IganVzdCAiU2VlIGRybV9pOTE1X2dlbV9leGVjYnVmX2V4dF90
aW1lbGluZV9mZW5jZXMKPiA+PiArICAgICAgICAqLwo+ID4+ICsgICAgICAgRFJNX0k5MTVfR0VN
X0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUywKPiA+ICAgPSAwCj4gPiBkb24ndCBsZWF2
ZSBpdCB1cCB0byB0aGUgY29tcGlsZXIuCj4gCj4gCj4gU2hvdWxkIHdlIHNldCBldmVyeSBzaW5n
bGUgaXRlbSBpbiB0aGUgZW51bSBvciBqdXN0IHRoZSBmaXJzdCBvbmU/CgpXZSd2ZSBiZWVuIHNl
dHRpbmcgdGhlIGZpcnN0IG9uZSB0byBiZSBleHBsaWNpdCAoZG91Ymx5IHVzZWZ1bCB3aGVuIHdl
CndhbnQgYSBjZXJ0YWluIHZhbHVlIHRvIGJlIGRvY3VtZW50ZWQgdG8gYmUgMCksIGFuZCB0aGVu
IGdhcHMuIFRoZSBzcGVjCnNheXMgdGhhdCBlYWNoIGlkIGlzIGluY3JlbWVudGVkIGJ5IG9uZSBm
cm9tIHRoZSBwcmV2aW91cywgaXQncyBqdXN0IHRoZQpmaXJzdCB2YWx1ZSBhbmQgbmF0dXJhbCB0
eXBlIG9mIHRoZSBlbnVtIGlzIHVwIHRvIHRoZSBjb21waWxlci4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
