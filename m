Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B0CF0BF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 08:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A5089157;
	Tue, 30 Apr 2019 06:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6849889157
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 06:56:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 23:56:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="342056226"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by fmsmga006.fm.intel.com with ESMTP; 29 Apr 2019 23:56:53 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.31]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.189]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 07:56:52 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix bug for GeminiLake
Thread-Index: AQHU/x/MUxtBzz8t/kC/tjRPAbiWSKZURLR8
Date: Tue, 30 Apr 2019 06:56:51 +0000
Message-ID: <A98B49F3E938DC4A837FD9A548D117E6B47DC8AD@irsmsx105.ger.corp.intel.com>
References: <20190429151023.25892-1-stanislav.lisovskiy@intel.com>,
 <462e608a-6d17-6b6e-1742-60892accd56c@linux.intel.com>
In-Reply-To: <462e608a-6d17-6b6e-1742-60892accd56c@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.46]
MIME-Version: 1.0
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pgo+ICsgICAgIC8qCj4gKyAgICAgICogT24gR2VtaW5pbGFrZSBvbmNlIHRoZSBDRENMSyBnZXRz
IGFzIGxvdyBhcyA3OTIwMAo+ICsgICAgICAqIHBpY3R1cmUgZ2V0cyB1bnN0YWJsZSwgZGVzcGl0
ZSB0aGF0IHZhbHVlcyBhcmUKPiArICAgICAgKiBjb3JyZWN0IGZvciBEU0kgUExMIGFuZCBERSBQ
TEwuCj4gKyAgICAgICovCj4gKyAgICAgaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0
ZSwgSU5URUxfT1VUUFVUX0RTSSkgJiYKPiArICAgICAgICAgSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpCj4gKyAgICAgICAgICAgICBtaW5fY2RjbGsgPSBtYXgoMTU4NDAwLCBtaW5fY2RjbGspOwo+
ICsKPiAgICAgICBpZiAobWluX2NkY2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7Cj4g
ICAgICAgICAgICAgICBEUk1fREVCVUdfS01TKCJyZXF1aXJlZCBjZGNsayAoJWQga0h6KSBleGNl
ZWRzIG1heCAoJWQga0h6KVxuIiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWluX2Nk
Y2xrLCBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpOwoKPkhleSwKCj5XaXRoIGEgYml0IG9mIGxv
dmUgdG8gdGhlIGNvbW1pdCdzIGZpcnN0IGxpbmUsIEkgdGhpbmsgdGhpcyBwYXRjaCBsb29rcyBn
b29kLiA6KQoKWWVzLCBJJ3ZlIGp1c3Qgc2VudCBhIHYyIHZlcnNpb24gd2l0aCBhIGJpdCBtb3Jl
IGRldGFpbGVkIGV4cGxhbmF0aW9uIDopCgo+SXMgdGhpcyBiZWhhdmlvciBkb2N1bWVudGVkIHNv
bWV3aGVyZT8KCkluIGZhY3Qgbm8sIHRoZXJlIGFyZSBzaW1pbGFyIGlzc3VlcyB3aXRoIFZMViBz
byBJIGFjdHVhbGx5IHNpbXBseQp1c2VkIHNpbWlsYXIgYXBwcm9hY2guIFdlIHdlcmUgZmlyc3Qg
c3VzcGVjdGluZyB0aGF0IHdlIGdldCB0byBoaWdoCkRTSSBQTEwgZGl2aWRlcnMgZHVlIHRvIGFn
cmVzc2l2ZSByb3VuZGluZywgc28gdHJpZWQgZGlmZmVyZW50IHJhdGlvcywKaG93ZXZlciBubyBz
dWNjZXNzLiBBbHNvIENEQ0xLIGNsb2NraW5nIHNlZW1zIHRvIGJlIGNvcnJlY3QsIGhvd2V2ZXIK
ZGlzcGxheSBsb29rcyBsaWtlIGNvbXBsZXRlIGdhcmJhZ2UuIEFueSBvdGhlciBDRENMSyBjbG9j
ayA+IDc5MjAwIGZvciBEU0kgc29sdmVzIHRoZSBpc3N1ZS4KCi1TdGFuaXNsYXYKCj5+TWFhcnRl
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
