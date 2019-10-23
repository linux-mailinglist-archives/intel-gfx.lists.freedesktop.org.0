Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA50BE1B2A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EB16EA85;
	Wed, 23 Oct 2019 12:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4148C6EA85
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:47:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 05:47:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="281609287"
Received: from mtsaren-mobl.ger.corp.intel.com (HELO [10.252.38.24])
 ([10.252.38.24])
 by orsmga001.jf.intel.com with ESMTP; 23 Oct 2019 05:47:15 -0700
To: =?UTF-8?Q?Tapani_P=c3=a4lli?= <tapani.palli@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191023120618.5344-1-tapani.palli@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <1efd91f7-5dcc-e03e-45e9-a72e2ae31cea@intel.com>
Date: Wed, 23 Oct 2019 15:47:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023120618.5344-1-tapani.palli@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

T24gMjMvMTAvMjAxOSAxNTowNiwgVGFwYW5pIFDDpGxsaSB3cm90ZToKPiBBcyB3aXRoIGNvbW1p
dCAzZmUwMTA3ZTQ1YWIsIHRoaXMgY2hhbmdlIGZpeGVzIG11bHRpcGxlIHRlc3RzIHRoYXQgYXJl
Cj4gdXNpbmcgdGhlIGludm9jYXRpb24gY291bnRzLiBEb2N1bWVudGF0aW9uIGRvZXNuJ3QgbGlz
dCB0aGUgd29ya2Fyb3VuZAo+IGZvciBUR0wgYnV0IGFwcGx5aW5nIGl0IGZpeGVzIHRoZSB0ZXN0
cy4KPgo+IFNpZ25lZC1vZmYtYnk6IFRhcGFuaSBQw6RsbGkgPHRhcGFuaS5wYWxsaUBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBp
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKPiBpbmRleCBhZjhhODE4MzE1NGEuLjg2ZGVkMjAzYjJkZCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xMjE1LDYgKzEyMTUs
MjYgQEAgc3RhdGljIHZvaWQgaWNsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCj4gICAKPiAgIHN0YXRpYyB2b2lkIHRnbF93aGl0ZWxpc3RfYnVpbGQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgewo+ICsJc3RydWN0IGk5MTVfd2FfbGlz
dCAqdyA9ICZlbmdpbmUtPndoaXRlbGlzdDsKPiArCj4gKwlzd2l0Y2ggKGVuZ2luZS0+Y2xhc3Mp
IHsKPiArCWNhc2UgUkVOREVSX0NMQVNTOgo+ICsJCS8qCj4gKwkJICogV2FBbGxvd1BNRGVwdGhB
bmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EOnRnbAo+ICsJCSAqCj4gKwkJICogVGhpcyBj
b3ZlcnMgNCByZWdpc3RlcnMgd2hpY2ggYXJlIG5leHQgdG8gb25lIGFub3RoZXIgOgo+ICsJCSAq
ICAgLSBQU19JTlZPQ0FUSU9OX0NPVU5UCj4gKwkJICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlRf
VURXCj4gKwkJICogICAtIFBTX0RFUFRIX0NPVU5UCj4gKwkJICogICAtIFBTX0RFUFRIX0NPVU5U
X1VEVwo+ICsJCSAqLwo+ICsJCXdoaXRlbGlzdF9yZWdfZXh0KHcsIFBTX0lOVk9DQVRJT05fQ09V
TlQsCj4gKwkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9BQ0NFU1NfUkQgfAo+ICsJCQkJICBS
SU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7Cj4gKwkJYnJlYWs7Cj4gKwlkZWZhdWx0Ogo+
ICsJCWJyZWFrOwo+ICsJfQo+ICAgfQo+ICAgCj4gICB2b2lkIGludGVsX2VuZ2luZV9pbml0X3do
aXRlbGlzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
