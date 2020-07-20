Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121E42272EF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 01:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D0489E98;
	Mon, 20 Jul 2020 23:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B5F89E98
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 23:32:37 +0000 (UTC)
IronPort-SDR: ir6C7+cBRhfqhKKl9SuQ6DiZ8T3MFTSEYxI2iCKWu8H2y8tEoErA1Rmqbzh47kvyIK1mrvw6eN
 elsLDDqi2c8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="211568039"
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="211568039"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 16:32:36 -0700
IronPort-SDR: pVYu0ZNoteK0CmdkkcW9V1+c+b0U22Su8/oJ3n9tr6SoQkOxpa5ak8wdXfABNy3vl/+xCV+wmc
 bnokli281KWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="283681457"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga003.jf.intel.com with ESMTP; 20 Jul 2020 16:32:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 02:29:52 +0300
Message-Id: <20200720232952.16228-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Make sure TC-cold is blocked
 before enabling TC AUX power wells
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

VGhlIGRlcGVuZGVuY3kgYmV0d2VlbiBwb3dlciB3ZWxscyBpcyBkZXRlcm1pbmVkIGJ5IHRoZSBv
cmRlcmluZyBvZiB0aGUKcG93ZXIgd2VsbCBsaXN0OiB3aGVuIGVuYWJsaW5nIHRoZSBwb3dlciB3
ZWxscyBmb3IgYSBkb21haW4sIHRoaXMKaGFwcGVucyB3YWxraW5nIHRoZSBwb3dlciB3ZWxsIGxp
c3QgZm9yd2FyZCwgd2hpbGUgZGlzYWJsaW5nIHRoZW0KaGFwcGVucyBpbiB0aGUgcmV2ZXJzZSBk
aXJlY3Rpb24uIEFjY29yZGluZ2x5IGEgcG93ZXIgd2VsbCBvbiB0aGUgbGlzdAptdXN0IGZvbGxv
dyBhbnkgb3RoZXIgcG93ZXIgd2VsbCBpdCBkZXBlbmRzIG9uLgoKU2luY2UgdGhlIFRDIEFVWCBw
b3dlciB3ZWxscyBkZXBlbmQgb24gVEMtY29sZCBiZWluZyBibG9ja2VkLCBtb3ZlIHRoZQpUQy1j
b2xkIG9mZiBwb3dlciB3ZWxsIGJlZm9yZSBhbGwgQVVYIHBvd2VyIHdlbGxzLgoKRml4ZXM6IDNj
MDI5MzRiMjRlICgiSW1wbGVtZW50IFRDIGNvbGQgc2VxdWVuY2VzIikKQ2M6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMiArKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAwYzcxM2U4MzI3NGQu
LmMyYWFmNjkxMWU3ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTQxNDYsNiArNDE0NiwxMiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHRnbF9wb3dlcl93ZWxsc1tdID0gewogCQkJLmhz
dy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9ERElfVEM2LAogCQl9LAogCX0sCisJeworCQkubmFtZSA9
ICJUQyBjb2xkIG9mZiIsCisJCS5kb21haW5zID0gVEdMX1RDX0NPTERfT0ZGX1BPV0VSX0RPTUFJ
TlMsCisJCS5vcHMgPSAmdGdsX3RjX2NvbGRfb2ZmX29wcywKKwkJLmlkID0gRElTUF9QV19JRF9O
T05FLAorCX0sCiAJewogCQkubmFtZSA9ICJBVVggQSIsCiAJCS5kb21haW5zID0gVEdMX0FVWF9B
X0lPX1BPV0VSX0RPTUFJTlMsCkBAIC00MzMyLDEyICs0MzM4LDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0Z2xfcG93ZXJfd2VsbHNbXSA9IHsKIAkJCS5oc3cu
aXJxX3BpcGVfbWFzayA9IEJJVChQSVBFX0QpLAogCQl9LAogCX0sCi0JewotCQkubmFtZSA9ICJU
QyBjb2xkIG9mZiIsCi0JCS5kb21haW5zID0gVEdMX1RDX0NPTERfT0ZGX1BPV0VSX0RPTUFJTlMs
Ci0JCS5vcHMgPSAmdGdsX3RjX2NvbGRfb2ZmX29wcywKLQkJLmlkID0gRElTUF9QV19JRF9OT05F
LAotCX0sCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHJr
bF9wb3dlcl93ZWxsc1tdID0gewotLSAKMi4yMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
