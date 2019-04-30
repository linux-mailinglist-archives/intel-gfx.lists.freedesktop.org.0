Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B70F18A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 09:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04DA98946E;
	Tue, 30 Apr 2019 07:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AAB98946E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 07:41:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 00:41:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="169212004"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 00:41:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190430064206.32443-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190430064206.32443-1-stanislav.lisovskiy@intel.com>
Date: Tue, 30 Apr 2019 10:43:51 +0300
Message-ID: <8736m0rl8o.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzMCBBcHIgMjAxOSwgU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IEN1cnJlbnRseSBkdWUgdG8gcmVncmVzc2lvbiBDSSBt
YWNoaW5lCj4gZGlzcGxheXMgc2hvdyBjb3JydXB0IHBpY3R1cmUuCj4gUHJvYmxlbSBpcyB3aGVu
IENEQ0xLIGlzIGFzIGxvdyBhcyA3OTIwMCwgcGljdHVyZSBnZXRzCj4gdW5zdGFibGUsIHdoaWxl
IERTSSBhbmQgREUgcGxsIHZhbHVlcyB3ZXJlCj4gY29uZmlybWVkIHRvIGJlIGNvcnJlY3QuCj4g
TGltaXRpbmcgdG8gMTU4NDAwIGFzIGFncmVlZCB3aXRoIFZpbGxlLgo+Cj4gV2UgY291bGQgbm90
IGNvbWUgdXAgd2l0aCBhbnkgYmV0dGVyIHNvbHV0aW9uCj4geWV0LCBhcyBQTEwgZGl2aWRlciB2
YWx1ZXMgYm90aCBmb3IgTUlQSShEU0kgUExMKSBhbmQKPiBDRENMSyhERSBQTEwpIGFyZSBjb3Jy
ZWN0LCBob3dldmVyIHNlZW1zIHRoYXQgZHVlIHRvIHNvbWUKPiBib3VuZGFyeSBjb25kaXRpb25z
LCB3aGVuIGNsb2NraW5nIGlzIHRvbyBsb3cgd2UgZ2V0Cj4gd3JvbmcgdGltaW5ncyBmb3IgRFNJ
IGRpc3BsYXkuCj4gU2ltaWxhciB3b3JrYXJvdW5kIGV4aXN0cyBmb3IgVkxWIHRob3VnaCwgc28g
anVzdAo+IHRvb2sgc2ltaWxhciBjb25kaXRpb24gaW50byB1c2UuIEF0IGxlYXN0IHRoYXQgd2F5
Cj4gR0xLIHBsYXRmb3JtIHdpbGwgc3RhcnQgdG8gYmUgdXNhYmxlIGFnYWluLCB3aXRoCj4gY3Vy
cmVudCBkcm0tdGlwLgo+Cj4gdjI6IEZpeGVkIGNvbW1pdCBzdWJqZWN0IGFzIHN1Z2dlc3RlZC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNr
aXlAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgoKRG8gd2UgaGF2ZSBhIGJ1Z3ppbGxhIGxpbms/CgpCUiwKSmFuaS4K
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIHwgOSArKysrKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jZGNsay5jCj4gaW5kZXggYWU0MGE4Njc5MzE0Li4yYjIzZjg1MDAzNjIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKPiBAQCAtMjI3Nyw2ICsyMjc3LDE1IEBAIGludCBp
bnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQo+ICAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQo+ICAJCW1pbl9j
ZGNsayA9IG1heCgzMjAwMDAsIG1pbl9jZGNsayk7Cj4gIAo+ICsJLyoKPiArCSAqIE9uIEdlbWlu
aWxha2Ugb25jZSB0aGUgQ0RDTEsgZ2V0cyBhcyBsb3cgYXMgNzkyMDAKPiArCSAqIHBpY3R1cmUg
Z2V0cyB1bnN0YWJsZSwgZGVzcGl0ZSB0aGF0IHZhbHVlcyBhcmUKPiArCSAqIGNvcnJlY3QgZm9y
IERTSSBQTEwgYW5kIERFIFBMTC4KPiArCSAqLwo+ICsJaWYgKGludGVsX2NydGNfaGFzX3R5cGUo
Y3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgJiYKPiArCSAgICBJU19HRU1JTklMQUtFKGRl
dl9wcml2KSkKPiArCQltaW5fY2RjbGsgPSBtYXgoMTU4NDAwLCBtaW5fY2RjbGspOwo+ICsKPiAg
CWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpIHsKPiAgCQlEUk1fREVC
VUdfS01TKCJyZXF1aXJlZCBjZGNsayAoJWQga0h6KSBleGNlZWRzIG1heCAoJWQga0h6KVxuIiwK
PiAgCQkJICAgICAgbWluX2NkY2xrLCBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpOwoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
