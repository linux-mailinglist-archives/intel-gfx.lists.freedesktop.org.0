Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CED34991C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8BC6EE22;
	Thu, 25 Mar 2021 18:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F68D6EE05
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:37 +0000 (UTC)
IronPort-SDR: /cXWftb43AaTA/gFCVKeDC33Wc+vYRi8F3K6HFbCV7UmLdMbAkMU1aNR+6LIaqtJ7352BmlE9D
 N8lqCX3J3PRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112584"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112584"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:37 -0700
IronPort-SDR: vpAFjqzwiXHqPAq5uVHy59gznlNelTCnu0mIW0JoEo3tONspFCBGz9WSN7TnzmrxvuNzULo0vZ
 XfNzuwDObGKA==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176759"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:15 -0700
Message-Id: <20210325180720.401410-46-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 45/50] drm/i915/adl_p: Update memory
 bandwidth parameters
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQURMX1Ag
aGFzIHNhbWUgbWVtb3J5IGNoYXJhY3RlcmlzdGljcyBhcyBBRExfUyBwbGF0Zm9ybS4KCkJzcGVj
OiA2NDYzMQoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgpDYzogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jCmluZGV4IDcyZTI3MjFmOTQ5Yi4uYzA0YTE0MzhhNDg4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCkBAIC0yNjcsNyArMjY3LDcgQEAgdm9p
ZCBpbnRlbF9id19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlp
ZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkKIAkJcmV0dXJuOwogCi0JaWYgKElTX0FMREVSTEFL
RV9TKGRldl9wcml2KSkKKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8IElTX0FMREVS
TEFLRV9QKGRldl9wcml2KSkKIAkJaWNsX2dldF9id19pbmZvKGRldl9wcml2LCAmYWRsc19zYV9p
bmZvKTsKIAllbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKIAkJaWNsX2dldF9id19p
bmZvKGRldl9wcml2LCAmcmtsX3NhX2luZm8pOwotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
