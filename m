Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 265A6B5310
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 18:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824286ED04;
	Tue, 17 Sep 2019 16:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F8F6ED04
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 16:35:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 09:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="386596892"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2019 09:35:26 -0700
Date: Tue, 17 Sep 2019 09:37:07 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190917163707.GA29180@intel.com>
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-6-manasi.d.navare@intel.com>
 <156576de-c2a0-bbdc-7434-209df041e97c@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156576de-c2a0-bbdc-7434-209df041e97c@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/display/icl: Disable
 transcoder port sync as part of crtc_disable() sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMDU6MDQ6MjhQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDktMDktMjAxOSBvbSAwNTo0MyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6
Cj4gPiBUaGlzIGNsZWFycyB0aGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgYml0cyBvZiB0aGUgVFJB
TlNfRERJX0ZVTkNfQ1RMMgo+ID4gcmVnaXN0ZXIgZHVyaW5nIGNydGNfZGlzYWJsZSgpLgo+ID4K
PiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5j
b20+Cj4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
TWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjMgKysrKysrKysr
KysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRl
eCAzNTFjOTBhZDcwNTkuLjA3ZGViMGI5M2Y1YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTQ0MzgsNiArNDQzOCwyNiBA
QCBzdGF0aWMgdm9pZCBpY2xfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQo+ID4gIAkJICAgdHJhbnNfZGRpX2Z1bmNfY3RsMl92
YWwpOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgdm9pZCBpY2xfZGlzYWJsZV90cmFuc2NvZGVy
X3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUp
Cj4gPiArewo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMob2xk
X2NydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ID4gKwlpOTE1X3JlZ190IHJlZzsK
PiA+ICsJdTMyIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsOwo+ID4gKwo+ID4gKwlpZiAob2xkX2Ny
dGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyID09IElOVkFMSURfVFJBTlNDT0RFUikKPiA+ICsJ
CXJldHVybjsKPiA+ICsKPiA+ICsJRFJNX0RFQlVHX0tNUygiRGlzYWJsaW5nIFRyYW5zY29kZXIg
UG9ydCBTeW5jIG9uIFNsYXZlIFRyYW5zY29kZXIgJXNcbiIsCj4gPiArCQkgICAgICB0cmFuc2Nv
ZGVyX25hbWUob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7Cj4gPiArCj4gPiArCXJl
ZyA9IFRSQU5TX0RESV9GVU5DX0NUTDIob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsK
PiA+ICsJdHJhbnNfZGRpX2Z1bmNfY3RsMl92YWwgPSBJOTE1X1JFQUQocmVnKTsKPiA+ICsJdHJh
bnNfZGRpX2Z1bmNfY3RsMl92YWwgJj0gfihQT1JUX1NZTkNfTU9ERV9FTkFCTEUgfAo+ID4gKwkJ
CQkgICAgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSyk7Cj4gPiArCUk5MTVfV1JJ
VEUocmVnLCB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7Cj4gPiArfQo+ID4gKwo+IFdvdWxkIGFu
eXRoaW5nIGJyZWFrIGlmIHdlIGp1c3Qgd3JvdGUgMCBoZXJlPwoKV2UgZG9udCB3YW50IHRvIGFj
Y2lkZW50bHkgcmVzZXQgb3RoZXIgYml0cyBpbiB0aGUgcmVnaXN0ZXIgd2hpY2ggYXJlIGZvciBE
U0kgYW5kIG5vdCB1c2VkIGN1cnJlbnRseSBidXQKdG8gbWFrZSB0aGlzIGZ1bmN0aW9uIG1vcmUg
ZnV0dXJlIHByb29mLCBJIGhhdmUgYXZvaWRlZCB3cml0aW5nIGEgMAoKQnV0IGlmIHlvdSBzdHJv
bmdseSBmZWVsIGFnYWluc3QgdGhpcywgSSBjYW4gc3dpdGNoIHRoaXMgdG8gd3JpdGluZyAwIGRp
cmVjdGx5LgoKTWFuYXNpCgo+ID4gIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9waXBlX2NvbmZp
Zyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gPiAgCQkJ
CSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ID4g
IHsKPiA+IEBAIC02Njg3LDYgKzY3MDcsOSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gPiAgCWlmIChp
bnRlbF9jcnRjX2hhc190eXBlKG9sZF9jcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkK
PiA+ICAJCWludGVsX2RkaV9zZXRfdmNfcGF5bG9hZF9hbGxvYyhvbGRfY3J0Y19zdGF0ZSwgZmFs
c2UpOwo+ID4gIAo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiA+ICsJCWlj
bF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKG9sZF9jcnRjX3N0YXRlKTsKPiA+ICsKPiA+
ICAJaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpCj4gPiAgCQlpbnRlbF9k
ZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMob2xkX2NydGNfc3RhdGUpOwo+ID4gIAo+IAo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
