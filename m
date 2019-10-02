Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D475EC46F9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 07:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4B66E5BB;
	Wed,  2 Oct 2019 05:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396F76E5BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 05:31:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 22:31:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,573,1559545200"; d="scan'208";a="392725204"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 01 Oct 2019 22:31:33 -0700
Date: Wed, 2 Oct 2019 11:01:28 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Message-ID: <20191002053127.GA27814@intel.com>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
 <156995131579.1880.10276094944299738871@skylake-alporthouse-com>
 <CAKi4VA+e6PM_qRYtyZcJ50WEcUvN=JFw82oLPUWT-+eYyk_07g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VA+e6PM_qRYtyZcJ50WEcUvN=JFw82oLPUWT-+eYyk_07g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement Wa_1604555607
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

T24gMjAxOS0xMC0wMSBhdCAxMzoxNjoxMSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IE9uIFR1ZSwgT2N0IDEsIDIwMTkgYXQgMTA6MzYgQU0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4KPiA+IFF1b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5
LTEwLTAxIDE4OjI2OjIzKQo+ID4gPiBGcm9tOiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVy
cnlAaW50ZWwuY29tPgo+ID4gPgo+ID4gPiBJbXBsZW1lbnQgV2FfMTYwNDU1NTYwNyAoc2V0IHRo
ZSBEUyBwYWlyaW5nIHRpbWVyIHRvIDEyOCBjeWNsZXMpLgo+ID4gPiBGRl9NT0RFMiBpcyBwYXJ0
IG9mIHRoZSByZWdpc3RlciBzdGF0ZSBjb250ZXh0LCB0aGF0J3Mgd2h5IGl0IGlzCj4gPiA+IGlt
cGxlbWVudGVkIGhlcmUuCj4gPiA+Cj4gPiA+IHYyOiBSZWJhc2VkIG9uIHRvcCBvZiB0aGUgV0Eg
cmVmYWN0b3JpbmcgKE9zY2FyKQo+ID4gPiB2MzogQ29ycmVjdGx5IGFkZCB0byBjdHhfd29ya2Fy
b3VuZHNfaW5pdCAoTWljaGVsKQo+ID4gPgo+ID4gPiBCU3BlYzogMTkzNjMKPiA+ID4gSFNERVM6
IDE2MDQ1NTU2MDcKPiA+ID4gU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50
aGllcnJ5QGludGVsLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1s
aW5nYW0uY0BpbnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDkgKysrKysrKysrCj4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgNSArKysrKwo+ID4gPiAgMiBmaWxlcyBj
aGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gPiBpbmRleCBiYTY1ZTUwMTg5NzguLjQwNDli
ODc2NDkyYSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCj4gPiA+IEBAIC01NjcsOSArNTY3LDE4IEBAIHN0YXRpYyB2b2lkIGljbF9j
dHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gPiA+
ICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4gPiAgewo+ID4gPiArICAgICAgIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGVuZ2luZS0+aTkxNTsKPiA+ID4gKyAgICAgICB1
MzIgdmFsOwo+ID4gPiArCj4gPiA+ICAgICAgICAgLyogV2FfMTQwOTE0MjI1OSAqLwo+ID4gPiAg
ICAgICAgIFdBX1NFVF9CSVRfTUFTS0VEKEdFTjExX0NPTU1PTl9TTElDRV9DSElDS0VOMywKPiA+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xP
Ul9QSVBFKTsKPiA+ID4gKwo+ID4gPiArICAgICAgIC8qIFdhXzE2MDQ1NTU2MDc6dGdsICovCj4g
PiA+ICsgICAgICAgdmFsID0gSTkxNV9SRUFEKEZGX01PREUyKTsKPiA+Cj4gPiBObywgeW91IGNh
bid0IHVzZSBpbmRpc2NyaW1pbmF0ZSBtbWlvIGFjY2VzcyB0aGF0IG1heSBub3QgbWF0Y2ggdGhl
IGVuZ2luZQo+ID4gKGVuZ2luZS0+Z3QtPnVuY29yZSkuCj4gPgo+ID4gQnV0IHJlYWxseSBjb25z
aWRlciBkb2luZyB0aGUgcm13IGFzIHBhcnQgb2YgdGhlIHdhLgo+IAo+IEFuZDoKPiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzE5OTUyLz9zZXJpZXM9NjQyNzQmcmV2
PTEKPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzE3NjU0Lz9zZXJp
ZXM9NjM2NzAmcmV2PTIKPiAKPiBQbGVhc2UgZG9uJ3Qgc2ltcGx5IHJlc2VuZCBwYXRjaGVzIHRo
YXQgd2VyZSBhbHJlYWR5IHJldmlld2VkLgpIYXBweSBpZiBpdCBhbHJlYWR5IGdldHRpbmcgcmV2
aWV3ZWQuIEJlZm9yZSBzZW5kaW5nIGl0LCBJIGNvdWxkIGhhdmUgY29uZmlybWVkCndpdGggb3du
ZXIgb2YgdGhlIHBhdGNoLiBTb3JyeSBmb3IgdGhlIGluY29udmVuaWVuY2UuIExldHMgZHJvcCB0
aGlzIHBhdGNoLgoKLVJhbQo+IAo+IEx1Y2FzIERlIE1hcmNoaQo+IAo+ID4KPiA+ID4gKyAgICAg
ICB2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOwo+ID4gPiArICAgICAgIHZhbCB8PSBG
Rl9NT0RFMl9URFNfVElNRVJfMTI4Owo+ID4gPiArICAgICAgIHdhX3dyaXRlX21hc2tlZF9vcih3
YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKPiA+ID4gIH0KPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo+IAo+IAo+IAo+IC0tIAo+IEx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
