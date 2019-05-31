Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C689830EA7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 15:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1036E894D4;
	Fri, 31 May 2019 13:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1391894A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 13:12:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 06:12:24 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 06:12:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 16:15:01 +0300
Message-Id: <7ab46e3f53fd2c12cb60b9eabbebb65b27004a9e.1559308269.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1559308269.git.jani.nikula@intel.com>
References: <cover.1559308269.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/bios: add VBT swing bit to child
 device definition
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

TmV3IGJpdCB0byBsb29rIGluIGFub3RoZXIgQkRCIGJsb2NrIGZvciBtb3JlLiBObyBmdW5jdGlv
bmFsIGNoYW5nZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oIHwgMyArKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdmJ0X2RlZnMuaAppbmRleCA2MDhmYTQxMzUyNjIuLmVhMTY5N2FiMDBkMiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oCkBAIC0zOTEsNyArMzkxLDggQEAg
c3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgewogCQkJdTggbHNwY29uOjE7CQkJCS8qIDE5MiAq
LwogCQkJdTggaWJvb3N0OjE7CQkJCS8qIDE5NiAqLwogCQkJdTggaHBkX2ludmVydDoxOwkJCS8q
IDE5NiAqLwotCQkJdTggZmxhZ19yZXNlcnZlZDozOworCQkJdTggdXNlX3ZidF92c3dpbmc6MTsJ
CQkvKiAyMTggKi8KKwkJCXU4IGZsYWdfcmVzZXJ2ZWQ6MjsKIAkJCXU4IGhkbWlfc3VwcG9ydDox
OwkJCS8qIDE1OCAqLwogCQkJdTggZHBfc3VwcG9ydDoxOwkJCS8qIDE1OCAqLwogCQkJdTggdG1k
c19zdXBwb3J0OjE7CQkJLyogMTU4ICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
