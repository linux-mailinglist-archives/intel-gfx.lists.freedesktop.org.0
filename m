Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7AD3C1ADF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 23:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACD06E9AB;
	Thu,  8 Jul 2021 21:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41DB6E9AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 21:14:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="207775060"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="207775060"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="560755472"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 14:14:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 14:18:25 -0700
Message-Id: <20210708211827.288601-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Limit Wa_22010178259 to affected
 platforms
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

VGhpcyB3b3JrYXJvdW5kIGlzIG5vdCBuZWVkZWQgZm9yIHBsYXRmb3JtcyB3aXRoIGRpc3BsYXkg
MTMuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8
IDkgKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKaW5kZXggMjg1MzgwMDc5YWFiMi4uNmZjNzY2ZGE2NjA1NCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTU4
MjIsMTAgKzU4MjIsMTEgQEAgc3RhdGljIHZvaWQgdGdsX2J3X2J1ZGR5X2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEJX
X0JVRERZX1BBR0VfTUFTSyhpKSwKIAkJCQkgICAgICAgdGFibGVbY29uZmlnXS5wYWdlX21hc2sp
OwogCi0JCQkvKiBXYV8yMjAxMDE3ODI1OTp0Z2wscmtsICovCi0JCQlpbnRlbF9kZV9ybXcoZGV2
X3ByaXYsIEJXX0JVRERZX0NUTChpKSwKLQkJCQkgICAgIEJXX0JVRERZX1RMQl9SRVFfVElNRVJf
TUFTSywKLQkJCQkgICAgIEJXX0JVRERZX1RMQl9SRVFfVElNRVIoMHg4KSk7CisJCQkvKiBXYV8y
MjAxMDE3ODI1OTp0Z2wsZGcxLHJrbCxhZGwtcyAqLworCQkJaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA9PSAxMikKKwkJCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEJXX0JVRERZX0NUTChpKSwK
KwkJCQkJICAgICBCV19CVUREWV9UTEJfUkVRX1RJTUVSX01BU0ssCisJCQkJCSAgICAgQldfQlVE
RFlfVExCX1JFUV9USU1FUigweDgpKTsKIAkJfQogCX0KIH0KLS0gCjIuMzIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
