Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B12B0F01
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DCA6ECB0;
	Thu, 12 Sep 2019 12:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5736ECB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:44:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18464118-1500050 for multiple; Thu, 12 Sep 2019 13:44:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190911163815.11430-1-chris@chris-wilson.co.uk>
 <20190912113233.14910-1-chris@chris-wilson.co.uk>
 <21edca05-027b-808b-6e69-1b0722f69294@linux.intel.com>
In-Reply-To: <21edca05-027b-808b-6e69-1b0722f69294@linux.intel.com>
Message-ID: <156829228208.4926.12580931044713642168@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 13:44:42 +0100
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915/pmu: Use GT parked for
 estimating RC6 while asleep
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xMiAxMzozODo0NykKPiAKPiBPbiAxMi8w
OS8yMDE5IDEyOjMyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArICAgICBpZiAodmFsKQo+ID4g
KyAgICAgICAgICAgICAvKgo+ID4gKyAgICAgICAgICAgICAgKiBJZiB3ZSBhcmUgY29taW5nIGJh
Y2sgZnJvbSBiZWluZyBydW50aW1lIHN1c3BlbmRlZCB3ZSBtdXN0Cj4gPiArICAgICAgICAgICAg
ICAqIGJlIGNhcmVmdWwgbm90IHRvIHJlcG9ydCBhIGxhcmdlciB2YWx1ZSB0aGFuIHJldHVybmVk
Cj4gPiArICAgICAgICAgICAgICAqIHByZXZpb3VzbHkuCj4gPiArICAgICAgICAgICAgICAqLwo+
IAo+IFRoZSBjb21tZW50IGlzIGEgYml0IGRpc2xvY2F0ZWQgZnJvbSB0aGUgbG9naWMgc28gZmVl
bHMgaXQgd291bGQgYmV0dGVyIAo+IGdvIGludG8gX19wbXVfdXBkYXRlX3JjNi4KPiAKPiA+ICsg
ICAgICAgICAgICAgdmFsID0gX19wbXVfdXBkYXRlX3JjNihwbXUsIHZhbCk7Cj4gPiArICAgICBl
bHNlCj4gPiArICAgICAgICAgICAgIC8qCj4gPiArICAgICAgICAgICAgICAqIFdlIHdlcmUgcnVu
dGltZSBzdXNwZW5kZWQuCj4gCj4gcy93ZXJlL2FyZS8sIG9yIG1heWJlIGl0IGlzICJ0aGluayB3
ZSBhcmUiLiA6KQoKIldlIHRoaW5rIHdlIGFyZSIgY2FwdHVyZXMgbXkgYW54aWV0eS4KCk1vdmlu
ZyBib3RoIGludG8gdGhlaXIgcmVzcGVjdGl2ZSByb3V0aW5lcy4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
