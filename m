Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E4E168226
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8518D6E3C7;
	Fri, 21 Feb 2020 15:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E6D6E3C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:46:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20304094-1500050 for multiple; Fri, 21 Feb 2020 15:46:24 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200221154310.14858-1-ville.syrjala@linux.intel.com>
Message-ID: <158229998279.7320.13343837397636223686@skylake-alporthouse-com>
Date: Fri, 21 Feb 2020 15:46:22 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correctly terminate connector
 iteration
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAyLTIxIDE1OjQzOjEwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gT25lIHNob3Vs
ZCB1c2UgZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCkgcmF0aGVyIHRoYW4KPiBkcm1fY29u
bmVjdG9yX2xpc3RfaXRlcl9iZWdpbigpIHRvIHRlcm1pbmF0ZSB0aGUgY29ubmVjdG9yCj4gaXRl
cmF0aW9uLgo+IAo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pgo+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+IENsb3NlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTI3OAo+IEZpeGVz
OiBlMjRiY2QzNGMxZGQgKCJkcm0vaTkxNS9kcDogQWRkIGFsbCB0aWxlZCBhbmQgcG9ydCBzeW5j
IGNvbm5zIHRvIG1vZGVzZXQiKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+IGluZGV4IDA2NjBiOGMzMzNhYy4uN2U4MjgwZmM2MmJhIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC02NjIyLDcgKzY2MjIsNyBAQCBzdGF0
aWMgaW50IGludGVsX21vZGVzZXRfdGlsZV9ncm91cChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKPiAgICAgICAgICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgICAg
ICAgICBicmVhazsKPiAgICAgICAgIH0KPiAtICAgICAgIGRybV9jb25uZWN0b3JfbGlzdF9pdGVy
X2JlZ2luKCZkZXZfcHJpdi0+ZHJtLCAmY29ubl9pdGVyKTsKPiArICAgICAgIGRybV9jb25uZWN0
b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9pdGVyKTsKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkhvdyBkaWQgdGhpcyBlc2NhcGUgbG9ja2RlcD8g
SSB3b25kZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
