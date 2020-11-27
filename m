Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A92E2C636D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A549B6EB7C;
	Fri, 27 Nov 2020 10:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835366EB80
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:52:01 +0000 (UTC)
IronPort-SDR: vqb+8AOiOqKsRWSiHmA1ZXP3wXhNBOfTGcy3tqxM+0KrfzVLznHnChUiBdOfKxgPdyxVWuRpQs
 6ggB9XouFXMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="151634282"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="151634282"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:51:15 -0800
IronPort-SDR: 6kfQffIZjX/V9y7+yxdXV2lH8OJ70Vt/aFN5nOuLJP7TBDDtwQOsQFJAjbpa+ocKVZhtAgjb8/
 UeM6N4qOAeqg==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="537605128"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:51:13 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:50:41 +0200
Message-Id: <20201127105041.2793779-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20201127105041.2793779-1-gwan-gyeong.mun@intel.com>
References: <20201127105041.2793779-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/5] HAX/DO_NOT_MERGE_IT: drm/i915/display:
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
