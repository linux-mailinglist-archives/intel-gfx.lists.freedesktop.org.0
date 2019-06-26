Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AD056C4B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93656E460;
	Wed, 26 Jun 2019 14:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBE56E457
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:38:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:38:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183183289"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:38:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:40:19 +0300
Message-Id: <20190626144020.2155-13-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626144020.2155-1-jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 12/13] drm/i915: make intel_uc_fw.h
 self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VjX2Z3LmggICAgICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVz
dCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4IDRhYTU4
OGQzMTRhMC4uMmZkNjE4NjliZGFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5o
ZWFkZXItdGVzdApAQCAtMjYsNiArMjYsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50ZWxfcG0u
aCBcCiAJaW50ZWxfcnVudGltZV9wbS5oIFwKIAlpbnRlbF9zaWRlYmFuZC5oIFwKKwlpbnRlbF91
Y19mdy5oIFwKIAlpbnRlbF91bmNvcmUuaCBcCiAJaW50ZWxfd2FrZXJlZi5oCiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjX2Z3LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF91Y19mdy5oCmluZGV4IGZmOThmODY2MWQ3Mi4uMjRlNjY0NjkxNTNjIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Y19mdy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VjX2Z3LmgKQEAgLTI1LDYgKzI1LDggQEAKICNpZm5kZWYgX0lO
VEVMX1VDX0ZXX0hfCiAjZGVmaW5lIF9JTlRFTF9VQ19GV19IXwogCisjaW5jbHVkZSA8bGludXgv
dHlwZXMuaD4KKwogc3RydWN0IGRybV9wcmludGVyOwogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
