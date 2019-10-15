Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B303D76B7
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 14:43:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650D389128;
	Tue, 15 Oct 2019 12:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F265689128
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 12:43:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 05:43:09 -0700
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="185799557"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Oct 2019 05:43:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
 <20191014220534.1662-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <70bfa0de-8e48-6405-8693-a78f45646ef8@linux.intel.com>
Date: Tue, 15 Oct 2019 13:43:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191014220534.1662-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/execlist: Trim immediate
 timeslice expiry
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

Ck9uIDE0LzEwLzIwMTkgMjM6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBwZXJmb3JtIHRp
bWVzbGljaW5nIGltbWVkaWF0ZWx5IHVwb24gcmVjZWlwdCBvZiBhIHJlcXVlc3QgdGhhdCBtYXkg
YmUKPiBwdXQgaW50byB0aGUgc2Vjb25kIEVMU1Agc2xvdC4gVGhlIGlkZWEgYmVoaW5kIHRoaXMg
d2FzIHRoYXQgc2luY2Ugd2UKPiBkaWRuJ3QgaW5zdGFsbCB0aGUgdGltZXIgaWYgdGhlIHNlY29u
ZCBFTFNQIHNsb3Qgd2FzIGVtcHR5LCB3ZSB3b3VsZCBub3QKPiBoYXZlIGFueSBpZGVhIG9mIGhv
dyBsb25nIEVMU1BbMF0gaGFkIGJlZW4gcnVubmluZyBhbmQgc28gZ2l2aW5nIHRoZQo+IG5ld2Nv
bWVyIGEgY2hhbmNlIG9uIHRoZSBHUFUgd2FzIGZhaXIuIEhvd2V2ZXIsIHRoaXMgY2F1c2VzIHVz
IGV4dHJhCj4gYnVzeSB3b3JrIHRoYXQgd2UgbWF5IGJlIGFibGUgdG8gYXZvaWQgaWYgd2Ugd2Fp
dCBhIGppZmZpZSBmb3IgdGhlIGZpcnN0Cj4gdGltZXNsaWNlIGFzIG5vcm1hbC4KID4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNiArKysrLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA2MGU4OTdjMDAwYjIuLmY5YmY3ODAzMmFk
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTE2MTMsNyArMTYx
Myw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKPiAgIAkJCWxhc3QtPmh3X2NvbnRleHQtPmxyY19kZXNjIHw9IENUWF9ERVND
X0ZPUkNFX1JFU1RPUkU7Cj4gICAJCQlsYXN0ID0gTlVMTDsKPiAgIAkJfSBlbHNlIGlmIChuZWVk
X3RpbWVzbGljZShlbmdpbmUsIGxhc3QpICYmCj4gLQkJCSAgICF0aW1lcl9wZW5kaW5nKCZlbmdp
bmUtPmV4ZWNsaXN0cy50aW1lcikpIHsKPiArCQkJICAgdGltZXJfZXhwaXJlZCgmZW5naW5lLT5l
eGVjbGlzdHMudGltZXIpKSB7Cgp0aW1lcl9leHBpcmVkIGlzICF0aW1lcl9wZW5kaW5nKC4uKSAm
JiB0LT5leHBpcmVzLiBQcmVzdW1hYmx5IHRoYXQgbWVhbnMgCml0IHdhcyBzY2hlZHVsZWQgYXQg
bGVhc3Qgb25jZSBpbiB0aGUgcGFzdCBidXQgY3VycmVudGx5IGlzbid0LiBUaGVuIAppbW1lZGlh
dGVseSBhZnRlciB0aGUgZmlyc3QgdGltZXIgdGhlIHQtPmV4cGlyZXMgY2hlY2sgYmVjb21lcyB1
c2VsZXNzPyAKSSBtdXN0IGJlIG1pc3Npbmcgc29tZXRoaW5nLi4gT2gsIHlvdSBoYXZlIHBpZ2d5
LWJhY2tlZCBzb21lIGN1c3RvbSBjb2RlIAp0byB0aW1lcnMuLiBobS4uIExvb2tzIGxpa2UgaXQg
d291bGQgd29yay4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwoKPiAgIAkJCUdFTV9UUkFDRSgiJXM6IGV4cGly
ZWQgbGFzdD0lbGx4OiVsbGQsIHByaW89JWQsIGhpbnQ9JWRcbiIsCj4gICAJCQkJICBlbmdpbmUt
Pm5hbWUsCj4gICAJCQkJICBsYXN0LT5mZW5jZS5jb250ZXh0LAo+IEBAIC0yMDc0LDYgKzIwNzQs
OCBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4gICAKPiAgIAkJCWlmIChlbmFibGVfdGltZXNsaWNlKGV4ZWNsaXN0cykpCj4gICAJCQkJ
bW9kX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyLCBqaWZmaWVzICsgMSk7Cj4gKwkJCWVsc2UKPiAr
CQkJCWNhbmNlbF90aW1lcigmZXhlY2xpc3RzLT50aW1lcik7Cj4gICAKPiAgIAkJCVdSSVRFX09O
Q0UoZXhlY2xpc3RzLT5wZW5kaW5nWzBdLCBOVUxMKTsKPiAgIAkJfSBlbHNlIHsKPiBAQCAtMzU5
MSw3ICszNTkzLDcgQEAgZ2VuMTJfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNzKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCj4gICAKPiAgIHN0YXRpYyB2b2lkIGV4ZWNsaXN0
c19wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgIHsKPiAtCWRlbF90aW1l
cigmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOwo+ICsJY2FuY2VsX3RpbWVyKCZlbmdpbmUtPmV4
ZWNsaXN0cy50aW1lcik7Cj4gICAJY2FuY2VsX3RpbWVyKCZlbmdpbmUtPmV4ZWNsaXN0cy5wcmVl
bXB0KTsKPiAgIH0KPiAgIAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
