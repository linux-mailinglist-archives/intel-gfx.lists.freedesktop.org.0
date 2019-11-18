Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C86100960
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4D56E0E5;
	Mon, 18 Nov 2019 16:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7977B6E0E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:43:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="196183724"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga007.jf.intel.com with ESMTP; 18 Nov 2019 08:42:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 08:44:12 -0800
Message-Id: <20191118164412.26216-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Update voltage level checks
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

VGhlIGJzcGVjIHdhcyByZWNlbnRseSB1cGRhdGVkIHdpdGggbmV3IGNkY2xrIC0+IHZvbHRhZ2Ug
bGV2ZWwgdGFibGVzIHRvCmFjY29tb2RhdGUgdGhlIG5ldyAzMjQvMzI2LjQgY2RjbGsgdmFsdWVz
LgoKQnNwZWM6IDIxODA5CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KQ2M6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4K
Q2M6IEJvYiBQYWF1d2UgPGJvYi5qLnBhYXV3ZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQpUaGVyZSBhcmUgc29tZSBw
bGF0Zm9ybSB0YWdnaW5nIGlzc3VlcyBvbiB0aGlzIGJzcGVjIHBhZ2UgYW5kIG11bHRpcGxlCnRh
YmxlcyBhcmUgYWN0dWFsbHkgdGFnZ2VkIHdpdGggdGhlIEVITCBsYWJlbCwgYnV0IHRoZSBic3Bl
YyBjaGFuZ2Vsb2cKbWFrZXMgaXQgcHJldHR5IGNsZWFyIHdoaWNoIHRhYmxlIHdlJ3JlIHN1cHBv
c2VkIHRvIGJlIHVzaW5nIChwbHVzIHRoZQpvdGhlciB0YWJsZXMgZG9uJ3QgbWF0Y2ggdGhlIHNl
dCBvZiBjZGNsa3Mgc3VwcG9ydGVkIGJ5IHRoZSBwbGF0Zm9ybSkuCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCmluZGV4IDhiNzAyMzE3NTU3ZS4uN2QxYWIxZTViN2MzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0xMjczLDcgKzEyNzMs
OSBAQCBzdGF0aWMgdTggaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCiAKIHN0YXRp
YyB1OCBlaGxfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKIHsKLQlpZiAoY2RjbGsgPiAz
MTIwMDApCisJaWYgKGNkY2xrID4gMzI2NDAwKQorCQlyZXR1cm4gMzsKKwllbHNlIGlmIChjZGNs
ayA+IDMxMjAwMCkKIAkJcmV0dXJuIDI7CiAJZWxzZSBpZiAoY2RjbGsgPiAxODAwMDApCiAJCXJl
dHVybiAxOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
