Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CB3AE05F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 23:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629C189E52;
	Mon,  9 Sep 2019 21:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3292F89E52
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 21:45:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18431434-1500050 for multiple; Mon, 09 Sep 2019 22:45:46 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f027e02f-6d71-8df6-6ff9-00f57fac19ba@intel.com>
References: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
 <b9c6a7df-9137-6be0-bc40-209f5c2cb17e@intel.com>
 <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
 <f027e02f-6d71-8df6-6ff9-00f57fac19ba@intel.com>
Message-ID: <156806554426.30942.17759645791892275454@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Sep 2019 22:45:44 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTA5IDE3OjI3OjQ3KQo+IAo+
IAo+IE9uIDkvNy8xOSAxOjM5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDktMDYgMjM6Mjg6MDUpCj4gPj4KPiA+Pgo+ID4+
IE9uIDkvNS8xOSAyOjA5IEFNLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPj4+IFdoZW4g
dHJ5aW5nIHRvIHJlc2V0IGEgZGV2aWNlIHdpdGggcmVzZXQgY2FwYWJpbGl0eSBkaXNhYmxlZCBv
ciBub3QKPiA+Pj4gc3VwcG9ydGVkIHdoaWxlIHJpbmdzIGFyZSBmdWxsIG9mIHJlcXVlc3RzLCBp
dCBoYXMgYmVlbiBvYnNlcnZlZCB3aGVuCj4gPj4+IHJ1bm5pbmcgaW4gZXhlY2xpc3RzIHN1Ym1p
c3Npb24gbW9kZSB0aGF0IGNvbW1hbmQgc3RyZWFtIGJ1ZmZlciB0YWlsCj4gPj4+IHRlbmRzIHRv
IGJlIGluY3JlbWVudGVkIGJ5IGFwcGFyZW50bHkgc3RpbGwgcnVubmluZyBHUFUgcmVnYXJkbGVz
cyBvZgo+ID4+PiBhbGwgcmVxdWVzdHMgYmVpbmcgYWxyZWFkeSBjYW5jZWxsZWQgYW5kIGNvbW1h
bmQgc3RyZWFtIGJ1ZmZlciBwb2ludGVycwo+ID4+PiByZXNldC4gIEFzIGEgcmVzdWx0LCBrZXJu
ZWwgcGFuaWMgb24gTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIG9jY3Vycwo+ID4+PiB3aGVuIGEg
dHJhY2VfcG9ydHMoKSBoZWxwZXIgaXMgY2FsbGVkIHdpdGggY29tbWFuZCBzdHJlYW0gYnVmZmVy
IHRhaWwKPiA+Pj4gaW5jcmVtZW50ZWQgYnV0IHJlcXVlc3QgcG9pbnRlcnMgYmVpbmcgTlVMTCBk
dXJpbmcgZmluYWwKPiA+Pj4gX19pbnRlbF9ndF9zZXRfd2VkZ2VkKCkgb3BlcmF0aW9uIGNhbGxl
ZCBmcm9tIGludGVsX2d0X3Jlc2V0KCkuCj4gPj4+Cj4gPj4+IFNraXAgYWN0dWFsIHJlc2V0IHBy
b2NlZHVyZSBpZiByZXNldCBpcyBkaXNhYmxlZCBvciBub3Qgc3VwcG9ydGVkLgo+ID4+Cj4gPj4g
VGhpcyBsYXN0IHNlbnRlbmNlIGlzIGEgYml0IGNvbmZ1c2luZy4gWW91J3JlIG5vdCBza2lwcGlu
ZyB0aGUgcmVzZXQKPiA+PiBwcm9jZWR1cmUsIHlvdSdyZSBza2lwcGluZyB0aGUgYXR0ZW1wdCBv
ZiB1bndlZGdpbmcgYW5kIHJlc2V0dGluZyBhZ2Fpbgo+ID4+IGFmdGVyIGEgcmVzZXQgJiB3ZWRn
ZSBhbHJlYWR5IGhhcHBlbmVkLgo+ID4gCj4gPiBMb3NzIG9mIGVtYWlsIG92ZXIgdGhlIGxhc3Qg
d2Vlaywgc28ganVtcGluZyBpbiBhdCB0aGUgZW5kLiBNeSBndXQKPiA+IHJlc3BvbnNlIGlzIHRo
YXQgdGhpcyBpcyBzdGlsbCBqdXN0IHBhcGVyaW5nIG92ZXIgdGhlIGJ1ZywgYXMgd2hhdCB5b3UK
PiA+IHNheSBhYm92ZSBtYWtlcyBubyBzZW5zZS4KPiA+IC1DaHJpcwo+ID4gCj4gCj4gVGhlIGlz
c3VlIGhlcmUgaXMgdGhhdCBpZiB3ZSBkb24ndCByZXNldCB0aGUgSFcgd2hlbiB3ZSB3ZWRnZSwg
d2hhdGV2ZXIgCj4gd2FzIHJ1bm5pbmcgb24gdGhlIGVuZ2luZXMgbWlnaHQgY29tcGxldGUgYXQg
YW55IHBvaW50IGFmdGVyIHRoYXQsIHdoaWNoIAo+IGdlbmVyYXRlcyBhbiB1bmV4cGVjdGVkIHBv
c3Qtd2VkZ2UgQ1NCIGV2ZW50IHRoYXQgd2UgZG9uJ3QgaGFuZGxlIAo+IGdyYWNlZnVsbHkgd2hl
biB3ZSB1bndlZGdlLgoKSW5kZWVkLCB1bnRpbCB3ZSBjYWxsIHJlc2V0X2RlZmF1bHRfc3VibWlz
c2lvbiBhbGwgdGhvc2UgdW5leHBlY3RlZAppbnRlcnJ1cHRzIGFyZSByZWRpcmVjdGVkIHRvIHRo
ZSBub3Bfc3VibWlzc2lvbl90YXNrbGV0LgoKSSB0aGluayBpdCBzaG91bGQgYmUgbW9yZSBhbG9u
ZyB0aGUgbGluZXMgb2YKCiAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKIAl1bnNpZ25lZCBs
b25nIGZsYWdzOworCWJvb2wgb2s7CgogCWlmICghdGVzdF9iaXQoSTkxNV9XRURHRUQsICZndC0+
cmVzZXQuZmxhZ3MpKQogCQlyZXR1cm4gdHJ1ZTsKQEAgLTgzOCw3ICs4MzksMTEgQEAgc3RhdGlj
IGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAl9CiAJ
c3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7CgotCWludGVs
X2d0X3Nhbml0aXplKGd0LCBmYWxzZSk7CisJb2sgPSBmYWxzZTsKKwlpZiAoIUlOVEVMX0lORk8o
Z3QtPmk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNfZGlzcGxheSkKKwkJb2sgPSBfX2ludGVsX2d0
X3Jlc2V0KGd0LCBBTExfRU5HSU5FUykgPT0gMDsKKwlpZiAoIW9rKQorCQlyZXR1cm4gZmFsc2U7
CgogCS8qCiAJICogVW5kbyBub3Bfc3VibWl0X3JlcXVlc3QuIFdlIHByZXZlbnQgYWxsIG5ldyBp
OTE1IHJlcXVlc3RzIGZyb20KCkZvciBib251cyBwb2ludHMsIGdwdV9yZXNldF9jbG9iYmVyc19k
aXNwbGF5IHNob3VsZCB0YWtlIGludG8gYWNjb3VudAp3aGV0aGVyIHRoZSBkaXNwbGF5IGlzIGFj
dGl2ZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
