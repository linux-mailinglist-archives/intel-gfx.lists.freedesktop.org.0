Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BE1390D2E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 02:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C706EB80;
	Wed, 26 May 2021 00:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689886EB81
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 00:07:06 +0000 (UTC)
IronPort-SDR: LO5eCTL2aesqDyH+hWSZK8Q/6jx2vGOZrJ3Sv2EORa4EJ5yugTAtSw35b1M+DClIdoXskiunuB
 rvT21v1HGUMQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="189459145"
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="189459145"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 17:07:05 -0700
IronPort-SDR: 2yVfpSv3CX7ZtAY9NO0OFUFfgHJfcRz3ln20z3akk2BosIlnGO54WIZrgBEQ6eEr/DQXkPPKWF
 zkOocjmszS3A==
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="414231991"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 17:07:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 May 2021 17:06:56 -0700
Message-Id: <20210526000656.3060314-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210526000656.3060314-1-matthew.d.roper@intel.com>
References: <20210526000656.3060314-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/display: Remove a redundant function
 argument from intel_psr_enable_source()
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

RnJvbTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgoKSXQgcmVt
b3ZlcyBpbnRlbF9jcnRjX3N0YXRlIGZyb20gZnVuY3Rpb24gYXJndW1lbnQgb2YKaW50ZWxfcHNy
X2VuYWJsZV9zb3VyY2UoKSBpbiBvcmRlciB0byB1c2UgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uo
KQp3aXRob3V0IGludGVsX2NydGNfc3RhdGUgb24gb3RoZXIgcHNyIGludGVybmFsIGZ1bmN0aW9u
cy4KQW5kIHdlIGNhbiBnZXQgY3B1X3RyYW5jb2RlciBmcm9tIGludGVsX3BzciwgdGhlcmVmb3Jl
IHdlIGRvbid0IG5lZWQgdG8KcGFzcyBpbnRlbF9jcnRjX3N0YXRlIHRvIHRoaXMgZnVuY3Rpb24u
CgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDcgKysrLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAxYjI3YWY4NzJiYTEuLjAwMGUxZmZlOGMw
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC05OTAsMTEg
Kzk5MCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfYWN0aXZhdGUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkKIAlpbnRlbF9kcC0+cHNyLmFjdGl2ZSA9IHRydWU7CiB9CiAKLXN0YXRpYyB2
b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0J
CQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVs
X2RwKTsKLQllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVf
dHJhbnNjb2RlcjsKKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+
cHNyLnRyYW5zY29kZXI7CiAJdTMyIG1hc2s7CiAKIAkvKiBPbmx5IEhTVyBhbmQgQkRXIGhhdmUg
UFNSIEFVWCByZWdpc3RlcnMgdGhhdCBuZWVkIHRvIGJlIHNldHVwLiBTS0wrCkBAIC0xMTEyLDcg
KzExMTEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAogCQkJCSAgICAgJmludGVsX2RwLT5wc3IudnNjKTsKIAlpbnRlbF93
cml0ZV9kcF92c2Nfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUsICZpbnRlbF9kcC0+cHNyLnZzYyk7
CiAJaW50ZWxfcHNyX2VuYWJsZV9zaW5rKGludGVsX2RwKTsKLQlpbnRlbF9wc3JfZW5hYmxlX3Nv
dXJjZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CisJaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2UoaW50
ZWxfZHApOwogCWludGVsX2RwLT5wc3IuZW5hYmxlZCA9IHRydWU7CiAKIAlpbnRlbF9wc3JfYWN0
aXZhdGUoaW50ZWxfZHApOwotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
