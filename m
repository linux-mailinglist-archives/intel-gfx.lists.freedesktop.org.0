Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779D3F9D70
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 23:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3236EC20;
	Tue, 12 Nov 2019 22:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEAF16EC20
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 22:46:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 14:46:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,298,1569308400"; d="scan'208";a="256964332"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Nov 2019 14:46:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 14:47:56 -0800
Message-Id: <20191112224757.25116-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] Revert "drm/i915/ehl: Update MOCS table
 for EHL"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyByZXZlcnRzIGNvbW1pdCBmNDA3MTk5N2YxZGUwMTY3ODBlYzZiNzljNjNkOTBjZDU4ODZl
ZTgzLgoKVGhlc2UgZXh0cmEgRUhMIGVudHJpZXMgd29uJ3QgYmVoYXZlIGFzIGV4cGVjdGVkIHdp
dGhvdXQgYSBiaXQgbW9yZSB3b3JrCm9uIHRoZSBrZXJuZWwgc2lkZSBzbyBsZXQncyBkcm9wIHRo
ZW0gdW50aWwgdGhhdCBrZXJuZWwgd29yayBoYXMgaGFkIGEKY2hhbmNlIHRvIGxhbmQuICBVc2Vy
c3BhY2UgdHJ5aW5nIHRvIHVzZSB0aGVzZSBuZXcgZW50cmllcyB3b24ndCBnZXQgdGhlCmFkdmFu
dGFnZSBvZiB0aGUgbmV3IGZ1bmN0aW9uYWxpdHkgdGhlc2UgZW50cmllcyBhcmUgbWVhbnQgdG8g
cHJvdmlkZSwKYnV0IGF0IGxlYXN0IGl0IHdvbid0IG1pc2JlaGF2ZS4KCldoZW4gd2UgZG8gYWRk
IHRoZXNlIGJhY2sgaW4gdGhlIGZ1dHVyZSwgd2UnbGwgcHJvYmFibHkgd2FudCB0bwpleHBsaWNp
dGx5IHVzZSBzZXBhcmF0ZSB0YWJsZXMgZm9yIElDTCBhbmQgRUhMIHNvIHRoYXQgdXNlcnNwYWNl
CnNvZnR3YXJlIHRoYXQgbWlzdGFrZW5seSB1c2VzIHRoZXNlIGVudHJpZXMgKHdoaWNoIGFyZSB1
bmRlZmluZWQgb24gSUNMKQpzZWVzIHRoZSBzYW1lIGJlaGF2aW9yIGl0IHNlZXMgd2l0aCBhbGwg
dGhlIG90aGVyIHVuZGVmaW5lZCBlbnRyaWVzLgoKQ2M6IEZyYW5jaXNjbyBKZXJleiA8ZnJhbmNp
c2NvLmplcmV6LnBsYXRhQGludGVsLmNvbT4KQ2M6IEpvbiBCbG9vbWZpZWxkIDxqb24uYmxvb21m
aWVsZEBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCA4IC0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9tb2NzLmMKaW5kZXggNmU4ODFjNzM1YjIwLi4wNmUyYWRiZjI3YmUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMKQEAgLTIwMCwxNCArMjAwLDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1faTkxNV9tb2NzX2VudHJ5IGJyb3h0b25fbW9jc190YWJsZVtdID0gewogCU1PQ1Nf
RU5UUlkoMTUsIFwKIAkJICAgTEVfM19XQiB8IExFX1RDXzFfTExDIHwgTEVfTFJVTSgyKSB8IExF
X0FPTSgxKSwgXAogCQkgICBMM18zX1dCKSwgXAotCS8qIEJ5cGFzcyBMTEMgLSBVbmNhY2hlZCAo
RUhMKykgKi8gXAotCU1PQ1NfRU5UUlkoMTYsIFwKLQkJICAgTEVfMV9VQyB8IExFX1RDXzFfTExD
IHwgTEVfU0NGKDEpLCBcCi0JCSAgIEwzXzFfVUMpLCBcCi0JLyogQnlwYXNzIExMQyAtIEwzIChS
ZWFkLU9ubHkpIChFSEwrKSAqLyBcCi0JTU9DU19FTlRSWSgxNywgXAotCQkgICBMRV8xX1VDIHwg
TEVfVENfMV9MTEMgfCBMRV9TQ0YoMSksIFwKLQkJICAgTDNfM19XQiksIFwKIAkvKiBTZWxmLVNu
b29wIC0gTDMgKyBMTEMgKi8gXAogCU1PQ1NfRU5UUlkoMTgsIFwKIAkJICAgTEVfM19XQiB8IExF
X1RDXzFfTExDIHwgTEVfTFJVTSgzKSB8IExFX1NTRSgzKSwgXAotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
