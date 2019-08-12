Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEDB8A00C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 15:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89806E524;
	Mon, 12 Aug 2019 13:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411106E524
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 13:50:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 06:50:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="200135332"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.66.98.236])
 ([10.66.98.236])
 by fmsmga004.fm.intel.com with ESMTP; 12 Aug 2019 06:50:10 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190730224753.14907-1-jose.souza@intel.com>
 <20190730224753.14907-4-jose.souza@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <0d587aab-b706-fe1f-095a-002e51dab820@intel.com>
Date: Mon, 12 Aug 2019 19:20:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730224753.14907-4-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 4/4] drm/i915: Add transcoder restriction
 to PSR2
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

CgpPbiA3LzMxLzIwMTkgNDoxNyBBTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBB
Y2NvcmRpbmcgdG8gUFNSMl9DVEwgZGVmaW5pdGlvbiBvbiBCU3BlYyB0aGVyZSBpcyBvbmx5IG9u
ZSBpbnN0YW5jZQo+IG9mIFBTUjJfQ1RMIGFsc28gSUNMIGRpc3BsYXkgb3ZlcnZpZXcgc3RhdGUg
dGhhdCBQU1IyIGlzIG9ubHkKPiBzdXBwb3J0ZWQgaW4gRURQIHRyYW5zY29kZXIsIHNvIG5vdyB0
aGF0IGlzIHBvc3NpYmxlIHRvIGhhdmUgUFNSIGluCj4gYW55IHRyYW5zY29kZXIgbGV0cyBhZGQg
dGhpcyBoYXJkd2FyZSByZXN0cmljdGlvbi4KPiAKPiBCU3BlYzogNzcxMwo+IEJTcGVjOiAyMDU4
NAo+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNv
bT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDUgKysrKysK
PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCBmMDZiNGEwYjllMjYuLjUyNjk5MDc2N2M1
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC01
NDUsNiArNTQ1LDExIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gICAJaWYgKCFkZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9z
dXBwb3J0KQo+ICAgCQlyZXR1cm4gZmFsc2U7Cj4gICAKPiArCWlmIChjcnRjX3N0YXRlLT5jcHVf
dHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0VEUCkgewo+ICsJCURSTV9ERUJVR19LTVMoIlBTUjIg
aXMgb25seSBzdXBwb3J0ZWQgaW4gRURQIHRyYW5zY29kZXJcbiIpOwo+ICsJCXJldHVybiBmYWxz
ZTsKPiArCX0KPiArClRHTCBzdXBwb3J0cyBQU1IyIG9uIFRSQU5TQ09ERVJfQSwgYW0gaSBtaXNz
aW5nIGFueXRoaW5nIGhlcmU/Cj4gICAJLyoKPiAgIAkgKiBEU0MgYW5kIFBTUjIgY2Fubm90IGJl
IGVuYWJsZWQgc2ltdWx0YW5lb3VzbHkuIElmIGEgcmVxdWVzdGVkCj4gICAJICogcmVzb2x1dGlv
biByZXF1aXJlcyBEU0MgdG8gYmUgZW5hYmxlZCwgcHJpb3JpdHkgaXMgZ2l2ZW4gdG8gRFNDCj4g
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
