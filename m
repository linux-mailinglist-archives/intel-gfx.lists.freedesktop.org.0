Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E730C856E1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 02:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0CC6E02E;
	Thu,  8 Aug 2019 00:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B026E02E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 00:08:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 17:08:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="179668637"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2019 17:08:21 -0700
Message-ID: <1565222953.30036.5.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2019 17:09:13 -0700
In-Reply-To: <156521957433.17543.10107335548167413094@skylake-alporthouse-com>
References: <20190807205556.40435-1-stuart.summers@intel.com>
 <156521337006.17543.2674431519733362990@skylake-alporthouse-com>
 <1565214535.30036.1.camel@intel.com>
 <156521528759.17543.14507396294077122957@skylake-alporthouse-com>
 <1565218817.30036.3.camel@intel.com>
 <156521957433.17543.10107335548167413094@skylake-alporthouse-com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add MOCS state dump to debugfs
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

T24gVGh1LCAyMDE5LTA4LTA4IGF0IDAwOjEyICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wOCAwMDowMDoxNykKPiA+IE9uIFdlZCwg
MjAxOS0wOC0wNyBhdCAyMzowMSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90
aW5nIFN0dWFydCBTdW1tZXJzICgyMDE5LTA4LTA3IDIyOjQ4OjU1KQo+ID4gPiA+IE9uIFdlZCwg
MjAxOS0wOC0wNyBhdCAyMjoyOSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiA+ID4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wNyAyMTo1NTo1NSkKPiA+ID4gPiA+ID4g
VXNlciBhcHBsaWNhdGlvbnMgbWlnaHQgbmVlZCB0byB2ZXJpZnkgaGFyZHdhcmUKPiA+ID4gPiA+
ID4gY29uZmlndXJhdGlvbgo+ID4gPiA+ID4gPiBvZiB0aGUgTU9DUyBlbnRyaWVzLiBUbyBmYWNp
bGl0YXRlIHRoaXMgZGVidWcsIGFkZCBhIG5ldwo+ID4gPiA+ID4gPiBkZWJ1Z2ZzCj4gPiA+ID4g
PiA+IGVudHJ5IHRvIGFsbG93IGEgZHVtcCBvZiB0aGUgTU9DUyBzdGF0ZSB0byB2ZXJpZnkgZXhw
ZWN0ZWQKPiA+ID4gPiA+ID4gdmFsdWVzCj4gPiA+ID4gPiA+IGFyZSBzZXQgYnkgaTkxNS4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gVXNlciBhcHBsaWNhdGlvbnMgKyBkZWJ1Z2ZzPyBJdCdzIG5vdCBh
biBhdmVudWUgZm9yIEFCSS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSWYgeW91IHJlYWxseSB3YW50
IHRvIHByb3ZpZGUgdGhlIHNldHRpbmdzIGJhY2sgdG8gdXNlcnNwYWNlLAo+ID4gPiA+ID4gbG9v
ayBhdAo+ID4gPiA+ID4gc29tZXRoaW5nIGxpa2UgYW4gaTkxNV9xdWVyeSBvciBzeXNmcy4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gT3IgaWYgeW91IGp1c3QgbWVhbiBpZ3QsIHRoZW4gYWRkIGEgVGVz
dGNhc2U6Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IElmIHlvdSBqdXN0IG5lZWQgdG8gdmFsaWRhdGUg
dGhhdCB3ZSBhcmUgc2V0dGluZyBhbmQKPiA+ID4gPiA+IHJlc3RvcmluZwo+ID4gPiA+ID4gdGhl
bSwKPiA+ID4gPiA+IHNlbGZ0ZXN0cy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSWYgeW91IG5lZWQg
dGhlbSBmb3IgZGVidWdnaW5nIGVycm9ycywgYWRkIHRoZW0gdG8gdGhlIGVycm9yCj4gPiA+ID4g
PiBzdGF0ZS4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIHdhcyBwcm9iYWJseSBwb29ybHkgd29yZGVk
LCB5b3UncmUgcmlnaHQuIEknbGwgdXBkYXRlIHRoZQo+ID4gPiA+IGNvbW1pdAo+ID4gPiA+IG1l
c3NhZ2UgdG/CoGJlIG1vcmUgc3BlY2lmaWMuCj4gPiA+ID4gCj4gPiA+ID4gSSBkbyB3YW50IHRo
aXMgZm9yIGRlYnVnZ2luZywgYnV0IG5vdCBzdXJlIGVycm9yIHN0YXRlIGlzIHRoZQo+ID4gPiA+
IHJpZ2h0Cj4gPiA+ID4gcGxhY2UuIFRoaXMgaXMgZm9yIGRlYnVnZ2luZyBwZXJmb3JtYW5jZSBp
c3N1ZXMsIHNvIG5vIHNwZWNpZmljCj4gPiA+ID4gZmFpbHVyZXMuIElmIHlvdSBmZWVsIHN5c2Zz
IG9yIGk5MTVfcXVlcnkgYXJlIG1vcmUgY29ycmVjdAo+ID4gPiA+IGhlcmUsIEkKPiA+ID4gPiBj
YW4KPiA+ID4gPiBsb29rIGF0IGFkZGluZyB0aGlzIHRoZXJlIGluc3RlYWQuIElzIHRoZXJlIGEg
cmVhc29uIHdlIGRvbid0Cj4gPiA+ID4gd2FudAo+ID4gPiA+IHRoaXMKPiA+ID4gPiBpbiBkZWJ1
Z2ZzIHNwZWNpZmljYWxseT8KPiA+ID4gCj4gPiA+IE5vLCBpdCB3YXMganVzdCB0aGUgd29yZGlu
ZyBpbXBsaWVkIHRvIG1lIHlvdSBoYWQgYSB1c2UgY2FzZSBmb3IKPiA+ID4gY2xpZW50cywgbm90
IGp1c3QgZGVidWdnaW5nIHRoZSBrZXJuZWwuCj4gPiA+IAo+ID4gPiBBZGRpbmcgaXQgdG8gdGhl
IGVycm9yIHN0YXRlIChzZWUgaTkxNV9ncHVfaW5mbykgaXMgbm90IHRvbyBiYWQKPiA+ID4gYW4K
PiA+ID4gaWRlYQo+ID4gPiBpZiB5b3UgbmVlZCBhIHNsZWRnZWhhbW1lciB0byBpbnNwZWN0IHRo
ZSBHUFUgc3RhdGUgd2hpbGUgYSBiYXRjaAo+ID4gPiBpcwo+ID4gPiBleGVjdXRpbmcsIGJ1dCBy
ZWFsbHkgaXQganVzdCBzb3VuZHMgbGlrZSB5b3Ugd2FudCB0byBhdXRvbWF0ZQo+ID4gPiBjaGVj
a2luZwo+ID4gPiB0aGUgbW9jcyByZWdpc3RlcnMgYWdhaW5zdCAiaWRlYWwiIHN0YXRlLiBUaGV5
IHNob3VsZCBiZSBzdGF0aWMsCj4gPiA+IHNvCj4gPiA+IG9uY2UKPiA+ID4gdGhleSBhcmUgc2V0
LCBzbyBsb25nIGFzIHdlIGFyZSBjb25maWRlbnQgYW5kIGNoZWNrIHRoYXQgdGhleSBkbwo+ID4g
PiBub3QKPiA+ID4gY2hhbmdlIG5vciBjYW4gYmUgc2NyaWJibGVkIG92ZXIgYnkgdXNlcnNwYWNl
LCB5b3Ugb25seSBuZWVkIHRvCj4gPiA+IHNjYW4KPiA+ID4gdGhlCj4gPiA+IHNvdXJjZSA6KQo+
ID4gPiAKPiA+ID4gSSB3aWxsIGFkZCB0aGF0IEkgd2lzaCB3ZSB0b29rIGEgbW9yZSBjb21wbGV0
ZSBzbmFwc2hvdCBvZgo+ID4gPiBpbnRlcmVzdGluZwo+ID4gPiByZWdpc3RlcnMgZm9yIHRoZSBl
cnJvciBzdGF0ZS4KPiA+IAo+ID4gSSBndWVzcyBteSBxdWVzdGlvbiBpcyBhYm91dCBpbnRlbnQg
b2YgdGhlIGVycm9yIHN0YXRlLiBJIGNhbiBhZGQKPiA+IGl0Cj4gPiB0aGVyZSwgYnV0IGRvIHdl
IHdhbnQgdGhpcyB0byBpbmRpY2F0ZSBhbnkgcmVnaXN0ZXIgc3RhdGUgd2UgbWlnaHQKPiA+IHdh
bnQKPiA+IHRvIGludmVzdGlnYXRlLCBldmVuIGlmIHRoZSByZWdpc3RlcnMgYXJlICJjb3JyZWN0
IiwgYnV0IGp1c3QgbmVlZAo+ID4gcmV2aWV3IGJhc2VkIG9uIGN1cnJlbnQgYmVoYXZpb3I/Cj4g
Cj4gSXQgd2FzIGNyZWF0ZWQgZm9yIGRlYnVnZ2luZyB1c2Vyc3BhY2UgYmF0Y2hlcyAobGF0ZXIg
YWRkZWQgdG8gaGFuZwo+IGRldGVjdGlvbiBhcyBhIG1lYW5zIG9mIGF1dG9tYXRpY2FsbHkgZ3Jh
YmJpbmcgdGhlIGhvcGVmdWxseSByZWxldmFudAo+IGJhdGNoKS4gQXMgc3VjaCBpdCdzIGEgbW90
bGV5IGNvbGxlY3Rpb24gb2YgaW5mb3JtYXRpb24gdGhhdCBhdCBzb21lCj4gcG9pbnQgcHJvdmVk
IHVzZWZ1bC4gSWYgeW91IGNhbiBtYWtlIHVzZSBvZiBpdCwgYW5kIGZpbmQgaXQgbW9yZQo+IHVz
ZWZ1bAo+IHRvIGhhdmUgdGhlIG1vY3MgcmVnaXN0ZXJzIGluIHRoZSBzYW1lIHNuYXBzaG90IGFz
IHRoZSB1c2VyIGJhdGNoLAo+IHBsZWFzZSBkbyBpbmNsdWRlIGl0LiAoRndpdywgSSB3b3VsZCBs
aWtlIHRvIGV4dGVuZCB0aGUgZXJyb3Igc3RhdGUKPiB3aXRoCj4gYSBidW5jaCBvZiB7IG9mZnNl
dDoweGZvbywgdmFsdWU6MHhiYXIgfSBnaXZlbiBhIHNldCBvZiB0YWJsZXMKPiBsaXN0aW5nCj4g
dGhlIGludGVyZXN0aW5nIHJlZ3MuIFRoZXJlIGp1c3QgaGFzbid0IGJlZW4gYW4gdXJnZW50IG5l
ZWQuIEFsc28gb24KPiB0aGF0IHdpc2hsaXN0IGlzIGRldmNvcmVkdW1wLikKCk9rIHBlcmZlY3Qs
IHRoYW5rcyBmb3IgdGhlIGhpc3RvcnkgaGVyZSEgSSdsbCByZXdvcmsgdGhpcyBpbnRvIHRoZQpl
cnJvciBzdGF0ZS4gSWYgdGhlIGludGVudCBpcyBhIGNhdGNoLWFsbCB3aGVyZSB3ZSBjYW4gZWFz
aWx5IHNlZSB0aGUKc3RhdGUgb2YgdGhlIEdQVSBhdCBhbnkgZ2l2ZW4gdGltZSwgSSBhZ3JlZSBo
YXZpbmcgYSBsYXJnZSBsaXN0IG9mCnJlZ2lzdGVycyB3ZSBkdW1wIGhlcmUgZm9yIHJldmlldyB3
b3VsZCBiZSByZWFsbHkgaW50ZXJlc3RpbmcuCgpUaGFua3MsClN0dWFydAoKPiAtQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
