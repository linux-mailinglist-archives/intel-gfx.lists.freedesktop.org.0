Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EC09E2E3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 10:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAA1896EC;
	Tue, 27 Aug 2019 08:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4085489708;
 Tue, 27 Aug 2019 08:41:07 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 01:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="355704535"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2019 01:41:05 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.141) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 27 Aug 2019 09:41:04 +0100
Date: Tue, 27 Aug 2019 11:41:02 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190827084102.vrqlp66t7lopv3cs@ahiler-desk1.fi.intel.com>
References: <20190826152000.23394-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826152000.23394-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.141]
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_mmap_gtt: Race
 mmap offset generation against closure
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgMDQ6MjA6MDBQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgfCA5OCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDk4IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyBiL3Rlc3Rz
L2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiBpbmRleCA4ZWZmOTE4NTAuLjgxMDY4ZjdkMSAxMDA2NDQK
PiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1f
bW1hcF9ndHQuYwo+IEBAIC0yNiw2ICsyNiw3IEBACj4gICAqLwo+ICAKPiAgI2luY2x1ZGUgPHVu
aXN0ZC5oPgo+ICsjaW5jbHVkZSA8c3RkYXRvbWljLmg+Cj4gICNpbmNsdWRlIDxzdGRsaWIuaD4K
PiAgI2luY2x1ZGUgPHN0ZGlvLmg+Cj4gICNpbmNsdWRlIDxzdHJpbmcuaD4KPiBAQCAtMzYwLDYg
KzM2MSw5OSBAQCB0ZXN0X2lzb2xhdGlvbihpbnQgaTkxNSkKPiAgCWlndF9hc3NlcnQocHRyID09
IE1BUF9GQUlMRUQpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZAo+ICt0ZXN0X2Nsb3NlX3JhY2Uo
aW50IGk5MTUpCj4gK3sKPiArCWNvbnN0IGludCBuY3B1cyA9IHN5c2NvbmYoX1NDX05QUk9DRVNT
T1JTX09OTE4pOwo+ICsJdWludDMyX3QgKmhhbmRsZXM7Cj4gKwo+ICsJaGFuZGxlcyA9IG1tYXA2
NCgwLCA0MDk2LCBQUk9UX1dSSVRFLCBNQVBfU0hBUkVEIHwgTUFQX0FOT04sIC0xLCAwKTsKPiAr
CWlndF9hc3NlcnQoaGFuZGxlcyAhPSBNQVBfRkFJTEVEKTsKPiArCj4gKwlpZ3RfZm9yayhjaGls
ZCwgbmNwdXMpIHsKPiArCQlkbyB7Cj4gKwkJCXN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9ndHQg
bW1hcF9hcmcgPSB7fTsKPiArCQkJaW50IGkgPSAxICsgcmFuZG9tKCkgJSBuY3B1czsKPiArCQkJ
dWludDMyX3Qgb2xkOwo+ICsKPiArCQkJbW1hcF9hcmcuaGFuZGxlID0gZ2VtX2NyZWF0ZShpOTE1
LCA0MDk2KTsKPiArCQkJb2xkID0gYXRvbWljX2V4Y2hhbmdlKCZoYW5kbGVzW2ldLCBtbWFwX2Fy
Zy5oYW5kbGUpOwoKLi4vdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYzozODA6MTA6IGVycm9yOiBh
ZGRyZXNzIGFyZ3VtZW50IHRvIGF0b21pYyBvcGVyYXRpb24gbXVzdCBiZSBhIHBvaW50ZXIgdG8g
X0F0b21pYyB0eXBlICgndWludDMyX3QgKicgKGFrYSAndW5zaWduZWQgaW50IConKSBpbnZhbGlk
KQogICAgICAgICAgICAgICAgICAgICAgICBvbGQgPSBhdG9taWNfZXhjaGFuZ2UoJmhhbmRsZXNb
aV0sIG1tYXBfYXJnLmhhbmRsZSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4gICAg
ICAgICAgICAgICB+fn5+fn5+fn5+fgovdXNyL2xpYjY0L2NsYW5nLzguMC4wL2luY2x1ZGUvc3Rk
YXRvbWljLmg6MTM3OjQyOiBub3RlOiBleHBhbmRlZCBmcm9tIG1hY3JvICdhdG9taWNfZXhjaGFu
Z2UnCiNkZWZpbmUgYXRvbWljX2V4Y2hhbmdlKG9iamVjdCwgZGVzaXJlZCkgX19jMTFfYXRvbWlj
X2V4Y2hhbmdlKG9iamVjdCwgZGVzaXJlZCwgX19BVE9NSUNfU0VRX0NTVCkKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeICAgICAgICAgICAgICAgICAgICAgfn5+fn5+
Ci4uL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmM6NDIzOjEwOiBlcnJvcjogYWRkcmVzcyBhcmd1
bWVudCB0byBhdG9taWMgb3BlcmF0aW9uIG11c3QgYmUgYSBwb2ludGVyIHRvIF9BdG9taWMgdHlw
ZSAoJ3VpbnQzMl90IConIChha2EgJ3Vuc2lnbmVkIGludCAqJykgaW52YWxpZCkKICAgICAgICAg
ICAgICAgICAgICAgICAgb2xkID0gYXRvbWljX2V4Y2hhbmdlKCZoYW5kbGVzW2ldLAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBeICAgICAgICAgICAgICAgfn5+fn5+fn5+fn4KL3Vzci9s
aWI2NC9jbGFuZy84LjAuMC9pbmNsdWRlL3N0ZGF0b21pYy5oOjEzNzo0Mjogbm90ZTogZXhwYW5k
ZWQgZnJvbSBtYWNybyAnYXRvbWljX2V4Y2hhbmdlJwojZGVmaW5lIGF0b21pY19leGNoYW5nZShv
YmplY3QsIGRlc2lyZWQpIF9fYzExX2F0b21pY19leGNoYW5nZShvYmplY3QsIGRlc2lyZWQsIF9f
QVRPTUlDX1NFUV9DU1QpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XiAgICAgICAgICAgICAgICAgICAgIH5+fn5+fgoyIGVycm9ycyBnZW5lcmF0ZWQuCgpodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2lndC1jaS10YWdzLy0vam9icy81MzU1OTIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
