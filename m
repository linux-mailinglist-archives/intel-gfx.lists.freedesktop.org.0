Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36866256FB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 19:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF628959D;
	Tue, 21 May 2019 17:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5258959D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 17:48:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16631854-1500050 for multiple; Tue, 21 May 2019 18:48:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
 <155845847818.23981.11970035434652441216@skylake-alporthouse-com>
 <da6d6099-8996-1539-690d-3822faef4547@intel.com>
In-Reply-To: <da6d6099-8996-1539-690d-3822faef4547@intel.com>
Message-ID: <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
Date: Tue, 21 May 2019 18:48:03 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMSAxODoxOTo1MCkKPiBPbiAyMS8w
NS8yMDE5IDE4OjA3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA1LTIxIDE1OjA4OjU0KQo+ID4+ICsgICAgICAgaWYgKGViLT5vYV9jb25m
aWcgJiYKPiA+PiArICAgICAgICAgICBlYi0+b2FfY29uZmlnICE9IGViLT5pOTE1LT5wZXJmLm9h
LmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZpZykgewo+ID4gQnV0IHRoZSBvYV9jb25maWcgaXMg
bm90IG9yZGVyZWQgd2l0aCByZXNwZWN0IHRvIHJlcXVlc3RzLCBhbmQgdGhlCj4gPiByZWdpc3Rl
cnMgY2hhbmdlZCBoZXJlIGFyZSBub3QgY29udGV4dCBzYXZlZCBhbmQgc28gbWF5IGJlIGNoYW5n
ZWQgYnkgYQo+ID4gdGhpcmQgcGFydHkgYmVmb3JlIGV4ZWN1dGlvbi4gVGhlIGZpcnN0IHBhcnR5
IG11c3QgcHJlc3VtYWJseSBkcm9wcGVkCj4gPiB0aGUgcGVyZl9mZCBiZWZvcmUgdGhlbiwgc28g
bWF5YmUgeW91IGRvbid0IGNhcmU/IEhtbSwgZG9lc24ndCBldmVuIHRha2UKPiA+IGEgdGhpcmQg
cGFydHkgYXMgdGhlIHBlcmZfZmQgb3duZXIgbWF5IGNoYW5nZSB0aGVpciBtaW5kIGZvciBkaWZm
ZXJlbnQKPiA+IGNvbnRleHRzIGFuZCBiZSBzdXJwcmlzZWQgd2hlbiB0aGUgd3Jvbmcgc2V0IGlz
IHVzZWQuCj4gCj4gCj4gVGhlIE9BIGNvbmZpZyBiYXRjaCBzaG91bGQgYmUgb3JkZXJlZCB3aXRo
IHJlZ2FyZCB0byB0aGUgTUlfQkJTIHdlJ3JlIAo+IGRvaW5nIGp1c3QgYmVsb3cgcmlnaHQ/CgpC
dXQgeW91IG9ubHkgZW1pdCBpZiB0aGUgb2FfY29uZmlnIGhhcyBjaGFuZ2VkLiBFcmdvLCBpdCBt
YXkgaGF2ZQpjaGFuZ2VkIGJldHdlZW4gc3VibWlzc2lvbiBhbmQgZXhlY3V0aW9uLgoKPiBJdCdz
IHdyaXR0ZW4gYmVmb3JlIGluIHRoZSByaW5nIGJ1ZmZlci4KPiAKPiAKPiBUaGF0IGVzc2VudGlh
bGx5IGFsbCB3ZSBuZWVkIHNvIHRoYXQgYXMgdGhlIHBlcmYgcXVlcmllcyBydW4gaW4gdGhlIAo+
IGJhdGNoIHN1cHBsaWVkIGJ5IHRoZSBhcHBsaWNhdGlvbiBydW5zIHdpdGggdGhlIGNvbmZpZ3Vy
YXRpb24gbmVlZGVkLgo+IAo+IElmIHRoZSBhcHBsaWNhdGlvbiBzaGFyZXMgdGhlIHBlcmYgRkQg
YW5kIHNvbWVvbmUgZWxzZSBydW5zIGFub3RoZXIgCj4gY29uZmlndXJhdGlvbiwgaXQncyB0aGUg
YXBwbGljYXRpb24gZmF1bHQuCj4gCj4gSXQgbmVlZHMgdG8gaG9sZCB0aGUgcGVyZiBGRCBmb3Ig
YXMgbG9uZyBhcyBpdCdzIGRvaW5nIHBlcmYgcXVlcmllcyBhbmQgCj4gbm90IGFsbG93IGFueWJv
ZHkgZWxzZSB0byBpbnRlcmFjdCB3aXRoIHRoZSBPQSBjb25maWd1cmF0aW9uLgoKSWYgb25lIGFw
cCBpcyB0cnlpbmcgdG8gdXNlIGRpZmZlcmVudCBjb25maWdzIG9uIGRpZmZlcmVudCBjb250ZXh0
cwood2hpY2ggc2VlbXMgcmVhc29uYWJsZSBpZiBpdCBpcyB0cnlpbmcgdG8gc2FtcGxlIGRpZmZl
cmVudCBzdGF0cz8pIHRoZW4KaXQgY2FuIGJlIGNhdWdodCBvdXQuIFRoZSBvcmRlciBvZiBleGVj
dXRpb24gaXMgbm90IHRoZSBzYW1lIGFzIHRoZQpvcmRlciBvZiBzdWJtaXNzaW9uICh1bmxlc3Mg
d2UgZW5mb3JjZSBpdCBieSBlLmcuIGRlZmluaW5nIHRoZQpwZXJmLm9hX2NvbmZpZyBhcyBhIGJh
cnJpZXIpLgoKCkFub3RoZXIgd2F5IHdvdWxkIGJlIHRvIHVuY29uZGl0aW9uYWxseSBlbWl0IHRo
ZSBCQl9TVEFSVCBmb3IgdGhlCm9hX3ZtYSwgYW5kIGluc3RlYWQgZG8gdGhlIGVhcmx5IGV4aXQg
d2l0aCBhIE1JX0NPTkRJVElPTkFMX0JCX0VORCBieQpjb21wYXJpbmcgYWdhaW5zdCBhIHZhbHVl
IHN0YXNoZWQgaW4gdGhlIGVuZ2luZSBod3NwLiBZb3UgY291bGQgZG8gYQpwcmVkaWNhdGVkIEJC
X1NUQVJUIGluc3RlYWQsIGJ1dCB0aGF0IGxvb2tzIHRvIGJlIG1vcmUgb2YgYSBudWlzYW5jZS4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
