Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0538D48A04
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 19:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B17891B5;
	Mon, 17 Jun 2019 17:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB06891B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 17:24:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 10:24:27 -0700
X-ExtLoop1: 1
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2019 10:24:26 -0700
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190617082413.22549-1-mika.kahola@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <dda590c5-95fd-30c0-a718-e5b2c28fbf76@intel.com>
Date: Mon, 17 Jun 2019 09:24:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617082413.22549-1-mika.kahola@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Add missing device ID
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

TG9va3MgY29ycmVjdC8KClJldmlld2VkLWJ5OiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXls
b3JAaW50ZWwuY29tPgoKLUNsaW50CgoKT24gNi8xNy8xOSAxOjI0IEFNLCBNaWthIEthaG9sYSB3
cm90ZToKPiBXZSBhcmUgbWlzc2luZyBQQ0kgZGV2aWNlIElEIGZvciBTS1UgSUNMTFAgVSBHVCAx
LjVGICgweDhBNTQpIGFzIHBlciBCU1BlYy4KPgo+IEJTcGVjOiAxOTA5Mgo+Cj4gU2lnbmVkLW9m
Zi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPiAtLS0KPiAgIGluY2x1
ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCAzICsrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVf
cGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCj4gaW5kZXggNmQ2MGVhNjhjMTcx
Li42YzM0MmFjNDcwYzggMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+
ICsrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiBAQCAtNTY4LDcgKzU2OCw4IEBACj4g
ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTYsIGluZm8pLCBcCj4gICAJSU5URUxfVkdBX0RFVklD
RSgweDhBNzEsIGluZm8pLCBcCj4gICAJSU5URUxfVkdBX0RFVklDRSgweDhBNzAsIGluZm8pLCBc
Cj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MywgaW5mbykKPiArCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg4QTUzLCBpbmZvKSwgXAo+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTQsIGluZm8pCj4gICAK
PiAgICNkZWZpbmUgSU5URUxfSUNMXzExX0lEUyhpbmZvKSBcCj4gICAJSU5URUxfSUNMX1BPUlRf
Rl9JRFMoaW5mbyksIFwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
