Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB856BCEC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561DB6E14B;
	Wed, 17 Jul 2019 13:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C1F6E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158462449"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:23:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
Date: Wed, 17 Jul 2019 14:23:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA3LzIwMTkgMTQ6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjA5OjAwKQo+Pgo+PiBPbiAxNi8wNy8yMDE5IDE2OjM3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTE2IDE2OjI1OjIyKQo+Pj4+Cj4+Pj4gT24gMTYvMDcvMjAxOSAxMzo0OSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5tYXAoKSB3ZSBtYXkgd2FudCB0byBy
ZW1vdmUgdGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPj4+Pj4gcHV0X3BhZ2VzKCkuIEhvd2V2ZXIs
IHRyeV90b191bm1hcCgpIGFjcXVpcmVzIHRoZSBwYWdlIGxvY2sgYW5kIHNvIHdlCj4+Pj4+IG11
c3QgYXZvaWQgcmVjdXJzaXZlbHkgbG9ja2luZyB0aGUgcGFnZXMgb3Vyc2VsdmVzIC0tIHdoaWNo
IG1lYW5zIHRoYXQKPj4+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRoZSBsb2NrIGFyb3Vu
ZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+Pj4+PiBjYW4ndCBiZSBzdXJlIG9mIHRoZSBs
b2NrLCB3ZSBoYXZlIHRvIHJpc2sgc2tpcCBkaXJ0eWluZyB0aGUgcGFnZSwgb3IKPj4+Pj4gZWxz
ZSByaXNrIGNhbGxpbmcgc2V0X3BhZ2VfZGlydHkoKSB3aXRob3V0IGEgbG9jayBhbmQgc28gcmlz
ayBmcwo+Pj4+PiBjb3JydXB0aW9uLgo+Pj4+Cj4+Pj4gU28gaWYgdHJ5bG9jayByYW5kb21seSBm
YWlsIHdlIGdldCBkYXRhIGNvcnJ1cHRpb24gaW4gd2hhdGV2ZXIgZGF0YSBzZXQKPj4+PiBhcHBs
aWNhdGlvbiBpcyB3b3JraW5nIG9uLCB3aGljaCBpcyB3aGF0IHRoZSBvcmlnaW5hbCBwYXRjaCB3
YXMgdHJ5aW5nCj4+Pj4gdG8gYXZvaWQ/IEFyZSB3ZSBhYmxlIHRvIGRldGVjdCB0aGUgYmFja2lu
ZyBzdG9yZSB0eXBlIHNvIGF0IGxlYXN0IHdlCj4+Pj4gZG9uJ3QgcmlzayBza2lwcGluZyBzZXRf
cGFnZV9kaXJ0eSB3aXRoIGFub255bW91cy9zaG1lbWZzPwo+Pj4KPj4+IHBhZ2UtPm1hcHBpbmc/
Pz8KPj4KPj4gV291bGQgcGFnZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/
Cj4gCj4gSXQgYmFzaWNhbGx5IHRlbGxzIHVzIGlmIHRoZXJlIGlzIGEgZnMgYXJvdW5kOyBhbnl0
aGluZyB0aGF0IGlzIHRoZSBtb3N0Cj4gYmFzaWMgb2YgbWFsbG9jIChldmVuIHRtcGZzL3NobWVt
ZnMgaGFzIHBhZ2UtPm1hcHBpbmcpLgoKTm9ybWFsIG1hbGxvYyBzbyBhbm9ueW1vdXMgcGFnZXM/
IE9yIHlvdSBtZWFudCBldmVyeXRoaW5nIF9hcGFydF8gZnJvbSAKdGhlIG1vc3QgYmFzaWMgbWFs
bG9jPwoKPj4+IFdlIHN0aWxsIGhhdmUgdGhlIGlzc3VlIHRoYXQgaWYgdGhlcmUgaXMgYSBtYXBw
aW5nIHdlIHNob3VsZCBiZSB0YWtpbmcKPj4+IHRoZSBsb2NrLCBhbmQgd2UgbWF5IGhhdmUgYm90
aCBhIG1hcHBpbmcgYW5kIGJlIGluc2lkZSB0cnlfdG9fdW5tYXAoKS4KPj4KPj4gSXMgdGhpcyBh
IHByb2JsZW0/IE9uIGEgcGF0aCB3aXRoIG1hcHBpbmdzIHdlIHRyeWxvY2sgYW5kIHNvIHNvbHZl
IHRoZQo+PiBzZXRfZGlydHlfbG9ja2VkIGFuZCByZWN1cnNpdmUgZGVhZGxvY2sgaXNzdWVzLCBh
bmQgd2l0aCBubyBtYXBwaW5ncwo+PiB3aXRoIGFsd2F5cyBkaXJ0eSB0aGUgcGFnZSBhbmQgYXZv
aWQgZGF0YSBjb3JydXB0aW9uLgo+IAo+IFRoZSBwcm9ibGVtIGFzIEkgc2VlIGl0IGlzICFwYWdl
LT5tYXBwaW5nIGFyZSBsaWtlbHkgYW4gaW5zaWduaWZpY2FudAo+IG1pbm9yaXR5IG9mIHVzZXJw
dHI7IGFzIEkgdGhpbmsgZXZlbiBtZW1mZCBhcmUgZXNzZW50aWFsbHkgc2htZW1mcyAob3IKPiBo
dWdldGxiZnMpIGFuZCBzbyBoYXZlIG1hcHBpbmdzLgoKQmV0dGVyIHRoZW4gbm90aGluZywgbm8/
IElmIGVhc3kgdG8gZG8uLgoKUmVnYXJkcywKClR2cnRrbwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
