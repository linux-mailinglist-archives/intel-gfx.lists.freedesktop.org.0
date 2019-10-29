Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DF9E8841
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 13:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A964B6E1FB;
	Tue, 29 Oct 2019 12:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7866E1FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 12:33:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 05:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="230041504"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 29 Oct 2019 05:33:23 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x9TCXMlj010894; Tue, 29 Oct 2019 12:33:22 GMT
To: intel-gfx@lists.freedesktop.org, don.hiatt@intel.com
References: <20191028212527.24401-1-don.hiatt@intel.com>
Date: Tue, 29 Oct 2019 13:33:22 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0ae85w05xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20191028212527.24401-1-don.hiatt@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOCBPY3QgMjAxOSAyMjoyNToyNyArMDEwMCwgPGRvbi5oaWF0dEBpbnRlbC5jb20+
IHdyb3RlOgoKPiBGcm9tOiBEb24gSGlhdHQgPGRvbi5oaWF0dEBpbnRlbC5jb20+Cj4KPiBPbiBz
b21lIHBsYXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBvcnQgR3VDIHN1Ym1pc3Np
b24sIGJ1dAo+IHRoZSB1c2VyIGVuYWJsZWQgdGhlIEd1QyBjb21tdW5pY2F0aW9uIChlLmcgZm9y
IEh1QyBhdXRoZW50aWNhdGlvbikKPiBjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlv
biByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0eSB0bwo+IGVudGVyIFJDNi4gV2UgY2FuIHJlbW92
ZSB0aGUgR3VDIHN1c3BlbmQvcmVtb3ZlIGVudGlyZWx5IGFzIHdlIGRvCj4gbm90IG5lZWQgdG8g
c2F2ZSB0aGUgR3VDIHN1Ym1pc3Npb24gc3RhdHVzLgo+Cj4gdjI6IERvIG5vdCBzdXNwZW5kL3Jl
c3VtZSB0aGUgR3VDIG9uIHBsYXRmb3JtcyB0aGF0IGRvIG5vdCBzdXBwb3J0Cj4gICAgIEd1YyBT
dWJtaXNzaW9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMTcg
KysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jICAKPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBpbmRleCAzZmRiYzkzNWQx
NTUuLjA0MDMxNTY0ZjBiMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
Ywo+IEBAIC01NzIsMTAgKzU3MiwxOSBAQCB2b2lkIGludGVsX3VjX3J1bnRpbWVfc3VzcGVuZChz
dHJ1Y3QgaW50ZWxfdWMgKnVjKQo+ICAJaWYgKCFpbnRlbF9ndWNfaXNfcnVubmluZyhndWMpKQo+
ICAJCXJldHVybjsKPiArCS8qCj4gKwkgKiBJZiBHdUMgY29tbXVuY2lhdGlvbiBpcyBlbmFibGVk
IGJ1dCBzdWJtaXNzaW9uIGlzIG5vdCBzdXBwb3J0ZWQsCgp0eXBvCgo+ICsJICogd2UgZG8gbm90
IG5lZWQgdG8gc3VzcGVuZCB0aGUgR3VDIGJ1dCB3ZSBkbyBuZWVkIHRvIGRpc2FibGUgdGhlCj4g
KwkgKiBHdUMgY29tbXVuaWNhdGlvbiBvbiBzdXNwZW5kLgo+ICsJICovCj4gKwlpZiAoIWd1Yy0+
c3VibWlzc2lvbl9zdXBwb3J0ZWQpCgpVc2luZyBzdWJtaXNzaW9uX3N1cHBvcnRlZCBmbGFnIGRp
cmVjdGx5IGNhbiBiZSB0cmlja3ksIGFzIHRvZGF5IGl0CmlzIGFsd2F5cyBzZXQgdG8gZmFsc2Us
IGJ1dCBpbiB0aGUgZnV0dXJlIGl0IG1heSBpbmRpY2F0ZSBlaXRoZXIgdGhhdApzdWJtaXNzaW9u
IGlzIHN1cHBvcnRlZCBieSB0aGUgZHJpdmVyL2Z3IGFuZC9vciBlbmFibGVkIGJ5IG1vZHBhcmFt
LgoKVGhlcmUgaXMgbm8gZ3VhcmFudGVlIHRoYXQgaXQgd2lsbCByZWZsZWN0IGFjdHVhbCBydW50
aW1lIHN0YXR1cywKYXMgZXZlbiBzdXBwb3J0ZWQvdW5ibG9ja2VkIGd1YyBzdWJtaXNzaW9uIG1h
eSBmYWxsYmFjayB0byBleGVjbGlzdHMuCgpXZSBtYXkgbmVlZCBzb21ldGhpbmcgbGlrZSBpbnRl
bF9ndWNfc3VibWlzc2lvbl9pc19hY3RpdmUoKSB0aGF0IHdpbGwKcmVmbGVjdCBhY3R1YWwgbW9k
ZSBvZiBzdWJtaXNzaW9uIGN1cnJlbnRseSB1c2VkIGJ5IHRoZSBkcml2ZXIuCgo+ICsJCWdvdG8g
Z3VjX2Rpc2FibGVfY29tbTsKCmFuZCBtYXliZSB3ZSBjYW4gbW92ZSBhYm92ZSBsb2dpYyB0byBp
bnRlbF9ndWNfc3VzcGVuZCgpCnRvIGRvIG5vdCBpbnRyb2R1Y2UgZXh0cmEgZ290bydzID8KCj4g
Kwo+ICAJZXJyID0gaW50ZWxfZ3VjX3N1c3BlbmQoZ3VjKTsKPiAgCWlmIChlcnIpCj4gIAkJRFJN
X0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHN1c3BlbmQgR3VDLCBlcnI9JWQiLCBlcnIpOwo+ICtn
dWNfZGlzYWJsZV9jb21tOgo+ICAJZ3VjX2Rpc2FibGVfY29tbXVuaWNhdGlvbihndWMpOwo+ICB9
Cj4gQEAgLTYwNSw2ICs2MTQsMTQgQEAgc3RhdGljIGludCBfX3VjX3Jlc3VtZShzdHJ1Y3QgaW50
ZWxfdWMgKnVjLCBib29sICAKPiBlbmFibGVfY29tbXVuaWNhdGlvbikKPiAgCWlmIChlbmFibGVf
Y29tbXVuaWNhdGlvbikKPiAgCQlndWNfZW5hYmxlX2NvbW11bmljYXRpb24oZ3VjKTsKPiArCS8q
Cj4gKwkgKiBJZiBHdUMgY29tbXVuY2lhdGlvbiBpcyBlbmFibGVkIGJ1dCBzdWJtaXNzaW9uIGlz
IG5vdCBzdXBwb3J0ZWQsCgp0eXBvCgo+ICsJICogd2UgZG8gbm90IG5lZWQgdG8gcmVzdW1lIHRo
ZSBHdUMgYnV0IHdlIGRvIG5lZWQgdG8gZW5hYmxlIHRoZQo+ICsJICogR3VDIGNvbW11bmljYXRp
b24gb24gcmVzdW1lIChhYm92ZSkuCj4gKwkgKi8KPiArCWlmICghZ3VjLT5zdWJtaXNzaW9uX3N1
cHBvcnRlZCkKPiArCQlyZXR1cm4gMDsKCnNlZSBzdXNwZW5kIGNhc2UgY29tbWVudAoKPiArCj4g
IAllcnIgPSBpbnRlbF9ndWNfcmVzdW1lKGd1Yyk7Cj4gIAlpZiAoZXJyKSB7Cj4gIAkJRFJNX0RF
QlVHX0RSSVZFUigiRmFpbGVkIHRvIHJlc3VtZSBHdUMsIGVycj0lZCIsIGVycik7CgpUaGFua3Ms
Ck1pY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
