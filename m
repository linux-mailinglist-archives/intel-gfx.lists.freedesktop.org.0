Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 886F83C355A
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 17:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21E86EB3F;
	Sat, 10 Jul 2021 15:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B326EB3F;
 Sat, 10 Jul 2021 15:52:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10041"; a="209651130"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="209651130"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2021 08:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="429184311"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2021 08:52:50 -0700
Received: from [10.249.151.15] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.151.15])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16AFqnBR001569; Sat, 10 Jul 2021 16:52:49 +0100
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
 <20210710012026.19705-6-vinay.belgaumkar@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <4b6e863b-a4c4-c317-5383-7b623d659f16@intel.com>
Date: Sat, 10 Jul 2021 17:52:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210710012026.19705-6-vinay.belgaumkar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/16] drm/i915/guc/slpc: Adding slpc
 communication interfaces
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC4wNy4yMDIxIDAzOjIwLCBWaW5heSBCZWxnYXVta2FyIHdyb3RlOgo+IFJlcGxpY2F0
ZSB0aGUgU0xQQyBoZWFkZXIgZmlsZSBpbiBHdUMgZm9yIHRoZSBtb3N0IHBhcnQuIFRoZXJlIGFy
ZQoKd2hhdCB5b3UgbWVhbiBieSAicmVwbGljYXRlIiBoZXJlPwoKPiBzb21lIFNMUEMgbW9kZSBi
YXNlZCBwYXJhbWV0ZXJzIHdoaWNoIGhhdmVuJ3QgYmVlbiBpbmNsdWRlZCBzaW5jZQo+IHdlIGFy
ZSBub3QgdXNpbmcgdGhlbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaW5heSBCZWxnYXVta2FyIDx2
aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdW5kYXJlc2FuIFN1
amFyaXRoYSA8c3VqYXJpdGhhLnN1bmRhcmVzYW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyAgICAgICAgfCAgIDQgKwo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oICAgfCAgIDIgKwo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwYy5oICAgfCAgIDIgKwo+ICAuLi4vZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjX2Z3aWYuaCAgfCAyNTUgKysrKysrKysrKysr
KysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjYzIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjX2Z3aWYu
aAo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCj4gaW5kZXggYjlhODA5
ZjJkMjIxLi45ZDYxYjJkNTRkZTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWMuYwo+IEBAIC0yMDIsMTEgKzIwMiwxNSBAQCBzdGF0aWMgdTMyIGd1Y19jdGxfZGVidWdf
ZmxhZ3Moc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICAKPiAgc3RhdGljIHUzMiBndWNfY3RsX2Zl
YXR1cmVfZmxhZ3Moc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICB7Cj4gKwlzdHJ1Y3QgaW50ZWxf
Z3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7Cj4gIAl1MzIgZmxhZ3MgPSAwOwo+ICAKPiAgCWlmICgh
aW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfdXNlZChndWMpKQo+ICAJCWZsYWdzIHw9IEdVQ19DVExf
RElTQUJMRV9TQ0hFRFVMRVI7Cj4gIAo+ICsJaWYgKGludGVsX3VjX3VzZXNfZ3VjX3NscGMoJmd0
LT51YykpCj4gKwkJZmxhZ3MgfD0gR1VDX0NUTF9FTkFCTEVfU0xQQzsKPiArCj4gIAlyZXR1cm4g
ZmxhZ3M7Cj4gIH0KPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19md2lmLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
ZndpZi5oCj4gaW5kZXggOTRiYjFjYTZmODg5Li4xOWUyNTA0ZDdhMzYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19md2lmLmgKPiBAQCAtMTE0LDYgKzExNCw4
IEBACj4gICNkZWZpbmUgICBHVUNfQURTX0FERFJfU0hJRlQJCTEKPiAgI2RlZmluZSAgIEdVQ19B
RFNfQUREUl9NQVNLCQkoMHhGRkZGRiA8PCBHVUNfQURTX0FERFJfU0hJRlQpCj4gIAo+ICsjZGVm
aW5lIEdVQ19DVExfRU5BQkxFX1NMUEMgICAgICAgICAgICBCSVQoMikKCnRoaXMgc2hvdWxkIGJl
IGRlZmluZWQgY2xvc2VyIHRvIEdVQ19DVExfRkVBVFVSRQoKPiArCj4gICNkZWZpbmUgR1VDX0NU
TF9NQVhfRFdPUkRTCQkoU09GVF9TQ1JBVENIX0NPVU5UIC0gMikgLyogWzEuLjE0XSAqLwo+ICAK
PiAgLyogR2VuZXJpYyBHVCBTeXNJbmZvIGRhdGEgdHlwZXMgKi8KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmgKPiBpbmRleCA3NGZkODY3NjkxNjMuLjk4MDM2
NDU5YTFhMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfc2xwYy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3Ns
cGMuaAo+IEBAIC02LDYgKzYsOCBAQAo+ICAjaWZuZGVmIF9JTlRFTF9HVUNfU0xQQ19IXwo+ICAj
ZGVmaW5lIF9JTlRFTF9HVUNfU0xQQ19IXwo+ICAKPiArI2luY2x1ZGUgImludGVsX2d1Y19zbHBj
X2Z3aWYuaCIKCmRvZXNuJ3Qgc2VlbSB0byBiZSBuZWVkZWQgcmlnaHQgbm93Cgo+ICsKPiAgc3Ry
dWN0IGludGVsX2d1Y19zbHBjIHsKPiAgfTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjX2Z3aWYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjX2Z3aWYuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwLi4yYTVlNzE0MjgzNzQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGNfZndpZi5oCgpJJ3ZlIHN0
YXJ0ZWQgdG8gbW92ZSBhbGwgcHVyZSBBQkkgZGVmaW5pdGlvbnMgdG8gZmlsZXMgaW4gYWJpLyBm
b2xkZXIsCmxlYXZpbmcgaW4gZ3VjX2Z3aWYuaCBvbmx5IG91ciBuZXh0IGxldmVsIGhlbHBlcnMv
d3JhcHBlcnMuCgpDYW4geW91IG1vdmUgdGhlc2UgU0xQQyBkZWZpbml0aW9uIHRoZXJlIHRvbyA/
IG1heWJlIGFzIGRlZGljYXRlZDoKCglhYmkvZ3VjX3NscGNfYWJpLmgKCj4gQEAgLTAsMCArMSwy
NTUgQEAKPiArLyoKPiArICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdXNlIHByb3Bl
ciBmb3JtYXQKCj4gKyAqCj4gKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9u
CgoyMDIxCgo+ICsgKi8KPiArI2lmbmRlZiBfSU5URUxfR1VDX1NMUENfRldJRl9IXwo+ICsjZGVm
aW5lIF9JTlRFTF9HVUNfU0xQQ19GV0lGX0hfCj4gKwo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMu
aD4KPiArCj4gKy8qIFRoaXMgZmlsZSByZXBsaWNhdGVzIHRoZSBoZWFkZXIgaW4gR3VDIGNvZGUg
Zm9yIGhhbmRsaW5nIFNMUEMgcmVsYXRlZAo+ICsgKiBkYXRhIHN0cnVjdHVyZXMgYW5kIHNpemVz
Cj4gKyAqLwoKdXNlIHByb3BlciBmb3JtYXQgZm9yIG11bHRpLWxpbmUgY29tbWVudHM6CgoJLyoK
CSAqIGJsYWggYmxhaAoJICogYmxhaCBibGFoCgkgKi8KCj4gKwo+ICsvKiBTTFBDIGV4cG9zZXMg
Y2VydGFpbiBwYXJhbWV0ZXJzIGZvciBnbG9iYWwgY29uZmlndXJhdGlvbiBieSB0aGUgaG9zdC4K
PiArICogVGhlc2UgYXJlIHJlZmVycmVkIHRvIGFzIG92ZXJyaWRlIHBhcmFtZXRlcnMsIGJlY2F1
c2UgaW4gbW9zdCBjYXNlcwo+ICsgKiB0aGUgaG9zdCB3aWxsIG5vdCBuZWVkIHRvIG1vZGlmeSB0
aGUgZGVmYXVsdCB2YWx1ZXMgdXNlZCBieSBTTFBDLgo+ICsgKiBTTFBDIHJlbWVtYmVycyB0aGUg
ZGVmYXVsdCB2YWx1ZXMgd2hpY2ggYWxsb3dzIHRoZSBob3N0IHRvIGVhc2lseSByZXN0b3JlCj4g
KyAqIHRoZW0gYnkgc2ltcGx5IHVuc2V0dGluZyB0aGUgb3ZlcnJpZGUuIFRoZSBob3N0IGNhbiBz
ZXQgb3IgdW5zZXQgb3ZlcnJpZGUKPiArICogcGFyYW1ldGVycyBkdXJpbmcgU0xQQyAocmUtKWlu
aXRpYWxpemF0aW9uIHVzaW5nIHRoZSBTTFBDIFJlc2V0IGV2ZW50Lgo+ICsgKiBUaGUgaG9zdCBj
YW4gYWxzbyBzZXQgb3IgdW5zZXQgb3ZlcnJpZGUgcGFyYW1ldGVycyBvbiB0aGUgZmx5IHVzaW5n
IHRoZQo+ICsgKiBQYXJhbWV0ZXIgU2V0IGFuZCBQYXJhbWV0ZXIgVW5zZXQgZXZlbnRzCj4gKyAq
Lwo+ICsjZGVmaW5lIFNMUENfTUFYX09WRVJSSURFX1BBUkFNRVRFUlMJMjU2Cj4gKyNkZWZpbmUg
U0xQQ19PVkVSUklERV9CSVRGSUVMRF9TSVpFIFwKPiArCQkoU0xQQ19NQVhfT1ZFUlJJREVfUEFS
QU1FVEVSUyAvIDMyKQo+ICsKPiArI2RlZmluZSBTTFBDX1BBR0VfU0laRV9CWVRFUwkJCTQwOTYK
PiArI2RlZmluZSBTTFBDX0NBQ0hFTElORV9TSVpFX0JZVEVTCQk2NAo+ICsjZGVmaW5lIFNMUENf
U0hBUkVfREFUQV9TSVpFX0JZVEVfSEVBREVSCVNMUENfQ0FDSEVMSU5FX1NJWkVfQllURVMKPiAr
I2RlZmluZSBTTFBDX1NIQVJFX0RBVEFfU0laRV9CWVRFX1BMQVRGT1JNX0lORk8JU0xQQ19DQUNI
RUxJTkVfU0laRV9CWVRFUwo+ICsjZGVmaW5lIFNMUENfU0hBUkVfREFUQV9TSVpFX0JZVEVfVEFT
S19TVEFURQlTTFBDX0NBQ0hFTElORV9TSVpFX0JZVEVTCj4gKyNkZWZpbmUgU0xQQ19TSEFSRV9E
QVRBX01PREVfREVGTl9UQUJMRV9TSVpFCVNMUENfUEFHRV9TSVpFX0JZVEVTCgpjYW4geW91IHB1
dCBzb21lIHNpbXBseSBkaWFncmFtIHRoYXQgd291bGQgZGVzY3JpYmUgdGhpcyBsYXlvdXQgPwoK
PiArCj4gKyNkZWZpbmUgU0xQQ19TSEFSRV9EQVRBX1NJWkVfQllURV9NQVgJCSgyICogU0xQQ19Q
QUdFX1NJWkVfQllURVMpCj4gKwo+ICsvKiBDYWNoZWxpbmUgc2l6ZSBhbGlnbmVkIChUb3RhbCBz
aXplIG5lZWRlZCBmb3IKPiArICogU0xQTV9LTURfTUFYX09WRVJSSURFX1BBUkFNRVRFUlM9MjU2
IGlzIDEwODggYnl0ZXMpCj4gKyAqLwo+ICsjZGVmaW5lIFNMUENfU0hBUkVfREFUQV9TSVpFX0JZ
VEVfUEFSQU0JCSgoKCgoU0xQQ19NQVhfT1ZFUlJJREVfUEFSQU1FVEVSUyAqIDQpIFwKPiArCQkJ
CQkJKyAoKFNMUENfTUFYX09WRVJSSURFX1BBUkFNRVRFUlMgLyAzMikgKiA0KSkgXAo+ICsJCSsg
KFNMUENfQ0FDSEVMSU5FX1NJWkVfQllURVMtMSkpIC8gU0xQQ19DQUNIRUxJTkVfU0laRV9CWVRF
UykqU0xQQ19DQUNIRUxJTkVfU0laRV9CWVRFUykKPiArCj4gKyNkZWZpbmUgU0xQQ19TSEFSRV9E
QVRBX1NJWkVfQllURV9PVEhFUgkJKFNMUENfU0hBUkVfREFUQV9TSVpFX0JZVEVfTUFYIC0gXAo+
ICsJCQkJCShTTFBDX1NIQVJFX0RBVEFfU0laRV9CWVRFX0hFQURFUiBcCj4gKwkJCQkJKyBTTFBD
X1NIQVJFX0RBVEFfU0laRV9CWVRFX1BMQVRGT1JNX0lORk8gXAo+ICsJCQkJCSsgU0xQQ19TSEFS
RV9EQVRBX1NJWkVfQllURV9UQVNLX1NUQVRFIFwKPiArCQkJCQkrIFNMUENfU0hBUkVfREFUQV9T
SVpFX0JZVEVfUEFSQU0gXAo+ICsJCQkJCSsgU0xQQ19TSEFSRV9EQVRBX01PREVfREVGTl9UQUJM
RV9TSVpFKSkKPiArCj4gKyNkZWZpbmUgU0xQQ19FVkVOVChpZCwgYXJnYykJCQkoKHUzMikoaWQp
IDw8IDggfCAoYXJnYykpCj4gKwo+ICsjZGVmaW5lIFNMUENfUEFSQU1fVEFTS19ERUZBVUxUCQkJ
MAo+ICsjZGVmaW5lIFNMUENfUEFSQU1fVEFTS19FTkFCTEVECQkJMQo+ICsjZGVmaW5lIFNMUENf
UEFSQU1fVEFTS19ESVNBQkxFRAkJMgo+ICsjZGVmaW5lIFNMUENfUEFSQU1fVEFTS19VTktOT1dO
CQkJMwoKbWFueSB2YWx1ZXMgYmVsb3cgYXJlIGRlZmluZWQgYXMgZW51bSwgd2h5IHRoZXNlIHZh
bHVlcyBhcmUgI2RlZmluZXMgPwoKYW5kIGlzIHRoZXJlIGFueSByZWxhdGlvbiB0byB0aGVzZSBv
bmVzIGRlZmluZWQgYmVsb3cgKGxvb2sgc2ltaWxhcik/CgogKwlTTFBDX1BBUkFNX1RBU0tfRU5B
QkxFX0dUUEVSRiA9IDAsCiArCVNMUENfUEFSQU1fVEFTS19ESVNBQkxFX0dUUEVSRiA9IDEsCiAr
CVNMUENfUEFSQU1fVEFTS19FTkFCTEVfQkFMQU5DRVIgPSAyLAogKwlTTFBDX1BBUkFNX1RBU0tf
RElTQUJMRV9CQUxBTkNFUiA9IDMsCiArCVNMUENfUEFSQU1fVEFTS19FTkFCTEVfRENDID0gNCwK
ICsJU0xQQ19QQVJBTV9UQVNLX0RJU0FCTEVfRENDID0gNSwKCj4gKwo+ICtlbnVtIHNscGNfc3Rh
dHVzIHsKPiArCVNMUENfU1RBVFVTX09LID0gMCwKPiArCVNMUENfU1RBVFVTX0VSUk9SID0gMSwK
PiArCVNMUENfU1RBVFVTX0lMTEVHQUxfQ09NTUFORCA9IDIsCj4gKwlTTFBDX1NUQVRVU19JTlZB
TElEX0FSR1MgPSAzLAo+ICsJU0xQQ19TVEFUVVNfSU5WQUxJRF9QQVJBTVMgPSA0LAo+ICsJU0xQ
Q19TVEFUVVNfSU5WQUxJRF9EQVRBID0gNSwKPiArCVNMUENfU1RBVFVTX09VVF9PRl9SQU5HRSA9
IDYsCj4gKwlTTFBDX1NUQVRVU19OT1RfU1VQUE9SVEVEID0gNywKPiArCVNMUENfU1RBVFVTX05P
VF9JTVBMRU1FTlRFRCA9IDgsCj4gKwlTTFBDX1NUQVRVU19OT19EQVRBID0gOSwKPiArCVNMUENf
U1RBVFVTX0VWRU5UX05PVF9SRUdJU1RFUkVEID0gMTAsCj4gKwlTTFBDX1NUQVRVU19SRUdJU1RF
Ul9MT0NLRUQgPSAxMSwKPiArCVNMUENfU1RBVFVTX1RFTVBPUkFSSUxZX1VOQVZBSUxBQkxFID0g
MTIsCj4gKwlTTFBDX1NUQVRVU19WQUxVRV9BTFJFQURZX1NFVCA9IDEzLAo+ICsJU0xQQ19TVEFU
VVNfVkFMVUVfQUxSRUFEWV9VTlNFVCA9IDE0LAo+ICsJU0xQQ19TVEFUVVNfVkFMVUVfTk9UX0NI
QU5HRUQgPSAxNSwKPiArCVNMUENfU1RBVFVTX01FTUlPX0VSUk9SID0gMTYsCj4gKwlTTFBDX1NU
QVRVU19FVkVOVF9RVUVVRURfUkVRX0RQQyA9IDE3LAo+ICsJU0xQQ19TVEFUVVNfRVZFTlRfUVVF
VUVEX05PUkVRX0RQQyA9IDE4LAo+ICsJU0xQQ19TVEFUVVNfTk9fRVZFTlRfUVVFVUVEID0gMTks
Cj4gKwlTTFBDX1NUQVRVU19PVVRfT0ZfU1BBQ0UgPSAyMCwKPiArCVNMUENfU1RBVFVTX1RJTUVP
VVQgPSAyMSwKPiArCVNMUENfU1RBVFVTX05PX0xPQ0sgPSAyMiwKPiArCVNMUENfU1RBVFVTX01B
WAo+ICt9Owo+ICsKPiArZW51bSBzbHBjX2V2ZW50X2lkIHsKPiArCVNMUENfRVZFTlRfUkVTRVQg
PSAwLAo+ICsJU0xQQ19FVkVOVF9TSFVURE9XTiA9IDEsCj4gKwlTTFBDX0VWRU5UX1BMQVRGT1JN
X0lORk9fQ0hBTkdFID0gMiwKPiArCVNMUENfRVZFTlRfRElTUExBWV9NT0RFX0NIQU5HRSA9IDMs
Cj4gKwlTTFBDX0VWRU5UX0ZMSVBfQ09NUExFVEUgPSA0LAo+ICsJU0xQQ19FVkVOVF9RVUVSWV9U
QVNLX1NUQVRFID0gNSwKPiArCVNMUENfRVZFTlRfUEFSQU1FVEVSX1NFVCA9IDYsCj4gKwlTTFBD
X0VWRU5UX1BBUkFNRVRFUl9VTlNFVCA9IDcsCj4gK307Cj4gKwo+ICtlbnVtIHNscGNfcGFyYW1f
aWQgewo+ICsJU0xQQ19QQVJBTV9UQVNLX0VOQUJMRV9HVFBFUkYgPSAwLAo+ICsJU0xQQ19QQVJB
TV9UQVNLX0RJU0FCTEVfR1RQRVJGID0gMSwKPiArCVNMUENfUEFSQU1fVEFTS19FTkFCTEVfQkFM
QU5DRVIgPSAyLAo+ICsJU0xQQ19QQVJBTV9UQVNLX0RJU0FCTEVfQkFMQU5DRVIgPSAzLAo+ICsJ
U0xQQ19QQVJBTV9UQVNLX0VOQUJMRV9EQ0MgPSA0LAo+ICsJU0xQQ19QQVJBTV9UQVNLX0RJU0FC
TEVfRENDID0gNSwKPiArCVNMUENfUEFSQU1fR0xPQkFMX01JTl9HVF9VTlNMSUNFX0ZSRVFfTUha
ID0gNiwKPiArCVNMUENfUEFSQU1fR0xPQkFMX01BWF9HVF9VTlNMSUNFX0ZSRVFfTUhaID0gNywK
PiArCVNMUENfUEFSQU1fR0xPQkFMX01JTl9HVF9TTElDRV9GUkVRX01IWiA9IDgsCj4gKwlTTFBD
X1BBUkFNX0dMT0JBTF9NQVhfR1RfU0xJQ0VfRlJFUV9NSFogPSA5LAo+ICsJU0xQQ19QQVJBTV9H
VFBFUkZfVEhSRVNIT0xEX01BWF9GUFMgPSAxMCwKPiArCVNMUENfUEFSQU1fR0xPQkFMX0RJU0FC
TEVfR1RfRlJFUV9NQU5BR0VNRU5UID0gMTEsCj4gKwlTTFBDX1BBUkFNX0dUUEVSRl9FTkFCTEVf
RlJBTUVSQVRFX1NUQUxMSU5HID0gMTIsCj4gKwlTTFBDX1BBUkFNX0dMT0JBTF9ESVNBQkxFX1JD
Nl9NT0RFX0NIQU5HRSA9IDEzLAo+ICsJU0xQQ19QQVJBTV9HTE9CQUxfT0NfVU5TTElDRV9GUkVR
X01IWiA9IDE0LAo+ICsJU0xQQ19QQVJBTV9HTE9CQUxfT0NfU0xJQ0VfRlJFUV9NSFogPSAxNSwK
PiArCVNMUENfUEFSQU1fR0xPQkFMX0VOQUJMRV9JQV9HVF9CQUxBTkNJTkcgPSAxNiwKPiArCVNM
UENfUEFSQU1fR0xPQkFMX0VOQUJMRV9BREFQVElWRV9CVVJTVF9UVVJCTyA9IDE3LAo+ICsJU0xQ
Q19QQVJBTV9HTE9CQUxfRU5BQkxFX0VWQUxfTU9ERSA9IDE4LAo+ICsJU0xQQ19QQVJBTV9HTE9C
QUxfRU5BQkxFX0JBTEFOQ0VSX0lOX05PTl9HQU1JTkdfTU9ERSA9IDE5LAo+ICsJU0xQQ19QQVJB
TV9HTE9CQUxfUlRfTU9ERV9UVVJCT19GUkVRX0RFTFRBX01IWiA9IDIwLAo+ICsJU0xQQ19QQVJB
TV9QV1JHQVRFX1JDX01PREUgPSAyMSwKPiArCVNMUENfUEFSQU1fRURSX01PREVfQ09NUFVURV9U
SU1FT1VUX01TID0gMjIsCj4gKwlTTFBDX1BBUkFNX0VEUl9RT1NfRlJFUV9NSFogPSAyMywKPiAr
CVNMUENfUEFSQU1fTUVESUFfRkZfUkFUSU9fTU9ERSA9IDI0LAo+ICsJU0xQQ19QQVJBTV9FTkFC
TEVfSUFfRlJFUV9MSU1JVElORyA9IDI1LAo+ICsJU0xQQ19QQVJBTV9TVFJBVEVHSUVTID0gMjYs
Cj4gKwlTTFBDX1BBUkFNX1BPV0VSX1BST0ZJTEUgPSAyNywKPiArCVNMUENfSUdOT1JFX0VGRklD
SUVOVF9GUkVRVUVOQ1kgPSAyOCwKCm5vIFBBUkFNIHRhZyBpbnNpZGUgdGhpcyBlbnVtIG5hbWUK
Cj4gKwlTTFBDX01BWF9QQVJBTSA9IDMyLAoKY2FuIHdlIG1vdmUgdGhpcyBvdXQgb2YgZW51bSwg
bWF5YmUgYXMgc3RhbmRhbG9uZSAjZGVmaW5lID8Kb3IgcmVtb3ZlIGl0IGFzIGRvZXNuJ3Qgc2Vl
bSB0byBiZSB1c2VmdWwgYXQgYWxsCgo+ICt9Owo+ICsKPiArZW51bSBzbHBjX2dsb2JhbF9zdGF0
ZSB7Cj4gKwlTTFBDX0dMT0JBTF9TVEFURV9OT1RfUlVOTklORyA9IDAsCj4gKwlTTFBDX0dMT0JB
TF9TVEFURV9JTklUSUFMSVpJTkcgPSAxLAo+ICsJU0xQQ19HTE9CQUxfU1RBVEVfUkVTRVRUSU5H
ID0gMiwKPiArCVNMUENfR0xPQkFMX1NUQVRFX1JVTk5JTkcgPSAzLAo+ICsJU0xQQ19HTE9CQUxf
U1RBVEVfU0hVVFRJTkdfRE9XTiA9IDQsCj4gKwlTTFBDX0dMT0JBTF9TVEFURV9FUlJPUiA9IDUK
PiArfTsKPiArCj4gK2VudW0gc2xwY19wbGF0Zm9ybV9za3Ugewo+ICsJU0xQQ19QTEFURk9STV9T
S1VfVU5ERUZJTkVEID0gMCwKPiArCVNMUENfUExBVEZPUk1fU0tVX1VMWCA9IDEsCj4gKwlTTFBD
X1BMQVRGT1JNX1NLVV9VTFQgPSAyLAo+ICsJU0xQQ19QTEFURk9STV9TS1VfVCA9IDMsCj4gKwlT
TFBDX1BMQVRGT1JNX1NLVV9NT0JMID0gNCwKPiArCVNMUENfUExBVEZPUk1fU0tVX0RUID0gNSwK
PiArCVNMUENfUExBVEZPUk1fU0tVX1VOS05PV04gPSA2LAo+ICt9Owo+ICsKPiArc3RydWN0IHNs
cGNfcGxhdGZvcm1faW5mbyB7Cj4gKwl1bmlvbiB7Cj4gKwkJdTMyIHNrdTsgIC8qKjwgU0tVIGlu
Zm8gKi8KPiArCQlzdHJ1Y3Qgewo+ICsJCQl1MzIgcmVzZXJ2ZWQ6ODsKPiArCQkJdTMyIGZ1c2Vk
X3NsaWNlX2NvdW50Ojg7Cj4gKwkJCXUzMiByZXNlcnZlZDE6MTY7Cj4gKwkJfTsKPiArCX07Cj4g
KyAgICAgICAgdW5pb24KPiArCXsKPiArCQl1MzIgYml0ZmllbGQyOyAgICAgICAvKio8IElBIGNh
cGFiaWxpdHkgaW5mbyovCj4gKwkJc3RydWN0IHsKPiArCQkJdTMyIG1heF9wMF9mcmVxX2JpbnM6
ODsKPiArCQkJdTMyIHAxX2ZyZXFfYmluczo4Owo+ICsJCQl1MzIgcGVfZnJlcV9iaW5zOjg7Cj4g
KwkJCXUzMiBwbl9mcmVxX2JpbnM6ODsKPiArCQl9Owo+ICsJfTsKPiArCXUzMiByZXNlcnZlZDJb
Ml07Cj4gK30gX19wYWNrZWQ7CgpJJ20gbm90IGEgYmlnIGZhbiBvZiB1c2luZyBDIGJpdGZpZWxk
cyBmb3IgaW50ZXJmYWNlIGRlZmluaXRpb25zCgpjYW4gd2Ugc3dpdGNoIHRvIHJlZ3VsYXIgI2Rl
ZmluZXMgYW5kIHVzZSBGSUVMRF9HRVR8UFJFUCA/Cgo+ICsKPiArc3RydWN0IHNscGNfdGFza19z
dGF0ZV9kYXRhIHsKPiArCXVuaW9uIHsKPiArCQl1MzIgYml0ZmllbGQxOwo+ICsJCXN0cnVjdCB7
Cj4gKwkJCXUzMiBndHBlcmZfdGFza19hY3RpdmU6MTsKPiArCQkJdTMyIGd0cGVyZl9zdGFsbF9w
b3NzaWJsZToxOwo+ICsJCQl1MzIgZ3RwZXJmX2dhbWluZ19tb2RlOjE7Cj4gKwkJCXUzMiBndHBl
cmZfdGFyZ2V0X2Zwczo4Owo+ICsJCQl1MzIgZGNjX3Rhc2tfYWN0aXZlOjE7Cj4gKwkJCXUzMiBp
bl9kY2M6MTsKPiArCQkJdTMyIGluX2RjdDoxOwo+ICsJCQl1MzIgZnJlcV9zd2l0Y2hfYWN0aXZl
OjE7Cj4gKwkJCXUzMiBpYmNfZW5hYmxlZDoxOwo+ICsJCQl1MzIgaWJjX2FjdGl2ZToxOwo+ICsJ
CQl1MzIgcGcxX2VuYWJsZWQ6MTsKPiArCQkJdTMyIHBnMV9hY3RpdmU6MTsKPiArCQl9Owo+ICsJ
fTsKPiArCXVuaW9uIHsKPiArCQl1MzIgYml0ZmllbGQyOwo+ICsJCXN0cnVjdCB7Cj4gKwkJCXUz
MiBtYXhfdW5zbGljZV9mcmVxOjg7Cj4gKwkJCXUzMiBtaW5fdW5zbGljZV9mcmVxOjg7Cj4gKwkJ
CXUzMiBtYXhfc2xpY2VfZnJlcTo4Owo+ICsJCQl1MzIgbWluX3NsaWNlX2ZyZXE6ODsKPiArCQl9
Owo+ICsJfTsKPiArfSBfX3BhY2tlZDsKPiArCj4gK3N0cnVjdCBzbHBjX3NoYXJlZF9kYXRhIHsK
PiArCXVuaW9uIHsKPiArCQlzdHJ1Y3Qgewo+ICsJCQkvKiBUb3RhbCBzaXplIGluIGJ5dGVzIG9m
IHRoaXMgYnVmZmVyLiAqLwo+ICsJCQl1MzIgc2hhcmVkX2RhdGFfc2l6ZTsKPiArCQkJdTMyIGds
b2JhbF9zdGF0ZTsKPiArCQkJdTMyIGRpc3BsYXlfZGF0YV9hZGRyOwo+ICsJCX07CgpiZWxvdyBh
bGwgc3RydWN0cyBhcmUgbmFtZWQsIHRoaXMgb25lIG5vdCwgd2h5ID8KCj4gKwkJdW5zaWduZWQg
Y2hhciByZXNlcnZlZF9oZWFkZXJbU0xQQ19TSEFSRV9EQVRBX1NJWkVfQllURV9IRUFERVJdOwoK
dGhpcyBjb3VsZCBiZSBqdXN0ICJ1OCIKCmFuZCBJIGFzc3VtZSBhbGwgdGhlc2UgInJlc2VydmVk
IiBhcmUgaW4gZmFjdCBwYWRkaW5nLCBubyA/Cgo+ICsJfTsKPiArCj4gKwl1bmlvbiB7Cj4gKwkJ
c3RydWN0IHNscGNfcGxhdGZvcm1faW5mbyBwbGF0Zm9ybV9pbmZvOwo+ICsJCXVuc2lnbmVkIGNo
YXIgcmVzZXJ2ZWRfcGxhdGZvcm1bU0xQQ19TSEFSRV9EQVRBX1NJWkVfQllURV9QTEFURk9STV9J
TkZPXTsKPiArCX07CgptYXliZSB3ZSBjYW4gYXZvaWQgdGhlc2UgdW5pb25zIGJ5IGRlY2xhcmlu
ZyBwYWRkaW5nIGV4cGxpY2l0bHk6CgoJc3RydWN0IHNscGNfcGxhdGZvcm1faW5mbyBwbGF0Zm9y
bV9pbmZvOwoJdTggcGxhdGZvcm1faW5mb19wYWRbU0xQQ19TSEFSRV9EQVRBX1NJWkVfQllURV9Q
TEFURk9STV9JTkZPIC0KCSAgICAgICAgICAgICAgICAgICAgIHNpemVvZihzdHJ1Y3Qgc2xwY19w
bGF0Zm9ybV9pbmZvKV07Cgo+ICsKPiArCXVuaW9uIHsKPiArCQlzdHJ1Y3Qgc2xwY190YXNrX3N0
YXRlX2RhdGEgdGFza19zdGF0ZV9kYXRhOwo+ICsJCXVuc2lnbmVkIGNoYXIgcmVzZXJ2ZWRfdGFz
a19zdGF0ZVtTTFBDX1NIQVJFX0RBVEFfU0laRV9CWVRFX1RBU0tfU1RBVEVdOwo+ICsJfTsKPiAr
Cj4gKwl1bmlvbiB7Cj4gKwkJc3RydWN0IHsKPiArCQl1MzIgb3ZlcnJpZGVfcGFyYW1zX3NldF9i
aXRzW1NMUENfT1ZFUlJJREVfQklURklFTERfU0laRV07Cj4gKwkJdTMyIG92ZXJyaWRlX3BhcmFt
c192YWx1ZXNbU0xQQ19NQVhfT1ZFUlJJREVfUEFSQU1FVEVSU107Cj4gKwkJfTsKPiArCQl1bnNp
Z25lZCBjaGFyIHJlc2VydmVkX292ZXJyaWRlX3BhcmFtZXRlcltTTFBDX1NIQVJFX0RBVEFfU0la
RV9CWVRFX1BBUkFNXTsKPiArCX07Cj4gKwo+ICsJdW5zaWduZWQgY2hhciByZXNlcnZlZF9vdGhl
cltTTFBDX1NIQVJFX0RBVEFfU0laRV9CWVRFX09USEVSXTsKPiArCj4gKwkvKiBQQUdFIDIgKDQw
OTYgYnl0ZXMpLCBtb2RlIGJhc2VkIHBhcmFtZXRlciB3aWxsIGJlIHJlbW92ZWQgc29vbiAqLwo+
ICsJdW5zaWduZWQgY2hhciByZXNlcnZlZF9tb2RlX2RlZmluaXRpb25bNDA5Nl07Cj4gK30gX19w
YWNrZWQ7Cj4gKwo+ICtlbnVtIHNscGNfcmVzZXRfZmxhZ3Mgewo+ICsJU0xQQ19SRVNFVF9GTEFH
X1REUl9PQ0NVUlJFRCA9ICgxIDw8IDApCj4gK307Cj4gKwo+ICsjZGVmaW5lIFNMUENfRVZFTlRf
TUFYX0lOUFVUX0FSR1MgIDkKPiArI2RlZmluZSBTTFBDX0VWRU5UX01BWF9PVVRQVVRfQVJHUyAx
Cj4gKwo+ICt1bmlvbiBzbHBjX2V2ZW50X2lucHV0X2hlYWRlciB7Cj4gKwl1MzIgdmFsdWU7Cj4g
KwlzdHJ1Y3Qgewo+ICsJCXUzMiBudW1fYXJnczo4Owo+ICsJCXUzMiBldmVudF9pZDo4Owo+ICsJ
fTsKPiArfTsKCkkgZ3Vlc3MgZWFybGllciAjZGVmaW5lIFNMUENfRVZFTlQgaXMgcmVsYXRlZCB0
byBhYm92ZQpjYW4gd2Uga2VlcCByZWxhdGVkIGRlZmluaXRpb25zIHRvZ2V0aGVyID8KCj4gKwo+
ICtzdHJ1Y3Qgc2xwY19ldmVudF9pbnB1dCB7Cj4gKwl1MzIgaDJnX2FjdGlvbl9pZDsKPiArCXVu
aW9uIHNscGNfZXZlbnRfaW5wdXRfaGVhZGVyIGhlYWRlcjsKPiArCXUzMiBhcmdzW1NMUENfRVZF
TlRfTUFYX0lOUFVUX0FSR1NdOwo+ICt9IF9fcGFja2VkOwoKdGhpcyBsb29rcyBsaWtlIGEgYXR0
ZW1wdCB0byBkZWZpbmUgZGV0YWlscyBvZiB0aGUKSU5URUxfR1VDX0FDVElPTl9TTFBDX1JFUVVF
U1QgSFhHIHJlcXVlc3QgbWVzc2FnZS4KCnNvIG1heWJlIGl0IGNhbiBiZSBtb3ZlZCB0byBhYmkv
Z3VjX2FjdGlvbnNfc2xwY19hYmkuaCA/CmJlc3QgaWYgeW91IGNhbiBkZWZpbmUgaXQgaW4gdGhl
IHNhbWUgZmFzaGlvbiBhcyBDVEIgcmVnaXN0cmF0aW9uIG9uZQoKTWljaGFsCgo+ICsKPiArI2Vu
ZGlmCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
