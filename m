Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D316B95CA5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 12:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853256E787;
	Tue, 20 Aug 2019 10:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658E46E787
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 10:53:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18200448-1500050 for multiple; Tue, 20 Aug 2019 11:53:26 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190819215003.48305-7-stuart.summers@intel.com>
References: <20190819215003.48305-1-stuart.summers@intel.com>
 <20190819215003.48305-7-stuart.summers@intel.com>
Message-ID: <156629840383.1374.7838008887428792378@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 11:53:23 +0100
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Add function to determine if
 a slice has a subslice
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0xOSAyMjo1MDowMCkKPiBBZGQgYSBuZXcg
ZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIHdoZXRoZXIgYSBwYXJ0aWN1bGFyIHNsaWNlCj4gaGFzIGEg
Z2l2ZW4gc3Vic2xpY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFy
dC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5oICAgICB8IDEwICsrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYyB8ICA5ICsrKystLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3NzZXUuaAo+IGluZGV4IDIyNjFkNGU3ZDk4Yi4uMGVjYzFjMzVhN2ExIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAo+IEBAIC02Niw2ICs2NiwxNiBAQCBpbnRlbF9zc2V1
X2Zyb21fZGV2aWNlX2luZm8oY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUpCj4gICAg
ICAgICByZXR1cm4gdmFsdWU7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbmxpbmUgYm9vbAo+ICtpbnRl
bF9zc2V1X2hhc19zdWJzbGljZShjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50
IHNsaWNlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgIGludCBzdWJzbGljZSkKPiArewo+ICsg
ICAgICAgdTggbWFzayA9IHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2UgKiBzc2V1LT5zc19zdHJp
ZGUgKwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Vic2xpY2UgLyBC
SVRTX1BFUl9CWVRFXTsKPiArCgpTdWdnZXN0aW9uOgoKCUdFTV9CVUdfT04oc3Vic2xpY2UgPj0g
c3NldS0+c3Nfc2xpY2UpOwoKPiArICAgICAgIHJldHVybiBtYXNrICYgQklUKHN1YnNsaWNlICUg
QklUU19QRVJfQllURSk7Cj4gK30KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
