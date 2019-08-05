Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D0082125
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 18:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9186E4E1;
	Mon,  5 Aug 2019 16:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7AB16E4E1
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 16:04:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 08:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="373123046"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 05 Aug 2019 08:57:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190803010944.10169-1-daniele.ceraolospurio@intel.com>
 <156482084765.6598.126150410559329639@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <25f7162e-f73d-db1d-08c9-1d9e20621ee6@intel.com>
Date: Mon, 5 Aug 2019 08:57:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156482084765.6598.126150410559329639@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC] drm/i915/gt: create a subfolder for GT debugfs
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

CgpPbiA4LzMvMTkgMToyNyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wOC0wMyAwMjowOTo0NCkKPj4gVGhlIGlkZWEgaXMgdG8g
YmV0dGVyIG9yZ2FuaXplIG91ciBkZWJ1Z2ZzIGVudHJpZXMgYnkgbW92aW5nIHRoZQo+PiBHVC1y
ZWxhdGVkIG9uZXMgaW50byB0aGVpciBvd24gc3ViZm9sZGVyLCBzaW1pbGFybHkgdG8gd2hhdCB3
ZSBkaWQgZm9yCj4+IHRoZSBrZXJuZWwgY29kZS4KPj4KPj4gQXMgYW4gZXhhbXBsZSwgdGhpcyBw
YXRjaCBtb3ZlcyB0aGUgR3VDL0h1QyBhbmQgdXNlcl9mb3JjZXdha2UgZGVidWdmcywKPj4gYnV0
IGEgZmV3IG1vcmUgZmlsZXMgY2FuIGJlIG1vdmVkIGlmIHdlIGRlY2lkZSB0byBnbyB0aGlzIHdh
eSAoZW5naW5lCj4+IHN0YXR1cywgZ3RfcG0gZXRjKS4gVGVzdCB1cGRhdGVzIHdpbGwgYWxzbyBi
ZSByZXF1aXJlZCB0byBsb29rIGZvciB0aGUKPj4gZmlsZSBpbiB0aGUgY29ycmVjdCBwbGFjZS4K
PiAKPiBRdWljayBxdWVzdGlvbiwgd2h5IHN0b3AgYXQgaW50ZWxfZ3RfZGVidWdmcy5jPyBEbyB3
ZSBub3Qgd2FudCB0byBwdWxsIHRoZQo+IFtnaF11YyBjbG9zZXIgdG8gdGhlIHNvdXJjZSBpLmUu
IGd0L3VjL2ludGVsX3VjX2RlYnVnZnMuYz8KClRoYXQgd29ya3MgZm9yIG1lLiBJIGZpcnN0IHdh
bnRlZCB0byBzZWUgaWYgdGhlIGlkZWEgb2YgdXNpbmcgYSAKc3ViZm9sZGVyIGZvciBHVCB3b3Vs
ZCBmbHkgYmVmb3JlIGRvaW5nIGFueSBwcm9wZXIgcmVmYWN0b3JpbmcuIEkgcGlja2VkIAp0aGUg
dUMgZmlsZXMgYXMgYW4gZXhhbXBsZSBpbiB0aGlzIFJGQyBqdXN0IGJlY2F1c2UgSSBoYXZlIGJl
ZW4gdG91Y2hpbmcgCnRoYXQgYXJlYSByZWNlbnRseSA7KQoKPiAKPiBJJ2QgYWxzbyByZWNvbW1l
bmQgZm9yIGFueSBmdXR1cmUgZGVidWdmcywgd2Ugc3BsaXQgaXQgYmV0d2VlbiB0aGUKPiBkZWJ1
Z2ZzIGhvb2sgYW5kIHRoZSBwcmV0dHkgcHJpbnRlciwgYW5kIHNwaXQgb3V0IHlhbWwgOikKCllv
dSBtZWFuIGhhdmluZyBhIHByZXR0eSBwcmludGVyIHRoYXQgdGFrZXMgYSBrZXk6dmFsdWUgcGFp
cj8gU291bmRzIApyZWFzb25hYmxlLCBidXQgSSB3b3VsZG4ndCBtaXggaXQgd2l0aCBtb3Zpbmcg
dGhlIGZpbGVzIGFyb3VuZC4KCkRhbmllbGUKCj4gLUNocmlzCj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
