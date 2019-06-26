Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF5556C45
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE356E456;
	Wed, 26 Jun 2019 14:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1E16E453
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:37:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183183232"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:37:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:40:12 +0300
Message-Id: <20190626144020.2155-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626144020.2155-1-jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 05/13] drm/i915: make i915_globals.h
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
L2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2xvYmFscy5oICAgICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVz
dCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4IDhmNjE3
ZDVmNWQ1OS4uMmY4MDJkNWEzNzc3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5o
ZWFkZXItdGVzdApAQCAtOCw2ICs4LDcgQEAgaGVhZGVyX3Rlc3QgOj0gXAogCWk5MTVfZHJ2Lmgg
XAogCWk5MTVfZml4ZWQuaCBcCiAJaTkxNV9nZW1fZ3R0LmggXAorCWk5MTVfZ2xvYmFscy5oIFwK
IAlpOTE1X2lycS5oIFwKIAlpOTE1X3BhcmFtcy5oIFwKIAlpOTE1X3ByaW9saXN0X3R5cGVzLmgg
XApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nbG9iYWxzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dsb2JhbHMuaAppbmRleCAwNGMxY2UxMDdmYzAuLjJkMTk5
ZjQxMWE0YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nbG9iYWxzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nbG9iYWxzLmgKQEAgLTcsNiArNyw4IEBA
CiAjaWZuZGVmIF9JOTE1X0dMT0JBTFNfSF8KICNkZWZpbmUgX0k5MTVfR0xPQkFMU19IXwogCisj
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKwogdHlwZWRlZiB2b2lkICgqaTkxNV9nbG9iYWxfZnVu
Y190KSh2b2lkKTsKIAogc3RydWN0IGk5MTVfZ2xvYmFsIHsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
