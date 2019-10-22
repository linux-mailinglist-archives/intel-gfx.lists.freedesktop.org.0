Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33546E061E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B0F6E821;
	Tue, 22 Oct 2019 14:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34386E819
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:12:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="227726357"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.143])
 by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2019 07:12:19 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:04:01 +0530
Message-Id: <20191022143404.30442-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022143404.30442-1-uma.shankar@intel.com>
References: <20191022143404.30442-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 3/6] drm/i915/display: Attach HDR property for
 capable Gen9 devices
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXR0YWNoIEhEUiBwcm9wZXJ0eSBmb3IgR2VuOSBkZXZpY2VzIHdpdGggTUNBIExTUENPTgpjaGlw
cy4KClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyB8IDUgKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCA1MWFkNWYwMmU3MDAuLmMzMjQ1MjM2MGVlYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC02Mjcs
NiArNjI3LDExIEBAIGJvb2wgbHNwY29uX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
aW50ZWxfZGlnX3BvcnQpCiAJCXJldHVybiBmYWxzZTsKIAl9CiAKKwlpZiAobHNwY29uLT52ZW5k
b3IgPT0gTFNQQ09OX1ZFTkRPUl9NQ0EgJiYgbHNwY29uLT5oZHJfc3VwcG9ydGVkKQorCQlkcm1f
b2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLAorCQkJCQkgICBjb25uZWN0
b3ItPmRldi0+bW9kZV9jb25maWcuaGRyX291dHB1dF9tZXRhZGF0YV9wcm9wZXJ0eSwKKwkJCQkJ
ICAgMCk7CisKIAljb25uZWN0b3ItPnljYmNyXzQyMF9hbGxvd2VkID0gdHJ1ZTsKIAlsc3Bjb24t
PmFjdGl2ZSA9IHRydWU7CiAJRFJNX0RFQlVHX0tNUygiU3VjY2VzczogTFNQQ09OIGluaXRcbiIp
OwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
