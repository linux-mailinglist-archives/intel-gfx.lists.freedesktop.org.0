Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE23989B77
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 12:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37EB6E4C7;
	Mon, 12 Aug 2019 10:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97ED96E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 10:29:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 03:29:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="178291645"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 12 Aug 2019 03:29:18 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 65BF75C1E5F; Mon, 12 Aug 2019 13:28:39 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156560393718.2301.11983694987791177055@skylake-alporthouse-com>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-2-chris@chris-wilson.co.uk>
 <87y2zy7mfe.fsf@gaia.fi.intel.com>
 <156560393718.2301.11983694987791177055@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 13:28:39 +0300
Message-ID: <87sgq67k4o.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/selftests: Prevent the
 timeslice expiring during suppression tests
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEwOjM5OjAxKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBXaGVuIHRlc3Rpbmcgd2hl
dGhlciB3ZSBwcmV2ZW50IHN1cHByZXNzaW5nIHByZWVtcHRpb24sIGl0IGhlbHBzIHRvCj4+ID4g
YXZvaWQgYSB0aW1lIHNsaWNlIGV4cGlyaW5nIHByZW1hdHVyZWx5Lgo+PiA+Cj4+IAo+PiBJIGRp
ZCBsb29rIHRoZSB0ZXN0IGFuZCBpdCBkb2VzIGNhbGwgc2NoZWR1bGUgb24gaXQncyBvd24uCj4+
IAo+PiBTbyB3aGF0IHdlIHdhbnQgdG8gZG8gaXMgdG8gcG9zdHBvbmUgdGhlIGRlZmFjdG8gc2No
ZWR1bGUgdGljawo+PiBwcm92aWRlZCBieSBkcml2ZXIgbm90IHRvIG1lc3Mgb3VyIG93biBzY2hl
ZHVsZT8gKHdoaWNoIHdlCj4+IHVzZSB0byBjaGVjayB0aGF0IG5vIHByZWVtcHRpb24gZG9lcyBv
Y2N1ciB3aXRoIGVxdWFsCj4+IHByaW9yaXRpZXM/KQo+Cj4gVGhlIHRlc3QgaXMgdHJ5aW5nIHRv
IGxvb2sgYXQgb3VyIG1lY2hhbmljcyB0byBlbnN1cmUgdGhhdCB3ZSBkb24ndAo+IGNhdXNlIHBy
ZWVtcHRpb25zIHdoZXJlIHdlIHNpbXBseSBwdXQgYmFjayB0aGUgc2FtZSByZXF1ZXN0LiBBcyBz
dWNoLCB3ZQo+IGhhdmUgYSBtYXJrZXIgaW4gdGhlIHByZWVtcHRpb24gY29kZSB0aGF0IHdlIGFy
ZSB0cnlpbmcgdG8gYXZvaWQsIGFuZAo+IG11c3QgY29udHJvbCB0aGUgc2NoZWR1bGluZyB0byBl
eGNsdWRlIGFsbCBvdGhlciBldmVudHMgdGhhbiB0aGUgb25lIHdlCj4gYXJlIGluamVjdGluZy4K
Pgo+IFRoZSB0aW1lc2xpY2UgY291bGQgZXhwaXJlIGFuZCByZXZlcnNlIEEsQiAodG8gQixBKSBz
dWNoIHRoYXQgb3VyCj4gcHJvbW90aW9uIG9mIEEgZG9lcyAoY29ycmVjdGx5KSBjYXVzZSBhIHBy
ZWVtcHRpb24gdGhhdCB3ZSBleHBlY3QgbmV2ZXIKPiB0byBuZWVkLgoKSWYgdGhlcmUgd2lsbCBi
ZSBtb3JlIHVzZXJzLCB0aGVuIHdlIGNhbiBjb25zaWRlcgpkaXNhYmxlfGVuYWJsZV9yZXNjaGVk
dWxlX3RpbWVyIG9yIHNpbWlsYXIuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
