Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A43331042DF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 19:06:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E69F6E91D;
	Wed, 20 Nov 2019 18:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D6B16E91D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 18:06:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 10:06:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="406896843"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga005.fm.intel.com with ESMTP; 20 Nov 2019 10:06:27 -0800
Date: Wed, 20 Nov 2019 23:35:46 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20191120180546.GB1084@intel.com>
References: <20191120173155.20168-1-ramalingam.c@intel.com>
 <20191120173155.20168-3-ramalingam.c@intel.com>
 <395fa41c-89d4-5c7d-8260-6ca2198a5e2a@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <395fa41c-89d4-5c7d-8260-6ca2198a5e2a@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Skip the Wa_1604555607
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

T24gMjAxOS0xMS0yMCBhdCAxNzo1MDo1MSArMDAwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4g
Cj4gT24gMjAvMTEvMjAxOSAxNzozMSwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+ID4gQXQgVEdMIEEw
IHN0ZXBwaW5nLCBGRl9NT0RFMiByZWdpc3RlciByZWFkIGJhY2sgaXMgYnJva2VuLCBoZW5jZQo+
ID4gZGlzYWJsaW5nIHRoZSBXQSB2ZXJpZmljYXRpb24uCj4gPiAKPiA+IEhlbHBlciBmdW5jdGlv
biBjYWxsZWQgd2Ffd3JpdGVfbWFza2VkX29yX25vX3ZlcmlmeSBpcyBkZWZpbmVkIGZvciB0aGUK
PiA+IHNhbWUgcHVycG9zZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxy
YW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+ID4gY2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDIwICsrKysrKysrKysrKysrKysrKystCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gaW5kZXggOTNl
ZmVmYTIwNWQ2Li4xNjk4MzMwYzZmMjMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBAQCAtMTYwLDYgKzE2MCwyMCBAQCB3YV93cml0
ZV9tYXNrZWRfb3Ioc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMy
IG1hc2ssCj4gPiAgIAlfd2FfYWRkKHdhbCwgJndhKTsKPiA+ICAgfQo+ID4gK3N0YXRpYyB2b2lk
Cj4gPiArd2Ffd3JpdGVfbWFza2VkX29yX25vX3ZlcmlmeShzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywKPiA+ICsJCSAgIHUzMiB2YWwpCj4gPiArewo+
ID4gKwlzdHJ1Y3QgaTkxNV93YSB3YSA9IHsKPiA+ICsJCS5yZWcgID0gcmVnLAo+ID4gKwkJLm1h
c2sgPSBtYXNrLAo+ID4gKwkJLnZhbCAgPSB2YWwsCj4gPiArCQkucmVhZCA9IDAsCj4gPiArCX07
Cj4gPiArCj4gPiArCV93YV9hZGQod2FsLCAmd2EpOwo+ID4gK30KPiA+ICsKPiA+ICAgc3RhdGlj
IHZvaWQKPiA+ICAgd2FfbWFza2VkX2VuKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9y
ZWdfdCByZWcsIHUzMiB2YWwpCj4gPiAgIHsKPiA+IEBAIC01NzgsNyArNTkyLDExIEBAIHN0YXRp
YyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCj4gPiAgIAl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwgRkZf
TU9ERTIpOwo+ID4gICAJdmFsICY9IH5GRl9NT0RFMl9URFNfVElNRVJfTUFTSzsKPiA+ICAgCXZh
bCB8PSBGRl9NT0RFMl9URFNfVElNRVJfMTI4Owo+ID4gLQl3YV93cml0ZV9tYXNrZWRfb3Iod2Fs
LCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7Cj4gPiArCWlmIChJU19U
R0xfUkVWSUQoZW5naW5lLT51bmNvcmUtPmk5MTUsIDAsIFRHTF9SRVZJRF9BMCkpCj4gCj4gVGhl
cmUgaXMgZW5naW5lLT5pOTE1LgpzdXJlIHdpbGwgdXNlIGl0Lgo+IAo+ID4gKwkJd2Ffd3JpdGVf
bWFza2VkX29yX25vX3ZlcmlmeSh3YWwsIEZGX01PREUyLAo+ID4gKwkJCQkJICAgICBGRl9NT0RF
Ml9URFNfVElNRVJfTUFTSywgdmFsKTsKPiA+ICsJZWxzZQo+ID4gKwkJd2Ffd3JpdGVfbWFza2Vk
X29yKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWwpOwo+IAo+IFlv
dSBkaWQgbm90IHRoaW5rIHN1Z2dlc3RlZCBhbHRlcm5hdGl2ZSB3aGVyZSByZWFkIG1hc2sgaXMg
ZGlyZWN0bHkgcGFzc2VkCj4gaW4gd291bGQgd29yayBiZXR0ZXI/IEl0IHdvdWxkIHJlYWQgYSBi
aXQgbW9yZSBjb21wYWN0Ogo+IAo+ICAgX193YV93cml0ZV9tYXNrZWRfb3IoLi4uLCBJU19UR0xf
UkVWSUQoLi4pID8gMCA6IHZhbCkKVHJ1ZSBiaXQgdGhpcyB3aWxsIGNoYW5nZSBhbGwgY2FsbGVy
cyBvZiB0aGUgZnVjbnRpb24uIG1vcmUgb3ZlciBhcyB5b3UKbWVudGlvbmVkIHRoaXMgdGhpcyBf
bm9fdmVyaWZ5IGlzIGV4cGxpY2l0IGZvciByZWFkZXIuIEhlbmNlIEkgcHJlZmVyCnRoc2kgd3dh
eQo+IAo+IFVwIHRvIHlvdSB3aGF0IHlvdSBwcmVmZXIsIEkgZ3Vlc3MgdGhlIGV4cGxpY2l0IF9u
b192ZXJpZnkgYnJpbmdzIHNvbWUKPiBzZWxmLWRvY3VtZW50aW5nIGJlbmVmaXRzLgo+IAo+IEFs
c28sIGRvIHlvdSB0aGluayB0aGVyZSBpcyB2YWx1ZSBpbiBoYXZpbmcgdHdvIHBhdGNoZXMgaW5z
dGVhZCBvZiBqdXN0Cj4gc3F1YXNoaW5nIGludG8gb25lPyBJIHdvdWxkIGJlIHRlbXB0ZWQgdG8g
c3F1YXNoLgpJIHdvdWxkIHByZWZlciB0byBoYXZlIGl0IHNwbGl0dGVkIGFzIHRoaXMgbm9uIHJl
YWRhYmlsaXR5IHRoaXMgcmVnaXN0ZXIKaXMgdGVtcGFyYXJ5LiBrZWVwaW5nIGl0IHNlcGFyYXRl
IHdpbGwgaW5kaWNhdGUgd2UgbmVlZCB0byBmaXggaXQgaW4KbGF0ZXIgc3RlcHBpbmcuIFN1Z2dl
c3QgbWUgaWYgeW91IGZlZWwgb3RoZXIgd2F5IGFyb3VuZC4KCi1SYW0KPiAKPiBSZWdhcmRzLAo+
IAo+IFR2cnRrbwo+IAo+ID4gICB9Cj4gPiAgIHN0YXRpYyB2b2lkCj4gPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
