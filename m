Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFA51288FE
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 13:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3476E462;
	Sat, 21 Dec 2019 12:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B53E36E457
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 12:06:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Dec 2019 04:06:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,338,1571727600"; d="scan'208";a="219065256"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 21 Dec 2019 04:06:25 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 14:05:42 +0200
Message-Id: <20191221120543.22816-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191221120543.22816-1-imre.deak@intel.com>
References: <20191221120543.22816-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Make sure Y slave planes get
 all the required state
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WSBwbGFuZXMgcHJvZ3JhbSB0aGUgb2Zmc2V0IGFuZCBzdHJpZGUgb2YgdGhlIEFVWCBwbGFuZSwg
c28gbWFrZSBzdXJlIHdlCmNvcHkgdGhlIHJlcXVpcmVkIGluZm8gZm9yIHRoaXMgaW50byB0aGVp
ciBwbGFuZSBzdGF0ZS4KCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5A
aW50ZWwuY29tPgpDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1ZWM2YjkwNjcxMzguLjYyZDExZTUyMzBiNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEyMjM0LDcg
KzEyMjM0LDggQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9wbGFuZXMoc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCS8qIENvcHkgcGFyYW1ldGVycyB0byBzbGF2ZSBw
bGFuZSAqLwogCQlsaW5rZWRfc3RhdGUtPmN0bCA9IHBsYW5lX3N0YXRlLT5jdGwgfCBQTEFORV9D
VExfWVVWNDIwX1lfUExBTkU7CiAJCWxpbmtlZF9zdGF0ZS0+Y29sb3JfY3RsID0gcGxhbmVfc3Rh
dGUtPmNvbG9yX2N0bDsKLQkJbGlua2VkX3N0YXRlLT5jb2xvcl9wbGFuZVswXSA9IHBsYW5lX3N0
YXRlLT5jb2xvcl9wbGFuZVswXTsKKwkJbWVtY3B5KGxpbmtlZF9zdGF0ZS0+Y29sb3JfcGxhbmUs
IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZSwKKwkJICAgICAgIHNpemVvZihsaW5rZWRfc3RhdGUt
PmNvbG9yX3BsYW5lKSk7CiAKIAkJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKGxp
bmtlZF9zdGF0ZSwgcGxhbmVfc3RhdGUpOwogCQlsaW5rZWRfc3RhdGUtPnVhcGkuc3JjID0gcGxh
bmVfc3RhdGUtPnVhcGkuc3JjOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
