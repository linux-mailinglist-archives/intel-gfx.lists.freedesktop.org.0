Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15459102915
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:15:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCEC6E985;
	Tue, 19 Nov 2019 16:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1374C6E985
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:15:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:15:09 -0800
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="200400417"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 08:15:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-12-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <eab4f23c-821f-850d-d9aa-cc2765754991@linux.intel.com>
Date: Tue, 19 Nov 2019 16:15:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230254.2615942-12-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/19] drm/i915: Wait until the
 intel_wakeref idle callback is complete
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

Ck9uIDE4LzExLzIwMTkgMjM6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIHdhaXRpbmcg
Zm9yIGlkbGUsIHNlcmlhbGlzZSB3aXRoIGFueSBvbmdvaW5nIGNhbGxiYWNrIHNvIHRoYXQgaXQK
PiB3aWxsIGhhdmUgY29tcGxldGVkIGJlZm9yZSBjb21wbGV0aW5nIHRoZSB3YWl0Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jIHwgMTEgKysrKysrKysr
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwo+IGluZGV4IDliMjkxNzZjYzFjYS4u
OTFmZWI1M2IyOTQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dh
a2VyZWYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwo+IEBA
IC0xMDksOCArMTA5LDE1IEBAIHZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVs
X3dha2VyZWYgKndmLAo+ICAgCj4gICBpbnQgaW50ZWxfd2FrZXJlZl93YWl0X2Zvcl9pZGxlKHN0
cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKPiAgIHsKPiAtCXJldHVybiB3YWl0X3Zhcl9ldmVudF9r
aWxsYWJsZSgmd2YtPndha2VyZWYsCj4gLQkJCQkgICAgICAgIWludGVsX3dha2VyZWZfaXNfYWN0
aXZlKHdmKSk7Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWVyciA9IHdhaXRfdmFyX2V2ZW50X2tpbGxh
YmxlKCZ3Zi0+d2FrZXJlZiwKPiArCQkJCSAgICAgICFpbnRlbF93YWtlcmVmX2lzX2FjdGl2ZSh3
ZikpOwo+ICsJaWYgKGVycikKPiArCQlyZXR1cm4gZXJyOwo+ICsKPiArCWludGVsX3dha2VyZWZf
dW5sb2NrX3dhaXQod2YpOwo+ICsJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lk
IHdha2VyZWZfYXV0b190aW1lb3V0KHN0cnVjdCB0aW1lcl9saXN0ICp0KQo+IAoKUmV2aWV3ZWQt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
