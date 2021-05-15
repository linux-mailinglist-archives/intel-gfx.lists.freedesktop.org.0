Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 031FE381574
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8CEE6F4EA;
	Sat, 15 May 2021 03:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556806F4D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:44 +0000 (UTC)
IronPort-SDR: j0KLt8SJ7VBgFI1xFi9vjotlT28WW2AYoQ4edrYVONPyC8RXXShdabip74yeaN3W6F9tEit5UO
 tCjNq+SlduRw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383719"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383719"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:44 -0700
IronPort-SDR: IsK4k3jfMDri9ajg2ZcbXP5ZHW0nhd+FvYKjFbcdbkda2N3sPN9QKh0f0V00NdI6ilEwaMUllN
 lRlioB+35IJw==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901229"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:35 -0700
Message-Id: <20210515031035.2561658-24-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 23/23] drm/i915/adl_p: Update memory
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
cGxheS9pbnRlbF9idy5jCmluZGV4IGEzNTQzNTA4M2I2MC4uM2ExYmE1MjI2NmE3IDEwMDY0NAot
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
