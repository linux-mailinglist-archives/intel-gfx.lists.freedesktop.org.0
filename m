Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FFF172AAA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD8B6ED6B;
	Thu, 27 Feb 2020 22:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F5E6ED4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:00:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285467862"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 14:00:16 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:01:01 -0800
Message-Id: <20200227220101.321671-11-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227220101.321671-1-jose.souza@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/11] drm/i915/tgl: Implement Wa_1407901919
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

VGhpcyB3aWxsIGZpeCBhIG1lbW9yeSBjb2hlcmVuY2UgaXNzdWUuCgp2MzogdXNpbmcgd2hpdGVz
cGFjZSB0byBtYWtlIGVhc3kgdG8gcmVhZCBXQSAoQ2hyaXMpCgpCU3BlYzogNTI4OTAKQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgIDggKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAyMCArKysrKysrKysrKy0tLS0t
LS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDNlMzc1
YTNiNzcxNC4uYzU5ZTFhNjA0YWI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKQEAgLTYwMSw2ICs2MDEsMTQgQEAgc3RhdGljIHZvaWQgdGdsX2N0eF93
b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkgKi8KIAl3
YV9hZGQod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssCiAJICAgICAgIEZG
X01PREUyX1REU19USU1FUl8xMjgsIDApOworCisJLyogV2FfMTQwNzkwMTkxOTp0Z2wgKi8KKwl3
YV9hZGQod2FsLCBJQ0xfSERDX01PREUsCisJICAgICAgIEhEQ19DT0hFUkVOVF9BQ0NFU1NfTDFf
Q0FDSEVfRElTIHwKKwkgICAgICAgSERDX0RJU19MMV9JTlZBTF9GT1JfTk9OX0wxX0NBQ0hFQUJM
RV9XLAorCSAgICAgICAwLAorCSAgICAgICBIRENfQ09IRVJFTlRfQUNDRVNTX0wxX0NBQ0hFX0RJ
UyB8CisJICAgICAgIEhEQ19ESVNfTDFfSU5WQUxfRk9SX05PTl9MMV9DQUNIRUFCTEVfVyk7CiB9
CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA4MGNmMDJhNmVlYzEu
LjI4ODIyNTg1NTM3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03ODgzLDE1ICs3ODgz
LDE3IEBAIGVudW0gewogI2RlZmluZSAgR0VOOF9MUVNDX0ZMVVNIX0NPSEVSRU5UX0xJTkVTCQko
MSA8PCAyMSkKIAogLyogR0VOOCBjaGlja2VuICovCi0jZGVmaW5lIEhEQ19DSElDS0VOMAkJCQlf
TU1JTygweDczMDApCi0jZGVmaW5lIENOTF9IRENfQ0hJQ0tFTjAJCQlfTU1JTygweEU1RjApCi0j
ZGVmaW5lIElDTF9IRENfTU9ERQkJCQlfTU1JTygweEU1RjQpCi0jZGVmaW5lICBIRENfRk9SQ0Vf
Q1NSX05PTl9DT0hFUkVOVF9PVlJfRElTQUJMRQkoMSA8PCAxNSkKLSNkZWZpbmUgIEhEQ19GRU5D
RV9ERVNUX1NMTV9ESVNBQkxFCQkoMSA8PCAxNCkKLSNkZWZpbmUgIEhEQ19ET05PVF9GRVRDSF9N
RU1fV0hFTl9NQVNLRUQJKDEgPDwgMTEpCi0jZGVmaW5lICBIRENfRk9SQ0VfQ09OVEVYVF9TQVZF
X1JFU1RPUkVfTk9OX0NPSEVSRU5UCSgxIDw8IDUpCi0jZGVmaW5lICBIRENfRk9SQ0VfTk9OX0NP
SEVSRU5UCQkJKDEgPDwgNCkKLSNkZWZpbmUgIEhEQ19CQVJSSUVSX1BFUkZPUk1BTkNFX0RJU0FC
TEUJKDEgPDwgMTApCisjZGVmaW5lIEhEQ19DSElDS0VOMAkJCQkJX01NSU8oMHg3MzAwKQorI2Rl
ZmluZSBDTkxfSERDX0NISUNLRU4wCQkJCV9NTUlPKDB4RTVGMCkKKyNkZWZpbmUgSUNMX0hEQ19N
T0RFCQkJCQlfTU1JTygweEU1RjQpCisjZGVmaW5lICBIRENfRk9SQ0VfQ1NSX05PTl9DT0hFUkVO
VF9PVlJfRElTQUJMRQkJUkVHX0JJVCgxNSkKKyNkZWZpbmUgIEhEQ19GRU5DRV9ERVNUX1NMTV9E
SVNBQkxFCQkJUkVHX0JJVCgxNCkKKyNkZWZpbmUgIEhEQ19ESVNfTDFfSU5WQUxfRk9SX05PTl9M
MV9DQUNIRUFCTEVfVwlSRUdfQklUKDEzKQorI2RlZmluZSAgSERDX0NPSEVSRU5UX0FDQ0VTU19M
MV9DQUNIRV9ESVMJCVJFR19CSVQoMTIpCisjZGVmaW5lICBIRENfRE9OT1RfRkVUQ0hfTUVNX1dI
RU5fTUFTS0VECQlSRUdfQklUKDExKQorI2RlZmluZSAgSERDX0ZPUkNFX0NPTlRFWFRfU0FWRV9S
RVNUT1JFX05PTl9DT0hFUkVOVAlSRUdfQklUKDUpCisjZGVmaW5lICBIRENfRk9SQ0VfTk9OX0NP
SEVSRU5UCQkJCVJFR19CSVQoNCkKKyNkZWZpbmUgIEhEQ19CQVJSSUVSX1BFUkZPUk1BTkNFX0RJ
U0FCTEUJCVJFR19CSVQoMTApCiAKICNkZWZpbmUgR0VOOF9IRENfQ0hJQ0tFTjEJCQlfTU1JTygw
eDczMDQpCiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
