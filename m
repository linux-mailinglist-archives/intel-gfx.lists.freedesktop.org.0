Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF2EC0AD5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BBB6E1B7;
	Fri, 27 Sep 2019 18:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEEA6E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:10:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 11:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="273894973"
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by orsmga001.jf.intel.com with ESMTP; 27 Sep 2019 11:10:53 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 11:04:26 -0700
Message-Id: <20190927180426.23931-1-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Update H2G enable logging action
 definition
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

R3VDIGVuYWJsZSBsb2dnaW5nIEgyRyBhY3Rpb24gZGVmaW5pdGlvbiBjaGFuZ2VkIHNvbWUgdGlt
ZSBhZ28gZnJvbSAweEUwMDAKdG8gMHg0MC4gQWxsIGN1cnJlbnQgR3VDIEZXIGJsb2JzIHVzZSB0
aGlzIGRlZmluaXRpb24sIHNvIGZpeCB0aGUgYWN0aW9uCmRlZmluaXRpb24gaW4gZHJpdmVyIHRv
IG1hdGNoLgoKQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaCB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19md2lmLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCmluZGV4IDFkM2NkZDY3
Y2EyZi4uYTI2YTg1ZDUwMjA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfZndpZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19md2lmLmgKQEAgLTU0OCw2ICs1NDgsNyBAQCBlbnVtIGludGVsX2d1Y19hY3Rpb24gewog
CUlOVEVMX0dVQ19BQ1RJT05fQUxMT0NBVEVfRE9PUkJFTEwgPSAweDEwLAogCUlOVEVMX0dVQ19B
Q1RJT05fREVBTExPQ0FURV9ET09SQkVMTCA9IDB4MjAsCiAJSU5URUxfR1VDX0FDVElPTl9MT0df
QlVGRkVSX0ZJTEVfRkxVU0hfQ09NUExFVEUgPSAweDMwLAorCUlOVEVMX0dVQ19BQ1RJT05fVUtf
TE9HX0VOQUJMRV9MT0dHSU5HID0gMHg0MCwKIAlJTlRFTF9HVUNfQUNUSU9OX0ZPUkNFX0xPR19C
VUZGRVJfRkxVU0ggPSAweDMwMiwKIAlJTlRFTF9HVUNfQUNUSU9OX0VOVEVSX1NfU1RBVEUgPSAw
eDUwMSwKIAlJTlRFTF9HVUNfQUNUSU9OX0VYSVRfU19TVEFURSA9IDB4NTAyLApAQCAtNTU2LDcg
KzU1Nyw2IEBAIGVudW0gaW50ZWxfZ3VjX2FjdGlvbiB7CiAJSU5URUxfR1VDX0FDVElPTl9BVVRI
RU5USUNBVEVfSFVDID0gMHg0MDAwLAogCUlOVEVMX0dVQ19BQ1RJT05fUkVHSVNURVJfQ09NTUFO
RF9UUkFOU1BPUlRfQlVGRkVSID0gMHg0NTA1LAogCUlOVEVMX0dVQ19BQ1RJT05fREVSRUdJU1RF
Ul9DT01NQU5EX1RSQU5TUE9SVF9CVUZGRVIgPSAweDQ1MDYsCi0JSU5URUxfR1VDX0FDVElPTl9V
S19MT0dfRU5BQkxFX0xPR0dJTkcgPSAweDBFMDAwLAogCUlOVEVMX0dVQ19BQ1RJT05fTElNSVQK
IH07CiAKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
