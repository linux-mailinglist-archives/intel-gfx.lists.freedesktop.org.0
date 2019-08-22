Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2249A9A5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08606EBF0;
	Fri, 23 Aug 2019 08:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139606EBEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:07:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 13:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="203541737"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 13:20:47 -0700
Date: Thu, 22 Aug 2019 13:22:21 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20190822202221.GA701@intel.com>
References: <20190820223059.18052-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820223059.18052-1-anusha.srivatsa@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [CI] drm/dp/dsc: Add Support for all BPCs supported
 by TGL
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB0aGUgcGF0Y2ggYW5kIHRoZSByZXZpZXcsIHB1c2hlZCB0byBkaW5xCgpSZWdh
cmRzCk1hbmFzaQoKT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDM6MzA6NTlQTSAtMDcwMCwgQW51
c2hhIFNyaXZhdHNhIHdyb3RlOgo+IERTQyBlbmdpbmUgb24gSUNMIHN1cHBvcnRzIG9ubHkgOCBh
bmQgMTAgQlBDIGFzIHRoZSBpbnB1dAo+IEJQQy4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBv
cnRzIDgsIDEwIGFuZCAxMiBCUEMuCj4gQWRkIDEyIEJQQyBzdXBwb3J0IGZvciBEU0Mgd2hpbGUg
Y2FsY3VsYXRpbmcgY29tcHJlc3Npb24KPiBjb25maWd1cmF0aW9uLgo+IAo+IHYyOiBSZW1vdmUg
dGhlIHNlcGFyYXRlIGRlZmluZSBUR0xfRFBfRFNDX01BWF9TVVBQT1JURURfQlBDCj4gYW5kIHVz
ZSB0aGUgdmFsdWUgZGlyZWN0bHkuKE1vcmUgc3VjaCBkZWZpbmVzIGNhbiBiZSByZW1vdmVkCj4g
YXMgcGFydCBvZiBmdXR1cmUgcGF0Y2hlcykuIChWaWxsZSkKPiAKPiB2MzogVXNlIHZhbHVlcyBk
aXJlY3RseSBpbnN0ZWFkIG9mIGFjY2Vzc2luZyB0aGUgZGVmaW5lcwo+IGV2ZXJ5dGltZSBmb3Ig
bWluIGFuZCBtYXggRFNDIEJQQy4KPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2
YXRzYUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5h
dmFyZUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyB8IDE0ICsrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+IGluZGV4IDQ4ODRjODdjOGVkNy4uZjlkMjQzOGQ3ZGE5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC03MCw4ICs3MCw2IEBACj4gIAo+
ICAvKiBEUCBEU0Mgc21hbGwgam9pbmVyIGhhcyAyIEZJRk9zIGVhY2ggb2YgNjQwIHggNiBieXRl
cyAqLwo+ICAjZGVmaW5lIERQX0RTQ19NQVhfU01BTExfSk9JTkVSX1JBTV9CVUZGRVIJNjE0NDAK
PiAtI2RlZmluZSBEUF9EU0NfTUlOX1NVUFBPUlRFRF9CUEMJCTgKPiAtI2RlZmluZSBEUF9EU0Nf
TUFYX1NVUFBPUlRFRF9CUEMJCTEwCj4gIAo+ICAvKiBEUCBEU0MgdGhyb3VnaHB1dCB2YWx1ZXMg
dXNlZCBmb3Igc2xpY2UgY291bnQgY2FsY3VsYXRpb25zIEtQaXhlbHMvcyAqLwo+ICAjZGVmaW5l
IERQX0RTQ19QRUFLX1BJWEVMX1JBVEUJCQkyNzIwMDAwCj4gQEAgLTE5MTUsMTEgKzE5MTMsMTcg
QEAgc3RhdGljIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKPiAgCWlmICghaW50ZWxfZHBfc3VwcG9ydHNfZHNjKGludGVsX2RwLCBwaXBl
X2NvbmZpZykpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+IC0JZHNjX21heF9icGMgPSBtaW5f
dCh1OCwgRFBfRFNDX01BWF9TVVBQT1JURURfQlBDLAo+IC0JCQkgICAgY29ubl9zdGF0ZS0+bWF4
X3JlcXVlc3RlZF9icGMpOwo+ICsJLyogTWF4IERTQyBJbnB1dCBCUEMgZm9yIElDTCBpcyAxMCBh
bmQgZm9yIFRHTCsgaXMgMTIgKi8KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+
ICsJCWRzY19tYXhfYnBjID0gbWluX3QodTgsIDEyLCBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVk
X2JwYyk7Cj4gKwllbHNlCj4gKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgMTAsCj4gKwkJCQkg
ICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwo+ICAKPiAgCXBpcGVfYnBwID0gaW50
ZWxfZHBfZHNjX2NvbXB1dGVfYnBwKGludGVsX2RwLCBkc2NfbWF4X2JwYyk7Cj4gLQlpZiAocGlw
ZV9icHAgPCBEUF9EU0NfTUlOX1NVUFBPUlRFRF9CUEMgKiAzKSB7Cj4gKwo+ICsJLyogTWluIElu
cHV0IEJQQyBmb3IgSUNMKyBpcyA4ICovCj4gKwlpZiAocGlwZV9icHAgPCA4ICogMykgewo+ICAJ
CURSTV9ERUJVR19LTVMoIk5vIERTQyBzdXBwb3J0IGZvciBsZXNzIHRoYW4gOGJwY1xuIik7Cj4g
IAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gLS0gCj4gMi4yMi4xCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
