Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C165A78DFA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 16:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1431489B84;
	Mon, 29 Jul 2019 14:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BF289B84
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 14:29:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 07:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="190602396"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2019 07:29:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156440976334.6373.17742144058690324554@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190729140847.18557-1-jani.nikula@intel.com>
 <156440976334.6373.17742144058690324554@skylake-alporthouse-com>
Date: Mon, 29 Jul 2019 17:33:54 +0300
Message-ID: <87o91coqp9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use upstream version of header
 tests
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOSBKdWwgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDctMjkgMTU6MDg6NDcpCj4+
IFRocm93IG91dCBvdXIgbG9jYWwgaGFja3Mgb2YgaGVhZGVyIHRlc3RzIG5vdyB0aGF0IHRoZSBt
b3JlIGdlbmVyaWMKPj4ga2J1aWxkIHZlcnNpb25zIGFyZSB1cHN0cmVhbS4KPj4gCj4+IEF0IGxl
YXN0IGZvciBub3csIGNvbnRpbnVlIHRvIGtlZXAgdGhlIGhlYWRlciB0ZXN0cyBiZWhpbmQKPj4g
Q09ORklHX0RSTV9JOTE1X1dFUlJPUj15IGtub2IuCj4+IAo+PiBDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IAo+PiAtLS0KPj4gCj4+IFRlY2huaWNhbGx5IHRoZSB1
cHN0cmVhbSB2ZXJzaW9ucyBhcmUgb25seSBpbiBkcm0tdGlwLCBhbmQgbm90IGluIGRpbnEKPj4g
dW50aWwgYSBiYWNrbWVyZ2UsIGJ1dCBJIHRoaW5rIGl0J3MgZ29vZCBlbm91Z2guIEkgZG9uJ3Qg
dGhpbmsgaXQgc2hvdWxkCj4+IG1lc3MgYW55dGhpbmcgdXAuCj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9L
Y29uZmlnLmRlYnVnCj4+IGluZGV4IDRjZGMwMTgxYTA5My4uODdhMzhjNmFhYTQxIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPj4gQEAgLTcsNiArNyw3IEBAIGNvbmZpZyBE
Uk1fSTkxNV9XRVJST1IKPj4gICAgICAgICAgIyBXZSB1c2UgdGhlIGRlcGVuZGVuY3kgb24gIUNP
TVBJTEVfVEVTVCB0byBub3QgYmUgZW5hYmxlZCBpbgo+PiAgICAgICAgICAjIGFsbG1vZGNvbmZp
ZyBvciBhbGx5ZXNjb25maWcgY29uZmlndXJhdGlvbnMKPj4gICAgICAgICAgZGVwZW5kcyBvbiAh
Q09NUElMRV9URVNUCj4+ICsgICAgICAgc2VsZWN0IEhFQURFUl9URVNUCj4+ICAgICAgICAgIGRl
ZmF1bHQgbgo+PiAgICAgICAgICBoZWxwCj4+ICAgICAgICAgICAgQWRkIC1XZXJyb3IgdG8gdGhl
IGJ1aWxkIGZsYWdzIGZvciAoYW5kIG9ubHkgZm9yKSBpOTE1LmtvLgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZQo+PiBpbmRleCA0MmMxN2E3YjBjYjAuLjMzMWIxOWNjODI0NyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKPj4gQEAgLTMyLDcgKzMyLDcgQEAgc3ViZGlyLWNjZmxhZ3MteSArPSBcCj4+
ICAgICAgICAgJChjYWxsIGFzLWluc3RyLG1vdm50ZHFhICglZWF4KSQoY29tbWEpJXhtbTAsLURD
T05GSUdfQVNfTU9WTlREUUEpCj4+ICAKPj4gICMgRXh0cmEgaGVhZGVyIHRlc3RzCj4+IC1pbmNs
dWRlICQoc3JjKS9NYWtlZmlsZS5oZWFkZXItdGVzdAo+PiAraGVhZGVyLXRlc3QtcGF0dGVybi0k
KENPTkZJR19EUk1fSTkxNV9XRVJST1IpIDo9ICouaAo+Cj4gQnV0IHdvbid0IHRoYXQgYWN0dWFs
bHkgYnJlYWsgZGlucSBjb21waWxhdGlvbiB1bnRpbCB0aGUgYmFja21lcmdlPyBGb3IKPiB0aG9z
ZSBvZiB1cyB0aGF0IGNvbXBpbGUgd2l0aCBXRVJST1IuCgpJdCBicmVha3MgdGhlIGhlYWRlciB0
ZXN0aW5nIGJ5IGRvaW5nIG5vdGhpbmcgaW5zdGVhZCwgYmVjYXVzZSBvbiBkaW5xCnRob3NlIGhl
YWRlci10ZXN0LSogdmFyaWFibGVzIGRvbid0IG1lYW4gYW55dGhpbmcuCgpBbGFzIHRoaXMgZG9l
c24ndCBhcHBseSB0byBkaW5xIGFueXdheSBzbyBJIGd1ZXNzIEknbGwgd2FpdCBmb3IgdGhlCmJh
Y2ttZXJnZS4KCkJSLApKYW5pLgoKCj4gLUNocmlzCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
