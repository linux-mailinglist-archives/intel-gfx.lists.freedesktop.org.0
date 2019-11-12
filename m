Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC14AF92D0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:38:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C386EB2F;
	Tue, 12 Nov 2019 14:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8026EB2F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:38:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:38:08 -0800
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="198098012"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:38:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:38:02 +0200
Message-Id: <20191112143802.27227-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573227240.git.jani.nikula@intel.com>
References: <cover.1573227240.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/bios: change slice count check
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

RklYTUU6IGZpeHVwIHRvIG9yaWdpbmFsLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyB8IDEyICsrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jCmluZGV4IDUyMmMzOTk3NTNmZS4uY2RkMzBlZWRhN2JlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMjI2MCwxMSArMjI2MCw5IEBAIHN0YXRp
YyB2b2lkIGZpbGxfZHNjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkg
KgogCSAqIEFsc28sIHBlciBzcGVjIERTSSBzdXBwb3J0cyAxLCAyLCAzIG9yIDQgaG9yaXpvbnRh
bCBzbGljZXMuCiAJICovCi0JaWYgKGRzYy0+c2xpY2VzX3Blcl9saW5lICYgQklUKDIpICYmCi0J
ICAgIHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRpc3BsYXkgJSA0ID09IDAp
IHsKKwlpZiAoZHNjLT5zbGljZXNfcGVyX2xpbmUgJiBCSVQoMikpIHsKIAkJcGlwZV9jb25maWct
PmRzYy5zbGljZV9jb3VudCA9IDQ7Ci0JfSBlbHNlIGlmIChkc2MtPnNsaWNlc19wZXJfbGluZSAm
IEJJVCgxKSAmJgotCQkgICBwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hkaXNw
bGF5ICUgMiA9PSAwKSB7CisJfSBlbHNlIGlmIChkc2MtPnNsaWNlc19wZXJfbGluZSAmIEJJVCgx
KSkgewogCQlwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50ID0gMjsKIAl9IGVsc2UgewogCQkv
KiBGSVhNRSAqLwpAQCAtMjI3NCw2ICsyMjcyLDEyIEBAIHN0YXRpYyB2b2lkIGZpbGxfZHNjKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkJcGlwZV9jb25maWctPmRzYy5z
bGljZV9jb3VudCA9IDE7CiAJfQogCisJaWYgKHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2Rl
LmNydGNfaGRpc3BsYXkgJQorCSAgICBwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50ICE9IDAp
CisJCURSTV9ERUJVR19LTVMoIkRTQyBoZGlzcGxheSAlZCBub3QgZGl2aXNpYmxlIGJ5IHNsaWNl
IGNvdW50ICVkXG4iLAorCQkJICAgICAgcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGUuY3J0
Y19oZGlzcGxheSwKKwkJCSAgICAgIHBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY291bnQpOworCiAJ
LyogRklYTUU6IHJjX2J1ZmZlcl9ibG9ja19zaXplLCB1c2luZyBkZWZhdWx0cyBpbiBpbnRlbF92
ZHNjLmMgKi8KIAogCS8qIEZJWE1FOiByY19idWZmZXJfc2l6ZSwgdXNpbmcgZGVmYXVsdHMgaW4g
aW50ZWxfdmRzYy5jICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
