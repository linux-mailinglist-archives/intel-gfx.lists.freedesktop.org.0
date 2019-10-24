Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08721E2BC3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 10:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162E16E159;
	Thu, 24 Oct 2019 08:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ED516E155
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 08:08:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 01:08:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="210298492"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 24 Oct 2019 01:08:06 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AD8BA5C1EB5; Thu, 24 Oct 2019 11:07:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191023235359.27132-1-chris@chris-wilson.co.uk>
References: <20191023235359.27132-1-chris@chris-wilson.co.uk>
Date: Thu, 24 Oct 2019 11:07:17 +0300
Message-ID: <87wocu7eiy.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Flush any i915_active
 callback work as well
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTWFrZSB0
cmVibHkgc3VyZSB0aGF0IGFsbCBwb3NzaWJsZSBjYWxsYmFja3MgYW5kIHRoZWlyIGRlbGF5ZWQg
YnJldGhyZW4KPiBhcmUgY29tcGxldGUgYmVmb3JlIGFzc2VydGluZyB0aGF0IHRoZSBpOTE1X2Fj
dGl2ZSBzaG91bGQgYmUgaWRsZSBhZnRlcgo+IGZsdXNoaW5nIGFsbCBiYXJyaWVycy4KPgo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2
aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVh
dC5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwo+IGlu
ZGV4IDlmYjVkMzBjNDNiYi4uNzY4ZjAzMmU2NTc4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwo+IEBAIC01NSw2ICs1
NSw3IEBAIHN0YXRpYyB2b2lkIHB1bHNlX3VubG9ja193YWl0KHN0cnVjdCBwdWxzZSAqcCkKPiAg
ewo+ICAJbXV0ZXhfbG9jaygmcC0+YWN0aXZlLm11dGV4KTsKPiAgCW11dGV4X3VubG9jaygmcC0+
YWN0aXZlLm11dGV4KTsKPiArCWZsdXNoX3dvcmsoJnAtPmFjdGl2ZS53b3JrKTsKPiAgfQo+ICAK
PiAgc3RhdGljIGludCBfX2xpdmVfaWRsZV9wdWxzZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCj4gLS0gCj4gMi4yNC4wLnJjMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
