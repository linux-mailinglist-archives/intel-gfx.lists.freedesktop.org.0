Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2F7C293F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 00:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8739389DB2;
	Mon, 30 Sep 2019 22:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079C989DB2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 22:01:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 15:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="204931922"
Received: from pkumarva-server.ra.intel.com ([10.23.184.130])
 by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2019 15:01:43 -0700
From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 18:18:17 -0400
Message-Id: <20190930221817.13705-1-prathap.kumar.valsan@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/ehl: Add sysfs interface to control
 class-of-service
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gcHJvdmlkZSBzaGFyZWQgbGFzdC1sZXZlbC1jYWNoZSBpc29sYXRpb24gdG8gY3B1IHdvcmts
b2FkcyBydW5uaW5nCmNvbmN1cnJlbnRseSB3aXRoIGdwdSB3b3JrbG9hZHMsIHRoZSBncHUgYWxs
b2NhdGlvbiBvZiBjYWNoZSBsaW5lcyBuZWVkcwp0byBiZSByZXN0cmljdGVkIHRvIGNlcnRhaW4g
d2F5cy4gQ3VycmVudGx5IEdQVSBoYXJkd2FyZSBzdXBwb3J0cyBmb3VyCmNsYXNzLW9mLXNlcnZp
Y2UoQ0xPUykgbGV2ZWxzIGFuZCB0aGVyZSBpcyBhbiBhc3NvY2lhdGVkIHdheS1tYXNrIGZvcgpl
YWNoIENMT1MuIEVhY2ggTExDIE1PQ1MgcmVnaXN0ZXIgaGFzIGEgZmllbGQgdG8gc2VsZWN0IHRo
ZSBjbG9zIGxldmVsLgpTbyBpbi1vcmRlciB0byBnbG9iYWxseSBzZXQgdGhlIGdwdSB0byBhIGNs
b3MgbGV2ZWwsIGRyaXZlciBuZWVkcwp0byBwcm9ncmFtIGVudGlyZSBNT0NTIHRhYmxlLgoKSGFy
ZHdhcmUgc3VwcG9ydHMgcmVhZGluZyBzdXBwb3J0ZWQgd2F5LW1hc2sgY29uZmlndXJhdGlvbiBm
b3IgR1BVIHVzaW5nCmEgYmlvcyBwY29kZSBpbnRlcmZhY2UuIFRoaXMgaW50ZXJmYWNlIGhhcyB0
d28gZmlsZXMtLWxsY19jbG9zX21vZGVzIGFuZApsbGNfY2xvcy4gVGhlIGZpbGUgbGxjX2Nsb3Nf
bW9kZXMgaXMgcmVhZCBvbmx5IGZpbGUgYW5kIHdpbGwgbGlzdCB0aGUKYXZhaWxhYmxlIHdheSBt
YXNrcy4gVGhlIGZpbGUgbGxjX2Nsb3MgaXMgcmVhZC93cml0ZSBhbmQgd2lsbCBzaG93IHRoZQpj
dXJyZW50bHkgYWN0aXZlIHdheSBtYXNrIGFuZCB3cml0aW5nIGEgbmV3IHdheSBtYXNrIHdpbGwg
dXBkYXRlIHRoZQphY3RpdmUgd2F5IG1hc2sgb2YgdGhlIGdwdS4KCk5vdGUgb2YgQ2F1dGlvbjog
UmVzdHJpY3RpbmcgY2FjaGUgd2F5cyB1c2luZyB0aGlzIG1lY2hhbmlzbSBwcmVzZW50cyBhCmxh
cmdlciBhdHRhY2sgc3VyZmFjZSBmb3Igc2lkZS1jaGFubmVsIGF0dGFja3MuCgpFeGFtcGxlIHVz
YWdlOgo+IGNhdCAvc3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xvc19tb2RlcwoweGZmZiAweGZj
MCAweGMwMCAweDgwMAoKPmNhdCAvc3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xvcwoweGZmZgoK
VXBkYXRlIHRvIG5ldyBjbG9zCmVjaG8gIjB4ODAwIiA+IC9zeXMvY2xhc3MvZHJtL2NhcmQwL2xs
Y19jbG9zCgp2MjogVXBkYXRlZCB0aGUgaW50ZXJmYWNlIHRvIHVzZSB0d28gc3lzZnMgZmlsZXMo
Sm9vbmFzKQogICAgLSBHZW4xMiBQQ29kZSBpbnRlcmZhY2UgaXMgbm90IHJlYWR5IHlldCB0byBy
ZWFkIHRoZSB3YXkgbWFzay4KICAgICAgU28gcmVtb3ZlZCBUR0wgc3VwcG9ydCBhbmQgYWRkZWQg
c3VwcG9ydCBmb3IgR2VuMTEuCiAgICAtIFVwZGF0aW5nIE1PQ1MgaW4gR2VuIDExIGFsc28gcmVx
dWlyZSBjaGFuZ2luZyB0aGUgY29udGV4dCBpbWFnZSBvZgogICAgICBleGlzdGluZyBjb250ZXh0
cy4KICAgICAgUmVmZXJyZWQgdG8gZ2VuOF9jb25maWd1cmVfYWxsX2NvbnRleHRzKCkgYXMgc3Vn
Z2VzdGVkIGJ5IENocmlzLgoKU2lnbmVkLW9mZi1ieTogUHJhdGhhcCBLdW1hciBWYWxzYW4gPHBy
YXRoYXAua3VtYXIudmFsc2FuQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjX3JlZy5oIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyAg
ICB8IDIxNSArKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuaCAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgfCAgIDggKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAg
IHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYyAgICAgICB8IDEwMCAr
KysrKysrKysrKwogNyBmaWxlcyBjaGFuZ2VkLCAzMzQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggYWI3MjVhNmNhMGFjLi44
MmNiZjliOTdhNTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yMTE0LDYg
KzIxMTQsMTMgQEAgX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY2UsCiAJCQlpbnRlbF9zc2V1X21ha2VfcnBjcyhlbmdpbmUtPmk5MTUsICZj
ZS0+c3NldSk7CiAKIAkJaTkxNV9vYV9pbml0X3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKKwkJLyoK
KwkJICogR2VuMTEgc3VwcG9ydHMgdXBkYXRlIG9mIExMQyBjbGFzcy1vZi1zZXJ2aWNlIHZpYQor
CQkgKiBzeXNmcyBpbnRlcmZhY2UuIEFsc28gdXBkYXRlIHRoZSBjb250ZXh0IHJlZ2lzdGVyIHN0
YXRlCisJCSAqIG9mIHRoZSBuZXcgY29udGV4dHMuCisJCSAqLworCQlpZiAoSVNfR0VOKGVuZ2lu
ZS0+aTkxNSwgMTEpKQorCQkJaW50ZWxfbW9jc19pbml0X3JlZ19zdGF0ZShjZSk7CiAJfQogfQog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmgKaW5kZXggMDZhYjAyNzZlMTBl
Li5mMDdhNjI2MjIxN2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyY19yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmgK
QEAgLTI4LDYgKzI4LDcgQEAKICNkZWZpbmUgQ1RYX1JfUFdSX0NMS19TVEFURQkJKDB4NDIgKyAx
KQogCiAjZGVmaW5lIEdFTjlfQ1RYX1JJTkdfTUlfTU9ERQkJMHg1NAorI2RlZmluZSBHRU4xMV9D
VFhfR0ZYX01PQ1NfQkFTRQkJMHg0RjIKIAogLyogR0VOMTIrIFJlZyBTdGF0ZSBDb250ZXh0ICov
CiAjZGVmaW5lIEdFTjEyX0NUWF9CQl9QRVJfQ1RYX1BUUgkJKDB4MTIgKyAxKQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jCmluZGV4IDcyODcwNGJiYmUxOC4uNWViODA1YjZlZTIzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC0yNiw2ICsyNiw5IEBACiAjaW5j
bHVkZSAiaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJpbnRlbF9tb2NzLmgiCiAjaW5jbHVkZSAiaW50
ZWxfbHJjLmgiCisjaW5jbHVkZSAiaW50ZWxfbHJjX3JlZy5oIgorI2luY2x1ZGUgImludGVsX3Np
ZGViYW5kLmgiCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKIAogLyogc3RydWN0
dXJlcyByZXF1aXJlZCAqLwogc3RydWN0IGRybV9pOTE1X21vY3NfZW50cnkgewpAQCAtNDAsNiAr
NDMsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB7CiAJY29uc3Qgc3RydWN0IGRybV9p
OTE1X21vY3NfZW50cnkgKnRhYmxlOwogfTsKIAorI2RlZmluZSBjdHhfbW9jc04oTikgKEdFTjEx
X0NUWF9HRlhfTU9DU19CQVNFICsgMiAqIChOKSArIDEpCiAvKiBEZWZpbmVzIGZvciB0aGUgdGFi
bGVzIChYWFhfTU9DU18wIC0gWFhYX01PQ1NfNjMpICovCiAjZGVmaW5lIF9MRV9DQUNIRUFCSUxJ
VFkodmFsdWUpCSgodmFsdWUpIDw8IDApCiAjZGVmaW5lIF9MRV9UR1RfQ0FDSEUodmFsdWUpCSgo
dmFsdWUpIDw8IDIpCkBAIC01MSw2ICs1NSw3IEBAIHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxl
IHsKICNkZWZpbmUgTEVfU0NGKHZhbHVlKQkJKCh2YWx1ZSkgPDwgMTQpCiAjZGVmaW5lIExFX0NP
Uyh2YWx1ZSkJCSgodmFsdWUpIDw8IDE1KQogI2RlZmluZSBMRV9TU0UodmFsdWUpCQkoKHZhbHVl
KSA8PCAxNykKKyNkZWZpbmUgTEVfQ09TX01BU0sJCUdFTk1BU0soMTYsIDE1KQogCiAvKiBEZWZp
bmVzIGZvciB0aGUgdGFibGVzIChMTkNGTU9DUzAgLSBMTkNGTU9DUzMxKSAtIHR3byBlbnRyaWVz
IHBlciB3b3JkICovCiAjZGVmaW5lIEwzX0VTQyh2YWx1ZSkJCSgodmFsdWUpIDw8IDApCkBAIC0z
NzcsNiArMzgyLDcgQEAgdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5lKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZW5naW5lLT5ndDsKIAlz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwogCXN0cnVjdCBkcm1faTkx
NV9tb2NzX3RhYmxlIHRhYmxlOworCXVuc2lnbmVkIGludCBhY3RpdmVfY2xvczsKIAl1bnNpZ25l
ZCBpbnQgaW5kZXg7CiAJdTMyIHVudXNlZF92YWx1ZTsKIApAQCAtMzkwLDExICszOTYsMTYgQEAg
dm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIAlpZiAoIWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUpKQogCQlyZXR1cm47CiAKKwlh
Y3RpdmVfY2xvcyA9IGVuZ2luZS0+aTkxNS0+Y2xvcy5hY3RpdmVfY2xvczsKIAkvKiBTZXQgdW51
c2VkIHZhbHVlcyB0byBQVEUgKi8KIAl1bnVzZWRfdmFsdWUgPSB0YWJsZS50YWJsZVtJOTE1X01P
Q1NfUFRFXS5jb250cm9sX3ZhbHVlOworCXVudXNlZF92YWx1ZSAmPSB+TEVfQ09TX01BU0s7CisJ
dW51c2VkX3ZhbHVlIHw9IEZJRUxEX1BSRVAoTEVfQ09TX01BU0ssIGFjdGl2ZV9jbG9zKTsKIAog
CWZvciAoaW5kZXggPSAwOyBpbmRleCA8IHRhYmxlLnNpemU7IGluZGV4KyspIHsKIAkJdTMyIHZh
bHVlID0gZ2V0X2VudHJ5X2NvbnRyb2woJnRhYmxlLCBpbmRleCk7CisJCXZhbHVlICY9IH5MRV9D
T1NfTUFTSzsKKwkJdmFsdWUgfD0gRklFTERfUFJFUChMRV9DT1NfTUFTSywgYWN0aXZlX2Nsb3Mp
OwogCiAJCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsCiAJCQkJICAgICAgbW9jc19yZWdp
c3RlcihlbmdpbmUtPmlkLCBpbmRleCksCkBAIC00MDgsNyArNDE5LDcgQEAgdm9pZCBpbnRlbF9t
b2NzX2luaXRfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQkgICAg
ICB1bnVzZWRfdmFsdWUpOwogfQogCi1zdGF0aWMgdm9pZCBpbnRlbF9tb2NzX2luaXRfZ2xvYmFs
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit2b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3RydWN0
IGludGVsX2d0ICpndCkKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5j
b3JlOwogCXN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlIHRhYmxlOwpAQCAtNDQyLDYgKzQ1Myw3
IEBAIHN0YXRpYyBpbnQgZW1pdF9tb2NzX2NvbnRyb2xfdGFibGUoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCiAJCQkJICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgKnRhYmxlKQog
ewogCWVudW0gaW50ZWxfZW5naW5lX2lkIGVuZ2luZSA9IHJxLT5lbmdpbmUtPmlkOworCXVuc2ln
bmVkIGludCBhY3RpdmVfY2xvczsKIAl1bnNpZ25lZCBpbnQgaW5kZXg7CiAJdTMyIHVudXNlZF92
YWx1ZTsKIAl1MzIgKmNzOwpAQCAtNDQ5LDggKzQ2MSwxMSBAQCBzdGF0aWMgaW50IGVtaXRfbW9j
c19jb250cm9sX3RhYmxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCWlmIChHRU1fV0FSTl9P
Tih0YWJsZS0+c2l6ZSA+IHRhYmxlLT5uX2VudHJpZXMpKQogCQlyZXR1cm4gLUVOT0RFVjsKIAor
CWFjdGl2ZV9jbG9zID0gcnEtPmk5MTUtPmNsb3MuYWN0aXZlX2Nsb3M7CiAJLyogU2V0IHVudXNl
ZCB2YWx1ZXMgdG8gUFRFICovCiAJdW51c2VkX3ZhbHVlID0gdGFibGUtPnRhYmxlW0k5MTVfTU9D
U19QVEVdLmNvbnRyb2xfdmFsdWU7CisJdW51c2VkX3ZhbHVlICY9IH5MRV9DT1NfTUFTSzsKKwl1
bnVzZWRfdmFsdWUgfD0gRklFTERfUFJFUChMRV9DT1NfTUFTSywgYWN0aXZlX2Nsb3MpOwogCiAJ
Y3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCAyICsgMiAqIHRhYmxlLT5uX2VudHJpZXMpOwogCWlm
IChJU19FUlIoY3MpKQpAQCAtNDYwLDYgKzQ3NSw4IEBAIHN0YXRpYyBpbnQgZW1pdF9tb2NzX2Nv
bnRyb2xfdGFibGUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAKIAlmb3IgKGluZGV4ID0gMDsg
aW5kZXggPCB0YWJsZS0+c2l6ZTsgaW5kZXgrKykgewogCQl1MzIgdmFsdWUgPSBnZXRfZW50cnlf
Y29udHJvbCh0YWJsZSwgaW5kZXgpOworCQl2YWx1ZSAmPSB+TEVfQ09TX01BU0s7CisJCXZhbHVl
IHw9IEZJRUxEX1BSRVAoTEVfQ09TX01BU0ssIGFjdGl2ZV9jbG9zKTsKIAogCQkqY3MrKyA9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KG1vY3NfcmVnaXN0ZXIoZW5naW5lLCBpbmRleCkpOwogCQkqY3Mr
KyA9IHZhbHVlOwpAQCAtNjI1LDEwICs2NDIsMjA2IEBAIGludCBpbnRlbF9tb2NzX2VtaXQoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJcmV0dXJuIDA7CiB9CiAKK3ZvaWQgaW50ZWxfbW9jc19p
bml0X3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjZS0+ZW5naW5lLT5pOTE1OworCXUzMiAqcmVnX3N0
YXRlID0gY2UtPmxyY19yZWdfc3RhdGU7CisJc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgdDsK
Kwl1bnNpZ25lZCBpbnQgYWN0aXZlX2Nsb3M7CisJdTMyIHZhbHVlOworCWludCBpOworCisJZ2V0
X21vY3Nfc2V0dGluZ3MoY2UtPmVuZ2luZS0+Z3QsICZ0KTsKKworCWFjdGl2ZV9jbG9zID0gaTkx
NS0+Y2xvcy5hY3RpdmVfY2xvczsKKworCWlmIChhY3RpdmVfY2xvcyA9PSBGSUVMRF9HRVQoTEVf
Q09TX01BU0ssIGdldF9lbnRyeV9jb250cm9sKCZ0LCAwKSkpCisJCXJldHVybjsKKworCWZvciAo
aSA9IDA7IGkgPCB0Lm5fZW50cmllczsgaSsrKSB7CisJCXZhbHVlID0gcmVnX3N0YXRlW2N0eF9t
b2NzTihpKV07CisJCXZhbHVlICY9IH5MRV9DT1NfTUFTSzsKKwkJdmFsdWUgfD0gRklFTERfUFJF
UChMRV9DT1NfTUFTSywgYWN0aXZlX2Nsb3MpOworCQlyZWdfc3RhdGVbY3R4X21vY3NOKGkpXSA9
IHZhbHVlOworCX0KK30KKworc3RhdGljIGludAorbW9jc19zdG9yZV9jbG9zKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLAorCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJc3RydWN0IGRy
bV9pOTE1X21vY3NfdGFibGUgdDsKKwl1bnNpZ25lZCBpbnQgY291bnQsIGFjdGl2ZV9jbG9zLCBp
bmRleDsKKwl1MzIgb2Zmc2V0OworCXUzMiB2YWx1ZTsKKwl1MzIgKmNzOworCisJaWYgKCFnZXRf
bW9jc19zZXR0aW5ncyhycS0+ZW5naW5lLT5ndCwgJnQpKQorCQlyZXR1cm4gLUVOT0RFVjsKKwor
CWNvdW50ID0gdC5uX2VudHJpZXM7CisJYWN0aXZlX2Nsb3MgPSBycS0+aTkxNS0+Y2xvcy5hY3Rp
dmVfY2xvczsKKwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIDQgKiBjb3VudCk7CisJaWYgKElT
X0VSUihjcykpCisJCXJldHVybiBQVFJfRVJSKGNzKTsKKworCW9mZnNldCA9IGk5MTVfZ2d0dF9v
ZmZzZXQoY2UtPnN0YXRlKSArIExSQ19TVEFURV9QTiAqIFBBR0VfU0laRTsKKworCWZvciAoaW5k
ZXggPSAwOyBpbmRleCA8IGNvdW50OyBpbmRleCsrKSB7CisJCXZhbHVlID0gY2UtPmxyY19yZWdf
c3RhdGVbY3R4X21vY3NOKGluZGV4KV07CisJCXZhbHVlICY9IH5MRV9DT1NfTUFTSzsKKwkJdmFs
dWUgfD0gRklFTERfUFJFUChMRV9DT1NfTUFTSywgYWN0aXZlX2Nsb3MpOworCisJCSpjcysrID0g
TUlfU1RPUkVfRFdPUkRfSU1NX0dFTjQgfCBNSV9VU0VfR0dUVDsKKwkJKmNzKysgPSBvZmZzZXQg
KyBjdHhfbW9jc04oaW5kZXgpICogc2l6ZW9mKHVpbnQzMl90KTsKKwkJKmNzKysgPSAwOworCQkq
Y3MrKyA9IHZhbHVlOworCX0KKworCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOworCisJcmV0
dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgbW9kaWZ5X2NvbnRleHRfbW9jcyhzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UpCit7CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJaW50IGVycjsKKwor
CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmNlLT5waW5fbXV0ZXgpOworCisJcnEgPSBpOTE1X3JlcXVl
c3RfY3JlYXRlKGNlLT5lbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwlpZiAoSVNfRVJSKHJxKSkK
KwkJcmV0dXJuIFBUUl9FUlIocnEpOworCisJLyogU2VyaWFsaXNlIHdpdGggdGhlIHJlbW90ZSBj
b250ZXh0ICovCisJZXJyID0gaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90ZV9yZXF1ZXN0KGNl
LCBycSk7CisJaWYgKGVyciA9PSAwKQorCQllcnIgPSBtb2NzX3N0b3JlX2Nsb3MocnEsIGNlKTsK
KworCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQg
aW50ZWxfbW9jc19jb25maWd1cmVfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
KQoreworCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CisJc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlOworCWludCBlcnIgPSAwOworCisJZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgaTkx
NV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpIHsKKwkJR0VNX0JVR19PTihjZSA9
PSBjZS0+ZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CisKKwkJaWYgKGNlLT5lbmdpbmUtPmNsYXNz
ICE9IFJFTkRFUl9DTEFTUykKKwkJCWNvbnRpbnVlOworCisJCWVyciA9IGludGVsX2NvbnRleHRf
bG9ja19waW5uZWQoY2UpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisKKwkJaWYgKGludGVsX2Nv
bnRleHRfaXNfcGlubmVkKGNlKSkKKwkJCWVyciA9IG1vZGlmeV9jb250ZXh0X21vY3MoY2UpOwor
CisJCWludGVsX2NvbnRleHRfdW5sb2NrX3Bpbm5lZChjZSk7CisJCWlmIChlcnIpCisJCQlicmVh
azsKKwl9CisJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOworCisJcmV0dXJu
IGVycjsKK30KKworc3RhdGljIGludCBpbnRlbF9tb2NzX2NvbmZpZ3VyZV9hbGxfY29udGV4dHMo
c3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGd0LT5pOTE1OworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwlzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4OworCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOworCWludCBlcnI7
CisKKwkvKgorCSAqIE1PQ1MgcmVnaXN0ZXJzIG9mIHJlbmRlciBlbmdpbmUgYXJlIGNvbnRleHQg
c2F2ZWQgYW5kIHJlc3RvcmVkIHRvIGFuZAorCSAqIGZyb20gYSBjb250ZXh0IGltYWdlLgorCSAq
IFNvIGZvciBhbnkgTU9DUyB1cGRhdGUgdG8gcmVmbGVjdCBvbiB0aGUgZXhpc3RpbmcgY29udGV4
dHMgcmVxdWlyZXMKKwkgKiB1cGRhdGluZyB0aGUgY29udGV4dCBpbWFnZS4KKwkgKi8KKwlsaXN0
X2Zvcl9lYWNoX2VudHJ5KGN0eCwgJmk5MTUtPmNvbnRleHRzLmxpc3QsIGxpbmspIHsKKwkJaWYg
KGN0eCA9PSBpOTE1LT5rZXJuZWxfY29udGV4dCkKKwkJCWNvbnRpbnVlOworCisJCWVyciA9IGlu
dGVsX21vY3NfY29uZmlndXJlX2NvbnRleHQoY3R4KTsKKwkJaWYgKGVycikKKwkJCXJldHVybiBl
cnI7CisJfQorCisJLyoKKwkgKiBBZnRlciB1cGRhdGluZyBhbGwgb3RoZXIgY29udGV4dHMsIHVw
ZGF0ZSByZW5kZXIgY29udGV4dCBpbWFnZSBvZgorCSAqIGtlcm5lbCBjb250ZXh0LiBBbHNvIHVw
ZGF0ZSB0aGUgTU9DUyBvZiBub24tcmVuZGVyIGVuZ2luZXMuCisJICovCisKKwlmb3JfZWFjaF9l
bmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgeworCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwkJ
c3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgdDsKKworCQlycSA9IGk5MTVfcmVxdWVzdF9jcmVh
dGUoZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CisJCWlmIChJU19FUlIocnEpKQorCQkJcmV0dXJu
IFBUUl9FUlIocnEpOworCisJCWdldF9tb2NzX3NldHRpbmdzKHJxLT5lbmdpbmUtPmd0LCAmdCk7
CisJCWVyciA9IGVtaXRfbW9jc19jb250cm9sX3RhYmxlKHJxLCAmdCk7CisJCWlmIChlcnIpIHsK
KwkJCWk5MTVfcmVxdWVzdF9za2lwKHJxLCBlcnIpOworCQkJaTkxNV9yZXF1ZXN0X2FkZChycSk7
CisJCQlyZXR1cm4gZXJyOworCQl9CisKKwkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisJfQorCisJ
cmV0dXJuIDA7Cit9CisKK2ludCBpbnRlbF9tb2NzX3VwZGF0ZV9jbG9zKHN0cnVjdCBpbnRlbF9n
dCAqZ3QpCit7CisJcmV0dXJuIGludGVsX21vY3NfY29uZmlndXJlX2FsbF9jb250ZXh0cyhndCk7
Cit9CisKK3N0YXRpYyB2b2lkIGludGVsX3JlYWRfY2xvc193YXlfbWFzayhzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJ
c3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgdGFibGU7CisJaW50IHJldCwgaTsKKwl1MzIgdmFs
OworCisJaWYgKCFnZXRfbW9jc19zZXR0aW5ncyhndCwgJnRhYmxlKSkKKwkJcmV0dXJuOworCisJ
LyogQ0xPUyBpcyBzYW1lIGZvciBhbGwgZW50cmllcy4gU28gaXRzIGVub3VnaCB0byByZWFkIG9u
ZSovCisJaTkxNS0+Y2xvcy5hY3RpdmVfY2xvcyA9IEZJRUxEX0dFVChMRV9DT1NfTUFTSywKKwkJ
CQkJICAgZ2V0X2VudHJ5X2NvbnRyb2woJnRhYmxlLCAwKSk7CisJZm9yIChpID0gMDsgaSA8IE5V
TV9PRl9DTE9TOyBpKyspIHsKKwkJdmFsID0gaTsKKwkJcmV0ID0gc2FuZHlicmlkZ2VfcGNvZGVf
cmVhZChpOTE1LAorCQkJCQkgICAgIElDTF9QQ09ERV9MTENfQ09TX1dBWV9NQVNLX0lORk8sCisJ
CQkJCSAgICAgJnZhbCwgTlVMTCk7CisJCWlmIChyZXQpIHsKKwkJCURSTV9FUlJPUigiTWFpbGJv
eCByZWFkIGVycm9yID0gJWRcbiIsIHJldCk7CisJCQlyZXR1cm47CisJCX0KKworCQlpOTE1LT5j
bG9zLndheV9tYXNrW2ldID0gdmFsOworCX0KKworCWk5MTUtPmNsb3Muc3VwcG9ydF93YXlfbWFz
a19yZWFkID0gdHJ1ZTsKK30KKwogdm9pZCBpbnRlbF9tb2NzX2luaXQoc3RydWN0IGludGVsX2d0
ICpndCkKIHsKIAlpbnRlbF9tb2NzX2luaXRfbDNjY190YWJsZShndCk7CiAKKwlpZiAoSVNfR0VO
KGd0LT5pOTE1LCAxMSkpCisJCWludGVsX3JlYWRfY2xvc193YXlfbWFzayhndCk7CisKIAlpZiAo
SEFTX0dMT0JBTF9NT0NTX1JFR0lTVEVSUyhndC0+aTkxNSkpCiAJCWludGVsX21vY3NfaW5pdF9n
bG9iYWwoZ3QpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bW9jcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oCmluZGV4IDJhZTgx
NmI3Y2ExOS4uYWY1NDUwYjIwOWM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5o
CkBAIC01Nyw1ICs1Nyw4IEBAIHZvaWQgaW50ZWxfbW9jc19pbml0KHN0cnVjdCBpbnRlbF9ndCAq
Z3QpOwogdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSk7CiAKIGludCBpbnRlbF9tb2NzX2VtaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
OworaW50IGludGVsX21vY3NfdXBkYXRlX2Nsb3Moc3RydWN0IGludGVsX2d0ICpndCk7CisKK3Zv
aWQgaW50ZWxfbW9jc19pbml0X3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpOwogCiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IGZjZjc0MjMwNzVlZi4u
N2U0ZjY0NjRkOGM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE2MzAsNiArMTYzMCwx
NCBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAJCWJvb2wgZGlzdHJ1c3RfYmlvc193bTsK
IAl9IHdtOwogCisJLyogTGFzdCBMZXZlbCBDYWNoZSAgQ2xhc3Mgb2YgU2VydmljZSAqLworCXN0
cnVjdCB7CisJCWJvb2wgc3VwcG9ydF93YXlfbWFza19yZWFkOworCQl1OCBhY3RpdmVfY2xvczsK
KyNkZWZpbmUgTlVNX09GX0NMT1MgNAorCQl1MTYgd2F5X21hc2tbTlVNX09GX0NMT1NdOworCX0g
Y2xvczsKKwogCXN0cnVjdCBkcmFtX2luZm8gewogCQlib29sIHZhbGlkOwogCQlib29sIGlzXzE2
Z2JfZGltbTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGU3NTJkZTk0NzBiZC4uNTVkYWZk
ZTljOTNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTg4NTQsNiArODg1NCw3IEBAIGVu
dW0gewogI2RlZmluZSAgIElDTF9QQ09ERV9NRU1fU1VCU1lTWVNURU1fSU5GTwkweGQKICNkZWZp
bmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9HTE9CQUxfSU5GTwkoMHgwIDw8IDgpCiAjZGVm
aW5lICAgICBJQ0xfUENPREVfTUVNX1NTX1JFQURfUUdWX1BPSU5UX0lORk8ocG9pbnQpCSgoKHBv
aW50KSA8PCAxNikgfCAoMHgxIDw8IDgpKQorI2RlZmluZSAgIElDTF9QQ09ERV9MTENfQ09TX1dB
WV9NQVNLX0lORk8JMHgxZAogI2RlZmluZSAgIEdFTjZfUENPREVfUkVBRF9EX0NPTVAJCTB4MTAK
ICNkZWZpbmUgICBHRU42X1BDT0RFX1dSSVRFX0RfQ09NUAkJMHgxMQogI2RlZmluZSAgIEhTV19Q
Q09ERV9ERV9XUklURV9GUkVRX1JFUQkJMHgxNwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jCmlu
ZGV4IGQ4YTNiMTgwYzA4NC4uZjMxM2Y1NTlmZmI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3N5c2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNm
cy5jCkBAIC0zNCw2ICszNCw3IEBACiAjaW5jbHVkZSAiaTkxNV9zeXNmcy5oIgogI2luY2x1ZGUg
ImludGVsX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKKyNpbmNsdWRlICJndC9p
bnRlbF9tb2NzLmgiCiAKIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmtk
ZXZfbWlub3JfdG9faTkxNShzdHJ1Y3QgZGV2aWNlICprZGV2KQogewpAQCAtMjU3LDYgKzI1OCw4
OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGJpbl9hdHRyaWJ1dGUgZHBmX2F0dHJzXzEgPSB7CiAJ
LnByaXZhdGUgPSAodm9pZCAqKTEKIH07CiAKK3N0YXRpYyBzc2l6ZV90IGxsY19jbG9zX3Nob3co
c3RydWN0IGRldmljZSAqa2RldiwKKwkJCSAgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0
dHIsIGNoYXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBr
ZGV2X21pbm9yX3RvX2k5MTUoa2Rldik7CisJc3NpemVfdCBsZW4gPSAwOworCWludCBhY3RpdmVf
Y2xvczsKKworCWFjdGl2ZV9jbG9zID0gZGV2X3ByaXYtPmNsb3MuYWN0aXZlX2Nsb3M7CisJbGVu
ICs9IHNucHJpbnRmKGJ1ZiArIGxlbiwgUEFHRV9TSVpFLCAiMHgleFxuIiwKKwkJCWRldl9wcml2
LT5jbG9zLndheV9tYXNrW2FjdGl2ZV9jbG9zXSk7CisKKwlyZXR1cm4gbGVuOworfQorCitzdGF0
aWMgc3NpemVfdCBsbGNfY2xvc19zdG9yZShzdHJ1Y3QgZGV2aWNlICprZGV2LAorCQkJICAgICAg
c3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCisJCQkgICAgICBjb25zdCBjaGFyICpidWYs
IHNpemVfdCBjb3VudCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBr
ZGV2X21pbm9yX3RvX2k5MTUoa2Rldik7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZf
cHJpdi0+ZHJtOworCXU4IGFjdGl2ZV9jbG9zLCBuZXdfY2xvcywgY2xvc19pbmRleDsKKwlib29s
IHZhbGlkX21hc2sgPSBmYWxzZTsKKwlzc2l6ZV90IHJldDsKKwl1MTYgd2F5X21hc2s7CisKKwly
ZXQgPSBrc3RydG91MTYoYnVmLCAwLCAmd2F5X21hc2spOworCWlmIChyZXQpCisJCXJldHVybiBy
ZXQ7CisKKwlhY3RpdmVfY2xvcyA9IGRldl9wcml2LT5jbG9zLmFjdGl2ZV9jbG9zOworCisJaWYg
KGRldl9wcml2LT5jbG9zLndheV9tYXNrW2FjdGl2ZV9jbG9zXSA9PSB3YXlfbWFzaykKKwkJcmV0
dXJuIGNvdW50OworCisJZm9yIChjbG9zX2luZGV4ID0gMDsgY2xvc19pbmRleCA8IE5VTV9PRl9D
TE9TOyBjbG9zX2luZGV4KyspIHsKKwkJaWYgKGRldl9wcml2LT5jbG9zLndheV9tYXNrW2Nsb3Nf
aW5kZXhdID09IHdheV9tYXNrKSB7CisJCQluZXdfY2xvcyA9IGNsb3NfaW5kZXg7CisJCQl2YWxp
ZF9tYXNrID0gdHJ1ZTsKKwkJCWJyZWFrOworCQl9CisJfQorCisJaWYgKCF2YWxpZF9tYXNrKQor
CQlyZXR1cm4gLUVJTlZBTDsKKworCXJldCA9IGk5MTVfbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxl
KGRldik7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCWRldl9wcml2LT5jbG9zLmFjdGl2
ZV9jbG9zID0gbmV3X2Nsb3M7CisJcmV0ID0gaW50ZWxfbW9jc191cGRhdGVfY2xvcygmZGV2X3By
aXYtPmd0KTsKKwlpZiAocmV0KSB7CisJCURSTV9FUlJPUigiRmFpbGVkIHRvIHVwZGF0ZSBDbGFz
cyBvZiBzZXJ2aWNlXG4iKTsKKwkJZGV2X3ByaXYtPmNsb3MuYWN0aXZlX2Nsb3MgPSBhY3RpdmVf
Y2xvczsKKwkJbXV0ZXhfdW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7CisJCXJldHVybiByZXQ7
CisJfQorCisJbXV0ZXhfdW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7CisKKwlyZXR1cm4gY291
bnQ7Cit9CisKK3N0YXRpYyBzc2l6ZV90IGxsY19jbG9zX21vZGVzX3Nob3coc3RydWN0IGRldmlj
ZSAqa2RldiwKKwkJCQkgICBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVm
KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGtkZXZfbWlub3JfdG9f
aTkxNShrZGV2KTsKKwlzc2l6ZV90IGxlbiA9IDA7CisJaW50IGk7CisKKwlmb3IgKGkgPSAwOyBp
IDwgTlVNX09GX0NMT1M7IGkrKykKKwkJbGVuICs9IHNucHJpbnRmKGJ1ZiArIGxlbiwgUEFHRV9T
SVpFLCAiMHgleCAiLAorCQkJCWRldl9wcml2LT5jbG9zLndheV9tYXNrW2ldKTsKKworCWxlbiAr
PSBzbnByaW50ZihidWYgKyBsZW4sIFBBR0VfU0laRSwgIlxuIik7CisKKwlyZXR1cm4gbGVuOwor
fQorCitzdGF0aWMgREVWSUNFX0FUVFJfUlcobGxjX2Nsb3MpOworc3RhdGljIERFVklDRV9BVFRS
X1JPKGxsY19jbG9zX21vZGVzKTsKKwogc3RhdGljIHNzaXplX3QgZ3RfYWN0X2ZyZXFfbWh6X3No
b3coc3RydWN0IGRldmljZSAqa2RldiwKIAkJCQkgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUg
KmF0dHIsIGNoYXIgKmJ1ZikKIHsKQEAgLTU3Niw2ICs2NTksMTggQEAgdm9pZCBpOTE1X3NldHVw
X3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgZGV2aWNl
ICprZGV2ID0gZGV2X3ByaXYtPmRybS5wcmltYXJ5LT5rZGV2OwogCWludCByZXQ7CiAKKwlpZiAo
ZGV2X3ByaXYtPmNsb3Muc3VwcG9ydF93YXlfbWFza19yZWFkKSB7CisJCXJldCA9IHN5c2ZzX2Ny
ZWF0ZV9maWxlKCZrZGV2LT5rb2JqLAorCQkJCQkmZGV2X2F0dHJfbGxjX2Nsb3MuYXR0cik7CisJ
CWlmIChyZXQpCisJCQlEUk1fRVJST1IoIkxMQyBDT1Mgc3lzZnMgc2V0dXAgZmFpbGVkXG4iKTsK
KworCQlyZXQgPSBzeXNmc19jcmVhdGVfZmlsZSgma2Rldi0+a29iaiwKKwkJCQkJJmRldl9hdHRy
X2xsY19jbG9zX21vZGVzLmF0dHIpOworCQlpZiAocmV0KQorCQkJRFJNX0VSUk9SKCJMTEMgQ09T
IHN5c2ZzIHNldHVwIGZhaWxlZFxuIik7CisJfQorCiAjaWZkZWYgQ09ORklHX1BNCiAJaWYgKEhB
U19SQzYoZGV2X3ByaXYpKSB7CiAJCXJldCA9IHN5c2ZzX21lcmdlX2dyb3VwKCZrZGV2LT5rb2Jq
LApAQCAtNjI2LDYgKzcyMSwxMSBAQCB2b2lkIGk5MTVfdGVhcmRvd25fc3lzZnMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJaTkxNV90ZWFyZG93bl9lcnJvcl9jYXB0dXJl
KGtkZXYpOwogCisJaWYgKGRldl9wcml2LT5jbG9zLnN1cHBvcnRfd2F5X21hc2tfcmVhZCkgewor
CQlzeXNmc19yZW1vdmVfZmlsZSgma2Rldi0+a29iaiwgJmRldl9hdHRyX2xsY19jbG9zLmF0dHIp
OworCQlzeXNmc19yZW1vdmVfZmlsZSgma2Rldi0+a29iaiwgJmRldl9hdHRyX2xsY19jbG9zX21v
ZGVzLmF0dHIpOworCX0KKwogCWlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVS
UllWSUVXKGRldl9wcml2KSkKIAkJc3lzZnNfcmVtb3ZlX2ZpbGVzKCZrZGV2LT5rb2JqLCB2bHZf
YXR0cnMpOwogCWVsc2UKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
