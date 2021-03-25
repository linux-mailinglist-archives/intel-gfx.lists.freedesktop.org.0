Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAB5349BD5
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C206EE51;
	Thu, 25 Mar 2021 21:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A84F6EE4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:16 +0000 (UTC)
IronPort-SDR: 5D+7xlgvsLkRwDbB44HDj/RphsNLn4HoXtSLRPwYxaF/0GTKXQayssH/GzOHi/GT7b7IzmAueW
 MZjIiamtDGyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171004992"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171004992"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:15 -0700
IronPort-SDR: ZyFcDM7KOxGeIOetiHByeZV9c6Ie/RAujjKLHJm6C4tiiLo2l87+UI+r5/PzRH6Mdq6FYdPOZd
 R81i/qbb9pKg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235632"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:46 +0200
Message-Id: <20210325214808.2071517-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/25] drm/i915/selftest: Fix debug message
 in igt_vma_remapped_gtt()
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

VGhlIGV4cGVjdGVkL2ZvdW5kIHZhbHVlcyB3ZXJlIHN3YXBwZWQgaW4gYSBkZWJ1ZyBtZXNzYWdl
LCBmaXggdGhpcyB1cC4KClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCmluZGV4IDM1NDgxY2ZiYjYz
NTMuLjIzZjZhMjEyYTM5MWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X3ZtYS5jCkBAIC05NTksNyArOTU5LDcgQEAgc3RhdGljIGludCBpZ3Rfdm1hX3JlbWFwcGVkX2d0
dCh2b2lkICphcmcpCiAJCQkJCWlmICh2YWwgIT0gZXhwKSB7CiAJCQkJCQlwcl9lcnIoIiVzIFZN
QSB3cml0ZSB0ZXN0IGZhaWxlZCwgZXhwZWN0ZWQgMHgleCwgZm91bmQgMHgleFxuIiwKIAkJCQkJ
CSAgICAgICAqdCA9PSBJOTE1X0dHVFRfVklFV19ST1RBVEVEID8gIlJvdGF0ZWQiIDogIlJlbWFw
cGVkIiwKLQkJCQkJCSAgICAgICB2YWwsIGV4cCk7CisJCQkJCQkgICAgICAgZXhwLCB2YWwpOwog
CQkJCQkJaTkxNV92bWFfdW5waW5faW9tYXAodm1hKTsKIAkJCQkJCWVyciA9IC1FSU5WQUw7CiAJ
CQkJCQlnb3RvIG91dDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
