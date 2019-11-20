Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2ED10422D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:34:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E956E60C;
	Wed, 20 Nov 2019 17:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D646E60C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:34:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:34:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="259102210"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Nov 2019 09:34:25 -0800
Date: Wed, 20 Nov 2019 23:03:44 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20191120173343.GA1084@intel.com>
References: <20191120164020.21352-1-ramalingam.c@intel.com>
 <20191120164020.21352-4-ramalingam.c@intel.com>
 <748e3937-c8d3-efa4-15c1-f0a4b31d27f3@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <748e3937-c8d3-efa4-15c1-f0a4b31d27f3@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Skip the Wa_1604555607
 verification
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0yMCBhdCAxNjo1NTozNSArMDAwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4g
Cj4gT24gMjAvMTEvMjAxOSAxNjo0MCwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+ID4gQXQgVEdMIEEw
IHN0ZXBwaW5nLCBGRl9NT0RFMiByZWdpc3RlciByZWFkIGJhY2sgaXMgYnJva2VuLCBoZW5jZQo+
ID4gZGlzYWJsaW5nIHRoZSBXQSB2ZXJpZmljYXRpb24uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiA+IGNjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA1ICsrKystCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBpbmRleCA4YzQ0
MWJmMTBjYjEuLjBhMzAzNGU4NDFjNCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+IEBAIC01ODAsNyArNTgwLDEwIEBAIHN0YXRpYyB2
b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsCj4gPiAgIAl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwgRkZfTU9E
RTIpOwo+ID4gICAJdmFsICY9IH5GRl9NT0RFMl9URFNfVElNRVJfTUFTSzsKPiA+ICAgCXZhbCB8
PSBGRl9NT0RFMl9URFNfVElNRVJfMTI4Owo+ID4gLQl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBG
Rl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCwgdHJ1ZSk7Cj4gPiArCS8qIEF0
IFRHTCBBMCBzaWxpY29uIEZGX01PREUyIHJlZyByZWFkIGlzIG5vdCBmdW5jdGlvbmFsLiAqLwo+
ID4gKwl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVS
X01BU0ssIHZhbCwKPiA+ICsJCQkgICAhSVNfVEdMX1JFVklEKGVuZ2luZS0+dW5jb3JlLT5pOTE1
LCAwLAo+ID4gKwkJCQkJIFRHTF9SRVZJRF9BMCkpOwo+IAo+IFdoeSBkbyB5b3UgbmVlZCB0aGUg
cHJldmlvdXMgcGF0Y2ggYW5kIGNhbid0IGp1c3QgcmUtYWRkIHRoZSBoZWxwZXIgKHdlIGhhZAo+
IGl0IGF0IHNvbWUgcG9pbnQpIHdoaWNoIGNyZWF0ZXMgdGhlIHdvcmthcm91bmQgd2l0aCB3YS0+
cmVhZCA9IDAgZGlyZWN0bHk/Cj4gCj4gd2Ffd3JpdGVfbWFza2VkX29yX19ub192ZXJpZnksIG9y
IF9fd2Ffd3JpdGVfbWFza2VkX29yIHdpdGggcmVhZCBtYXNrCj4gZXhwbGljaXRseSBwYXNzZWQg
aW4/ClRoYW5rcyBUdnJ0a28uIFRoYXQgaGVscGVkIHRvIGF2b2lkIG1hbnkgY2hhbmdlcyBhY3Jv
c3MgZmlsZS4KaW1wbGVtZW50ZWQgd2Ffd3JpdGVfbWFza2VkX29yX19ub192ZXJpZnkKCi1SYW0K
PiAKPiBSZWdhcmRzLAo+IAo+IFR2cnRrbwo+IAo+ID4gICB9Cj4gPiAgIHN0YXRpYyB2b2lkCj4g
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
