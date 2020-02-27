Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 391ED172B72
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771606ED6C;
	Thu, 27 Feb 2020 22:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D8E89E3E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:35:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227328537"
Received: from auscilow-mobl.ger.corp.intel.com (HELO [10.249.138.76])
 ([10.249.138.76])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 14:35:56 -0800
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-10-jose.souza@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <dbad5d17-70a2-fb88-1937-d93cab95185d@intel.com>
Date: Fri, 28 Feb 2020 00:35:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200227220101.321671-10-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 10/11] drm/i915/tgl: Add Wa number to
 WaAllowPMDepthAndInvocationCountAccessFromUMD
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gMjgvMDIvMjAyMCAwMDowMSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBKdXN0
IHRvIG1ha2UgZWFzaWVyIHRvIGNoZWNrIHRoYXQgdGhlIFdhIHdhcyBpbXBsZW1ldGVuZCB3aGVu
Cj4gY29tcGFyaW5nIHRvIHRoZSBudW1iZXIgaW4gQlNwZWMuCj4KPiBCU3BlYzogNTI4OTAKPiBT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGlu
dGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggYmEwMjY1NzYz
NDg0Li4zZTM3NWEzYjc3MTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKPiBAQCAtMTI1NCw2ICsxMjU0LDcgQEAgc3RhdGljIHZvaWQgdGdsX3do
aXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAJY2FzZSBS
RU5ERVJfQ0xBU1M6Cj4gICAJCS8qCj4gICAJCSAqIFdhQWxsb3dQTURlcHRoQW5kSW52b2NhdGlv
bkNvdW50QWNjZXNzRnJvbVVNRDp0Z2wKPiArCQkgKiBXYV8xNDA4NTU2ODY1OnRnbAo+ICAgCQkg
Kgo+ICAgCQkgKiBUaGlzIGNvdmVycyA0IHJlZ2lzdGVycyB3aGljaCBhcmUgbmV4dCB0byBvbmUg
YW5vdGhlciA6Cj4gICAJCSAqICAgLSBQU19JTlZPQ0FUSU9OX0NPVU5UCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
