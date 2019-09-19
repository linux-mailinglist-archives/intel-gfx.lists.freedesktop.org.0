Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2440AB8269
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 22:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B1C6FB29;
	Thu, 19 Sep 2019 20:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167C56FB59
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 20:26:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 13:26:47 -0700
X-IronPort-AV: E=Sophos;i="5.64,526,1559545200"; d="scan'208";a="181595177"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 13:26:46 -0700
Date: Thu, 19 Sep 2019 23:25:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190919202553.GJ29039@ideak-desk.fi.intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-11-jose.souza@intel.com>
 <20190919192533.GH29039@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919192533.GH29039@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 10/13] drm/i915/tgl: Check the UC health
 of tc controllers after power on
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMTA6MjU6MzNQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDA1OjA3OjIzUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6Cj4gPiBOZXcgc3RlcCBhZGRlZCBmb3IgVEdMLCByZXF1aXJlZCBm
b3IgdXMgdG8gY2hlY2sgdGhlIFRDCj4gPiBtaWNyb2NvbnRyb2xsZXIgaGVhbHRoIGFmdGVyIHBv
d2VyIG9uIFRDIGF1eC4KPiA+IAo+ID4gQlNwZWM6IDQ5Mjk0Cj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+IFJl
dmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gCj4gPiAtLS0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDEz
ICsrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYwo+ID4gaW5kZXggY2U4OGEyNzIyOWVmLi5mMTE4NmJjMjM1NDIgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKPiA+IEBAIC01NjIsNiArNTYyLDggQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0
X3JlZl9oZWxkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ICAKPiA+ICAj
ZW5kaWYKPiA+ICAKPiA+ICsjZGVmaW5lIFRHTF9BVVhfUFdfVE9fVENfUE9SVChwd19pZHgpCSgo
cHdfaWR4KSAtIFRHTF9QV19DVExfSURYX0FVWF9UQzEpCj4gPiArCj4gPiAgc3RhdGljIHZvaWQK
PiA+ICBpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCj4gPiAgCQkJCSBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93
ZWxsKQo+ID4gQEAgLTU3OCw2ICs1ODAsMTcgQEAgaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9l
bmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gIAlJOTE1X1dSSVRF
KERQX0FVWF9DSF9DVEwoYXV4X2NoKSwgdmFsKTsKPiA+ICAKPiA+ICAJaHN3X3Bvd2VyX3dlbGxf
ZW5hYmxlKGRldl9wcml2LCBwb3dlcl93ZWxsKTsKPiA+ICsKPiA+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIgJiYgIXBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQpIHsKPiA+
ICsJCWVudW0gdGNfcG9ydCB0Y19wb3J0Owo+ID4gKwo+ID4gKwkJdGNfcG9ydCA9IFRHTF9BVVhf
UFdfVE9fVENfUE9SVChwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4KTsKPiA+ICsJCUk5MTVfV1JJ
VEUoSElQX0lOREVYX1JFRyh0Y19wb3J0KSwgSElQX0lOREVYX1ZBTCh0Y19wb3J0LCAweDIpKTsK
Ck5pdDogaW5zdGVhZCBvZiBoYXJkLWNvZGluZyB0aGUgdXBwZXIgYml0cyB0aGUgREtMIFBIWSBy
ZWdzIHNob3VsZCBiZSBkZWZpbmVkIGFzCnRoZSBmdWxsIGFkZHJlc3MgKGZvciBpbnN0YW5jZSBi
YXNlICsgMHgyMzZDIGZvciBES0xfQ01OX1VDX0RXXzI3KSBhbmQKdXNlIGhlbHBlcnMgaGVyZSB0
byBnZXQgdGhlIGxvdy9oaWdoIGJpdHMgZnJvbSB0aGUgZnVsbCBhZGRyZXNzLgoKPiA+ICsKPiA+
ICsJCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3ByaXYsIERLTF9DTU5fVUNfRFdfMjco
dGNfcG9ydCksCj4gPiArCQkJCQkgIERLTF9DTU5fVUNfRFcyN19VQ19IRUFMVEgsIDEpKQo+ID4g
KwkJCURSTV9XQVJOKCJUaW1lb3V0IHdhaXRpbmcgVEMgdUMgaGVhbHRoXG4iKTsKPiA+ICsJfQo+
ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdm9pZAo+ID4gLS0gCj4gPiAyLjIzLjAKPiA+IAo+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
