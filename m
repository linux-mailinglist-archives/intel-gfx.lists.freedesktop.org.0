Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6367438142F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 01:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F39C6F4B5;
	Fri, 14 May 2021 23:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3256F4B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 23:19:44 +0000 (UTC)
IronPort-SDR: VXAEnTQN7LAq3Om5K9WB5/IaGkRevoUKHbBH0QRJpCysDOir9q2nlCl+fclT0FTAlKNkURkgam
 7w/OdX4BhUdQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="199938034"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="199938034"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:19:44 -0700
IronPort-SDR: UdtjGJnlicOY6d2Be7Vsnw+sNcd1NYjCi14zTYLQE+ACoZhDzLvoUTOWFDsEFmfSim2DEK9Ki8
 HFlDvMR8QxYA==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="627453940"
Received: from rmjoslin-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.1.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:19:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 16:22:47 -0700
Message-Id: <20210514232247.144542-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514232247.144542-1-jose.souza@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Drop FIXME about turn
 off infoframes
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

aW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoKSBjYWxsIGluIGludGVsX2RkaV9wb3N0X2Rpc2FibGVf
ZHAoKSB3aWxsCnRha2UgY2FyZSB0byBkaXNhYmxlIGFsbCBlbmFibGVkIGluZm9mcmFtZXMuCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEgLQogMSBmaWxl
IGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCA1YmM1NTI4ZjMwOTEuLmQzYmM1YTFhOTM2YSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0yNzYyLDcgKzI3NjIsNiBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwKIAkJCQkJY29ubl9zdGF0ZSk7CiAKIAkJLyogRklYTUUgcHJlY29tcHV0ZSBldmVyeXRoaW5n
IHByb3Blcmx5ICovCi0JCS8qIEZJWE1FIGhvdyBkbyB3ZSB0dXJuIGluZm9mcmFtZXMgb2ZmIGFn
YWluPyAqLwogCQlpZiAoZGlnX3BvcnQtPmxzcGNvbi5hY3RpdmUgJiYgZGlnX3BvcnQtPmRwLmhh
c19oZG1pX3NpbmspCiAJCQlkaWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwgdHJ1ZSwg
Y3J0Y19zdGF0ZSwKIAkJCQkJCSBjb25uX3N0YXRlKTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
