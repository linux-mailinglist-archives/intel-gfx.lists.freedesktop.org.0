Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FF5F0A3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 08:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B971893D5;
	Tue, 30 Apr 2019 06:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E330893D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 06:41:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 23:41:29 -0700
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="138633041"
Received: from mlankhor-desk.ger.corp.intel.com (HELO [10.249.33.54])
 ([10.249.33.54])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES128-SHA;
 29 Apr 2019 23:41:26 -0700
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190429151023.25892-1-stanislav.lisovskiy@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <462e608a-6d17-6b6e-1742-60892accd56c@linux.intel.com>
Date: Tue, 30 Apr 2019 08:41:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429151023.25892-1-stanislav.lisovskiy@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bug for GeminiLake
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
Cc: ville.syrjala@intel.com, martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjktMDQtMjAxOSBvbSAxNzoxMCBzY2hyZWVmIFN0YW5pc2xhdiBMaXNvdnNraXk6Cj4gV2hl
biBDRENMSyBpcyBhcyBsb3cgYXMgNzkyMDAsIHBpY3R1cmUgZ2V0cwo+IHVuc3RhYmxlLCB3aGls
ZSBEU0kgYW5kIERFIHBsbCB2YWx1ZXMgd2VyZQo+IGNvbmZpcm1lZCB0byBiZSBjb3JyZWN0Lgo+
IExpbWl0aW5nIHRvIDE1ODQwMCBhcyBhZ3JlZWQgd2l0aCBWaWxsZS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIHwgOSArKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jZGNsay5jCj4gaW5kZXggYWU0MGE4Njc5MzE0Li4yYjIzZjg1MDAzNjIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKPiBAQCAtMjI3Nyw2ICsyMjc3LDE1IEBAIGludCBpbnRl
bF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ICAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQo+ICAJCW1pbl9jZGNs
ayA9IG1heCgzMjAwMDAsIG1pbl9jZGNsayk7Cj4gIAo+ICsJLyoKPiArCSAqIE9uIEdlbWluaWxh
a2Ugb25jZSB0aGUgQ0RDTEsgZ2V0cyBhcyBsb3cgYXMgNzkyMDAKPiArCSAqIHBpY3R1cmUgZ2V0
cyB1bnN0YWJsZSwgZGVzcGl0ZSB0aGF0IHZhbHVlcyBhcmUKPiArCSAqIGNvcnJlY3QgZm9yIERT
SSBQTEwgYW5kIERFIFBMTC4KPiArCSAqLwo+ICsJaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0
Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgJiYKPiArCSAgICBJU19HRU1JTklMQUtFKGRldl9w
cml2KSkKPiArCQltaW5fY2RjbGsgPSBtYXgoMTU4NDAwLCBtaW5fY2RjbGspOwo+ICsKPiAgCWlm
IChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpIHsKPiAgCQlEUk1fREVCVUdf
S01TKCJyZXF1aXJlZCBjZGNsayAoJWQga0h6KSBleGNlZWRzIG1heCAoJWQga0h6KVxuIiwKPiAg
CQkJICAgICAgbWluX2NkY2xrLCBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpOwoKSGV5LAoKV2l0
aCBhIGJpdCBvZiBsb3ZlIHRvIHRoZSBjb21taXQncyBmaXJzdCBsaW5lLCBJIHRoaW5rIHRoaXMg
cGF0Y2ggbG9va3MgZ29vZC4gOikKCklzIHRoaXMgYmVoYXZpb3IgZG9jdW1lbnRlZCBzb21ld2hl
cmU/Cgp+TWFhcnRlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
