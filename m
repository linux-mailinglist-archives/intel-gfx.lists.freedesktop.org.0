Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B78AD6AF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 12:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573FD89B0D;
	Mon,  9 Sep 2019 10:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB9389B0D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 10:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 03:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="185154171"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO [10.252.31.14])
 ([10.252.31.14])
 by fmsmga007.fm.intel.com with ESMTP; 09 Sep 2019 03:23:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190907105046.19934-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <60f438c4-9e89-7ae4-1cc8-1d8f6cc6ff61@linux.intel.com>
Date: Mon, 9 Sep 2019 11:23:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907105046.19934-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Remove incorrect BUG_ON
 for schedule-out
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

Ck9uIDA3LzA5LzIwMTkgMTE6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB3ZSBtYXkgdW53
aW5kIGluY29tcGxldGUgcmVxdWVzdHMgKGZvciBwcmVlbXB0aW9uKSBwcmlvciB0bwo+IHByb2Nl
c3NpbmcgdGhlIENTQiBhbmQgdGhlIHNjaGVkdWxlLW91dCBldmVudHMsIHdlIG1heSB1cGRhdGUg
cnEtPmVuZ2luZQo+IChyZXNldHRpbmcgaXQgdG8gcG9pbnQgYmFjayB0byB0aGUgcGFyZW50IHZp
cnR1YWwgZW5naW5lKSBwcmlvciB0bwo+IGNhbGxpbmcgZXhlY2xpc3RzX3NjaGVkdWxlX291dCgp
LCBpbnZhbGlkYXRpbmcgdGhlIGFzc2VydGlvbiB0aGF0IHRoZQo+IHJlcXVlc3Qgc3RpbGwgcG9p
bnRzIHRvIHRoZSBpbmZsaWdodCBlbmdpbmUuIChUaGUgbGlrZWxpaG9vZCBvZiB0aGlzIGlzCj4g
aW5jcmVhc2VkIGlmIHRoZSBDU0IgaW50ZXJydXB0IHByb2Nlc3NpbmcgaXMgcHVzaGVkIHRvIHRo
ZSBrc29mdGlycWQgZm9yCj4gYmVpbmcgdG9vIHNsb3cgYW5kIGRpcmVjdCBzdWJtaXNzaW9uIG92
ZXJ0YWtlcyBpdC4pCj4gCj4gUmVwb3J0ZWQtYnk6IFZpbmF5IEJlbGdhdW1rYXIgPHZpbmF5LmJl
bGdhdW1rYXJAaW50ZWwuY29tPgo+IEZpeGVzOiBkZjQwMzA2OTAyOWQgKCJkcm0vaTkxNS9leGVj
bGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYgc3BpbmxvY2siKQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogVmluYXkgQmVs
Z2F1bWthciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDEgLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDNhYWQz
NWI1NzBkNC4uMTZmMjI2MzQ5NTI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPiBAQCAtNjMxLDcgKzYzMSw2IEBAIGV4ZWNsaXN0c19zY2hlZHVsZV9vdXQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpCj4gICAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqY3VyLCAqb2xkOwo+
ICAgCj4gICAJdHJhY2VfaTkxNV9yZXF1ZXN0X291dChycSk7Cj4gLQlHRU1fQlVHX09OKGludGVs
X2NvbnRleHRfaW5mbGlnaHQoY2UpICE9IHJxLT5lbmdpbmUpOwo+ICAgCj4gICAJb2xkID0gUkVB
RF9PTkNFKGNlLT5pbmZsaWdodCk7Cj4gICAJZG8KPiAKClNvIHVud2luZCBmcm9tIGRpcmVjdCBz
dWJtaXNzaW9uIHJlc2V0cyBycS0+ZW5naW5lIGFuZCByYWNlcyB3aXRoIApwcm9jZXNzX2NzYiBm
cm9tIHRoZSB0YXNrbGV0IHdoaWNoIG5vdGljZXMgcmVxdWVzdCBoYXMgYWN0dWFsbHkgCmNvbXBs
ZXRlZD8gU2VlbXMgdG8gaG9sZCB0cnVlIGluIGNvZGUuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
