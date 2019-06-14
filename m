Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A68AB45098
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 02:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A33E892F2;
	Fri, 14 Jun 2019 00:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69634892F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 00:33:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 17:33:35 -0700
X-ExtLoop1: 1
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jun 2019 17:33:35 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 17:28:37 -0700
Message-Id: <20190614002838.3072-4-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190614002838.3072-1-robert.m.fosha@intel.com>
References: <20190614002838.3072-1-robert.m.fosha@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Add whitelist workarounds for CFL
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KClVwZGF0ZWQg
d2hpdGVsaXN0IHRhYmxlIGZvciBDRkwuCgpTaWduZWQtb2ZmLWJ5OiBKb2huIEhhcnJpc29uIDxK
b2huLkMuSGFycmlzb25ASW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEg
PHJvYmVydC5tLmZvc2hhQGludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMzUg
KysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCmluZGV4IDUzMDhhMDg2NGU3OC4uNjBiZDUxNWVkYWYxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEwOTIsMTAgKzEwOTIsNDMgQEAgc3Rh
dGljIHZvaWQgZ2xrX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiAKIHN0YXRpYyB2b2lkIGNmbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogeworCXN0cnVjdCBpOTE1X3dhX2xpc3QgKncgPSAmZW5naW5lLT53aGl0
ZWxpc3Q7CisKIAlpZiAoZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1MpCiAJCXJldHVybjsK
IAotCWdlbjlfd2hpdGVsaXN0X2J1aWxkKCZlbmdpbmUtPndoaXRlbGlzdCk7CisJLyogV2hpdGVs
aXN0IGVudHJpZXMgZnJvbSBCU3BlYyBwYWdlIDUzNjg4OiAqLworCWdlbjlfd2hpdGVsaXN0X2J1
aWxkKHcpOworCisJLyogV2FTZW5kUHVzaENvbnN0YW50c0Zyb21NTUlPOmNmbCAqLworCXdoaXRl
bGlzdF9yZWdfZXh0KHcsIENPTU1PTl9TTElDRV9DSElDS0VOMiwKKwkJCSAgUklOR19GT1JDRV9U
T19OT05QUklWX1JXKTsKKworCS8qIEdFTjlfQ1NfREVCVUdfTU9ERTEgKi8KKwl3aGl0ZWxpc3Rf
cmVnX2V4dCh3LCBHRU45X0NTX0RFQlVHX01PREUxLAorCQkJCSAgUklOR19GT1JDRV9UT19OT05Q
UklWX1JXKTsKKworCS8qIFdhQWxsb3dVbWRXcml0ZVRSVFRSb290VGFibGU6Y2ZsICovCisJd2hp
dGVsaXN0X3JlZ19leHQodywgX01NSU8oMHg0REUwKSwgUklOR19GT1JDRV9UT19OT05QUklWX1JX
KTsKKwl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBfTU1JTygweDRERTQpLCBSSU5HX0ZPUkNFX1RPX05P
TlBSSVZfUlcpOworCisJLyogV2FBbGxvd1VNRFRvRGlzYWJsZVZGQXV0b1N0cmlwOmNmbCAqLwor
CXdoaXRlbGlzdF9yZWdfZXh0KHcsIF9NTUlPKDB4ODNBOCksIFJJTkdfRk9SQ0VfVE9fTk9OUFJJ
Vl9SVyk7CisKKwkvKiBXYUFsbG93UE1EZXB0aEFuZEludm9jYXRpb25Db3VudEFjY2Vzc0Zyb21V
TUQ6Y2ZsCisJICogTkI6IHRoaXMgYWxzbyBwdWxscyBpbiBDTF9QUklNSVRJVkVTX0NPVU5UIGlu
IHNhbWUgYmxvY2sKKwkgKiBhcyBQU19JTlZPQ0FUSU9OU19DT1VOVC4gTGlrZXdpc2UsIFRJTUVT
VEFNUCBpbiB0aGUKKwkgKiBQU19ERVBUSF9DT1VOVCBibG9jay4KKwkgKi8KKwl3aGl0ZWxpc3Rf
cmVnX2V4dCh3LCBDTF9QUklNSVRJVkVTX0NPVU5ULAorCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBS
SVZfUlcgfAorCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7CisJd2hpdGVsaXN0
X3JlZ19leHQodywgUFNfREVQVEhfQ09VTlQsIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SVyB8CisJ
CQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SQU5HRV80KTsKKworCS8qIFdhQWxsb3dVTURBY2Nl
c3N0b09BUmVnaXN0ZXJzOmNmbCAqLworCXdoaXRlbGlzdF9yZWdfZXh0KHcsIF9NTUlPKDB4MjhB
MCksIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SVyk7CisJd2hpdGVsaXN0X3JlZ19leHQodywgT0FS
RVBPUlRUUklHNiwgUklOR19GT1JDRV9UT19OT05QUklWX1JXKTsKIH0KIAogc3RhdGljIHZvaWQg
Y25sX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi0tIAoy
LjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
