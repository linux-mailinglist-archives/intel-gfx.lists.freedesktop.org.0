Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A73145FDD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 01:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CAEB6F951;
	Thu, 23 Jan 2020 00:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0405D6F950
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 00:23:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 16:23:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="229572057"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga006.jf.intel.com with ESMTP; 22 Jan 2020 16:23:13 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 16:24:14 -0800
Message-Id: <20200123002415.31478-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Do not set master_trans bit in
 bitmak if INVALID_TRANSCODER
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

SW4gdGhlIHBvcnQgc3luYyBtb2RlLCBmb3IgdGhlIG1hc3RlciBjcnRjLCB0aGUgbWFzdGVyX3Ry
YW5zY29kZXIgaXMgSU5WQUxJRC4KSW4gdGhhdCBjYXNlIHNpbmNlIGl0cyB2YWx1ZSBpcyAtMSwg
ZG8gbm90IHNldCB0aGUgYml0IGluIHRoZSBiaXRtYXNrLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkZpeGVzOiBkMGVlZDE1NDVmZTcgKCJkcm0v
aTkxNTogRml4IHBvc3QtZmFzdHNldCBtb2Rlc2V0IGNoZWNrIGZvciBwb3J0IHN5bmMiKQpTaWdu
ZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNiArKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA4NzhkMzMxYjll
OGMuLjc5ZjkwNTQwNzhlYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKQEAgLTE0NjQ5LDggKzE0NjQ5LDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRv
bWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCX0KIAogCQlpZiAoaXNfdHJhbnNf
cG9ydF9zeW5jX21vZGUobmV3X2NydGNfc3RhdGUpKSB7Ci0JCQl1OCB0cmFucyA9IG5ld19jcnRj
X3N0YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2sgfAotCQkJCSAgIEJJVChuZXdfY3J0Y19zdGF0
ZS0+bWFzdGVyX3RyYW5zY29kZXIpOworCQkJdTggdHJhbnMgPSBuZXdfY3J0Y19zdGF0ZS0+c3lu
Y19tb2RlX3NsYXZlc19tYXNrOworCisJCQlpZiAobmV3X2NydGNfc3RhdGUtPm1hc3Rlcl90cmFu
c2NvZGVyICE9IElOVkFMSURfVFJBTlNDT0RFUikKKwkJCQl0cmFucyB8PSBCSVQobmV3X2NydGNf
c3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyKTsKIAogCQkJaWYgKGludGVsX2NwdV90cmFuc2NvZGVy
c19uZWVkX21vZGVzZXQoc3RhdGUsIHRyYW5zKSkgewogCQkJCW5ld19jcnRjX3N0YXRlLT51YXBp
Lm1vZGVfY2hhbmdlZCA9IHRydWU7Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
