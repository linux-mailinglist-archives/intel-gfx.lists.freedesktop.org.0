Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EA57BA33
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 09:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17EF68935C;
	Wed, 31 Jul 2019 07:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F60489BAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 07:11:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 00:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="323637617"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 31 Jul 2019 00:11:48 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hsim4-0007OL-6Y; Wed, 31 Jul 2019 15:11:48 +0800
Date: Wed, 31 Jul 2019 15:11:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190731071129.wgj6csqjzhaofhfu@48261080c7f1>
References: <20190730135024.31765-8-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730135024.31765-8-anshuman.gupta@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/tgl:
 tgl_disallow_dc3co_on_psr2_exit() can be static
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Souza@freedesktop.org, Manna@freedesktop.org, Deak@freedesktop.org,
 kbuild-all@01.org, Nikula@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkZpeGVzOiBjMjlhMThlNzAyZjMgKCJkcm0vaTkxNS90Z2w6IERDM0NPIFBTUjIgaGVscGVyIikK
U2lnbmVkLW9mZi1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Ci0tLQogaW50
ZWxfcHNyLmMgfCAgICAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAx
Mjc2NWIxZjllMzM5Yy4uODVmZjY0MTExMjY2NjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwpAQCAtNTYzLDcgKzU2Myw3IEBAIHZvaWQgdGdsX3BzcjJfZGVlcF9z
bGVlcF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUk5MTVfV1JJ
VEUoRURQX1BTUjJfQ1RMLCB2YWwpOwogfQogCi12b2lkIHRnbF9kaXNhbGxvd19kYzNjb19vbl9w
c3IyX2V4aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQg
dGdsX2Rpc2FsbG93X2RjM2NvX29uX3BzcjJfZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiB7CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgX19tYXliZV91bnVzZWQ7CiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
