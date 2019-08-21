Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED9399646
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C1E6EB54;
	Thu, 22 Aug 2019 14:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E33246EB54
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:20:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 14:58:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,414,1559545200"; d="scan'208";a="186368551"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2019 14:58:23 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 14:59:50 -0700
Message-Id: <20190821215950.24223-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix DSC enable code to use
 cpu_transcoder instead of encoder->type
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

VGhpcyBwYXRjaCBmaXhlcyB0aGUgaW50ZWxfY29uZmlndXJlX3Bwc19mb3JfZHNjX2VuY29kZXIo
KSBmdW5jdGlvbiB0byB1c2UKY3B1X3RyYW5zY29kZXIgaW5zdGVhZCBvZiBlbmNvZGVyLT50eXBl
IHRvIHNlbGVjdCB0aGUgY29ycmVjdCBEU0MgcmVnaXN0ZXJzCnRoYXQgd2FzIHdyb25nbHkgdXNl
ZCBpbiB0aGUgb3JpZ2luYWwgcGF0Y2ggZm9yIG9uZSBEU0MgcmVnaXN0ZXIgaXNudGFuY2UuCgpG
aXhlczogNzE4MjQxNGUyNTMwICgiZHJtL2k5MTUvZHA6IENvbmZpZ3VyZSBpOTE1IFBpY3R1cmUg
cGFyYW1ldGVyIFNldApyZWdpc3RlcnMgZHVyaW5nIERTQyBlbmFibGluZyIpCkNjOiBWaWxsZSBT
eXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmRzYy5jCmluZGV4IDU5OGRkYjYwZjlmYi4uZDRmYjdmMTZmOWY2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwpAQCAtNTQ3LDcgKzU0Nyw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAogCXBwc192YWwgfD0gRFNDX1BJQ19IRUlHSFQodmRzY19jZmct
PnBpY19oZWlnaHQpIHwKIAkJRFNDX1BJQ19XSURUSCh2ZHNjX2NmZy0+cGljX3dpZHRoIC8gbnVt
X3Zkc2NfaW5zdGFuY2VzKTsKIAlEUk1fSU5GTygiUFBTMiA9IDB4JTA4eFxuIiwgcHBzX3ZhbCk7
Ci0JaWYgKGVuY29kZXItPnR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgeworCWlmIChjcHVfdHJh
bnNjb2RlciA9PSBUUkFOU0NPREVSX0VEUCkgewogCQlJOTE1X1dSSVRFKERTQ0FfUElDVFVSRV9Q
QVJBTUVURVJfU0VUXzIsIHBwc192YWwpOwogCQkvKgogCQkgKiBJZiAyIFZEU0MgaW5zdGFuY2Vz
IGFyZSBuZWVkZWQsIGNvbmZpZ3VyZSBQUFMgZm9yIHNlY29uZAotLSAKMi4xOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
