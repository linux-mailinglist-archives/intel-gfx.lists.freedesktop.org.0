Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F1431A475
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 19:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141586E1D8;
	Fri, 12 Feb 2021 18:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7D96E1D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 18:20:42 +0000 (UTC)
IronPort-SDR: avTWEcsA6IVQgOnJ5wXVrVrfYqvV+0yk/bkZyA9zu1pyLsLYBQRuVQeh7m1xjsPaqnu5O/7SP6
 7LgMv8x7tYsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="161599194"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="161599194"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 10:20:41 -0800
IronPort-SDR: fy+zKhG/7PrOuKrTSeiuUSXeTWEWLhx53UX0W2Pr+gw8HuOH+Nnik0X2fOTdUrvlHpQgGte9WI
 0uf75VJNqepg==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="491231844"
Received: from sarcot-mobl1.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.56.203])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 10:20:40 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 10:22:01 -0800
Message-Id: <20210212182201.155043-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210212182201.155043-1-jose.souza@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
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

Rm91bmQgYSBzeXN0ZW0gd2VyZSBmaXJtd2FyZS9CSU9TIGxlZnQgdGhlIHBsYW5lX3Jlc19iIGFu
ZCBwbGFuZV9yZXNfbApzZXQgd2l0aCBub24temVybyB2YWx1ZXMgZm9yIGRpc2FibGUgcGxhbmVz
LgpBcyB0aGUgcGxhbmVzIGFyZSBkaXNhYmxlZCBpOTE1IHdpbGwgbm90IGV2ZW4gdHJ5IHRvIHNh
bml0aXplIGl0IHNvCmhlcmUgcmV0dXJuaW5nIGVhcmxpZXIgaWYgYm90aCBza2xfd21fbGV2ZWxz
IGJlaW5nIGNvbXBhcmVkIGFyZQpkaXNhYmxlZCwgaWYgdGhhdCBpcyB0cnVlIG5vIG5lZWQgdG8g
Y2hlY2sgdGhlIG90aGVyIGZpZWxkcyBhcyBIVwp3aWxsIGlnbm9yZSBpdC4KClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggOGNjNjdmOWM0ZTU4Li5j
NjMwZGMxMGMzNGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNTYzMyw2ICs1NjMzLDgg
QEAgdm9pZCBza2xfd3JpdGVfY3Vyc29yX3dtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiBi
b29sIHNrbF93bV9sZXZlbF9lcXVhbHMoY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqbDEsCiAJ
CQkgY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqbDIpCiB7CisJaWYgKGwxLT5wbGFuZV9lbiA9
PSBmYWxzZSAmJiBsMi0+cGxhbmVfZW4gPT0gZmFsc2UpCisJCXJldHVybiB0cnVlOwogCXJldHVy
biBsMS0+cGxhbmVfZW4gPT0gbDItPnBsYW5lX2VuICYmCiAJCWwxLT5pZ25vcmVfbGluZXMgPT0g
bDItPmlnbm9yZV9saW5lcyAmJgogCQlsMS0+cGxhbmVfcmVzX2wgPT0gbDItPnBsYW5lX3Jlc19s
ICYmCi0tIAoyLjMwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
