Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD183A3438
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 21:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4848B6E0C5;
	Thu, 10 Jun 2021 19:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31CE6E0C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 19:41:57 +0000 (UTC)
IronPort-SDR: AQLSnX1gDoD3Y52uKrs23UNIk3/exJzH1Em6E9w0SXJftg1Afa+sJ5sBgbCPIsoJSFigxI7gZS
 CFEnK404s71Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="192698906"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="192698906"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 12:41:56 -0700
IronPort-SDR: ml5qwmlWNazjt4smK1D9bTTPh0cacFazVPVya0m9sN8jhHORrMBjSTAwhWqdXkiLubuGe6xuBx
 vH1IdkGe/ECg==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486309704"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.54])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 12:41:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 12:45:27 -0700
Message-Id: <20210610194527.84997-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/display: Drop FIXME about turn
 off infoframes"
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

TG9va3MgdGhpcyBGSVhNRSBpcyBzdGlsbCB2YWxpZCBhcyB3ZSBuZWVkIGEgd2F5IHRvIHRlbGwg
TFNQQ09OIHRvCnN0b3Agc2VuZGluZyBpbmZvZnJhbWVzLCBzbyByZXZlcnRpbmcgaXQuCgpUaGlz
IHJldmVydHMgY29tbWl0IDNmNDA5ZTRjZDU3OWIyODdhNmM0MWQwMTdlNjJjMzkyZjc5OTcxOTMu
CgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEgKwogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKaW5kZXggMzkwODY5YmQ2YjYzMy4uMGI3ZmVmNTI3ZTIwMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0yODEwLDYgKzI4MTAsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKIAkJCQkJY29ubl9zdGF0ZSk7CiAKIAkJLyogRklYTUUgcHJlY29tcHV0ZSBldmVy
eXRoaW5nIHByb3Blcmx5ICovCisJCS8qIEZJWE1FIGhvdyBkbyB3ZSB0dXJuIGluZm9mcmFtZXMg
b2ZmIGFnYWluPyAqLwogCQlpZiAoZGlnX3BvcnQtPmxzcGNvbi5hY3RpdmUgJiYgZGlnX3BvcnQt
PmRwLmhhc19oZG1pX3NpbmspCiAJCQlkaWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwK
IAkJCQkJCSBjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lLAotLSAKMi4zMi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
