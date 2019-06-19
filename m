Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DB24B6A0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 13:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C41E6E36F;
	Wed, 19 Jun 2019 11:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799516E36F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 11:04:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 04:04:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358159870"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 04:04:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190618110736.31155-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f4c51733-ad84-0ce2-5909-274d25e3d75f@linux.intel.com>
Date: Wed, 19 Jun 2019 12:04:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618110736.31155-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Detect
 cross-contamination with GuC
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

Ck9uIDE4LzA2LzIwMTkgMTI6MDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgcHJvY2Vzc19j
c2Igcm91dGluZSBmcm9tIGV4ZWNsaXN0c19zdWJtaXNzaW9uIGlzIGluY29tcGF0aWJsZSB3aXRo
Cj4gdGhlIEd1QyBiYWNrZW5kLiBBZGQgYSB3YXJuaW5nIHRvIGRldGVjdCBpZiB3ZSBhY2NpZGVu
dGFsbHkgZW5kIHVwIGluCj4gdGhlIHdyb25nIHNwb3QuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndp
bmlhcnNraUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCBjNDAwYzY2ZDBlZTUuLmJiZTZlY2U5
YjAxMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTExNjksNiAr
MTE2OSw3IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKPiAgIAl1OCBoZWFkLCB0YWlsOwo+ICAgCj4gICAJbG9ja2RlcF9hc3NlcnRfaGVs
ZCgmZW5naW5lLT5hY3RpdmUubG9jayk7Cj4gKwlHRU1fQlVHX09OKFVTRVNfR1VDX1NVQk1JU1NJ
T04oZW5naW5lLT5pOTE1KSk7Cj4gICAKPiAgIAkvKgo+ICAgCSAqIE5vdGUgdGhhdCBjc2Jfd3Jp
dGUsIGNzYl9zdGF0dXMgbWF5IGJlIGVpdGhlciBpbiBIV1NQIG9yIG1taW8uCj4gCgpJIGFzc3Vt
ZSBpdCBzb21laG93IGFuZCBzb21ld2hlcmUgaGFwcGVuZWQgb3IgeW91IHdvdWxkbid0IGJlIGFk
ZGluZyB0aGUgCmFzc2VydD8KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
