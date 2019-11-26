Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB691099E5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 09:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA2B6E249;
	Tue, 26 Nov 2019 08:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414796E249
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 08:01:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 00:01:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,244,1571727600"; d="scan'208";a="211276536"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 26 Nov 2019 00:01:35 -0800
Date: Tue, 26 Nov 2019 13:30:58 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191126080058.GA16347@intel.com>
References: <20191122040226.15933-1-ramalingam.c@intel.com>
 <20191122040226.15933-2-ramalingam.c@intel.com>
 <35de6d80-6ea2-9228-efec-54ef7cc30b12@linux.intel.com>
 <157441498323.2524.12613965179682887118@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157441498323.2524.12613965179682887118@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0yMiBhdCAwOToyOTo0MyArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMTEtMjIgMDk6MjE6NDUpCj4gPiAKPiA+IE9uIDIy
LzExLzIwMTkgMDQ6MDIsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiA+ID4gQEAgLTU2OCw5ICs1ODEs
MjIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKPiA+ID4gICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiA+ID4gICB7
Cj4gPiA+ICsgICAgIHUzMiB2YWw7Cj4gPiA+ICsKPiA+ID4gICAgICAgLyogV2FfMTQwOTE0MjI1
OTp0Z2wgKi8KPiA+ID4gICAgICAgV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNF
X0NISUNLRU4zLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBHRU4xMl9ESVNBQkxFX0NQ
U19BV0FSRV9DT0xPUl9QSVBFKTsKPiA+ID4gKwo+ID4gPiArICAgICAvKiBXYV8xNjA0NTU1NjA3
OnRnbCAqLwo+ID4gPiArICAgICB2YWwgPSBpbnRlbF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29y
ZSwgRkZfTU9ERTIpOwo+ID4gPiArICAgICB2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNL
Owo+ID4gPiArICAgICB2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPiA+ID4gKyAgICAg
LyoKPiA+ID4gKyAgICAgICogRklYTUU6IEZGX01PREUyIHJlZ2lzdGVyIGlzIG5vdCByZWFkYWJs
ZSB0aWxsIFRHTCBCMC4gV2UgY2FuCj4gPiA+ICsgICAgICAqIGVuYWJsZSB2ZXJpZmljYXRpb24g
b2YgV0EgZnJvbSB0aGUgbGF0ZXIgc3RlcHBpbmdzLCB3aGljaCBlbmFibGVzCj4gPiA+ICsgICAg
ICAqIHRoZSByZWFkIG9mIEZGX01PREUyLgo+ID4gPiArICAgICAgKi8KPiA+ID4gKyAgICAgX193
YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ss
IHZhbCwgMCk7Cj4gPiAKPiA+IElmIEkgd2FzIGEgYmV0dGluZyBtYW4gSSdkIGJldCBubyBvbmUg
d2lsbCBldmVyIHJlbWVtYmVyIHRvIGFkZCB0aGUgCj4gPiB2ZXJpZmljYXRpb24gYmFjay4gU28g
SSBoYXZlIHRvIHNheSBJIGRpc2FncmVlIHdpdGggTHVjYXMgb24gdGhpcyBwb2ludC4gCj4gPiBT
b21lb25lIGRvIGEgY2FzdGluZyB2b3RlIHBsZWFzZS4gOikKPiAKPiBJIHdvdWxkIGdvIHdpdGgg
SVNfVEdMX1JFVklEKEEwLCBBMCkgYXMgd2UgZXhwZWN0IGl0IHRvIGJlIHBpY2tlZCB1cCBieQo+
IHRoZSBzZWxmdGVzdHMgaWYgd2UgaGF2ZSBhIG5ldyBzdGVwcGluZyB0aGF0IGlzIHVuZml4ZWQg
LS0gYW5kIGEgYmxpcCBpbgo+IENJIGlzIGEgbXVjaCBjbGVhcmVyIHJlbWluZGVyIHRvIGNvbWUg
YmFjayBhbmQgcmV2aXNpdCB0aGlzIGNvZGUuIFdlCj4gc2hvdWxkIGJlIGFibGUgdG8gZ28gIm9v
cHMsIGxpdmVfd29ya2Fyb3VuZHMgaXMgcmVkLCBmYWlsaW5nIG9uIGN0eDoweGYwMCIKPiBhbmQg
ZnJvbSB0aGVyZSBmaW5kIHRoaXMgZml4bWUuIEFuZCBzbyB1cGRhdGUgZm9yIGEgbmV3IHN0ZXBw
aW5nIGluIHRoZQo+IGNvdXJzZSBvZiBhIGRheSAoYmVjYXVzZSB0aGF0J3MgaG93IGxvbmcgaXQg
dGFrZXMgZm9yIENJIHRvIGFwcHJvdmUgYQo+IHBhdGNoKS4KVHZydGtvIGFuZCBDaHJpcywKClNv
IEkgdGFrZSBpdCBhcywgd2Ugd2FudCB0byBleGNsdWRlIHRoZSBXQSB2ZXJpZmljYXRpb24gZm9y
IHRoZSBjdXJyZW50CnN0ZXBwaW5ncyBhbG9uZSB0aGF0IGlzIEEwIGFsb25lLCB3aGVuIG5ldyBz
dGVwcGluZyBjb21lcyB3aXRoCnJlYWRhYmlsaXR5IGJyb2tlbiB0aGVuIHdlIHdpbGwgZXhjdWRl
IHRoZSB2ZXJpZmljYXRpb24gYXQgdGhhdCB0aW1lLgoKU2hhbGwgSSByZXZlcnQgdG8gdGhlIHBy
ZXZpb3VzIHZlcnNpb24gb2YgcGF0Y2gsIGp1c3QgdG8gZXhjbHVkZSB0aGUgV0EKdmVyaWZpY2F0
aW9uIGZvciBBMCBhbG9uZS4/CgotUmFtCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
