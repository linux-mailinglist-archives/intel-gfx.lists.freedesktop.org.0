Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 408A214A3A7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 13:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490366EB50;
	Mon, 27 Jan 2020 12:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4C66EB47;
 Mon, 27 Jan 2020 12:18:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20021709-1500050 
 for multiple; Mon, 27 Jan 2020 12:18:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Mon, 27 Jan 2020 12:18:17 +0000
Message-Id: <20200127121818.2492460-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200127121818.2492460-1-chris@chris-wilson.co.uk>
References: <20200127121818.2492460-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/5] i915: Exercise sysfs heartbeat
 controls
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgW3dpbGxdIGV4cG9zZSB2YXJpb3VzIHBlci1lbmdpbmUgc2NoZWR1bGluZyBjb250cm9scy4g
T25lIG9mIHdoaWNoLAonaGVhcnRiZWF0X2R1cmF0aW9uX21zJywgZGVmaW5lcyBob3cgb2Z0ZW4g
d2Ugc2VuZCBhIGhlYXJ0YmVhdCBkb3duIHRoZQplbmdpbmUgdG8gY2hlY2sgdXBvbiB0aGUgaGVh
bHRoIG9mIHRoZSBlbmdpbmUuIElmIGEgaGVhcnRiZWF0IGRvZXMgbm90CmNvbXBsZXRlIHdpdGhp
biB0aGUgaW50ZXJ2YWwgKG9yIHR3byksIHRoZSBlbmdpbmUgaXMgZGVjbGFyZWQgaHVuZy4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IHRlc3RzL01ha2VmaWxlLnNvdXJjZXMgICAgICAgICAgICAgICAgfCAgIDMgKwogdGVzdHMvaTkx
NS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYyB8IDQ2NiArKysrKysrKysrKysrKysrKysrKysr
KysrKwogdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiAzIGZp
bGVzIGNoYW5nZWQsIDQ3MCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMv
aTkxNS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYwoKZGlmZiAtLWdpdCBhL3Rlc3RzL01ha2Vm
aWxlLnNvdXJjZXMgYi90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCmluZGV4IGZjOWUwNGU5Ny4uZmQ2
ZjY3YTczIDEwMDY0NAotLS0gYS90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCisrKyBiL3Rlc3RzL01h
a2VmaWxlLnNvdXJjZXMKQEAgLTEwMiw2ICsxMDIsOSBAQCBURVNUU19wcm9ncyA9IFwKIAl2Z2Vt
X3Nsb3cgXAogCSQoTlVMTCkKIAorVEVTVFNfcHJvZ3MgKz0gc3lzZnNfaGVhcnRiZWF0X2ludGVy
dmFsCitzeXNmc19oZWFydGJlYXRfaW50ZXJ2YWxfU09VUkNFUyA9IGk5MTUvc3lzZnNfaGVhcnRi
ZWF0X2ludGVydmFsCisKIFRFU1RTX3Byb2dzICs9IHN5c2ZzX3ByZWVtcHRfdGltZW91dAogc3lz
ZnNfcHJlZW1wdF90aW1lb3V0X1NPVVJDRVMgPSBpOTE1L3N5c2ZzX3ByZWVtcHRfdGltZW91dAog
CmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L3N5c2ZzX2hlYXJ0YmVhdF9pbnRlcnZhbC5jIGIvdGVz
dHMvaTkxNS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAuLjljZTdiN2I4NQotLS0gL2Rldi9udWxsCisrKyBiL3Rlc3RzL2k5MTUv
c3lzZnNfaGVhcnRiZWF0X2ludGVydmFsLmMKQEAgLTAsMCArMSw0NjYgQEAKKy8qCisgKiBDb3B5
cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICoKKyAqIFBlcm1pc3Npb24gaXMgaGVy
ZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBhCisg
KiBjb3B5IG9mIHRoaXMgc29mdHdhcmUgYW5kIGFzc29jaWF0ZWQgZG9jdW1lbnRhdGlvbiBmaWxl
cyAodGhlICJTb2Z0d2FyZSIpLAorICogdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91dCBy
ZXN0cmljdGlvbiwgaW5jbHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbgorICogdGhlIHJpZ2h0cyB0
byB1c2UsIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vu
c2UsCisgKiBhbmQvb3Igc2VsbCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQgdG8gcGVybWl0
IHBlcnNvbnMgdG8gd2hvbSB0aGUKKyAqIFNvZnR3YXJlIGlzIGZ1cm5pc2hlZCB0byBkbyBzbywg
c3ViamVjdCB0byB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnM6CisgKgorICogVGhlIGFib3ZlIGNv
cHlyaWdodCBub3RpY2UgYW5kIHRoaXMgcGVybWlzc2lvbiBub3RpY2UgKGluY2x1ZGluZyB0aGUg
bmV4dAorICogcGFyYWdyYXBoKSBzaGFsbCBiZSBpbmNsdWRlZCBpbiBhbGwgY29waWVzIG9yIHN1
YnN0YW50aWFsIHBvcnRpb25zIG9mIHRoZQorICogU29mdHdhcmUuCisgKgorICogVEhFIFNPRlRX
QVJFIElTIFBST1ZJREVEICJBUyBJUyIsIFdJVEhPVVQgV0FSUkFOVFkgT0YgQU5ZIEtJTkQsIEVY
UFJFU1MgT1IKKyAqIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdB
UlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZLAorICogRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFS
IFBVUlBPU0UgQU5EIE5PTklORlJJTkdFTUVOVC4gIElOIE5PIEVWRU5UIFNIQUxMCisgKiBUSEUg
QVVUSE9SUyBPUiBDT1BZUklHSFQgSE9MREVSUyBCRSBMSUFCTEUgRk9SIEFOWSBDTEFJTSwgREFN
QUdFUyBPUiBPVEhFUgorICogTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05U
UkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKKyAqIEZST00sIE9VVCBPRiBPUiBJTiBD
T05ORUNUSU9OIFdJVEggVEhFIFNPRlRXQVJFIE9SIFRIRSBVU0UgT1IgT1RIRVIgREVBTElOR1MK
KyAqIElOIFRIRSBTT0ZUV0FSRS4KKyAqLworCisjaW5jbHVkZSA8ZGlyZW50Lmg+CisjaW5jbHVk
ZSA8ZXJybm8uaD4KKyNpbmNsdWRlIDxmY250bC5oPgorI2luY2x1ZGUgPGludHR5cGVzLmg+Cisj
aW5jbHVkZSA8c2lnbmFsLmg+CisjaW5jbHVkZSA8c3lzL3N0YXQuaD4KKyNpbmNsdWRlIDxzeXMv
dHlwZXMuaD4KKyNpbmNsdWRlIDxzeXMvd2FpdC5oPgorI2luY2x1ZGUgPHVuaXN0ZC5oPgorCisj
aW5jbHVkZSAiZHJtdGVzdC5oIiAvKiBnZW1fcXVpZXNjZW50X2dwdSgpISAqLworI2luY2x1ZGUg
Imk5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5oIgorI2luY2x1ZGUgImlndF9kdW1teWxvYWQuaCIK
KyNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKKyNpbmNsdWRlICJpb2N0bF93cmFwcGVycy5oIiAvKiBp
Z3RfcmVxdWlyZV9nZW0oKSEgKi8KKyNpbmNsdWRlICJzd19zeW5jLmgiCisKKyNpbmNsdWRlICJp
Z3RfZGVidWdmcy5oIgorCitzdGF0aWMgYm9vbCBfX2VuYWJsZV9oYW5nY2hlY2soaW50IGRpciwg
Ym9vbCBzdGF0ZSkKK3sKKwlyZXR1cm4gaWd0X3N5c2ZzX3NldChkaXIsICJlbmFibGVfaGFuZ2No
ZWNrIiwgc3RhdGUgPyAiMSIgOiAiMCIpOworfQorCitzdGF0aWMgdm9pZCBlbmFibGVfaGFuZ2No
ZWNrKGludCBpOTE1LCBib29sIHN0YXRlKQoreworCWludCBkaXI7CisKKwlkaXIgPSBpZ3Rfc3lz
ZnNfb3Blbl9wYXJhbWV0ZXJzKGk5MTUpOworCWlmIChkaXIgPCAwKSAvKiBubyBwYXJhbWV0ZXJz
LCBtdXN0IGJlIGRlZmF1bHQhICovCisJCXJldHVybjsKKworCV9fZW5hYmxlX2hhbmdjaGVjayhk
aXIsIHN0YXRlKTsKKwljbG9zZShkaXIpOworfQorCitzdGF0aWMgdm9pZCBzZXRfaGVhcnRiZWF0
KGludCBlbmdpbmUsIHVuc2lnbmVkIGludCB2YWx1ZSkKK3sKKwl1bnNpZ25lZCBpbnQgZGVsYXkg
PSB+dmFsdWU7CisKKwlpZ3Rfc3lzZnNfcHJpbnRmKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZh
bF9tcyIsICIldSIsIHZhbHVlKTsKKwlpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAiaGVhcnRiZWF0
X2ludGVydmFsX21zIiwgIiV1IiwgJmRlbGF5KTsKKwlpZ3RfYXNzZXJ0X2VxKGRlbGF5LCB2YWx1
ZSk7Cit9CisKK3N0YXRpYyB2b2lkIHRlc3RfaWRlbXBvdGVudChpbnQgaTkxNSwgaW50IGVuZ2lu
ZSkKK3sKKwl1bnNpZ25lZCBpbnQgZGVsYXlzW10gPSB7IDEsIDEwMDAsIDUwMDAsIDUwMDAwLCAx
MjM0NTY3ODkgfTsKKwl1bnNpZ25lZCBpbnQgc2F2ZWQ7CisKKwkvKiBRdWljayB0ZXN0IHRoYXQg
dGhlIHByb3BlcnR5IHJlcG9ydHMgdGhlIHZhbHVlcyB3ZSBzZXQgKi8KKworCWlndF9hc3NlcnQo
aWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIsICIldSIsICZz
YXZlZCkgPT0gMSk7CisJaWd0X2RlYnVnKCJJbml0aWFsIGhlYXJ0YmVhdF9pbnRlcnZhbF9tczol
dVxuIiwgc2F2ZWQpOworCisJZm9yIChpbnQgaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGRlbGF5cyk7
IGkrKykKKwkJc2V0X2hlYXJ0YmVhdChlbmdpbmUsIGRlbGF5c1tpXSk7CisKKwlzZXRfaGVhcnRi
ZWF0KGVuZ2luZSwgc2F2ZWQpOworfQorCitzdGF0aWMgdm9pZCB0ZXN0X2ludmFsaWQoaW50IGk5
MTUsIGludCBlbmdpbmUpCit7CisJdW5zaWduZWQgaW50IHNhdmVkLCBkZWxheTsKKworCS8qIFF1
aWNrIHRlc3QgdGhhdCB3ZSByZWplY3QgYW55IHVucmVwcmVzZW50YWJsZSBpbnRlcnZhbHMgKi8K
KworCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZh
bF9tcyIsICIldSIsICZzYXZlZCkgPT0gMSk7CisJaWd0X2RlYnVnKCJJbml0aWFsIGhlYXJ0YmVh
dF9pbnRlcnZhbF9tczoldVxuIiwgc2F2ZWQpOworCisJaWd0X3N5c2ZzX3ByaW50ZihlbmdpbmUs
ICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCBQUkl1NjQsIC0xKTsKKwlpZ3Rfc3lzZnNfc2NhbmYo
ZW5naW5lLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwgIiV1IiwgJmRlbGF5KTsKKwlpZ3RfYXNz
ZXJ0X2VxKGRlbGF5LCBzYXZlZCk7CisKKwlpZ3Rfc3lzZnNfcHJpbnRmKGVuZ2luZSwgImhlYXJ0
YmVhdF9pbnRlcnZhbF9tcyIsIFBSSXU2NCwgMTB1bGwgPDwgMzIpOworCWlndF9zeXNmc19zY2Fu
ZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmZGVsYXkpOworCWlndF9h
c3NlcnRfZXEoZGVsYXksIHNhdmVkKTsKK30KKworc3RhdGljIHZvaWQgc2V0X3VuYmFubmFibGUo
aW50IGk5MTUsIHVpbnQzMl90IGN0eCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRf
cGFyYW0gcCA9IHsKKwkJLmN0eF9pZCA9IGN0eCwKKwkJLnBhcmFtID0gSTkxNV9DT05URVhUX1BB
UkFNX0JBTk5BQkxFLAorCX07CisKKwlpZ3RfYXNzZXJ0X2VxKF9fZ2VtX2NvbnRleHRfc2V0X3Bh
cmFtKGk5MTUsICZwKSwgMCk7Cit9CisKK3N0YXRpYyB1aW50MzJfdCBjcmVhdGVfY29udGV4dChp
bnQgaTkxNSwgdW5zaWduZWQgaW50IGNsYXNzLCB1bnNpZ25lZCBpbnQgaW5zdCwgaW50IHByaW8p
Cit7CisJdWludDMyX3QgY3R4OworCisJY3R4ID0gZ2VtX2NvbnRleHRfY3JlYXRlX2Zvcl9lbmdp
bmUoaTkxNSwgY2xhc3MsIGluc3QpOworCXNldF91bmJhbm5hYmxlKGk5MTUsIGN0eCk7CisJZ2Vt
X2NvbnRleHRfc2V0X3ByaW9yaXR5KGk5MTUsIGN0eCwgcHJpbyk7CisKKwlyZXR1cm4gY3R4Owor
fQorCitzdGF0aWMgdWludDY0X3QgX190ZXN0X3RpbWVvdXQoaW50IGk5MTUsIGludCBlbmdpbmUs
IHVuc2lnbmVkIGludCB0aW1lb3V0KQoreworCXVuc2lnbmVkIGludCBjbGFzcywgaW5zdDsKKwlz
dHJ1Y3QgdGltZXNwZWMgdHMgPSB7fTsKKwlpZ3Rfc3Bpbl90ICpzcGluWzJdOworCXVpbnQ2NF90
IGVsYXBzZWQ7CisJdWludDMyX3QgY3R4WzJdOworCisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2Nh
bmYoZW5naW5lLCAiY2xhc3MiLCAiJXUiLCAmY2xhc3MpID09IDEpOworCWlndF9hc3NlcnQoaWd0
X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImluc3RhbmNlIiwgIiV1IiwgJmluc3QpID09IDEpOworCisJ
c2V0X2hlYXJ0YmVhdChlbmdpbmUsIHRpbWVvdXQpOworCisJY3R4WzBdID0gY3JlYXRlX2NvbnRl
eHQoaTkxNSwgY2xhc3MsIGluc3QsIDEwMjMpOworCXNwaW5bMF0gPSBpZ3Rfc3Bpbl9uZXcoaTkx
NSwgY3R4WzBdLAorCQkJICAgICAgIC5mbGFncyA9IChJR1RfU1BJTl9OT19QUkVFTVBUSU9OIHwK
KwkJCQkJIElHVF9TUElOX1BPTExfUlVOIHwKKwkJCQkJIElHVF9TUElOX0ZFTkNFX09VVCkpOwor
CWlndF9zcGluX2J1c3l3YWl0X3VudGlsX3N0YXJ0ZWQoc3BpblswXSk7CisKKwljdHhbMV0gPSBj
cmVhdGVfY29udGV4dChpOTE1LCBjbGFzcywgaW5zdCwgLTEwMjMpOworCWlndF9uc2VjX2VsYXBz
ZWQoJnRzKTsKKwlzcGluWzFdID0gaWd0X3NwaW5fbmV3KGk5MTUsIGN0eFsxXSwgLmZsYWdzID0g
SUdUX1NQSU5fUE9MTF9SVU4pOworCWlndF9zcGluX2J1c3l3YWl0X3VudGlsX3N0YXJ0ZWQoc3Bp
blsxXSk7CisJZWxhcHNlZCA9IGlndF9uc2VjX2VsYXBzZWQoJnRzKTsKKworCWlndF9zcGluX2Zy
ZWUoaTkxNSwgc3BpblsxXSk7CisKKwlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfd2FpdChzcGlu
WzBdLT5vdXRfZmVuY2UsIDEpLCAwKTsKKwlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3RhdHVz
KHNwaW5bMF0tPm91dF9mZW5jZSksIC1FSU8pOworCisJaWd0X3NwaW5fZnJlZShpOTE1LCBzcGlu
WzBdKTsKKworCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3R4WzFdKTsKKwlnZW1fY29udGV4
dF9kZXN0cm95KGk5MTUsIGN0eFswXSk7CisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisKKwly
ZXR1cm4gZWxhcHNlZDsKK30KKworc3RhdGljIHZvaWQgdGVzdF9wcmVjaXNlKGludCBpOTE1LCBp
bnQgZW5naW5lKQoreworCWludCBkZWxheXNbXSA9IHsgMSwgNTAsIDEwMCwgNTAwIH07CisJdW5z
aWduZWQgaW50IHNhdmVkOworCisJLyoKKwkgKiBUaGUgaGVhcnRiZWF0IGludGVydmFsIGRlZmlu
ZXMgaG93IGxvbmcgdGhlIGtlcm5lbCB3YWl0cyBiZXR3ZWVuCisJICogY2hlY2tpbmcgb24gdGhl
IHN0YXR1cyBvZiB0aGUgZW5naW5lcy4gSXQgZmlyc3Qgc2VuZHMgZG93biBhCisJICogaGVhcnRi
ZWF0IHB1bHNlLCB3YWl0cyB0aGUgaW50ZXJ2YWwgYW5kIHNlZXMgaWYgdGhlIHN5c3RlbSBtYW5h
Z2VkCisJICogdG8gY29tcGxldGUgdGhlIHB1bHNlLiBJZiBub3QsIGl0IGdpdmVzIGEgcHJpb3Jp
dHkgYnVtcCB0byB0aGUgcHVsc2UKKwkgKiBhbmQgd2FpdHMgYWdhaW4uIFRoaXMgaXMgcmVwZWF0
ZWQgdW50aWwgdGhlIHByaW9yaXR5IGNhbm5vdCBiZSBidW1wZWQKKwkgKiBhbnkgbW9yZSwgYW5k
IHRoZSBzeXN0ZW0gaXMgZGVjbGFyZWQgaHVuZy4KKwkgKgorCSAqIElmIHdlIGNvbWJpbmUgdGhl
IHByZWVtcHRpdmUgcHVsc2Ugd2l0aCBmb3JjZWQgcHJlZW1wdGlvbiwgd2UgaW5zdGVhZAorCSAq
IGdldCBhIG11Y2ggZmFzdGVyIGhhbmcgZGV0ZWN0aW9uLiBUaHVzIGluIGNvbWJpbmF0aW9uIHdl
IGNhbiBtZWFzdXJlCisJICogdGhlIHN5c3RlbSByZXNwb25zZSB0aW1lIHRvIHJlc2V0aW5nIGEg
aG9nIGFzIGEgbWVhc3VyZSBvZiB0aGUKKwkgKiBoZWFydGJlYXQgaW50ZXJ2YWwsIGFuZCBzbyBj
b25maXJtIGl0IG1hdGNoZXMgb3VyIHNwZWNpZmljYXRpb24uCisJICovCisKKwlpZ3RfcmVxdWly
ZShpZ3Rfc3lzZnNfcHJpbnRmKGVuZ2luZSwgInByZWVtcHRfdGltZW91dF9tcyIsICIldSIsIDEp
ID09IDEpOworCisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAiaGVhcnRiZWF0
X2ludGVydmFsX21zIiwgIiV1IiwgJnNhdmVkKSA9PSAxKTsKKwlpZ3RfZGVidWcoIkluaXRpYWwg
aGVhcnRiZWF0X2ludGVydmFsX21zOiV1XG4iLCBzYXZlZCk7CisJZ2VtX3F1aWVzY2VudF9ncHUo
aTkxNSk7CisKKwlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUoZGVsYXlzKTsgaSsrKSB7
CisJCXVpbnQ2NF90IGVsYXBzZWQ7CisKKwkJZWxhcHNlZCA9IF9fdGVzdF90aW1lb3V0KGk5MTUs
IGVuZ2luZSwgZGVsYXlzW2ldKTsKKwkJaWd0X2luZm8oImhlYXJ0YmVhdF9pbnRlcnZhbF9tczol
ZCwgZWxhcHNlZD0lLjNmbXNbJWRdXG4iLAorCQkJIGRlbGF5c1tpXSwgZWxhcHNlZCAqIDFlLTYs
CisJCQkJKGludCkoZWxhcHNlZCAvIDEwMDAgLyAxMDAwKQorCQkJICk7CisKKwkJLyoKKwkJICog
SXQgdGFrZXMgYSBjb3VwbGUgb2YgbWlzc2VkIGhlYXJ0YmVhdHMgYmVmb3JlIHdlIHN0YXJ0CisJ
CSAqIHRlcm1pbmF0aW5nIGhvZ3MsIGFuZCBhIGxpdHRsZSBiaXQgb2YgamlmZmllIHNsYWNrIGZv
cgorCQkgKiBzY2hlZHVsaW5nIGF0IGVhY2ggc3RlcC4gMTUwbXMgc2hvdWxkIGNvdmVyIGFsbCBv
ZiBvdXIKKwkJICogc2lucyBhbmQgYmUgdXNlZnVsIHRvbGVyYW5jZS4KKwkJICovCisJCWlndF9h
c3NlcnRfZihlbGFwc2VkIC8gMTAwMCAvIDEwMDAgPCAzICogZGVsYXlzW2ldICsgMTUwLAorCQkJ
ICAgICAiSGVhcnRiZWF0IGludGVydmFsIChhbmQgQ1BSKSBleGNlZWRlZCByZXF1ZXN0IVxuIik7
CisJfQorCisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisJc2V0X2hlYXJ0YmVhdChlbmdpbmUs
IHNhdmVkKTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9ub3ByZWVtcHQoaW50IGk5MTUsIGludCBl
bmdpbmUpCit7CisJaW50IGRlbGF5c1tdID0geyAxLCA1MCwgMTAwLCA1MDAgfTsKKwl1bnNpZ25l
ZCBpbnQgc2F2ZWQ7CisKKwkvKgorCSAqIFRoZSBzYW1lIHByaW5jaXBsZSBhcyB0ZXN0X3ByZWNp
c2UoKSwgZXhjZXB0IHRoYXQgZm9yY2VkIHByZWVtcHRpb24KKwkgKiBpcyBkaXNhYmxlZCAob3Ig
c2ltcGx5IG5vdCBzdXBwb3J0ZWQgYnkgdGhlIHBsYXRmb3JtKS4gVGhpcyB0aW1lLAorCSAqIGl0
IHdhaXRzIHVudGlsIHRoZSBzeXN0ZW0gbWlzc2VzIGEgZmV3IGhlYXJ0YmVhdCBiZWZvcmUgZG9p
bmcgYQorCSAqIHBlci1lbmdpbmUvZnVsbC1ncHUgcmVzZXQuIEFzIHN1Y2ggaXQgaXMgbGVzcyBw
cmVjaXNlLCBidXQgd2UKKwkgKiBjYW4gc3RpbGwgZXN0aW1hdGUgYW4gdXBwZXIgYm91bmQgZm9y
IG91ciBzcGVjaWZpZWQgaGVhcnRiZWF0CisJICogaW50ZXJ2YWwgYW5kIHZlcmlmeSB0aGUgc3lz
dGVtIGNvbmZvcm1zLgorCSAqLworCisJLyogVGVzdCBoZWFydGJlYXRzIHdpdGggZm9yY2VkIHBy
ZWVtcHRpb24gIGRpc2FibGVkICovCisJaWd0X3N5c2ZzX3ByaW50ZihlbmdpbmUsICJwcmVlbXB0
X3RpbWVvdXRfbXMiLCAiJXUiLCAwKTsKKworCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVu
Z2luZSwgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIsICIldSIsICZzYXZlZCkgPT0gMSk7CisJaWd0
X2RlYnVnKCJJbml0aWFsIGhlYXJ0YmVhdF9pbnRlcnZhbF9tczoldVxuIiwgc2F2ZWQpOworCWdl
bV9xdWllc2NlbnRfZ3B1KGk5MTUpOworCisJZm9yIChpbnQgaSA9IDA7IGkgPCBBUlJBWV9TSVpF
KGRlbGF5cyk7IGkrKykgeworCQl1aW50NjRfdCBlbGFwc2VkOworCisJCWVsYXBzZWQgPSBfX3Rl
c3RfdGltZW91dChpOTE1LCBlbmdpbmUsIGRlbGF5c1tpXSk7CisJCWlndF9pbmZvKCJoZWFydGJl
YXRfaW50ZXJ2YWxfbXM6JWQsIGVsYXBzZWQ9JS4zZm1zWyVkXVxuIiwKKwkJCSBkZWxheXNbaV0s
IGVsYXBzZWQgKiAxZS02LAorCQkJCShpbnQpKGVsYXBzZWQgLyAxMDAwIC8gMTAwMCkKKwkJCSAp
OworCisJCS8qCisJCSAqIEl0IHRha2VzIGEgc2V2ZXJhbCBtaXNzZWQgaGVhcnRiZWF0cyBiZWZv
cmUgd2Ugc3RhcnQKKwkJICogdGVybWluYXRpbmcgaG9ncywgYW5kIGEgbGl0dGxlIGJpdCBvZiBq
aWZmaWUgc2xhY2sgZm9yCisJCSAqIHNjaGVkdWxpbmcgYXQgZWFjaCBzdGVwLiAyNTBtcyBzaG91
bGQgY292ZXIgYWxsIG9mIG91cgorCQkgKiBzaW5zIGFuZCBiZSB1c2VmdWwgdG9sZXJhbmNlLgor
CQkgKi8KKwkJaWd0X2Fzc2VydF9mKGVsYXBzZWQgLyAxMDAwIC8gMTAwMCA8IDUgKiBkZWxheXNb
aV0gKyAxNTAsCisJCQkgICAgICJIZWFydGJlYXQgaW50ZXJ2YWwgKGFuZCBDUFIpIGV4Y2VlZGVk
IHJlcXVlc3QhXG4iKTsKKwl9CisKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKKwlzZXRfaGVh
cnRiZWF0KGVuZ2luZSwgc2F2ZWQpOworfQorCitzdGF0aWMgdm9pZCBjbGllbnQoaW50IGk5MTUs
IGludCBlbmdpbmUsIGludCAqY3RsLCBpbnQgZHVyYXRpb24sIGludCBleHBlY3QpCit7CisJdW5z
aWduZWQgaW50IGNsYXNzLCBpbnN0OworCXVuc2lnbmVkIGxvbmcgY291bnQgPSAwOworCXVpbnQz
Ml90IGN0eDsKKworCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImNsYXNzIiwg
IiV1IiwgJmNsYXNzKSA9PSAxKTsKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUs
ICJpbnN0YW5jZSIsICIldSIsICZpbnN0KSA9PSAxKTsKKworCWN0eCA9IGNyZWF0ZV9jb250ZXh0
KGk5MTUsIGNsYXNzLCBpbnN0LCAwKTsKKworCXdoaWxlICghUkVBRF9PTkNFKCpjdGwpKSB7CisJ
CWlndF9zcGluX3QgKnNwaW47CisKKwkJc3BpbiA9IGlndF9zcGluX25ldyhpOTE1LCBjdHgsCisJ
CQkJICAgIC5mbGFncyA9IChJR1RfU1BJTl9OT19QUkVFTVBUSU9OIHwKKwkJCQkJICAgICAgSUdU
X1NQSU5fUE9MTF9SVU4gfAorCQkJCQkgICAgICBJR1RfU1BJTl9GRU5DRV9PVVQpKTsKKwkJaWd0
X3NwaW5fYnVzeXdhaXRfdW50aWxfc3RhcnRlZChzcGluKTsKKworCQlpZ3Rfc3Bpbl9zZXRfdGlt
ZW91dChzcGluLCAodWludDY0X3QpZHVyYXRpb24gKiAxMDAwICogMTAwMCk7CisJCXN5bmNfZmVu
Y2Vfd2FpdChzcGluLT5vdXRfZmVuY2UsIC0xKTsKKworCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVu
Y2Vfc3RhdHVzKHNwaW4tPm91dF9mZW5jZSksIGV4cGVjdCk7CisJCWNvdW50Kys7CisJfQorCisJ
Z2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjdHgpOworCWlndF9pbmZvKCIlcyBjbGllbnQgY29t
cGxldGVkICVsdSBzcGluc1xuIiwKKwkJIGV4cGVjdCA8IDAgPyAiQmFkIiA6ICJHb29kIiwgY291
bnQpOworfQorCitzdGF0aWMgdm9pZCBzaWdpZ24oaW50IHNpZykKK3sKK30KKworc3RhdGljIHZv
aWQgd2FpdF91bnRpbChpbnQgZHVyYXRpb24pCit7CisJc2lnbmFsKFNJR0NITEQsIHNpZ2lnbik7
CisJc2xlZXAoZHVyYXRpb24pOworCXNpZ25hbChTSUdDSExELCBTSUdfSUdOKTsKK30KKworc3Rh
dGljIHZvaWQgX190ZXN0X21peGVkKGludCBpOTE1LCBpbnQgZW5naW5lLAorCQkJIGludCBoZWFy
dGJlYXQsCisJCQkgaW50IGdvb2QsCisJCQkgaW50IGJhZCwKKwkJCSBpbnQgZHVyYXRpb24pCit7
CisJdW5zaWduZWQgaW50IHNhdmVkOworCWludCAqc2hhcmVkOworCisJLyoKKwkgKiBHaXZlbiB0
d28gY2xpZW50cyBvZiB3aGljaCBvbmUgaXMgYSBob2csIGJlIHN1cmUgd2UgY2xlYW5seQorCSAq
IHRlcm1pbmF0ZSB0aGUgaG9nIGxlYXZpbmcgdGhlIGdvb2QgY2xpZW50IHRvIHJ1bi4KKwkgKi8K
KworCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZh
bF9tcyIsICIldSIsICZzYXZlZCkgPT0gMSk7CisJaWd0X2RlYnVnKCJJbml0aWFsIGhlYXJ0YmVh
dF9pbnRlcnZhbF9tczoldVxuIiwgc2F2ZWQpOworCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwor
CisJc2hhcmVkID0gbW1hcChOVUxMLCA0MDk2LCBQUk9UX1dSSVRFLCBNQVBfU0hBUkVEIHwgTUFQ
X0FOT04sIC0xLCAwKTsKKwlpZ3RfYXNzZXJ0KHNoYXJlZCAhPSBNQVBfRkFJTEVEKTsKKworCXNl
dF9oZWFydGJlYXQoZW5naW5lLCBoZWFydGJlYXQpOworCisJaWd0X2ZvcmsoY2hpbGQsIDEpIC8q
IGdvb2QgY2xpZW50ICovCisJCWNsaWVudChpOTE1LCBlbmdpbmUsIHNoYXJlZCwgZ29vZCwgMSk7
CisJaWd0X2ZvcmsoY2hpbGQsIDEpIC8qIGJhZCBjbGllbnQgKi8KKwkJY2xpZW50KGk5MTUsIGVu
Z2luZSwgc2hhcmVkLCBiYWQsIC1FSU8pOworCisJd2FpdF91bnRpbChkdXJhdGlvbik7CisKKwkq
c2hhcmVkID0gdHJ1ZTsKKwlpZ3Rfd2FpdGNoaWxkcmVuKCk7CisJbXVubWFwKHNoYXJlZCwgNDA5
Nik7CisKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKKwlzZXRfaGVhcnRiZWF0KGVuZ2luZSwg
c2F2ZWQpOworfQorCitzdGF0aWMgdm9pZCB0ZXN0X21peGVkKGludCBpOTE1LCBpbnQgZW5naW5l
KQoreworCS8qCisJICogSG9ncyByYXJlbHkgcnVuIGFsb25lLiBPdXIgaGFuZyBkZXRlY3Rpb24g
bXVzdCBjYXJlZnVsbHkgd2VhbgorCSAqIG91dCB0aGUgaG9ncyBmcm9tIHRoZSBpbm5vY2VudCBj
bGllbnRzLiBUaHVzIHdlIHJ1biBhIG1peGVkIHdvcmtsb2FkCisJICogd2l0aCBub24tcHJlZW1w
dGFibGUgaG9ncyB0aGF0IGV4Y2VlZCB0aGUgaGVhcnRiZWF0LCBhbmQgcXVpY2tlcgorCSAqIGlu
bm9jZW50cy4gV2UgaW5zcGVjdCB0aGUgZmVuY2Ugc3RhdHVzIG9mIGVhY2ggdG8gdmVyaWZ5IHRo
YXQKKwkgKiBvbmx5IHRoZSBob2dzIGFyZSByZXNldC4KKwkgKi8KKwlpZ3Rfc3lzZnNfcHJpbnRm
KGVuZ2luZSwgInByZWVtcHRfdGltZW91dF9tcyIsICIldSIsIDEpOworCV9fdGVzdF9taXhlZChp
OTE1LCBlbmdpbmUsIDEwLCAxMCwgMTAwLCA1KTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9sb25n
KGludCBpOTE1LCBpbnQgZW5naW5lKQoreworCS8qCisJICogU29tZSBjbGllbnRzIHJlbGlzaCBi
ZWluZyBob2dzLCBhbmQgZGVtYW5kIHRoYXQgdGhlIHN5c3RlbQorCSAqIG5ldmVyIGRvIGhhbmdj
aGVja2luZy4gTmV2ZXIgaXMgaGFyZCB0byB0ZXN0LCBzbyBpbnN0ZWFkIHdlCisJICogcnVuIG92
ZXIgYSBkYXkgYW5kIHZlcmlmeSB0aGF0IG9ubHkgdGhlIHN1cGVyIGhvZ3MgYXJlIHJlc2V0Lgor
CSAqLworCWlndF9zeXNmc19wcmludGYoZW5naW5lLCAicHJlZW1wdF90aW1lb3V0X21zIiwgIiV1
IiwgMCk7CisJX190ZXN0X21peGVkKGk5MTUsIGVuZ2luZSwKKwkJICAgICA2MCAqIDEwMDAsIC8q
IDYwcyAqLworCQkgICAgIDYwICogMTAwMCwgLyogNjBzICovCisJCSAgICAgMzAwICogMTAwMCwg
LyogNW1pbiAqLworCQkgICAgIDI0ICogMzYwMCAvKiAyNGhvdXJzICovKTsKK30KKworc3RhdGlj
IHZvaWQgdGVzdF9vZmYoaW50IGk5MTUsIGludCBlbmdpbmUpCit7CisJdW5zaWduZWQgaW50IGNs
YXNzLCBpbnN0OworCXVuc2lnbmVkIGludCBzYXZlZDsKKwlpZ3Rfc3Bpbl90ICpzcGluOworCXVp
bnQzMl90IGN0eDsKKworCS8qCisJICogU29tZSBvdGhlciBjbGllbnRzIHJlcXVlc3QgdGhhdCB0
aGVyZSBpcyBuZXZlciBhbnkgaW50ZXJydXB0aW9uCisJICogb3Igaml0dGVyIGluIHRoZWlyIHdv
cmtsb2FkIGFuZCBzbyBkZW1hbmQgdGhhdCB0aGUga2VybmVsIG5ldmVyCisJICogc2VuZHMgYSBo
ZWFydGJlYXQgdG8gc3RlYWwgcHJlY2lvdXMgY3ljbGVzIGZyb20gdGhlaXIgd29ya2xvYWQuCisJ
ICogVHVybiBvZmYgdGhlIGhlYXJ0YmVhdCBhbmQgY2hlY2sgdGhhdCB0aGUgd29ya2xvYWQgaXMg
dW5pbnRlcnJ1cHRlZAorCSAqIGZvciAxNTBzLgorCSAqLworCisJaWd0X2Fzc2VydChpZ3Rfc3lz
ZnNfc2NhbmYoZW5naW5lLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwgIiV1IiwgJnNhdmVkKSA9
PSAxKTsKKwlpZ3RfZGVidWcoIkluaXRpYWwgaGVhcnRiZWF0X2ludGVydmFsX21zOiV1XG4iLCBz
YXZlZCk7CisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNm
c19zY2FuZihlbmdpbmUsICJjbGFzcyIsICIldSIsICZjbGFzcykgPT0gMSk7CisJaWd0X2Fzc2Vy
dChpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAiaW5zdGFuY2UiLCAiJXUiLCAmaW5zdCkgPT0gMSk7
CisKKwlzZXRfaGVhcnRiZWF0KGVuZ2luZSwgMCk7CisKKwljdHggPSBjcmVhdGVfY29udGV4dChp
OTE1LCBjbGFzcywgaW5zdCwgMCk7CisKKwlzcGluID0gaWd0X3NwaW5fbmV3KGk5MTUsIGN0eCwK
KwkJCSAgICAuZmxhZ3MgPSAoSUdUX1NQSU5fUE9MTF9SVU4gfAorCQkJCSAgICAgIElHVF9TUElO
X05PX1BSRUVNUFRJT04gfAorCQkJCSAgICAgIElHVF9TUElOX0ZFTkNFX09VVCkpOworCWlndF9z
cGluX2J1c3l3YWl0X3VudGlsX3N0YXJ0ZWQoc3Bpbik7CisKKwlmb3IgKGludCBpID0gMDsgaSA8
IDE1MDsgaSsrKSB7CisJCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV9zdGF0dXMoc3Bpbi0+b3V0
X2ZlbmNlKSwgMCk7CisJCXNsZWVwKDEpOworCX0KKworCXNldF9oZWFydGJlYXQoZW5naW5lLCAx
KTsKKworCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV93YWl0KHNwaW4tPm91dF9mZW5jZSwgMjUw
KSwgMCk7CisJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3N0YXR1cyhzcGluLT5vdXRfZmVuY2Up
LCAtRUlPKTsKKworCWlndF9zcGluX2ZyZWUoaTkxNSwgc3Bpbik7CisKKwlnZW1fcXVpZXNjZW50
X2dwdShpOTE1KTsKKwlzZXRfaGVhcnRiZWF0KGVuZ2luZSwgc2F2ZWQpOworfQorCitpZ3RfbWFp
bgoreworCWludCBpOTE1ID0gLTEsIGVuZ2luZXMgPSAtMTsKKworCWlndF9maXh0dXJlIHsKKwkJ
aW50IHN5czsKKworCQlpOTE1ID0gZHJtX29wZW5fZHJpdmVyKERSSVZFUl9JTlRFTCk7CisJCWln
dF9yZXF1aXJlX2dlbShpOTE1KTsKKwkJaWd0X2FsbG93X2hhbmcoaTkxNSwgMCwgMCk7CisKKwkJ
c3lzID0gaWd0X3N5c2ZzX29wZW4oaTkxNSk7CisJCWlndF9yZXF1aXJlKHN5cyAhPSAtMSk7CisK
KwkJZW5naW5lcyA9IG9wZW5hdChzeXMsICJlbmdpbmUiLCBPX1JET05MWSk7CisJCWlndF9yZXF1
aXJlKGVuZ2luZXMgIT0gLTEpOworCQljbG9zZShzeXMpOworCisJCWVuYWJsZV9oYW5nY2hlY2so
aTkxNSwgdHJ1ZSk7CisJfQorCisJaWd0X3N1YnRlc3Rfd2l0aF9keW5hbWljKCJpZGVtcG90ZW50
IikKKwkJZHluX3N5c2ZzX2VuZ2luZXMoaTkxNSwgZW5naW5lcywgImhlYXJ0YmVhdF9pbnRlcnZh
bF9tcyIsCisJCQkJICB0ZXN0X2lkZW1wb3RlbnQpOworCisJaWd0X3N1YnRlc3Rfd2l0aF9keW5h
bWljKCJpbnZhbGlkIikKKwkJZHluX3N5c2ZzX2VuZ2luZXMoaTkxNSwgZW5naW5lcywgImhlYXJ0
YmVhdF9pbnRlcnZhbF9tcyIsCisJCQkJICB0ZXN0X2ludmFsaWQpOworCisJaWd0X3N1YnRlc3Rf
d2l0aF9keW5hbWljKCJwcmVjaXNlIikKKwkJZHluX3N5c2ZzX2VuZ2luZXMoaTkxNSwgZW5naW5l
cywgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIsCisJCQkJICB0ZXN0X3ByZWNpc2UpOworCisJaWd0
X3N1YnRlc3Rfd2l0aF9keW5hbWljKCJub3ByZWVtcHQiKQorCQlkeW5fc3lzZnNfZW5naW5lcyhp
OTE1LCBlbmdpbmVzLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwKKwkJCQkgIHRlc3Rfbm9wcmVl
bXB0KTsKKworCWlndF9zdWJ0ZXN0X3dpdGhfZHluYW1pYygibWl4ZWQiKQorCQlkeW5fc3lzZnNf
ZW5naW5lcyhpOTE1LCBlbmdpbmVzLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwKKwkJCQkgIHRl
c3RfbWl4ZWQpOworCisJaWd0X3N1YnRlc3Rfd2l0aF9keW5hbWljKCJvZmYiKQorCQlkeW5fc3lz
ZnNfZW5naW5lcyhpOTE1LCBlbmdpbmVzLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwKKwkJCQkg
IHRlc3Rfb2ZmKTsKKworCWlndF9zdWJ0ZXN0X3dpdGhfZHluYW1pYygibG9uZyIpCisJCWR5bl9z
eXNmc19lbmdpbmVzKGk5MTUsIGVuZ2luZXMsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLAorCQkJ
CSAgdGVzdF9sb25nKTsKKworCWlndF9maXh0dXJlIHsKKwkJY2xvc2UoZW5naW5lcyk7CisJCWNs
b3NlKGk5MTUpOworCX0KK30KZGlmZiAtLWdpdCBhL3Rlc3RzL21lc29uLmJ1aWxkIGIvdGVzdHMv
bWVzb24uYnVpbGQKaW5kZXggMTg5M2YyYzM0Li44Nzk1ZGZlMWIgMTAwNjQ0Ci0tLSBhL3Rlc3Rz
L21lc29uLmJ1aWxkCisrKyBiL3Rlc3RzL21lc29uLmJ1aWxkCkBAIC0yMzgsNiArMjM4LDcgQEAg
aTkxNV9wcm9ncyA9IFsKIAknaTkxNV9xdWVyeScsCiAJJ2k5MTVfc2VsZnRlc3QnLAogCSdpOTE1
X3N1c3BlbmQnLAorCSdzeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwnLAogCSdzeXNmc19wcmVlbXB0
X3RpbWVvdXQnLAogXQogCi0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
