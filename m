Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979EE105534
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 16:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E01E6F388;
	Thu, 21 Nov 2019 15:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C026F389;
 Thu, 21 Nov 2019 15:19:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 07:19:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="205098601"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2019 07:19:35 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 5DE76843BD4; Thu, 21 Nov 2019 17:19:33 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 17:19:30 +0200
Message-Id: <20191121151930.25464-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] cve: Add checker for cve-2019-0155
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
Cc: igt-dev@lists.freedesktop.org, Joonas Lahtinen <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHZ1bG5lcmFiaWxpdHkgY2hlY2tlciBmb3IgY3ZlLTIwMTktMDE1NQoKdjI6IHN5bmMsIGJh
aWxvdXQgZWFybHkgaWYgbm8gcGFyc2VyIChDaHJpcykKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvbiBCbG9vbWZpZWxkIDxqb24uYmxvb21maWVsZEBp
bnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBpbnRlbC5jb20+
ClJlZmVyZW5jZXM6IGh0dHA6Ly9jdmUubWl0cmUub3JnL2NnaS1iaW4vY3ZlbmFtZS5jZ2k/bmFt
ZT1DVkUtMjAxOS0wMTU1ClJlZmVyZW5jZXM6IGh0dHBzOi8vd3d3LmludGVsLmNvbS9jb250ZW50
L3d3dy91cy9lbi9zZWN1cml0eS1jZW50ZXIvYWR2aXNvcnkvaW50ZWwtc2EtMDAyNDIuaHRtbApT
aWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBNYWtlZmlsZS5hbSAgICAgICAgICB8ICAgMiArLQogY29uZmlndXJlLmFjICAgICAg
ICAgfCAgIDEgKwogY3ZlL01ha2VmaWxlLmFtICAgICAgfCAgMTQgKysKIGN2ZS9NYWtlZmlsZS5z
b3VyY2VzIHwgICA1ICsKIGN2ZS9jdmUtMjAxOS0wMTU1LmMgIHwgNDcwICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGN2ZS9tZXNvbi5idWlsZCAgICAgIHwgIDEy
ICsrCiBtZXNvbi5idWlsZCAgICAgICAgICB8ICAgMSArCiA3IGZpbGVzIGNoYW5nZWQsIDUwNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgY3ZlL01ha2Vm
aWxlLmFtCiBjcmVhdGUgbW9kZSAxMDA2NDQgY3ZlL01ha2VmaWxlLnNvdXJjZXMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBjdmUvY3ZlLTIwMTktMDE1NS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgY3ZlL21l
c29uLmJ1aWxkCgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUuYW0gYi9NYWtlZmlsZS5hbQppbmRleCA5
NDI1MDk2NC4uZTEzOWJiNDQgMTAwNjQ0Ci0tLSBhL01ha2VmaWxlLmFtCisrKyBiL01ha2VmaWxl
LmFtCkBAIC0yMSw3ICsyMSw3IEBACiAKIEFDTE9DQUxfQU1GTEFHUyA9ICR7QUNMT0NBTF9GTEFH
U30gLUkgbTQKIAotU1VCRElSUyA9IGxpYiB0b29scyBzY3JpcHRzIGJlbmNobWFya3MKK1NVQkRJ
UlMgPSBsaWIgdG9vbHMgc2NyaXB0cyBiZW5jaG1hcmtzIGN2ZQogCiBpZiBCVUlMRF9URVNUUwog
U1VCRElSUyArPSB0ZXN0cwpkaWZmIC0tZ2l0IGEvY29uZmlndXJlLmFjIGIvY29uZmlndXJlLmFj
CmluZGV4IGY5ZTQ5NDJlLi4yM2ZkOWYzMCAxMDA2NDQKLS0tIGEvY29uZmlndXJlLmFjCisrKyBi
L2NvbmZpZ3VyZS5hYwpAQCAtMzExLDYgKzMxMSw3IEBAIEFDX0NPTkZJR19GSUxFUyhbCiAJCSB0
b29scy9udWxsX3N0YXRlX2dlbi9NYWtlZmlsZQogCQkgdG9vbHMvcmVnaXN0ZXJzL01ha2VmaWxl
CiAJCSBvdmVybGF5L01ha2VmaWxlCisJCSBjdmUvTWFrZWZpbGUKIAkJIF0pCiAKIEFDX0NPTkZJ
R19GSUxFUyhbdG9vbHMvaW50ZWxfYXViZHVtcF0sIFtjaG1vZCAreCB0b29scy9pbnRlbF9hdWJk
dW1wXSkKZGlmZiAtLWdpdCBhL2N2ZS9NYWtlZmlsZS5hbSBiL2N2ZS9NYWtlZmlsZS5hbQpuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMC4uYjg0MTllY2QKLS0tIC9kZXYvbnVsbAor
KysgYi9jdmUvTWFrZWZpbGUuYW0KQEAgLTAsMCArMSwxNCBAQAoraW5jbHVkZSBNYWtlZmlsZS5z
b3VyY2VzCisKK2N2ZV9QUk9HUkFNUyA9ICQoY3ZlX3Byb2dfbGlzdCkKKworQU1fQ1BQRkxBR1Mg
PSBcCisJLUkkKHRvcF9zcmNkaXIpIFwKKwktSSQodG9wX3NyY2RpcikvaW5jbHVkZS9kcm0tdWFw
aSBcCisJLUkkKHRvcF9zcmNkaXIpL2xpYiBcCisJLUkkKHRvcF9zcmNkaXIpL2xpYi9zdHVicy9z
eXNjYWxscworCitBTV9DRkxBR1MgPSAtSSQodG9wX3NyY2RpcikvaW5jbHVkZS9kcm0tdWFwaSBc
CisJICAgICQoRFJNX0NGTEFHUykgJChDV0FSTkZMQUdTKSAkKENBSVJPX0NGTEFHUykgJChMSUJV
TldJTkRfQ0ZMQUdTKSBcCisJICAgICQoV0VSUk9SX0NGTEFHUykgLURfR05VX1NPVVJDRQorTERB
REQgPSAkKHRvcF9idWlsZGRpcikvbGliL2xpYmludGVsX3Rvb2xzLmxhCmRpZmYgLS1naXQgYS9j
dmUvTWFrZWZpbGUuc291cmNlcyBiL2N2ZS9NYWtlZmlsZS5zb3VyY2VzCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwLi4yYjAyZjk1OAotLS0gL2Rldi9udWxsCisrKyBiL2N2ZS9N
YWtlZmlsZS5zb3VyY2VzCkBAIC0wLDAgKzEsNSBAQAorY3ZlZGlyPSQobGliZXhlY2RpcikvaWd0
LWdwdS10b29scy9jdmUKKworY3ZlX3Byb2dfbGlzdCA9CQkJCVwJCisJY3ZlLTIwMTktMDE1NQor
CSQoTlVMTCkKZGlmZiAtLWdpdCBhL2N2ZS9jdmUtMjAxOS0wMTU1LmMgYi9jdmUvY3ZlLTIwMTkt
MDE1NS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwLi41ZjZjYTYwYQotLS0g
L2Rldi9udWxsCisrKyBiL2N2ZS9jdmUtMjAxOS0wMTU1LmMKQEAgLTAsMCArMSw0NzAgQEAKKy8q
CisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICoKKyAqIFBlcm1pc3Np
b24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFp
bmluZyBhCisgKiBjb3B5IG9mIHRoaXMgc29mdHdhcmUgYW5kIGFzc29jaWF0ZWQgZG9jdW1lbnRh
dGlvbiBmaWxlcyAodGhlICJTb2Z0d2FyZSIpLAorICogdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUg
d2l0aG91dCByZXN0cmljdGlvbiwgaW5jbHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbgorICogdGhl
IHJpZ2h0cyB0byB1c2UsIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUs
IHN1YmxpY2Vuc2UsCisgKiBhbmQvb3Igc2VsbCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQg
dG8gcGVybWl0IHBlcnNvbnMgdG8gd2hvbSB0aGUKKyAqIFNvZnR3YXJlIGlzIGZ1cm5pc2hlZCB0
byBkbyBzbywgc3ViamVjdCB0byB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnM6CisgKgorICogVGhl
IGFib3ZlIGNvcHlyaWdodCBub3RpY2UgYW5kIHRoaXMgcGVybWlzc2lvbiBub3RpY2UgKGluY2x1
ZGluZyB0aGUgbmV4dAorICogcGFyYWdyYXBoKSBzaGFsbCBiZSBpbmNsdWRlZCBpbiBhbGwgY29w
aWVzIG9yIHN1YnN0YW50aWFsIHBvcnRpb25zIG9mIHRoZQorICogU29mdHdhcmUuCisgKgorICog
VEhFIFNPRlRXQVJFIElTIFBST1ZJREVEICJBUyBJUyIsIFdJVEhPVVQgV0FSUkFOVFkgT0YgQU5Z
IEtJTkQsIEVYUFJFU1MgT1IKKyAqIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQg
VE8gVEhFIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZLAorICogRklUTkVTUyBGT1IgQSBQ
QVJUSUNVTEFSIFBVUlBPU0UgQU5EIE5PTklORlJJTkdFTUVOVC4gIElOIE5PIEVWRU5UIFNIQUxM
CisgKiBUSEUgQVVUSE9SUyBPUiBDT1BZUklHSFQgSE9MREVSUyBCRSBMSUFCTEUgRk9SIEFOWSBD
TEFJTSwgREFNQUdFUyBPUiBPVEhFUgorICogTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElP
TiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKKyAqIEZST00sIE9VVCBP
RiBPUiBJTiBDT05ORUNUSU9OIFdJVEggVEhFIFNPRlRXQVJFIE9SIFRIRSBVU0UgT1IgT1RIRVIg
REVBTElOR1MKKyAqIElOIFRIRSBTT0ZUV0FSRS4KKyAqCisgKi8KKworLyoKKyAqIENhbiBiZSBj
b21waWxlZCB3aXRoOgorICogZ2NjIC1XYWxsIC1zdGF0aWMgLW8gY3ZlLTIwMTktMDE1NSBjdmUt
MjAxOS0wMTU1LmMKKyovCisKKyNkZWZpbmUgVkVSU0lPTiAxCisjZGVmaW5lIENIRUNLX1dSSVRF
X0JMT0NLX1dJVEhPVVRfUEFSU0VSIDAKKworI2luY2x1ZGUgPHN0ZGlvLmg+CisjaW5jbHVkZSA8
c3RyaW5nLmg+CisjaW5jbHVkZSA8c3RkaW50Lmg+CisjaW5jbHVkZSA8c3lzL3R5cGVzLmg+Cisj
aW5jbHVkZSA8c3lzL3N0YXQuaD4KKyNpbmNsdWRlIDxzeXMvaW9jdGwuaD4KKyNpbmNsdWRlIDxm
Y250bC5oPgorI2luY2x1ZGUgPGVycm5vLmg+CisjaW5jbHVkZSA8dW5pc3RkLmg+CisjaW5jbHVk
ZSA8c3RkbGliLmg+CisKKyNkZWZpbmUgQVNTRVJUKHgsIHMpIGRvIHsJXAorCWlmICghKHgpKSB7
IFwKKwkJcHJpbnRmKCJGYWlsZWQgdG8gJXMsICVzICglZClcbiIsIChzKSwgXAorCQkJICAgICAg
IHN0cmVycm9yKGVycm5vKSwgZXJybm8pOwlcCisJCWV4aXQoRVhJVF9GQUlMVVJFKTsgXAorCQl9
IFwKKwl9IHdoaWxlKDApCisKK3N0YXRpYyBpbnQgZG9faW9jdGwoY29uc3QgaW50IGZkLCBjb25z
dCB1bnNpZ25lZCBsb25nIG5yLCB2b2lkICphcmcpCit7CisJaW50IHJldDsKKworCWRvCisJCXJl
dCA9IGlvY3RsKGZkLCBuciwgYXJnKTsKKwl3aGlsZSAocmV0ID09IC0xICYmIChlcnJubyA9PSBF
SU5UUiB8fCBlcnJubyA9PSBFQUdBSU4pKTsKKworCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyBp
bnQgaXNfZHJpdmVyX2k5MTUoY29uc3QgaW50IGZkKQoreworCXN0cnVjdCBfZHJtX3ZlcnNpb24g
eworCQlpbnQgdmVyc2lvbl9tYWpvcjsKKwkJaW50IHZlcnNpb25fbWlub3I7CisJCWludCB2ZXJz
aW9uX3BhdGNobGV2ZWw7CisKKwkJc2l6ZV90IG5hbWVfbGVuOworCQljaGFyICpuYW1lOworCQlz
aXplX3QgZGF0ZV9sZW47CisJCWNoYXIgKmRhdGU7CisJCXNpemVfdCBkZXNjX2xlbjsKKwkJY2hh
ciAqZGVzYzsKKwl9IHYgPSB7IDAsIH07CisJY2hhciBuYW1lWzI1Nl0gPSB7IDAsIH07CisJaW50
IHJldDsKKworCXYubmFtZV9sZW4gPSBzaXplb2YobmFtZSkgLSAxOworCXYubmFtZSA9IG5hbWU7
CisKKwlyZXQgPSBkb19pb2N0bChmZCwgX0lPV1IoMHg0MCwgMHgwMCwgc3RydWN0IF9kcm1fdmVy
c2lvbiksICZ2KTsKKwlBU1NFUlQocmV0ID09IDAsICJnZXQgbmFtZSIpOworCisJbmFtZVt2Lm5h
bWVfbGVuXSA9IDA7CisKKwlyZXR1cm4gIXN0cmNtcChuYW1lLCAiaTkxNSIpOworfQorCitzdGF0
aWMgaW50IGNtZF9wYXJzZXJfdmVyc2lvbihjb25zdCBpbnQgZmQpCit7CisJaW50IHJldCwgdmVy
c2lvbiA9IDA7CisJc3RydWN0IF9kcm1faTkxNV9nZXRwYXJhbV90IHsKKwkJaW50MzJfdCBwYXJh
bTsKKwkJdWludDY0X3QgdmFsdWU7CisJfSBxID0geyAyOCwKKwkJKHVpbnQ2NF90KSZ2ZXJzaW9u
IH07CisKKwlyZXQgPSBkb19pb2N0bChmZCwgX0lPV1IoMHg0MCwgMHg0MCArIDB4MDYsIHN0cnVj
dCBfZHJtX2k5MTVfZ2V0cGFyYW1fdCksICZxKTsKKwlBU1NFUlQocmV0ID09IDAsICJnZXQgcGFy
YW0iKTsKKworCXJldHVybiB2ZXJzaW9uOworfQorCisjZGVmaW5lIE1JX0lOU1RSKG9wY29kZSwg
ZmxhZ3MpICgoKG9wY29kZSkgPDwgMjMpIHwgKGZsYWdzKSkKKyNkZWZpbmUgTUlfQkFUQ0hfQlVG
RkVSX0VORCAgICAgTUlfSU5TVFIoMHgwYSwgMCkKKyNkZWZpbmUgTUlfTE9BRF9SRUdJU1RFUl9J
TU0gICAgTUlfSU5TVFIoMHgyMiwgKDMtMikpCisKK3N0YXRpYyBpbnQgaXNfd3JpdGVfYmxvY2tl
ZChjb25zdCBpbnQgZmQpCit7CisJaW50IHJldDsKKwl1aW50MzJfdCBoYW5kbGU7CisKKwlzdHJ1
Y3QgX2RybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7CisJCXVpbnQ2NF90IGJ1ZmZlcnNfcHRyOwor
CQl1aW50MzJfdCBidWZmZXJfY291bnQ7CisJCXVpbnQzMl90IGJhdGNoX3N0YXJ0X29mZnNldDsK
KwkJdWludDMyX3QgYmF0Y2hfbGVuOworCQl1aW50MzJfdCBEUjE7CisJCXVpbnQzMl90IERSNDsK
KwkJdWludDMyX3QgbnVtX2NsaXByZWN0czsKKwkJdWludDY0X3QgY2xpcHJlY3RzX3B0cjsKKwkJ
dWludDY0X3QgZmxhZ3M7CisJCXVpbnQ2NF90IHJzdmQxOworCQl1aW50NjRfdCByc3ZkMjsKKwl9
IGV4ZWNidWYgPSB7IDAsIH07CisKKwlzdHJ1Y3QgX2RybV9pOTE1X2dlbV9leGVjX29iamVjdDIg
eworCQl1aW50MzJfdCBoYW5kbGU7CisJCXVpbnQzMl90IHJlbG9jYXRpb25fY291bnQ7CisJCXVp
bnQ2NF90IHJlbG9jc19wdHI7CisJCXVpbnQ2NF90IGFsaWdubWVudDsKKwkJdWludDY0X3Qgb2Zm
c2V0OworCQl1aW50NjRfdCBmbGFnczsKKwkJdWludDY0X3QgcnN2ZDE7CisJCXVpbnQ2NF90IHJz
dmQyOworCX0gZXhlY29ialsxXSA9IHsgeyAwLCB9IH07CisKKwlzdHJ1Y3QgX2RybV9pOTE1X2dl
bV9jcmVhdGUgeworCQl1aW50NjRfdCBzaXplOworCQl1aW50MzJfdCBoYW5kbGU7CisJCXVpbnQz
Ml90IHBhZDsKKwl9IGNyZWF0ZW9iaiA9IHsgMCwgfTsKKworCXN0cnVjdCBfZHJtX2k5MTVfZ2Vt
X3B3cml0ZSB7CisJCXVpbnQzMl90IGhhbmRsZTsKKwkJdWludDMyX3QgcGFkOworCQl1aW50NjRf
dCBvZmZzZXQ7CisJCXVpbnQ2NF90IHNpemU7CisJCXVpbnQ2NF90IGRhdGFfcHRyOworCX0gcHdy
aXRlID0geyAwLCB9OworCisJY29uc3QgdWludDMyX3QgYmF0Y2hbXSA9IHsKKwkJTUlfTE9BRF9S
RUdJU1RFUl9JTU0sCisJCTB4MjIyMWMsCisJCTB4MCwKKwkJMCwKKwkJTUlfQkFUQ0hfQlVGRkVS
X0VORCwKKwl9OworCisJY3JlYXRlb2JqLmhhbmRsZSA9IDA7CisJY3JlYXRlb2JqLnNpemUgPSA0
MDk2OworCisJcmV0ID0gZG9faW9jdGwoZmQsIF9JT1dSKDB4NDAsIDB4NDArMHgxYiwgc3RydWN0
IF9kcm1faTkxNV9nZW1fY3JlYXRlKSwgJmNyZWF0ZW9iaik7CisJQVNTRVJUKHJldCA9PSAwLCAi
Y3JlYXRlIG9iamVjdCIpOworCisJaGFuZGxlID0gY3JlYXRlb2JqLmhhbmRsZTsKKworCXB3cml0
ZS5oYW5kbGUgPSBoYW5kbGU7CisJcHdyaXRlLnNpemUgPSBzaXplb2YoYmF0Y2gpOworCXB3cml0
ZS5kYXRhX3B0ciA9ICh1aW50cHRyX3QpYmF0Y2g7CisKKwlyZXQgPSBkb19pb2N0bChmZCwgX0lP
V1IoMHg0MCwgMHg0MCsweDFkLCBzdHJ1Y3QgX2RybV9pOTE1X2dlbV9wd3JpdGUpLCAmcHdyaXRl
KTsKKwlBU1NFUlQocmV0ID09IDAsICJ3cml0ZSBvYmplY3QiKTsKKworCWV4ZWNvYmpbMF0uaGFu
ZGxlID0gaGFuZGxlOworCisJZXhlY2J1Zi5idWZmZXJzX3B0ciA9ICh1aW50cHRyX3QpZXhlY29i
ajsKKwlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9IDE7CisJZXhlY2J1Zi5mbGFncyA9IDM7IC8qIHNl
bGVjdCBibGl0dGVyIGVuZ2luZSAoYmNzMCkgKi8KKworCXJldCA9IGRvX2lvY3RsKGZkLCBfSU9X
UigweDQwLCAweDQwKzB4MjksIHN0cnVjdCBfZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyKSwgJmV4
ZWNidWYpOworCWlmIChyZXQpIHsKKwkJaWYgKGVycm5vID09IEVBQ0NFUyB8fCBlcnJubyA9PSBF
SU5WQUwpCisJCQlyZXR1cm4gMTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworI2RlZmluZSBJTlRF
TF9WR0FfREVWSUNFKHgsIHkpICh4KQorCitzdGF0aWMgY29uc3QgdWludDMyX3QgZ2VuOV9pZHNb
XSA9IHsKKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTA2LCBpbmZvKSwgLyogVUxUIEdUMSAqLwor
CisJSU5URUxfVkdBX0RFVklDRSgweDE5MEUsIGluZm8pLCAvKiBVTFggR1QxICovCisKKwlJTlRF
TF9WR0FfREVWSUNFKDB4MTkwMiwgaW5mbyksIC8qIERUICBHVDEgKi8KKwlJTlRFTF9WR0FfREVW
SUNFKDB4MTkwQiwgaW5mbyksIC8qIEhhbG8gR1QxICovCisJSU5URUxfVkdBX0RFVklDRSgweDE5
MEEsIGluZm8pLCAvKiBTUlYgR1QxICovCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkxNiwgaW5m
byksIC8qIFVMVCBHVDIgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkyMSwgaW5mbyksICAvKiBV
TFQgR1QyRiAqLworCisJSU5URUxfVkdBX0RFVklDRSgweDE5MUUsIGluZm8pLCAvKiBVTFggR1Qy
ICovCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkxMiwgaW5mbyksIC8qIERUICBHVDIgKi8KKwlJ
TlRFTF9WR0FfREVWSUNFKDB4MTkxQiwgaW5mbyksIC8qIEhhbG8gR1QyICovCisJSU5URUxfVkdB
X0RFVklDRSgweDE5MUEsIGluZm8pLCAvKiBTUlYgR1QyICovCisJSU5URUxfVkdBX0RFVklDRSgw
eDE5MUQsIGluZm8pLCAgLyogV0tTIEdUMiAqLworCisJSU5URUxfVkdBX0RFVklDRSgweDE5MjYs
IGluZm8pLCAvKiBVTFQgR1QzICovCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkyMywgaW5mbyks
IC8qIFVMVCBHVDMgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkyNywgaW5mbyksIC8qIFVMVCBH
VDMgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkyQiwgaW5mbyksIC8qIEhhbG8gR1QzICovCisJ
SU5URUxfVkdBX0RFVklDRSgweDE5MkQsIGluZm8pLCAgLyogU1JWIEdUMyAqLworCisJSU5URUxf
VkdBX0RFVklDRSgweDE5MzIsIGluZm8pLCAvKiBEVCBHVDQgKi8KKwlJTlRFTF9WR0FfREVWSUNF
KDB4MTkzQiwgaW5mbyksIC8qIEhhbG8gR1Q0ICovCisJSU5URUxfVkdBX0RFVklDRSgweDE5M0Qs
IGluZm8pLCAvKiBXS1MgR1Q0ICovCisJSU5URUxfVkdBX0RFVklDRSgweDE5MkEsIGluZm8pLCAv
KiBTUlYgR1Q0ICovCisJSU5URUxfVkdBX0RFVklDRSgweDE5M0EsIGluZm8pLCAgLyogU1JWIEdU
NGUgKi8KKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwQTg0LCBpbmZvKSwKKwlJTlRFTF9WR0FfREVW
SUNFKDB4MUE4NCwgaW5mbyksCisJSU5URUxfVkdBX0RFVklDRSgweDFBODUsIGluZm8pLAorCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg1QTg0LCBpbmZvKSwgLyogQVBMIEhEIEdyYXBoaWNzIDUwNSAqLwor
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTg1LCBpbmZvKSwgIC8qIEFQTCBIRCBHcmFwaGljcyA1MDAg
Ki8KKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgzMTg0LCBpbmZvKSwKKwlJTlRFTF9WR0FfREVWSUNF
KDB4MzE4NSwgaW5mbyksCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkwNiwgaW5mbyksIC8qIFVM
VCBHVDEgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkxMywgaW5mbyksICAvKiBVTFQgR1QxLjUg
Ki8KKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTBFLCBpbmZvKSwgLyogVUxYIEdUMSAqLworCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg1OTE1LCBpbmZvKSwgIC8qIFVMWCBHVDEuNSAqLworCisJSU5URUxf
VkdBX0RFVklDRSgweDU5MDIsIGluZm8pLCAvKiBEVCAgR1QxICovCisJSU5URUxfVkdBX0RFVklD
RSgweDU5MDgsIGluZm8pLCAvKiBIYWxvIEdUMSAqLworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTBC
LCBpbmZvKSwgLyogSGFsbyBHVDEgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkwQSwgaW5mbyks
IC8qIFNSViBHVDEgKi8KKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTE2LCBpbmZvKSwgLyogVUxU
IEdUMiAqLworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTIxLCBpbmZvKSwgIC8qIFVMVCBHVDJGICov
CisKKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkxRSwgaW5mbyksIC8qIFVMWCBHVDIgKi8KKworCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg1OTE3LCBpbmZvKSwgLyogTW9iaWxlIEdUMiAqLworCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg1OTEyLCBpbmZvKSwgLyogRFQgIEdUMiAqLworCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg1OTFCLCBpbmZvKSwgLyogSGFsbyBHVDIgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkxQSwg
aW5mbyksIC8qIFNSViBHVDIgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkxRCwgaW5mbyksIC8q
IFdLUyBHVDIgKi8KKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTI2LCBpbmZvKSwgLyogVUxUIEdU
MyAqLworCisJSU5URUxfVkdBX0RFVklDRSgweDU5MjMsIGluZm8pLCAvKiBVTFQgR1QzICovCisJ
SU5URUxfVkdBX0RFVklDRSgweDU5MjcsIGluZm8pLCAvKiBVTFQgR1QzICovCisKKwlJTlRFTF9W
R0FfREVWSUNFKDB4NTkzQiwgaW5mbyksIC8qIEhhbG8gR1Q0ICovCisKKwlJTlRFTF9WR0FfREVW
SUNFKDB4NTkxQywgaW5mbyksICAvKiBVTFggR1QyICovCisJSU5URUxfVkdBX0RFVklDRSgweDg3
QzAsIGluZm8pLCAvKiBVTFggR1QyICovCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4ODdDQSwgaW5m
byksCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUIyMSwgaW5mbyksCisJSU5URUxfVkdBX0RFVklD
RSgweDlCQUEsIGluZm8pLAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFCLCBpbmZvKSwKKwlJTlRF
TF9WR0FfREVWSUNFKDB4OUJBQywgaW5mbyksCisJSU5URUxfVkdBX0RFVklDRSgweDlCQTAsIGlu
Zm8pLAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkE1LCBpbmZvKSwKKwlJTlRFTF9WR0FfREVWSUNF
KDB4OUJBOCwgaW5mbyksCisJSU5URUxfVkdBX0RFVklDRSgweDlCQTQsIGluZm8pLAorCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg5QkEyLCBpbmZvKSwKKworCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QjQxLCBp
bmZvKSwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJDQSwgaW5mbyksCisJSU5URUxfVkdBX0RFVklD
RSgweDlCQ0IsIGluZm8pLAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkNDLCBpbmZvKSwKKwlJTlRF
TF9WR0FfREVWSUNFKDB4OUJDMCwgaW5mbyksCisJSU5URUxfVkdBX0RFVklDRSgweDlCQzUsIGlu
Zm8pLAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkM4LCBpbmZvKSwKKwlJTlRFTF9WR0FfREVWSUNF
KDB4OUJDNCwgaW5mbyksCisJSU5URUxfVkdBX0RFVklDRSgweDlCQzIsIGluZm8pLAorCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg5QkM2LCBpbmZvKSwKKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJFNiwgaW5m
byksCisJSU5URUxfVkdBX0RFVklDRSgweDlCRjYsIGluZm8pLAorCisJSU5URUxfVkdBX0RFVklD
RSgweDNFOTAsIGluZm8pLCAvKiBTUlYgR1QxICovCisJSU5URUxfVkdBX0RFVklDRSgweDNFOTMs
IGluZm8pLCAvKiBTUlYgR1QxICovCisJSU5URUxfVkdBX0RFVklDRSgweDNFOTksIGluZm8pLCAg
LyogU1JWIEdUMSAqLworCisJSU5URUxfVkdBX0RFVklDRSgweDNFOTEsIGluZm8pLCAvKiBTUlYg
R1QyICovCisJSU5URUxfVkdBX0RFVklDRSgweDNFOTIsIGluZm8pLCAvKiBTUlYgR1QyICovCisJ
SU5URUxfVkdBX0RFVklDRSgweDNFOTYsIGluZm8pLCAvKiBTUlYgR1QyICovCisJSU5URUxfVkdB
X0RFVklDRSgweDNFOTgsIGluZm8pLCAvKiBTUlYgR1QyICovCisJSU5URUxfVkdBX0RFVklDRSgw
eDNFOUEsIGluZm8pLCAgLyogU1JWIEdUMiAqLworCisJSU5URUxfVkdBX0RFVklDRSgweDNFOUMs
IGluZm8pLAorCisJSU5URUxfVkdBX0RFVklDRSgweDNFOUIsIGluZm8pLCAvKiBIYWxvIEdUMiAq
LworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgzRTk0LCBpbmZvKSwgIC8qIEhhbG8gR1QyICovCisKKwlJ
TlRFTF9WR0FfREVWSUNFKDB4M0VBOSwgaW5mbyksCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4M0VB
NSwgaW5mbyksIC8qIFVMVCBHVDMgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4M0VBNiwgaW5mbyks
IC8qIFVMVCBHVDMgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4M0VBNywgaW5mbyksIC8qIFVMVCBH
VDMgKi8KKwlJTlRFTF9WR0FfREVWSUNFKDB4M0VBOCwgaW5mbyksIC8qIFVMVCBHVDMgKi8KKwor
CUlOVEVMX1ZHQV9ERVZJQ0UoMHgzRUExLCBpbmZvKSwKKwlJTlRFTF9WR0FfREVWSUNFKDB4M0VB
NCwgaW5mbyksCisKKwlJTlRFTF9WR0FfREVWSUNFKDB4M0VBMCwgaW5mbyksCisJSU5URUxfVkdB
X0RFVklDRSgweDNFQTMsIGluZm8pLAorCisJSU5URUxfVkdBX0RFVklDRSgweDNFQTIsIGluZm8p
LAorfTsKKworc3RhdGljIGludCBpc19wbGF0Zm9ybV9nZW45KHZvaWQpCit7CisJY29uc3QgY2hh
ciAqIGNvbnN0IGlkX2ZpbGUgPQorCQkiL3N5cy9idXMvcGNpL2RyaXZlcnMvaTkxNS8wMDAwOjAw
OjAyLjAvZGV2aWNlIjsKKwljaGFyIGlkc3RyWzMyXSA9IHswLCB9OworCXVpbnQzMl90IGlkID0g
MDsKKwlpbnQgZmQsIHJldCwgaTsKKworCWZkID0gb3BlbihpZF9maWxlLCBPX1JET05MWSk7CisJ
aWYgKGZkID09IC0xKQorCQlyZXR1cm4gLTE7CisKKwlyZXQgPSByZWFkKGZkLCBpZHN0ciwgNik7
CisJaWYgKHJldCAhPSA2KQorCQlyZXR1cm4gLTE7CisKKwljbG9zZShmZCk7CisKKwlpZHN0cls2
XSA9IDA7CisKKwlpZCA9IHN0cnRvbChpZHN0ciwgTlVMTCwgMTYpOworCisJZm9yIChpID0gMDsg
aSA8IHNpemVvZihnZW45X2lkcykvc2l6ZW9mKHVpbnQzMl90KTsgaSsrKQorCQlpZiAoaWQgPT0g
Z2VuOV9pZHNbaV0pCisJCQlyZXR1cm4gMTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50
IGlzX2ZkX3NhZmUoY29uc3QgaW50IGZkKQoreworCWludCBwYXJzZXJfdmVyc2lvbiA9IC0xOwor
CWludCB3cml0ZV9ibG9jayA9IDA7CisKKwlwYXJzZXJfdmVyc2lvbiA9IGNtZF9wYXJzZXJfdmVy
c2lvbihmZCk7CisJcHJpbnRmKCIgIENvbW1hbmQgcGFyc2VyIHZlcnNpb246ICVkXG4iLCBwYXJz
ZXJfdmVyc2lvbik7CisJaWYgKHBhcnNlcl92ZXJzaW9uID49IDEwKSB7CisJCXByaW50ZigiICBD
b21tYW5kIHBhcnNpbmcgZm9yIGJsdCBlbmdpbmUgc3VwcG9ydGVkXG4iKTsKKwl9IGVsc2UgaWYg
KCFDSEVDS19XUklURV9CTE9DS19XSVRIT1VUX1BBUlNFUikgeworCQlwcmludGYoIiAgVGhlcmUg
aXMgbm8gYmxpdHRlciBjb21tYW5kIHBhcnNlclxuIik7CisJCXJldHVybiAwOworCX0KKworCXdy
aXRlX2Jsb2NrID0gaXNfd3JpdGVfYmxvY2tlZChmZCk7CisKKwlwcmludGYoIiAgVW5zYWZlIHdy
aXRlICVzXG4iLCB3cml0ZV9ibG9jayA/ICJibG9ja2VkIiA6ICJwb3NzaWJsZSEiKTsKKworCXJl
dHVybiB3cml0ZV9ibG9jazsKK30KKworc3RydWN0IHN0YXRzIHsKKwlpbnQgY2hlY2tlZDsKKwlp
bnQgc2FmZTsKKwlpbnQgZmFpbGVkOworfTsKKworc3RhdGljIHZvaWQgY2hlY2tfcGF0aChjb25z
dCBjaGFyICpwYXRoLCBzdHJ1Y3Qgc3RhdHMgKnN0YXRzKQoreworCWludCBmZDsKKwlpbnQgaXNf
c2FmZTsKKworCWZkID0gb3BlbihwYXRoLCBPX1JEV1IpOworCWlmIChmZCA9PSAtMSkgeworCQlp
ZiAoZXJybm8gIT0gRU5PRU5UKSB7CisJCQlwcmludGYoIk9wZW5pbmcgJXMgZmFpbGVkIHdpdGgg
JXMgKCVkKVxuIiwKKwkJCSAgICAgICBwYXRoLCBzdHJlcnJvcihlcnJubyksIGVycm5vKTsKKwkJ
CXN0YXRzLT5mYWlsZWQrKzsKKwkJfQorCisJCXJldHVybjsKKwl9CisKKwlpZiAoIWlzX2RyaXZl
cl9pOTE1KGZkKSkgeworCQljbG9zZShmZCk7CisJCXJldHVybjsKKwl9CisKKwlwcmludGYoIkNo
ZWNraW5nICVzOlxuIiwgcGF0aCk7CisKKwlpc19zYWZlID0gaXNfZmRfc2FmZShmZCk7CisJcHJp
bnRmKCIgIERldmljZSAlcyA6ICVzXG5cbiIsIHBhdGgsIGlzX3NhZmUgPyAiU0FGRSIgOiAiVlVM
TkVSQUJMRSIpOworCWlmIChpc19zYWZlKQorCQlzdGF0cy0+c2FmZSsrOworCisJc3RhdHMtPmNo
ZWNrZWQrKzsKKworCWNsb3NlIChmZCk7Cit9CisKK3N0YXRpYyBpbnQgY2hlY2tfZGV2aWNlcyh2
b2lkKQoreworCWNvbnN0IGNoYXIgKiBjb25zdCBjYXJkYmFzZSA9ICIvZGV2L2RyaS9jYXJkIjsK
Kwljb25zdCBjaGFyICogY29uc3QgcmVuZGVyYmFzZSA9ICIvZGV2L2RyaS9yZW5kZXJEIjsKKwlj
aGFyIHBhdGhbMjU2XTsKKwlpbnQgaTsKKwlzdHJ1Y3Qgc3RhdHMgcyA9IHsgMCwgMCwgMCB9Owor
CisJZm9yIChpID0gMDsgaSA8IDE2OyBpKyspIHsKKwkJc3ByaW50ZihwYXRoLCAiJXMlZCIsIGNh
cmRiYXNlLCBpKTsKKwkJY2hlY2tfcGF0aChwYXRoLCAmcyk7CisKKwkJc3ByaW50ZihwYXRoLCAi
JXMlZCIsIHJlbmRlcmJhc2UsIGkgKyAxMjgpOworCQljaGVja19wYXRoKHBhdGgsICZzKTsKKwl9
CisKKwlpZiAocy5mYWlsZWQgJiYgIXMuY2hlY2tlZCkgeworCQlwcmludGYoIkZhaWxlZCB0byBv
cGVuIGRldmljZXMsIG5lZWQgcm9vdD9cbiIpOworCQlyZXR1cm4gLTE7CisJfQorCisJaWYgKCFz
LmNoZWNrZWQpIHsKKwkJcHJpbnRmICgiRGlkbid0IGZpbmQgYW55dGhpbmcgdG8gY2hlY2tcbiIp
OworCQlyZXR1cm4gLTE7CisJfQorCisJcmV0dXJuIHMuY2hlY2tlZCA9PSBzLnNhZmU7Cit9CisK
K2ludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCit7CisJaW50IHNhZmUgPSAwOworCWlu
dCByZXQ7CisKKwlwcmludGYoIkludGVsIGN2ZS0yMDE5LTAxNTUgKGJsdCBtbWlvIHZ1bG5lcmFi
aWxpdHkpIGNoZWNrZXIgdmVyc2lvbiAlZFxuXG4iLCBWRVJTSU9OKTsKKworCXN5bmMoKTsKKwor
CXJldCA9IGlzX3BsYXRmb3JtX2dlbjkoKTsKKwlpZiAocmV0ID09IDApIHsKKwkJc2FmZSA9IDE7
CisJCXByaW50ZigiWW91ciBwbGF0Zm9ybSBpcyBub3QgYWZmZWN0ZWRcbiIpOworCX0gZWxzZSBp
ZiAocmV0ID09IC0xKSB7CisJCXByaW50ZigiVW5hYmxlIHRvIGRldGVybWluZSBwbGF0Zm9ybSB0
eXBlXG4iKTsKKwl9CisKKwlpZiAoc2FmZSAhPSAxKQorCQlzYWZlID0gY2hlY2tfZGV2aWNlcygp
OworCisJaWYgKHNhZmUgPCAwKSB7CisJCXByaW50ZigiVW5hYmxlIHRvIGRldGVybWluZSBzeXN0
ZW0gc3RhdGUgZHVlIHRvIGVycm9yc1xuIik7CisJCXJldHVybiBFWElUX0ZBSUxVUkU7CisJfQor
CisJcHJpbnRmKCJcbllvdXIgc3lzdGVtIGlzICVzIGFnYWluc3QgY3ZlLTIwMTktMDE1NVxuIiwg
c2FmZSA/ICJTQUZFIiA6ICJWVUxORVJBQkxFIik7CisKKwlyZXR1cm4gc2FmZSA/IEVYSVRfU1VD
Q0VTUyA6IEVYSVRfRkFJTFVSRTsKK30KZGlmZiAtLWdpdCBhL2N2ZS9tZXNvbi5idWlsZCBiL2N2
ZS9tZXNvbi5idWlsZApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMC4uOTkwMTgx
YzYKLS0tIC9kZXYvbnVsbAorKysgYi9jdmUvbWVzb24uYnVpbGQKQEAgLTAsMCArMSwxMiBAQAor
Y3ZlX3Byb2dzID0gWworCSdjdmUtMjAxOS0wMTU1JywKK10KKworY3ZlZGlyID0gam9pbl9wYXRo
cyhsaWJleGVjZGlyLCAnY3ZlJykKKworZm9yZWFjaCBwcm9nIDogY3ZlX3Byb2dzCisJZXhlY3V0
YWJsZShwcm9nLCBwcm9nICsgJy5jJywKKwkJICAgaW5zdGFsbCA6IHRydWUsCisJCSAgIGluc3Rh
bGxfZGlyIDogY3ZlZGlyLAorCQkgICBkZXBlbmRlbmNpZXMgOiBpZ3RfZGVwcykKK2VuZGZvcmVh
Y2gKZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggNGQ1MDAzYmEu
LjI3YWQ5NTY3IDEwMDY0NAotLS0gYS9tZXNvbi5idWlsZAorKysgYi9tZXNvbi5idWlsZApAQCAt
MzAyLDYgKzMwMiw3IEBAIGlmIGxpYmRybV9pbnRlbC5mb3VuZCgpCiBlbmRpZgogc3ViZGlyKCdv
dmVybGF5JykKIHN1YmRpcignbWFuJykKK3N1YmRpcignY3ZlJykKIAogZ3RrX2RvYyA9IGRlcGVu
ZGVuY3koJ2d0ay1kb2MnLCByZXF1aXJlZCA6IGJ1aWxkX2RvY3MpCiBweXRob24zID0gZmluZF9w
cm9ncmFtKCdweXRob24zJywgcmVxdWlyZWQgOiBidWlsZF9kb2NzKQotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
