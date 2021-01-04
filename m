Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BAF2E946B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C7589E32;
	Mon,  4 Jan 2021 11:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D68A89DDF
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:59:15 +0000 (UTC)
IronPort-SDR: HraYuI4+9XugYedO549Mtlk3u4n4RNjcAo6O6F/xgLqZmKknUDlRrZgON2APGfXp3lHEz/KPrO
 StjBWkcQ819A==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="177097761"
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="177097761"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 03:59:15 -0800
IronPort-SDR: KeFIuuWWVnj+WL1IEuytQj92syNKWhokuM3E5halZyXWjWsc9jsN3pDwisklkXli3btyXGRBBr
 II94So7kxeBg==
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="378390103"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 03:59:13 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 13:58:44 +0200
Message-Id: <20210104115844.1068561-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210104115844.1068561-1-gwan-gyeong.mun@intel.com>
References: <20210104115844.1068561-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 5/5] HAX/DO_NOT_MERGE_IT: drm/i915/display:
 Enable PSR2 selective fetch for testing
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpFbmFi
bGluZyBpdCB0byBjaGVjayBpZiBpdCBjYXVzZXMgcmVncmVzc2lvbnMgaW4gQ0kgYnV0IHRoZSBm
ZWF0dXJlIGlzCnN0aWxsIG5vdCByZWFkeSB0byBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuCgpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGFyYW1zLmgKaW5kZXggMzMwYzAzZTJiNGY3Li5iOGIxOTI3MGMzMzkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wYXJhbXMuaApAQCAtNTQsNyArNTQsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7CiAJ
cGFyYW0oaW50LCBlbmFibGVfZmJjLCAtMSwgMDYwMCkgXAogCXBhcmFtKGludCwgZW5hYmxlX3Bz
ciwgLTEsIDA2MDApIFwKIAlwYXJhbShib29sLCBwc3Jfc2FmZXN0X3BhcmFtcywgZmFsc2UsIDA2
MDApIFwKLQlwYXJhbShib29sLCBlbmFibGVfcHNyMl9zZWxfZmV0Y2gsIGZhbHNlLCAwNjAwKSBc
CisJcGFyYW0oYm9vbCwgZW5hYmxlX3BzcjJfc2VsX2ZldGNoLCB0cnVlLCAwNjAwKSBcCiAJcGFy
YW0oaW50LCBkaXNhYmxlX3Bvd2VyX3dlbGwsIC0xLCAwNDAwKSBcCiAJcGFyYW0oaW50LCBlbmFi
bGVfaXBzLCAxLCAwNjAwKSBcCiAJcGFyYW0oaW50LCBpbnZlcnRfYnJpZ2h0bmVzcywgMCwgMDYw
MCkgXAotLSAKMi4yNS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
