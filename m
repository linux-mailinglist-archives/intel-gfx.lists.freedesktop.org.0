Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D52934B2D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E61896C4;
	Tue,  4 Jun 2019 14:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141B089935
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:29 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:13 +0300
Message-Id: <20190604145826.16424-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/23] drm/i915: Wait for TypeC PHY complete
 flag to clear in safe mode
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

VGhlIFBIWSBzYXR1cyBjb21wbGV0ZSBmbGFnIG5vcm1hbGx5IGNsZWFycyB3aGVuIGRpc2Nvbm5l
Y3RpbmcgdGhlIFBIWQppbiBEUC1hbHQgbW9kZSAoYWNoaWV2ZWQgYnkgc3dpdGNoaW5nIHRvIHNh
ZmUgbW9kZSksIHNvIHdhaXQgZm9yIHRoZQpmbGFnIHRvIGNsZWFyLgoKQ2M6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYyB8IDQgKysrKwog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jCmlu
ZGV4IDNmZGNmYTJiYmFlZS4uODRlMGMwNjg3N2VjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF90Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMK
QEAgLTE0Myw2ICsxNDMsMTAgQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9zZXRfc2FmZV9tb2Rl
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCQl2YWwgfD0gRFBfUEhZX01P
REVfU1RBVFVTX05PVF9TQUZFKHRjX3BvcnQpOwogCiAJSTkxNV9XUklURShQT1JUX1RYX0RGTEVY
RFBDU1NTLCB2YWwpOworCisJaWYgKGVuYWJsZSAmJiB3YWl0X2ZvcighaWNsX3RjX3BoeV9zdGF0
dXNfY29tcGxldGUoZGlnX3BvcnQpLCAxMCkpCisJCURSTV9ERUJVR19EUklWRVIoIlBvcnQgJXM6
IFBIWSBjb21wbGV0ZSBjbGVhciB0aW1lZCBvdXRcbiIsCisJCQkJIHRjX3BvcnRfbmFtZShkZXZf
cHJpdiwgdGNfcG9ydCkpOwogfQogCiAvKgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
