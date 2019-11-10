Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A68F6A65
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 17:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2896E78E;
	Sun, 10 Nov 2019 16:58:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932DD6E78B
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 16:58:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Nov 2019 08:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,289,1569308400"; d="scan'208";a="206527784"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Nov 2019 08:58:48 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iTqY3-0007nE-VU; Mon, 11 Nov 2019 00:58:47 +0800
Date: Mon, 11 Nov 2019 00:57:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191110165755.x72a7rqqitqxkn6v@4978f4969bb8>
References: <20191108003602.33526-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108003602.33526-4-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/bios: find_vbt() can be static
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkZpeGVzOiBiZWU2ZWViM2VlNjcgKCJkcm0vaTkxNS9iaW9zOiBkbyBub3QgZGlzY2FyZCBhZGRy
ZXNzIHNwYWNlIikKU2lnbmVkLW9mZi1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5j
b20+Ci0tLQogaW50ZWxfYmlvcy5jIHwgICAgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYwppbmRleCA4ZGFlOGViOTBkMGRhLi4wY2QwMzkyMTdkMDZmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTgwNiw3ICsxODA2LDcgQEAgYm9v
bCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidChjb25zdCB2b2lkICpidWYsIHNpemVfdCBzaXplKQog
CXJldHVybiB2YnQ7CiB9CiAKLXZvaWQgX19pb21lbSAqZmluZF92YnQodm9pZCBfX2lvbWVtICpv
cHJvbSwgc2l6ZV90IHNpemUpCitzdGF0aWMgdm9pZCBfX2lvbWVtICpmaW5kX3ZidCh2b2lkIF9f
aW9tZW0gKm9wcm9tLCBzaXplX3Qgc2l6ZSkKIHsKIAljb25zdCB1MzIgTUFHSUMgPSAqKChjb25z
dCB1MzIgKikiJFZCVCIpOwogCXNpemVfdCBkb25lID0gMCwgY3VyID0gMDsKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
