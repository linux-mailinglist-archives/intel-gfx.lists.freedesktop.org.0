Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 734688563C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 00:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780288913D;
	Wed,  7 Aug 2019 22:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D91884E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 22:59:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 15:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="203364715"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2019 15:59:25 -0700
Message-ID: <1565218817.30036.3.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Wed, 07 Aug 2019 16:00:17 -0700
In-Reply-To: <156521528759.17543.14507396294077122957@skylake-alporthouse-com>
References: <20190807205556.40435-1-stuart.summers@intel.com>
 <156521337006.17543.2674431519733362990@skylake-alporthouse-com>
 <1565214535.30036.1.camel@intel.com>
 <156521528759.17543.14507396294077122957@skylake-alporthouse-com>
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

T24gV2VkLCAyMDE5LTA4LTA3IGF0IDIzOjAxICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wNyAyMjo0ODo1NSkKPiA+IE9uIFdlZCwg
MjAxOS0wOC0wNyBhdCAyMjoyOSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90
aW5nIFN0dWFydCBTdW1tZXJzICgyMDE5LTA4LTA3IDIxOjU1OjU1KQo+ID4gPiA+IFVzZXIgYXBw
bGljYXRpb25zIG1pZ2h0IG5lZWQgdG8gdmVyaWZ5IGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24KPiA+
ID4gPiBvZiB0aGUgTU9DUyBlbnRyaWVzLiBUbyBmYWNpbGl0YXRlIHRoaXMgZGVidWcsIGFkZCBh
IG5ldwo+ID4gPiA+IGRlYnVnZnMKPiA+ID4gPiBlbnRyeSB0byBhbGxvdyBhIGR1bXAgb2YgdGhl
IE1PQ1Mgc3RhdGUgdG8gdmVyaWZ5IGV4cGVjdGVkCj4gPiA+ID4gdmFsdWVzCj4gPiA+ID4gYXJl
IHNldCBieSBpOTE1Lgo+ID4gPiAKPiA+ID4gVXNlciBhcHBsaWNhdGlvbnMgKyBkZWJ1Z2ZzPyBJ
dCdzIG5vdCBhbiBhdmVudWUgZm9yIEFCSS4KPiA+ID4gCj4gPiA+IElmIHlvdSByZWFsbHkgd2Fu
dCB0byBwcm92aWRlIHRoZSBzZXR0aW5ncyBiYWNrIHRvIHVzZXJzcGFjZSwKPiA+ID4gbG9vayBh
dAo+ID4gPiBzb21ldGhpbmcgbGlrZSBhbiBpOTE1X3F1ZXJ5IG9yIHN5c2ZzLgo+ID4gPiAKPiA+
ID4gT3IgaWYgeW91IGp1c3QgbWVhbiBpZ3QsIHRoZW4gYWRkIGEgVGVzdGNhc2U6Cj4gPiA+IAo+
ID4gPiBJZiB5b3UganVzdCBuZWVkIHRvIHZhbGlkYXRlIHRoYXQgd2UgYXJlIHNldHRpbmcgYW5k
IHJlc3RvcmluZwo+ID4gPiB0aGVtLAo+ID4gPiBzZWxmdGVzdHMuCj4gPiA+IAo+ID4gPiBJZiB5
b3UgbmVlZCB0aGVtIGZvciBkZWJ1Z2dpbmcgZXJyb3JzLCBhZGQgdGhlbSB0byB0aGUgZXJyb3IK
PiA+ID4gc3RhdGUuCj4gPiAKPiA+IFRoaXMgd2FzIHByb2JhYmx5IHBvb3JseSB3b3JkZWQsIHlv
dSdyZSByaWdodC4gSSdsbCB1cGRhdGUgdGhlCj4gPiBjb21taXQKPiA+IG1lc3NhZ2UgdG/CoGJl
IG1vcmUgc3BlY2lmaWMuCj4gPiAKPiA+IEkgZG8gd2FudCB0aGlzIGZvciBkZWJ1Z2dpbmcsIGJ1
dCBub3Qgc3VyZSBlcnJvciBzdGF0ZSBpcyB0aGUgcmlnaHQKPiA+IHBsYWNlLiBUaGlzIGlzIGZv
ciBkZWJ1Z2dpbmcgcGVyZm9ybWFuY2UgaXNzdWVzLCBzbyBubyBzcGVjaWZpYwo+ID4gZmFpbHVy
ZXMuIElmIHlvdSBmZWVsIHN5c2ZzIG9yIGk5MTVfcXVlcnkgYXJlIG1vcmUgY29ycmVjdCBoZXJl
LCBJCj4gPiBjYW4KPiA+IGxvb2sgYXQgYWRkaW5nIHRoaXMgdGhlcmUgaW5zdGVhZC4gSXMgdGhl
cmUgYSByZWFzb24gd2UgZG9uJ3Qgd2FudAo+ID4gdGhpcwo+ID4gaW4gZGVidWdmcyBzcGVjaWZp
Y2FsbHk/Cj4gCj4gTm8sIGl0IHdhcyBqdXN0IHRoZSB3b3JkaW5nIGltcGxpZWQgdG8gbWUgeW91
IGhhZCBhIHVzZSBjYXNlIGZvcgo+IGNsaWVudHMsIG5vdCBqdXN0IGRlYnVnZ2luZyB0aGUga2Vy
bmVsLgo+IAo+IEFkZGluZyBpdCB0byB0aGUgZXJyb3Igc3RhdGUgKHNlZSBpOTE1X2dwdV9pbmZv
KSBpcyBub3QgdG9vIGJhZCBhbgo+IGlkZWEKPiBpZiB5b3UgbmVlZCBhIHNsZWRnZWhhbW1lciB0
byBpbnNwZWN0IHRoZSBHUFUgc3RhdGUgd2hpbGUgYSBiYXRjaCBpcwo+IGV4ZWN1dGluZywgYnV0
IHJlYWxseSBpdCBqdXN0IHNvdW5kcyBsaWtlIHlvdSB3YW50IHRvIGF1dG9tYXRlCj4gY2hlY2tp
bmcKPiB0aGUgbW9jcyByZWdpc3RlcnMgYWdhaW5zdCAiaWRlYWwiIHN0YXRlLiBUaGV5IHNob3Vs
ZCBiZSBzdGF0aWMsIHNvCj4gb25jZQo+IHRoZXkgYXJlIHNldCwgc28gbG9uZyBhcyB3ZSBhcmUg
Y29uZmlkZW50IGFuZCBjaGVjayB0aGF0IHRoZXkgZG8gbm90Cj4gY2hhbmdlIG5vciBjYW4gYmUg
c2NyaWJibGVkIG92ZXIgYnkgdXNlcnNwYWNlLCB5b3Ugb25seSBuZWVkIHRvIHNjYW4KPiB0aGUK
PiBzb3VyY2UgOikKPiAKPiBJIHdpbGwgYWRkIHRoYXQgSSB3aXNoIHdlIHRvb2sgYSBtb3JlIGNv
bXBsZXRlIHNuYXBzaG90IG9mCj4gaW50ZXJlc3RpbmcKPiByZWdpc3RlcnMgZm9yIHRoZSBlcnJv
ciBzdGF0ZS4KCkkgZ3Vlc3MgbXkgcXVlc3Rpb24gaXMgYWJvdXQgaW50ZW50IG9mIHRoZSBlcnJv
ciBzdGF0ZS4gSSBjYW4gYWRkIGl0CnRoZXJlLCBidXQgZG8gd2Ugd2FudCB0aGlzIHRvIGluZGlj
YXRlIGFueSByZWdpc3RlciBzdGF0ZSB3ZSBtaWdodCB3YW50CnRvIGludmVzdGlnYXRlLCBldmVu
IGlmIHRoZSByZWdpc3RlcnMgYXJlICJjb3JyZWN0IiwgYnV0IGp1c3QgbmVlZApyZXZpZXcgYmFz
ZWQgb24gY3VycmVudCBiZWhhdmlvcj8KClRoYW5rcywKU3R1YXJ0Cgo+IC1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
