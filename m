Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F17D3F1B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 13:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E97989F4F;
	Fri, 11 Oct 2019 11:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F406E243
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 11:58:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18803189-1500050 for multiple; Fri, 11 Oct 2019 12:58:25 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191011114209.GA29460@mwanda>
References: <20191011114209.GA29460@mwanda>
Message-ID: <157079510291.31572.12347803232940106140@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 11 Oct 2019 12:58:22 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915/selftests: Exercise context
 switching in parallel
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTEwLTExIDEyOjQyOjA5KQo+IEhlbGxvIENocmlz
IFdpbHNvbiwKPiAKPiBUaGlzIGlzIGEgc2VtaS1hdXRvbWF0aWMgZW1haWwgYWJvdXQgbmV3IHN0
YXRpYyBjaGVja2VyIHdhcm5pbmdzLgo+IAo+IFRoZSBwYXRjaCA1MGQxNmQ0NGNjZTQ6ICJkcm0v
aTkxNS9zZWxmdGVzdHM6IEV4ZXJjaXNlIGNvbnRleHQgCj4gc3dpdGNoaW5nIGluIHBhcmFsbGVs
IiBmcm9tIFNlcCAzMCwgMjAxOSwgbGVhZHMgdG8gdGhlIGZvbGxvd2luZyAKPiBTbWF0Y2ggY29t
cGxhaW50Ogo+IAo+ICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NvbnRleHQuYzozNDkgbGl2ZV9wYXJhbGxlbF9zd2l0Y2goKQo+ICAgICBlcnJvcjogd2Ug
cHJldmlvdXNseSBhc3N1bWVkICdkYXRhJyBjb3VsZCBiZSBudWxsIChzZWUgbGluZSAyNjMpCj4g
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMK
PiAgICAyNTcgICAgICAgICAgfQo+ICAgIDI1OCAgCj4gICAgMjU5ICAgICAgICAgIGVuZ2luZXMg
PSBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpOwo+ICAgIDI2MCAgICAgICAgICBj
b3VudCA9IGVuZ2luZXMtPm51bV9lbmdpbmVzOwo+ICAgIDI2MSAgCj4gICAgMjYyICAgICAgICAg
IGRhdGEgPSBrY2FsbG9jKGNvdW50LCBzaXplb2YoKmRhdGEpLCBHRlBfS0VSTkVMKTsKPiAgICAy
NjMgICAgICAgICAgaWYgKCFkYXRhKSB7Cj4gICAgMjY0ICAgICAgICAgICAgICAgICAgaTkxNV9n
ZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOwo+ICAgIDI2NSAgICAgICAgICAgICAgICAg
IGVyciA9IC1FTk9NRU07Cj4gICAgMjY2ICAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgXl5eXl5eXl4KPiBnb3RvIG91dCBpcyBhbHdheXMgYSBzaWdu
IG9mIHRyb3VibGVkIHRpbWVzIGFoZWFkLi4uCgpIYXMgYmVlbiB1cGdyYWRlZCB0byBvdXRfZmls
ZSB3aXRoIGNsYWltcyBvZiBmZXdlciBidXJudCB0b2FzdC4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
