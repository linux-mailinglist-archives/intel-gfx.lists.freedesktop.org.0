Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266E1D5ED5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6726E202;
	Mon, 14 Oct 2019 09:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007166E202
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:28:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 02:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="225024276"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2019 02:28:14 -0700
Date: Mon, 14 Oct 2019 14:58:18 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191014092817.GA26556@intel.com>
References: <20191013203012.25208-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191013203012.25208-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Tweak virtual
 unsubmission
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

T24gMjAxOS0xMC0xMyBhdCAyMTozMDoxMiArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFNp
bmNlIGNvbW1pdCBlMjE0NDUwM2JmM2IgKCJkcm0vaTkxNTogUHJldmVudCBib25kZWQgcmVxdWVz
dHMgZnJvbQo+IG92ZXJ0YWtpbmcgZWFjaCBvdGhlciBvbiBwcmVlbXB0aW9uIikgd2UgaGF2ZSBy
ZXN0cmljdGVkIHJlcXVlc3RzIHRvIHJ1bgo+IG9uIHRoZWlyIGNob3NlbiBlbmdpbmUgYWNyb3Nz
IHByZWVtcHRpb24gZXZlbnRzLiBXZSBjYW4gdGFrZSB0aGlzCj4gcmVzdHJpY3Rpb24gaW50byBh
Y2NvdW50IHRvIGtub3cgdGhhdCB3ZSB3aWxsIHdhbnQgdG8gcmVzdWJtaXQgdGhvc2UKPiByZXF1
ZXN0cyBvbnRvIHRoZSBzYW1lIHBoeXNpY2FsIGVuZ2luZSwgYW5kIHNvIGNhbiBzaG9ydGNpcmN1
aXQgdGhlCj4gdmlydHVhbCBlbmdpbmUgc2VsZWN0aW9uIHByb2Nlc3MgYW5kIGtlZXAgdGhlIHJl
cXVlc3Qgb24gdGhlIHNhbWUKPiBlbmdpbmUgZHVyaW5nIHVud2luZC4KPiAKPiBSZWZlcmVuY2Vz
OiBlMjE0NDUwM2JmM2IgKCJkcm0vaTkxNTogUHJldmVudCBib25kZWQgcmVxdWVzdHMgZnJvbSBv
dmVydGFraW5nIGVhY2ggb3RoZXIgb24gcHJlZW1wdGlvbiIpCkNocmlzLAoKQmFzZWQgb24gd2hh
dCBpIHVuZGVyc3Rvb2QgaGVyZSwgY2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUuCgpJZiBpdCBoZWxw
cywgcGxlYXNlIHVzZQpSZXZpZXdlZC1ieTogUmFtbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRl
bC5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDYgKysrLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMiArLQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IGU2YmY2MzNiNDhkNS4uMDM3MzJlM2Y1ZWM3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtODk1LDcgKzg5NSw2IEBAIF9f
dW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlX3JldmVyc2UocnEsIHJuLAo+ICAJCQkJCSAm
ZW5naW5lLT5hY3RpdmUucmVxdWVzdHMsCj4gIAkJCQkJIHNjaGVkLmxpbmspIHsKPiAtCQlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICpvd25lcjsKPiAgCj4gIAkJaWYgKGk5MTVfcmVxdWVzdF9jb21w
bGV0ZWQocnEpKQo+ICAJCQljb250aW51ZTsgLyogWFhYICovCj4gQEAgLTkxMCw4ICs5MDksNyBA
QCBfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKPiAgCQkgKiBlbmdpbmUgc28gdGhhdCBpdCBjYW4gYmUgbW92ZWQgYWNyb3NzIG9udG8g
YW5vdGhlciBwaHlzaWNhbAo+ICAJCSAqIGVuZ2luZSBhcyBsb2FkIGRpY3RhdGVzLgo+ICAJCSAq
Lwo+IC0JCW93bmVyID0gcnEtPmh3X2NvbnRleHQtPmVuZ2luZTsKPiAtCQlpZiAobGlrZWx5KG93
bmVyID09IGVuZ2luZSkpIHsKPiArCQlpZiAobGlrZWx5KHJxLT5leGVjdXRpb25fbWFzayA9PSBl
bmdpbmUtPm1hc2spKSB7Cj4gIAkJCUdFTV9CVUdfT04ocnFfcHJpbyhycSkgPT0gSTkxNV9QUklP
UklUWV9JTlZBTElEKTsKPiAgCQkJaWYgKHJxX3ByaW8ocnEpICE9IHByaW8pIHsKPiAgCQkJCXBy
aW8gPSBycV9wcmlvKHJxKTsKPiBAQCAtOTIyLDYgKzkyMCw4IEBAIF9fdW53aW5kX2luY29tcGxl
dGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJCQlsaXN0X21v
dmUoJnJxLT5zY2hlZC5saW5rLCBwbCk7Cj4gIAkJCWFjdGl2ZSA9IHJxOwo+ICAJCX0gZWxzZSB7
Cj4gKwkJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm93bmVyID0gcnEtPmh3X2NvbnRleHQtPmVu
Z2luZTsKPiArCj4gIAkJCS8qCj4gIAkJCSAqIERlY291cGxlIHRoZSB2aXJ0dWFsIGJyZWFkY3J1
bWIgYmVmb3JlIG1vdmluZyBpdAo+ICAJCQkgKiBiYWNrIHRvIHRoZSB2aXJ0dWFsIGVuZ2luZSAt
LSB3ZSBkb24ndCB3YW50IHRoZQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5k
ZXggNDM3ZjlmYzYyODJlLi5iOGE1NDU3MmE0ZjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYwo+IEBAIC02NDksNiArNjQ5LDcgQEAgX19pOTE1X3JlcXVlc3RfY3JlYXRlKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgZ2ZwX3QgZ2ZwKQo+ICAJcnEtPmdlbV9jb250ZXh0ID0g
Y2UtPmdlbV9jb250ZXh0Owo+ICAJcnEtPmVuZ2luZSA9IGNlLT5lbmdpbmU7Cj4gIAlycS0+cmlu
ZyA9IGNlLT5yaW5nOwo+ICsJcnEtPmV4ZWN1dGlvbl9tYXNrID0gY2UtPmVuZ2luZS0+bWFzazsK
PiAgCj4gIAlyY3VfYXNzaWduX3BvaW50ZXIocnEtPnRpbWVsaW5lLCB0bCk7Cj4gIAlycS0+aHdz
cF9zZXFubyA9IHRsLT5od3NwX3NlcW5vOwo+IEBAIC02NzEsNyArNjcyLDYgQEAgX19pOTE1X3Jl
cXVlc3RfY3JlYXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgZ2ZwX3QgZ2ZwKQo+ICAJcnEt
PmJhdGNoID0gTlVMTDsKPiAgCXJxLT5jYXB0dXJlX2xpc3QgPSBOVUxMOwo+ICAJcnEtPmZsYWdz
ID0gMDsKPiAtCXJxLT5leGVjdXRpb25fbWFzayA9IEFMTF9FTkdJTkVTOwo+ICAKPiAgCUlOSVRf
TElTVF9IRUFEKCZycS0+ZXhlY3V0ZV9jYik7Cj4gIAo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
