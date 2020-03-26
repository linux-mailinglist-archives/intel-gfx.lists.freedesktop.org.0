Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318EC193E75
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 12:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F526E311;
	Thu, 26 Mar 2020 11:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45D36E311
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 11:58:13 +0000 (UTC)
IronPort-SDR: CNzL/brmJSBnN6VFmdn9FZF0nwPgMmgqTkTZ9XlG+/+RgkJbZRRcBrPHc+Cbn3TJytkUaKi3HD
 lQEKA+P4fyfw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 04:58:13 -0700
IronPort-SDR: Ri2r6IjZ5eIj9ctEEF/VkiSIERIuPdnobjBpp06FpiuFiMge05Yw/S/y7qmdHX9jDGwbNG9hWg
 hPcpMn4vqbxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="393955802"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2020 04:58:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 17:54:32 +0530
Message-Id: <20200326122432.10856-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v2] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: SweeAun Khor <swee.aun.khor@intel.com>, Souza@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBmaXhlcyB0aGUgcHJpdmF0ZV9mbGFncyBvZiBtb2RlIHRvIGJlIGNoZWNrZWQg
YW5kCmNvbXBhcmVkIGFnYWluc3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlz
IGhlbHBzCnByb3Blcmx5IHRyaWdnZXIgbW9kZXNldCBhdCBib290IGlmIGRlc2lyZWQgYnkgZHJp
dmVyLgoKSXQgaGVscHMgcmVzb2x2ZSBhdWRpb19jb2RlYyBpbml0aWFsaXphdGlvbiBpc3N1ZXMg
aWYgZGlzcGxheQppcyBjb25uZWN0ZWQgYXQgYm9vdC4gSW5pdGlhbCBkaXNjdXNzaW9uIG9uIHRo
aXMgaXNzdWUgaGFzIGhhcHBlbmVkCm9uIGJlbG93IHRocmVhZDoKaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NDgyOC8KCnYyOiBObyBmdW5jdGlvbmFsIGNoYW5nZS4g
Rml4ZWQgdGhlIENsb3NlcyB0YWcgYW5kIGFkZGVkCk1hYXJ0ZW4ncyBSQi4KCkNjOiBWaWxsZSBT
eXJqw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IEthaSBWZWhtYW5lbiA8
a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFNvdXphLCBKb3NlIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsL2lzc3Vlcy8xMzYzClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2Fy
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3dlZUF1biBLaG9yIDxzd2VlLmF1bi5raG9yQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwppbmRleCBmZTU1YzdjNzEzZjEuLmU2MzA0MjlhZjJjMCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0NzQ3LDggKzE0NzQ3LDggQEAg
c3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkv
KiBDYXRjaCBJOTE1X01PREVfRkxBR19JTkhFUklURUQgKi8KIAlmb3JfZWFjaF9vbGRuZXdfaW50
ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCiAJCQkJCSAgICBu
ZXdfY3J0Y19zdGF0ZSwgaSkgewotCQlpZiAobmV3X2NydGNfc3RhdGUtPmh3Lm1vZGUucHJpdmF0
ZV9mbGFncyAhPQotCQkgICAgb2xkX2NydGNfc3RhdGUtPmh3Lm1vZGUucHJpdmF0ZV9mbGFncykK
KwkJaWYgKG5ld19jcnRjX3N0YXRlLT51YXBpLm1vZGUucHJpdmF0ZV9mbGFncyAhPQorCQkgICAg
b2xkX2NydGNfc3RhdGUtPnVhcGkubW9kZS5wcml2YXRlX2ZsYWdzKQogCQkJbmV3X2NydGNfc3Rh
dGUtPnVhcGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsKIAl9CiAKLS0gCjIuMjIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
