Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85C6C4B29
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 12:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CA16E908;
	Wed,  2 Oct 2019 10:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF5406E908
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 10:14:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 03:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="191760364"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 02 Oct 2019 03:14:29 -0700
Date: Wed, 2 Oct 2019 15:44:24 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20191002101423.GA28801@intel.com>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
 <20191001172624.26479-2-ramalingam.c@intel.com>
 <156995140060.1880.8316101890209937172@skylake-alporthouse-com>
 <10417c78-1fc4-25c1-3539-393d9d65e975@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10417c78-1fc4-25c1-3539-393d9d65e975@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Skip Wa_1604555607
 verification at A0
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

T24gMjAxOS0xMC0wMiBhdCAwOTo1NDoxMiArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4g
Cj4gT24gMDEvMTAvMjAxOSAxODozNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBS
YW1hbGluZ2FtIEMgKDIwMTktMTAtMDEgMTg6MjY6MjQpCj4gPiA+IFJlYWQgb2YgRkZfTU9ERTIg
cmVnaXN0ZXIgaXMgYnJva2VuIGF0IFRHTCBBMC4gSGVuY2UgdmVyaWZpY2F0aW9uIG9mIHRoZQo+
ID4gPiBXYV8xNjA0NTU1NjA3IGFzc29jaWF0ZWQgdG8gdGhhdCByZWdpc3RlciBuZWVkcyB0byBi
ZSBza2lwcGVkLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1h
bGluZ2FtLmNAaW50ZWwuY29tPgo+ID4gPiBjYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDIyICsrKysrKysrKysrKysrKysrKysrLQo+ID4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAgNiArKysr
KysKPiA+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+ID4gPiBpbmRleCA0MDQ5Yjg3NjQ5MmEuLmM2M2Q4YzNkZjRkMyAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiA+IEBA
IC05OTEsMTAgKzk5MSwyMSBAQCB3YV9saXN0X2FwcGx5KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSwgY29uc3Qgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4gPiAgICAgICAgICBmb3Ig
KGkgPSAwLCB3YSA9IHdhbC0+bGlzdDsgaSA8IHdhbC0+Y291bnQ7IGkrKywgd2ErKykgewo+ID4g
PiAgICAgICAgICAgICAgICAgIGludGVsX3VuY29yZV9ybXdfZncodW5jb3JlLCB3YS0+cmVnLCB3
YS0+bWFzaywgd2EtPnZhbCk7Cj4gPiA+IC0gICAgICAgICAgICAgICBpZiAoSVNfRU5BQkxFRChD
T05GSUdfRFJNX0k5MTVfREVCVUdfR0VNKSkKPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChJU19F
TkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19HRU0pKSB7Cj4gPiA+ICsKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgLyoKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICogUmVh
ZCBvZiBGRl9NT0RFMiBpcyBicm9rZW4gb24gVEdMIEEwLgo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgKiBIZW5jZSBza2lwIHRoZSBjb3JyZXNwb25kaW5nIFdBIHZlcmlmaWNhdGlvbi4K
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICovCj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGlmIChJU19UR0xfUkVWSUQodW5jb3JlLT5pOTE1LCAwLCBUR0xfUkVWSURfQTApICYm
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X21taW9fcmVnX2VxdWFsKHdh
LT5yZWcsIEZGX01PREUyKSAmJgo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgd2Et
Pm1hc2sgPT0gRkZfTU9ERTJfVERTX1RJTUVSX01BU0spCj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiAKPiA+IFRoaXMgZG9lcyBub3Qgc2NhbGUgdmVy
eSB3ZWxsLiBZb3Ugd2lsbCBub3RlIHRoYXQgd2FfdmVyaWZ5KCkgYWxyZWFkeQo+ID4gaW5jbHVk
ZXMgYSBkZXRhaWwgb24gd2hpY2ggYml0cyBjYW4gYmUgcmVhZCBiYWNrIGZyb20gSFcuCj4gCj4g
Rm9yIHRoZSByZWNvcmQgQ2hyaXMgaXMgcmVmZXJyaW5nIHRvIHdhLT5yZWFkIHdoaWNoIHlvdSBj
YW4gc2V0IHRvIHplcm8gZm9yCj4gdGhpcyBwYXJ0aWN1bGFyIHdhIGFuZCB0aGlzIHNob3VsZCBh
dXRvbWFnaWNhbGx5IHdvcmsuClRoYW5rcyBUdnJ0a28uIFdlIGNvdWxkIHNldCB0aGF0IHdhLT5y
ZWFkID0gMCwgb25seSBmb3IgcmVxdWlyZWQgc3RlcHBpbmdzLgoKLVJhbQo+IAo+IFRoZW4gaW4g
SUdUL2dlbV93b3JrYXJvdW5kcy5jIHlvdSBhbHNvIGhhdmUgZXhpc3RpbmcgZnJhbWV3b3JrIGZv
ciBtYXJraW5nCj4gcmVnaXN0ZXJzIGFzIHdyaXRlLW9ubHkuIEl0IG1heSBuZWVkIGV4dGVuZGlu
ZyB0byBhY2NvdW50IGZvciBzdGVwcGluZ3MgYW5kCj4gc28uCj4gCj4gUmVnYXJkcywKPiAKPiBU
dnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
