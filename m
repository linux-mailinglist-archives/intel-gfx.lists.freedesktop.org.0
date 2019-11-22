Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62689105F01
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 04:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408EC6E126;
	Fri, 22 Nov 2019 03:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7CE96E126
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 03:28:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 19:28:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,228,1571727600"; d="scan'208";a="205283492"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2019 19:28:06 -0800
Date: Fri, 22 Nov 2019 08:57:26 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191122032726.GA27545@intel.com>
References: <20191121101226.10779-2-ramalingam.c@intel.com>
 <20191121111231.9552-1-ramalingam.c@intel.com>
 <20191121182909.g2qajp2nqtrirms4@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121182909.g2qajp2nqtrirms4@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0yMSBhdCAxMDoyOTowOSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IE9uIFRodSwgTm92IDIxLCAyMDE5IGF0IDA0OjQyOjMxUE0gKzA1MzAsIFJhbWFsaW5nYW0gQyB3
cm90ZToKPiA+ICsJLyogV2FfMTYwNDU1NTYwNzp0Z2wgKi8KPiA+ICsJdmFsID0gaW50ZWxfdW5j
b3JlX3JlYWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUyKTsKPiA+ICsJdmFsICY9IH5GRl9NT0RF
Ml9URFNfVElNRVJfTUFTSzsKPiA+ICsJdmFsIHw9IEZGX01PREUyX1REU19USU1FUl8xMjg7Cj4g
PiArCV9fd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1F
Ul9NQVNLLCB2YWwsCj4gPiArCQkJICAgICBJU19UR0xfUkVWSUQoZW5naW5lLT5pOTE1LCAwLCBU
R0xfUkVWSURfQTApID8gMDoKPiAKPiBpc24ndCBpdCBicm9rZW4gdW50aWwgQjAgcmF0aGVyIHRo
YW4gb25seSBvbiBBMD8gSSB0aGluayB3ZSBjb3VsZCBqdXN0Cj4gZGlzYWJsZSB0aGUgcmVhZCBi
YWNrIGZvciBhbGwgcmV2cyBhbmQgdGhlbiBzZWxlY3RpdmVseSBlbmFibGUgaXQKPiBmb3IgbGF0
ZXIuCgpUaG91Z2h0IG9mIGV4Y2x1ZGluZyB0aGUgdmVyaWZpY2F0aW9uIHdoZW4gdGhlIG5ldyBz
dGVwcGluZyBjb21lcyBpbi4KSGVuY2UgZXhjbHVkZWQgZm9yIGV4aXN0aW5nIHN0ZXBwaW5nIGFs
b25lLgoKRXZlbiB5b3VyIHN1Z2dlc3Rpb24gc291bmRzIGdvb2QgdG8gbWUuIEkgd2lsbCBnbyB3
aXRoIGl0LiBXaXRoIGEgRklYTUUKTm90ZSB0byBpbmRpY2F0ZSB0aGF0IHdlIG5lZWQgdG8gZW5h
YmxlIGZvciBjYXBhYmxlIHN0ZXBwaW5ncy4KCi1SYW0KPiAKPiBMdWNhcyBEZSBNYXJjaGkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
