Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C93F8EE6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 12:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834B56E3EE;
	Tue, 12 Nov 2019 11:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B85F6E3EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 11:48:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 03:48:43 -0800
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198051765"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 12 Nov 2019 03:48:42 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191112113434.31088-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0df1b2b8-8177-07b6-4709-ce55133307a5@linux.intel.com>
Date: Tue, 12 Nov 2019 11:48:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112113434.31088-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove leftover gem.pm_notifier
 member
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEyLzExLzIwMTkgMTE6MzQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB3ZSByZW1v
dmVkIHRoZSBwbSBob29rdXAgZnJvbSB0aGUgR1QsIHRoZSBob29rIGluCj4gZHJtX2k5MTVfcHJp
dmF0ZS5nZW0gaXMgdW51c2VkLiBSZW1vdmUgaXQuCj4gCj4gUmVmZXJlbmNlczogMThmM2IyNzI3
ZmMzICgiZHJtL2k5MTU6IFJlbW92ZSBwbSBwYXJrL3VucGFyayBub3RpZmljYXRpb25zIikKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAyIC0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCBjMzAzNzA3
ZjUxMzIuLjVmOGJkMWQ1NGM1OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0x
MjUyLDggKzEyNTIsNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4gICAJc3RydWN0IGlu
dGVsX2d0IGd0Owo+ICAgCj4gICAJc3RydWN0IHsKPiAtCQlzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sg
cG1fbm90aWZpZXI7Cj4gLQo+ICAgCQlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dHMgewo+ICAgCQkJ
c3BpbmxvY2tfdCBsb2NrOyAvKiBsb2NrcyBsaXN0ICovCj4gICAJCQlzdHJ1Y3QgbGlzdF9oZWFk
IGxpc3Q7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
