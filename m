Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71910FA80
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 10:11:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6240F6E43A;
	Tue,  3 Dec 2019 09:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CD36E43A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 09:11:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19438142-1500050 for multiple; Tue, 03 Dec 2019 09:11:28 +0000
MIME-Version: 1.0
To: Nathan Chancellor <natechancellor@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191203050522.GA12176@ubuntu-x2-xlarge-x86>
References: <20191101192116.12647-1-chris@chris-wilson.co.uk>
 <20191203050522.GA12176@ubuntu-x2-xlarge-x86>
Message-ID: <157536428822.6414.401531264805587878@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 03 Dec 2019 09:11:28 +0000
Subject: Re: [Intel-gfx] [v2] drm/i915/perf: Reverse a ternary to make
 sparse happy
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBOYXRoYW4gQ2hhbmNlbGxvciAoMjAxOS0xMi0wMyAwNTowNToyMikKPiBPbiBGcmks
IE5vdiAwMSwgMjAxOSBhdCAwNzoyMToxNlBNICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
PiBBdm9pZAo+ID4gCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoyNDQyOjg1
OiB3YXJuaW5nOiBkdWJpb3VzOiB4IHwgIXkKPiA+IAo+ID4gc2ltcGx5IGJ5IGludmVydGluZyB0
aGUgcHJlZGljYXRlIGFuZCByZXZlcnNpbmcgdGhlIHRlcm5hcnkuCj4gPiAKPiA+IHYyOiBNb3Jl
IHRoZSBsb25nIGxpbmVzIGludG8gdGhlaXIgb3duIGZ1bmN0aW9uIHNvIHRoZXJlIGlzIG5vIGNv
bmZ1c2lvbgo+ID4gb24gb3BlcmF0b3IgcHJlY2VkZW5jZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVW1lc2gg
TmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgo+ID4gQ2M6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiAKPiBJ
IGRvbid0IHNlZSB0aGlzIGFwcGxpZWQgdG8gZHJtLWludGVsIHlldCAodW5sZXNzIEkgYW0gYmxp
bmQpIGFuZCBjbGFuZwo+IHdhcm5zIGFib3V0IHRoaXMgYXMgd2VsbC4KCkl0J3MgaW4gdGlwLiBJ
IGd1ZXNzIHlvdSBhcmUgbG9va2luZyBhdCB0aGUgbGludXgtbmV4dCBicmFuY2ggdGhhdCBnZXRz
CmZyb3plbiBmb3IgdGhlIG1lcmdlIHdpbmRvdy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
