Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A57983809F7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756B16EE65;
	Fri, 14 May 2021 12:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFD46EE63
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:10 +0000 (UTC)
IronPort-SDR: eaIYBUuzlnmEoxaP3vnDrhUKqd4hBVCaxSfPu3YaQHLLcJ8NFuFbba3VVCsfR8jvy3Oes3DsJU
 +Gy0koKiCIwg==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="264094289"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="264094289"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:00 -0700
IronPort-SDR: nYvva6ZDPx+gdwV2EgbUi3zdqPSbhKsdSrUofupF8mVdA+MEhjwOqz3MkNLVsVsRMaNP2DulXP
 T4rt0+PUkz3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="402073797"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 14 May 2021 05:57:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:57:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:39 +0300
Message-Id: <20210514125751.17075-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/14] drm/i915: Fix g4x cxsr enable condition
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBpbnRlbnRpb24gd2FzIHRvIGNoZWNrIHdoZXRoZXIgdGhlIHByaW1hcnkgcGxhbmUgaXMgZW5h
YmxlZAp3aXRob3V0IGFueSBzcHJpdGVzIHBsYW5lcyBiZWluZyBlbmFibGVkLiBJbnN0ZWFkIHdl
IGVuZGVkIHVwIGNoZWNraW5nCndoZXRoZXIganVzdCBhbnkgb25lIG9mIHRoZSBwbGFuZXMgaXMg
ZW5hYmxlZC4gZzR4IGlzbid0IHZsdi9jaHYgYW5kCmN4c3Igb25seSB3b3JrcyB3aXRoIHRoZSBw
cmltYXJ5IHBsYW5lLiBGaXggdGhlIGNoZWNrIHRvIGV4YW1pbmUgdGhlCmJpdG1hc2sgb2YgYWN0
aXZlIHBsYW5lcyByYXRoZXIgdGhhbiB0aGUgbnVtYmVyIG9mIGJpdHMgc2V0IGluIHNhaWQKYml0
bWFzay4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDUgKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMDBhNWZlNDI0YzVhLi4yZmI0OTZmYmVkNDMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtMTM3Niw4ICsxMzc2LDcgQEAgc3RhdGljIGludCBnNHhf
Y29tcHV0ZV9waXBlX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCXN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0KIAkJdG9faW50ZWxfYXRvbWljX3N0YXRl
KGNydGNfc3RhdGUtPnVhcGkuc3RhdGUpOwogCXN0cnVjdCBnNHhfd21fc3RhdGUgKndtX3N0YXRl
ID0gJmNydGNfc3RhdGUtPndtLmc0eC5vcHRpbWFsOwotCWludCBudW1fYWN0aXZlX3BsYW5lcyA9
IGh3ZWlnaHQ4KGNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgJgotCQkJCQkgfkJJVChQTEFORV9D
VVJTT1IpKTsKKwl1OCBhY3RpdmVfcGxhbmVzID0gY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAm
IH5CSVQoUExBTkVfQ1VSU09SKTsKIAljb25zdCBzdHJ1Y3QgZzR4X3BpcGVfd20gKnJhdzsKIAlj
b25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZTsKIAljb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZTsKQEAgLTE0MTcsNyArMTQx
Niw3IEBAIHN0YXRpYyBpbnQgZzR4X2NvbXB1dGVfcGlwZV93bShzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKIAl3bV9zdGF0ZS0+c3IuY3Vyc29yID0gcmF3LT5wbGFuZVtQTEFO
RV9DVVJTT1JdOwogCXdtX3N0YXRlLT5zci5mYmMgPSByYXctPmZiYzsKIAotCXdtX3N0YXRlLT5j
eHNyID0gbnVtX2FjdGl2ZV9wbGFuZXMgPT0gQklUKFBMQU5FX1BSSU1BUlkpOworCXdtX3N0YXRl
LT5jeHNyID0gYWN0aXZlX3BsYW5lcyA9PSBCSVQoUExBTkVfUFJJTUFSWSk7CiAKIAlsZXZlbCA9
IEc0WF9XTV9MRVZFTF9IUExMOwogCWlmICghZzR4X3Jhd19jcnRjX3dtX2lzX3ZhbGlkKGNydGNf
c3RhdGUsIGxldmVsKSkKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
