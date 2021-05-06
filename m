Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA5C375C87
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 23:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C3D6ECEB;
	Thu,  6 May 2021 21:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFC16ECEB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 21:03:46 +0000 (UTC)
IronPort-SDR: j/CeLgGtS/iJ6TONC66mqPHcm7Im1Gd9yUdmjuBZveJ4d51Ge+AQ6yaXN9hAVlbOoGAJqsgYJG
 N5cv1x7LW+RQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="186043729"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="186043729"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 14:03:46 -0700
IronPort-SDR: bYpNtLQBRRQB2Ypx6aEJN1Y/yPY724sE5neqiPudxj0fNgd3OYiVxpwE46rdjaBhyWQikq9A65
 IeOPanV0DPXQ==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="397359152"
Received: from dmroach-mobl2.amr.corp.intel.com (HELO [10.212.14.150])
 ([10.212.14.150])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 14:03:45 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210506161930.309688-1-imre.deak@intel.com>
 <20210506161930.309688-8-imre.deak@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <4a8700c3-149c-867c-1640-f5cf233c875c@intel.com>
Date: Thu, 6 May 2021 14:03:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210506161930.309688-8-imre.deak@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 07/10] drm/i915/adl_p: Add stride
 restriction when using DPT
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

Ck9uIDUvNi8yMSA5OjE5IEFNLCBJbXJlIERlYWsgd3JvdGU6Cj4gRnJvbTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4KPiBBbGRlcmxha2UtUCBoYXZlIGEg
bmV3IHN0cmlkZSByZXN0cmljdGlvbiB3aGVuIHVzaW5nIERQVCBhbmQgaXQgaXMgdXNlZAo+IGJ5
IG5vbiBsaW5lYXIgZnJhbWVidWZmZXJzLiBTdHJpZGUgbmVlZHMgdG8gYmUgYSBwb3dlciBvZiB0
d28gdG8gdGFrZQo+IGZ1bGwgRFBUIHJvd3MsIGJ1dCBzdHJpZGUgaXMgYSBwYXJhbWV0ZXIgc2V0
IGJ5IHVzZXJzcGFjZS4KPgo+IFdoYXQgd2UgY291bGQgZG8gaXMgdXNlIGEgZmFrZSBzdHJpZGUg
d2hlbiBkb2luZyBEUFQgYWxsb2NhdGlvbiBzbwo+IEhXIHJlcXVpcmVtZW50cyBhcmUgbWV0IGFu
ZCB1c2Vyc3BhY2UgZG9uJ3QgbmVlZCB0byBiZSBjaGFuZ2VkIHRvCj4gbWV0IHRoaXMgcG93ZXIg
b2YgdHdvIHJlc3RyaWN0aW9ucyBidXQgdGhpcyBjaGFuZ2Ugd2lsbCB0YWtlIGEgd2hpbGUKPiB0
byBiZSBpbXBsZW1lbnRlZCBzbyBmb3Igbm93IGFkZGluZyB0aGlzIHJlc3RyaWN0aW9uIGluIGRy
aXZlciB0bwo+IHJlamVjdCBhdG9taWMgY29tbWl0cyB0aGF0IHdvdWxkIGNhdXNlIHZpc3VhbCBj
b3JydXB0aW9ucy4KPgo+IEJTcGVjOiA1MzM5Mwo+IEFja2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDkgKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4
IDI5MjM5NjA1OGU3NWQuLjcwYWMxOTc3NDZiMWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xMTU2Niw2ICsxMTU2NiwxNSBAQCBz
dGF0aWMgaW50IGludGVsX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVy
ICppbnRlbF9mYiwKPiAgIAkJCX0KPiAgIAkJfQo+ICAgCj4gKwkJaWYgKElTX0FMREVSTEFLRV9Q
KGRldl9wcml2KSAmJgo+ICsJCSAgICBtb2RlX2NtZC0+bW9kaWZpZXJbaV0gIT0gRFJNX0ZPUk1B
VF9NT0RfTElORUFSICYmCj4gKwkJICAgICFpc19wb3dlcl9vZl8yKG1vZGVfY21kLT5waXRjaGVz
W2ldKSkgewo+ICsJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKPiArCQkJCSAgICAicGxh
bmUgJWQgcGl0Y2ggKCVkKSBtdXN0IGJlIHBvd2VyIG9mIHR3byBmb3IgdGlsZWQgYnVmZmVyc1xu
IiwKPiArCQkJCSAgICBpLCBtb2RlX2NtZC0+cGl0Y2hlc1tpXSk7Cj4gKwkJCWdvdG8gZXJyOwo+
ICsJCX0KPiArClJldmlld2VkLWJ5OiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50
ZWwuY29tPgo+ICAgCQlmYi0+b2JqW2ldID0gJm9iai0+YmFzZTsKPiAgIAl9Cj4gICAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
