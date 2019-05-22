Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AF3267B3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 18:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5B4C89BF0;
	Wed, 22 May 2019 16:07:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46EC89BD2;
 Wed, 22 May 2019 16:07:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 09:07:36 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2019 09:07:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 17:06:58 +0100
Message-Id: <20190522160658.28998-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: End warning message with a
 newline
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk90aGVyd2lz
ZSBkZWJ1ZyBvdXRwdXQgbG9va3MgbWVzc3kgd2hlbiB3ZSB0cmlnZ2VyIHRoaXMuCgpTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogQW5k
aSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogbGliL2k5MTUvZ2VtX2VuZ2luZV90
b3BvbG9neS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5jIGIvbGli
L2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5jCmluZGV4IDdjYTM2MTY2ODdiOS4uZDBjOGJkNWFh
ZWFjIDEwMDY0NAotLS0gYS9saWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKKysrIGIvbGli
L2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5jCkBAIC0xMjMsNyArMTIzLDcgQEAgc3RhdGljIHZv
aWQgaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplMiwKIAlpZiAo
X19lMi0+bmFtZSkgewogCQllMi0+bmFtZSA9IF9fZTItPm5hbWU7CiAJfSBlbHNlIHsKLQkJaWd0
X3dhcm4oImZvdW5kIHVua25vd24gZW5naW5lICglZCwgJWQpIiwgY2xhc3MsIGluc3RhbmNlKTsK
KwkJaWd0X3dhcm4oImZvdW5kIHVua25vd24gZW5naW5lICglZCwgJWQpXG4iLCBjbGFzcywgaW5z
dGFuY2UpOwogCQllMi0+bmFtZSA9IHVua25vd25fbmFtZTsKIAkJZTItPmZsYWdzID0gLTE7CiAJ
fQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
