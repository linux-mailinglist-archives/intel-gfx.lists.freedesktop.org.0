Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 081E74B21C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 08:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131596E29C;
	Wed, 19 Jun 2019 06:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFCDF6E29C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 06:32:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 23:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358094438"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 23:32:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190618202139.1481-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <94b19e73-a22b-4042-8196-c24399bf6734@linux.intel.com>
Date: Wed, 19 Jun 2019 07:32:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618202139.1481-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Prevent
 preemption
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

Ck9uIDE4LzA2LzIwMTkgMjE6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbiBvcmRlciB0byBw
aW4gdGhlIGVuZ2luZSBhcyBidXN5LCB3ZSBoYXZlIHRvIHByZXZlbnQgdGhlIGtlcm5lbCBmcm9t
Cj4gZXhlY3V0aW5nIG90aGVyIGluZGVwZW5kZW50IHdvcmsgYWhlYWQgb2Ygb3VyIHBsdWcsIHNv
IHRlbGwgdGhlIHNwaW5uZXIKPiB0byBub3QgYWxsb3cgcHJlZW1wdGlvbi4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAg
IHRlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgfCAzICsrLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9p
OTE1L2dlbV9jdHhfZW5naW5lcy5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYwo+IGlu
ZGV4IDNlY2FkZTQxNy4uZDQ3Y2JkZDdjIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0
eF9lbmdpbmVzLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCj4gQEAgLTI4
Myw3ICsyODMsOCBAQCBzdGF0aWMgdm9pZCBleGVjdXRlX29uZShpbnQgaTkxNSkKPiAgIAo+ICAg
CQkJc3BpbiA9IGlndF9zcGluX25ldyhpOTE1LAo+ICAgCQkJCQkgICAgLmN0eCA9IHBhcmFtLmN0
eF9pZCwKPiAtCQkJCQkgICAgLmVuZ2luZSA9IDApOwo+ICsJCQkJCSAgICAuZW5naW5lID0gMCwK
PiArCQkJCQkgICAgLmZsYWdzID0gSUdUX1NQSU5fTk9fUFJFRU1QVElPTik7Cj4gICAKPiAgIAkJ
CWlndF9kZWJ1ZygiVGVzdGluZyB3aXRoIG1hcCBvZiAlZCBlbmdpbmVzXG4iLCBpICsgMSk7Cj4g
ICAJCQltZW1zZXQoJmVuZ2luZXMuZW5naW5lcywgLTEsIHNpemVvZihlbmdpbmVzLmVuZ2luZXMp
KTsKPiAKClRoZSBuby1vcCBiYXRjaCBwcmVlbXB0cyB0aGUgc3Bpbm5lcj8gSG93IGRvZXMgdGhh
dCBhZmZlY3QgdGhlIGJ1c3kgCmNoZWNrIG9uIHRoZSBuby1vcCBiYXRjaD8KClJlZ2FyZHMsCgpU
dnJ0a28KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
