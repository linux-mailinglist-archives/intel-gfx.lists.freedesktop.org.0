Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AF47A30C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419586E443;
	Tue, 30 Jul 2019 08:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 533396E443
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:23:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17722122-1500050 for multiple; Tue, 30 Jul 2019 09:22:59 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190729140847.18557-1-jani.nikula@intel.com>
References: <20190729140847.18557-1-jani.nikula@intel.com>
Message-ID: <156447497813.6373.10937852267140257861@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 09:22:58 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use upstream version of header
 tests
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNy0yOSAxNTowODo0NykKPiBUaHJvdyBvdXQgb3Vy
IGxvY2FsIGhhY2tzIG9mIGhlYWRlciB0ZXN0cyBub3cgdGhhdCB0aGUgbW9yZSBnZW5lcmljCj4g
a2J1aWxkIHZlcnNpb25zIGFyZSB1cHN0cmVhbS4KPiAKPiBBdCBsZWFzdCBmb3Igbm93LCBjb250
aW51ZSB0byBrZWVwIHRoZSBoZWFkZXIgdGVzdHMgYmVoaW5kCj4gQ09ORklHX0RSTV9JOTE1X1dF
UlJPUj15IGtub2IuCj4gCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4gCj4gLS0tCj4gCj4gVGVjaG5pY2FsbHkgdGhlIHVwc3RyZWFtIHZlcnNpb25zIGFyZSBvbmx5
IGluIGRybS10aXAsIGFuZCBub3QgaW4gZGlucQo+IHVudGlsIGEgYmFja21lcmdlLCBidXQgSSB0
aGluayBpdCdzIGdvb2QgZW5vdWdoLiBJIGRvbid0IHRoaW5rIGl0IHNob3VsZAo+IG1lc3MgYW55
dGhpbmcgdXAuCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgICAg
ICAgICAgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAg
ICAgICAgIHwgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRl
c3QgICAgIHwgMjcgLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L01ha2VmaWxlICAgICAgICAgfCAgMyArKy0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMTYgLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL01ha2VmaWxlICAgICAgICAgICAgIHwgIDIgKy0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMTYgLS0tLS0tLS0tLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvTWFrZWZpbGUgICAgICAgICAgICAgIHwgIDIgKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvTWFrZWZpbGUuaGVhZGVyLXRlc3QgIHwgMTYgLS0tLS0tLS0t
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvTWFrZWZpbGUgICAgICAgICAgIHwgIDIg
Ky0KPiAgLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9NYWtlZmlsZS5oZWFkZXItdGVzdCAgIHwgMTYg
LS0tLS0tLS0tLS0KCkxvb2tzIGNvbXBsZXRlIChtdXN0IHJlbWVtYmVyIHRvIG5vdCBhZGQgaTkx
NS9tbS9NYWtlZmlsZS5oZWFkZXItdGVzdCkKCj4gIDExIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgOTYgZGVsZXRpb25zKC0pCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmlsZS5oZWFkZXItdGVzdAo+ICBkZWxldGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL01ha2VmaWxlLmhlYWRlci10ZXN0
Cj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9NYWtlZmlsZS5o
ZWFkZXItdGVzdAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvS2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcK
PiBpbmRleCA0Y2RjMDE4MWEwOTMuLjg3YTM4YzZhYWE0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5kZWJ1Zwo+IEBAIC03LDYgKzcsNyBAQCBjb25maWcgRFJNX0k5MTVfV0VSUk9SCj4g
ICAgICAgICAgIyBXZSB1c2UgdGhlIGRlcGVuZGVuY3kgb24gIUNPTVBJTEVfVEVTVCB0byBub3Qg
YmUgZW5hYmxlZCBpbgo+ICAgICAgICAgICMgYWxsbW9kY29uZmlnIG9yIGFsbHllc2NvbmZpZyBj
b25maWd1cmF0aW9ucwo+ICAgICAgICAgIGRlcGVuZHMgb24gIUNPTVBJTEVfVEVTVAo+ICsgICAg
ICAgc2VsZWN0IEhFQURFUl9URVNUCgpJIHRob3VnaHQgdGhpcyBzaG91bGQgYmUgYSB0YWI/ClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
