Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ADBC09B4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 18:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 676D66E13A;
	Fri, 27 Sep 2019 16:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFCE6E13A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 16:39:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 09:39:52 -0700
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="180561803"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 09:39:50 -0700
Date: Fri, 27 Sep 2019 19:38:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190927163849.GG29139@ideak-desk.fi.intel.com>
References: <20190926145621.9090-1-anshuman.gupta@intel.com>
 <20190926145621.9090-8-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926145621.9090-8-anshuman.gupta@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v9 7/7] drm/i915/tgl: Add DC3CO counter in
 i915_dmc_info
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMDg6MjY6MjFQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gQWRkaW5nIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbyBkZWJ1Z2ZzIHdp
bGwgYmUKPiB1c2VmdWwgZm9yIERDM0NPIHZhbGlkYXRpb24uCj4gRE1DIGZpcm13YXJlIHVzZXMg
RE1DX0RFQlVHMyByZWdpc3RlciBhcyBEQzNDTyBjb3VudGVyCj4gcmVnaXN0ZXIgb24gVEdMLCBh
cyBwZXIgQi5TcGVjcyBETUNfREVCVUczIGlzIGdlbmVyYWwKPiBwdXJwb3NlIHJlZ2lzdGVyLgo+
IAo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jIHwgNiArKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgfCAy
ICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCBiNWI0NDlhODhjZjEuLjhhMTZiYmQzMTIxMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gQEAgLTI0MDcsNiArMjQwNywxMiBA
QCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVz
ZWQpCj4gIAlzZXFfcHJpbnRmKG0sICJ2ZXJzaW9uOiAlZC4lZFxuIiwgQ1NSX1ZFUlNJT05fTUFK
T1IoY3NyLT52ZXJzaW9uKSwKPiAgCQkgICBDU1JfVkVSU0lPTl9NSU5PUihjc3ItPnZlcnNpb24p
KTsKPiAgCj4gKwkvKgo+ICsJICogVEdMIERNQyBmL3cgdXNlcyBETUNfREVCVUczIHJlZ2lzdGVy
IGZvciBEQzNDTyBjb3VudGVyLgo+ICsJICovCgpUaGUgYWJvdmUgaXMgb2J2aW91cyBmcm9tIHRo
ZSBjb2RlIGl0c2VsZiwgc28gd2UgZG9uJ3QgbmVlZCBhIGNvbW1lbnQKZm9yIGl0LiBQbGVhc2Ug
YWxzbyBjb25zaWRlciByZW1vdmluZyBhbGwgb3RoZXIgY29tbWVudHMgaW4gdGhlIHBhdGNoc2V0
CnRoYXQgc3RhdGUgb25seSB3aGF0IGlzIG9idmlvdXMgZnJvbSB0aGUgY29kZS4KCj4gKwlpZiAo
SVNfVElHRVJMQUtFKGRldl9wcml2KSkKClRoZSBhYm92ZSBzaG91bGQgbWF0Y2ggdGhlIGNoZWNr
IGluIGdldF9hbGxvd2VkX2RjX21hc2soKS4KCj4gKwkJc2VxX3ByaW50ZihtLCAiREMzQ08gY291
bnQ6ICVkXG4iLCBJOTE1X1JFQUQoRE1DX0RFQlVHMykpOwo+ICsKPiAgCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKSB7Cj4gIAkJZGM1X3JlZyA9IFRHTF9ETUNfREVCVUdfREM1X0NPVU5U
Owo+ICAJCWRjNl9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVDsKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBpbmRleCAzZWU5NzIwYWYyMDcuLmFmODEwZjZlZDY1MiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+IEBAIC03MjYzLDYgKzcyNjMsOCBAQCBlbnVtIHsKPiAgI2RlZmlu
ZSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVAlfTU1JTygweDEwMTA4NCkKPiAgI2RlZmluZSBUR0xf
RE1DX0RFQlVHX0RDNl9DT1VOVAlfTU1JTygweDEwMTA4OCkKPiAgCj4gKyNkZWZpbmUgRE1DX0RF
QlVHMwkJX01NSU8oMHgxMDEwOTApCj4gKwo+ICAvKiBpbnRlcnJ1cHRzICovCj4gICNkZWZpbmUg
REVfTUFTVEVSX0lSUV9DT05UUk9MICAgKDEgPDwgMzEpCj4gICNkZWZpbmUgREVfU1BSSVRFQl9G
TElQX0RPTkUgICAgKDEgPDwgMjkpCj4gLS0gCj4gMi4yMS4wCj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
