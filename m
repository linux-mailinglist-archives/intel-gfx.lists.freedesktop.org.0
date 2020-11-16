Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0872B4E9D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 18:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA316E047;
	Mon, 16 Nov 2020 17:58:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737986E047;
 Mon, 16 Nov 2020 17:58:23 +0000 (UTC)
IronPort-SDR: dFOQ39bNjmA5159gWZvm0A+afwERhwVxgNWq/cdE/ITudNLCzscwJDzYD0W+ZjxA1sXfFcFiw2
 4M6kPkPllviQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="232403138"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="232403138"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:58:22 -0800
IronPort-SDR: UDferuuLCzz1YV3NI1ThTSglZfb8+f6aIb1kQgJD8DmdaHsIiwECbjMzJdebJRRVfKlYoVsLLc
 tXZbcg94kS+Q==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="475615155"
Received: from plos-mobl1.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.1.122])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:58:21 -0800
Date: Mon, 16 Nov 2020 18:58:17 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201116175817.GA3946@zkempczy-mobl2>
References: <20201116172653.4030093-1-tvrtko.ursulin@linux.intel.com>
 <20201116172653.4030093-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116172653.4030093-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/5] lib/igt_device_scan: Remember PCI
 card index after scanning
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMDU6MjY6NTFQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBBZnRlciBkZXZpY2VzIGFyZSBzb3J0ZWQgcG9zdCBzY2FubmluZywgYXNzaW5nIGEgY2Fy
ZCBpbmRleCB0byBlYWNoIHNvIGl0Cj4gY2FuIGJlIGVhc2lseSBhY2Nlc3NlZCBpZiBQQ0kgZmls
dGVyIGZvciBhIGNhcmQgbmVlZHMgdG8gYmUgcHJpbnRlZCBvdXQuCj4gCj4gdjI6Cj4gICogUHJl
c2VydmUgZXhpc3RpbmcgcGNpOi4uY2FyZD1OIGJlaGF2aW91ci4gKFpiaWduaWV3KQo+IAo+IFNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
Q2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+IENjOiBaYmlnbmll
dyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KPiAtLS0KPiAg
bGliL2lndF9kZXZpY2Vfc2Nhbi5jIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvbGli
L2lndF9kZXZpY2Vfc2Nhbi5jIGIvbGliL2lndF9kZXZpY2Vfc2Nhbi5jCj4gaW5kZXggYzBjZDY3
NTdmYzI3Li5lY2I4ZGIyOTdmODYgMTAwNjQ0Cj4gLS0tIGEvbGliL2lndF9kZXZpY2Vfc2Nhbi5j
Cj4gKysrIGIvbGliL2lndF9kZXZpY2Vfc2Nhbi5jCj4gQEAgLTE2Niw2ICsxNjYsNyBAQCBzdHJ1
Y3QgaWd0X2RldmljZSB7Cj4gIAljaGFyICp2ZW5kb3I7Cj4gIAljaGFyICpkZXZpY2U7Cj4gIAlj
aGFyICpwY2lfc2xvdF9uYW1lOwo+ICsJaW50IGdwdV9pbmRleDsgLyogRm9yIG1vcmUgdGhhbiBv
bmUgR1BVIHdpdGggc2FtZSB2ZW5kb3IgYW5kIGRldmljZS4gKi8KPiAgCj4gIAlzdHJ1Y3QgaWd0
X2xpc3RfaGVhZCBsaW5rOwo+ICB9Owo+IEBAIC02MDEsNiArNjAyLDMzIEBAIHN0YXRpYyB2b2lk
IHNvcnRfYWxsX2RldmljZXModm9pZCkKPiAgCWZyZWUoZGV2cyk7Cj4gIH0KPiAgCj4gK3N0YXRp
YyB2b2lkIGluZGV4X3BjaV9kZXZpY2VzKHZvaWQpCj4gK3sKPiArCXN0cnVjdCBpZ3RfZGV2aWNl
ICpkZXY7Cj4gKwo+ICsJaWd0X2xpc3RfZm9yX2VhY2hfZW50cnkoZGV2LCAmaWd0X2RldnMuYWxs
LCBsaW5rKSB7Cj4gKwkJc3RydWN0IGlndF9kZXZpY2UgKmRldjI7Cj4gKwkJaW50IGluZGV4ID0g
MDsKPiArCj4gKwkJaWYgKCFpc19wY2lfc3Vic3lzdGVtKGRldikpCj4gKwkJCWNvbnRpbnVlOwo+
ICsKPiArCQlpZ3RfbGlzdF9mb3JfZWFjaF9lbnRyeShkZXYyLCAmaWd0X2RldnMuYWxsLCBsaW5r
KSB7Cj4gKwkJCWlmICghaXNfcGNpX3N1YnN5c3RlbShkZXYyKSkKPiArCQkJCWNvbnRpbnVlOwo+
ICsKPiArCQkJaWYgKGRldjIgPT0gZGV2KQo+ICsJCQkJYnJlYWs7Cj4gKwo+ICsJCQlpZiAoIXN0
cmNhc2VjbXAoZGV2LT52ZW5kb3IsIGRldjItPnZlbmRvcikgJiYKPiArCQkJICAgICFzdHJjYXNl
Y21wKGRldi0+ZGV2aWNlLCBkZXYyLT5kZXZpY2UpKQo+ICsJCQkJaW5kZXgrKzsKPiArCQl9Cj4g
Kwo+ICsJCWRldi0+Z3B1X2luZGV4ID0gaW5kZXg7Cj4gKwl9Cj4gK30KPiArCj4gIC8qIENvcmUg
c2Nhbm5pbmcgZnVuY3Rpb24uCj4gICAqCj4gICAqIEFsbCBzY2FubmVkIGRldmljZXMgYXJlIGtl
cHQgaW5zaWRlIGlndF9kZXZzLmFsbCBwb2ludGVyIGFycmF5Lgo+IEBAIC02NTcsNiArNjg1LDcg
QEAgc3RhdGljIHZvaWQgc2Nhbl9kcm1fZGV2aWNlcyh2b2lkKQo+ICAJdWRldl91bnJlZih1ZGV2
KTsKPiAgCj4gIAlzb3J0X2FsbF9kZXZpY2VzKCk7Cj4gKwlpbmRleF9wY2lfZGV2aWNlcygpOwo+
ICAKPiAgCWlndF9saXN0X2Zvcl9lYWNoX2VudHJ5KGRldiwgJmlndF9kZXZzLmFsbCwgbGluaykg
ewo+ICAJCXN0cnVjdCBpZ3RfZGV2aWNlICpkZXZfZHVwID0gZHVwbGljYXRlX2RldmljZShkZXYp
Owo+IC0tIAo+IDIuMjUuMQo+IAoKWWVzLCBpdCBpcyBvayBub3cuCgpSZXZpZXdlZC1ieTogWmJp
Z25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+CgotLQpa
YmlnbmlldyAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
