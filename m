Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC030EA8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 15:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1970189491;
	Fri, 31 May 2019 13:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B9389491
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 13:12:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 06:12:27 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 06:12:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 16:15:02 +0300
Message-Id: <9a7f41aab894d7e96d8ad4776cf14f94cfd17d04.1559308269.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1559308269.git.jani.nikula@intel.com>
References: <cover.1559308269.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 12/13] drm/i915/bios: add more LFP options
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

QWRkIG5ldyBmaWVsZHMgaW4gdGhlIExGUCBibG9jay4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoK
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaCB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
dmJ0X2RlZnMuaAppbmRleCBlYTE2OTdhYjAwZDIuLjZkNDZjYTRiZjhjNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oCkBAIC02NzAsNyArNjcwLDcgQEAgc3RydWN0IGJkYl9l
ZHAgewogCiBzdHJ1Y3QgYmRiX2x2ZHNfb3B0aW9ucyB7CiAJdTggcGFuZWxfdHlwZTsKLQl1OCBy
c3ZkMTsKKwl1OCBwYW5lbF90eXBlMjsJCQkJCQkvKiAyMTIgKi8KIAkvKiBMVkRTIGNhcGFiaWxp
dGllcywgc3RvcmVkIGluIGEgZHdvcmQgKi8KIAl1OCBwZml0X21vZGU6MjsKIAl1OCBwZml0X3Rl
eHRfbW9kZV9lbmhhbmNlZDoxOwpAQCAtNjkyLDYgKzY5Miw5IEBAIHN0cnVjdCBiZGJfbHZkc19v
cHRpb25zIHsKIAl1MzIgZHBzX3BhbmVsX3R5cGVfYml0czsKIAkvKiBMVkRTIGJhY2tsaWdodCBj
b250cm9sIHR5cGUgYml0cyBzdG9yZWQgaGVyZSAqLwogCXUzMiBibHRfY29udHJvbF90eXBlX2Jp
dHM7CisKKwl1MTYgbGNkdmNjX3MwX2VuYWJsZTsJCQkJCS8qIDIwMCAqLworCXUzMiByb3RhdGlv
bjsJCQkJCQkvKiAyMjggKi8KIH0gX19wYWNrZWQ7CiAKIC8qCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
