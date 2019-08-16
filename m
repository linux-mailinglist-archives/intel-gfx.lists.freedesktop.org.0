Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5988FD04
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C16B6EB1C;
	Fri, 16 Aug 2019 08:05:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346DF6EB0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851486"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:39 -0700
Message-Id: <20190816080503.28594-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/39] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpTYW1l
IGFzIGZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKCkgYnV0IGl0ZXJhdGVzIGlu
IHJldmVyc2UKb3JkZXIuCgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMTAg
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IGZkMzA0M2U3N2I1MC4u
YzAxOTczODBhODcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaApAQCAtNDExLDYgKzQxMSw3IEBAIGVudW0gcGh5X2ZpYSB7CiAJICAgICAoX19pKSsr
KSBcCiAJCWZvcl9lYWNoX2lmKGNydGMpCiAKKwogI2RlZmluZSBmb3JfZWFjaF9uZXdfaW50ZWxf
Y29ubmVjdG9yX2luX3N0YXRlKF9fc3RhdGUsIGNvbm5lY3RvciwgbmV3X2Nvbm5lY3Rvcl9zdGF0
ZSwgX19pKSBcCiAJZm9yICgoX19pKSA9IDA7IFwKIAkgICAgIChfX2kpIDwgKF9fc3RhdGUpLT5i
YXNlLm51bV9jb25uZWN0b3I7IFwKQEAgLTQxOSw2ICs0MjAsMTUgQEAgZW51bSBwaHlfZmlhIHsK
IAkJCSAgICAgKChjb25uZWN0b3IpID0gdG9faW50ZWxfY29ubmVjdG9yKChfX3N0YXRlKS0+YmFz
ZS5jb25uZWN0b3JzW19faV0ucHRyKSwgXAogCQkJICAgICAobmV3X2Nvbm5lY3Rvcl9zdGF0ZSkg
PSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19zdGF0ZSktPmJhc2UuY29ubmVj
dG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQogCisjZGVmaW5lIGZvcl9lYWNoX29sZG5ld19pbnRl
bF9jcnRjX2luX3N0YXRlX3JldmVyc2UoX19zdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5l
d19jcnRjX3N0YXRlLCBfX2kpIFwKKwlmb3IgKChfX2kpID0gKF9fc3RhdGUpLT5iYXNlLmRldi0+
bW9kZV9jb25maWcubnVtX2NydGMgLSAxOyBcCisJICAgICAoX19pKSA+PSAwICAmJiBcCisJICAg
ICAoKGNydGMpID0gdG9faW50ZWxfY3J0YygoX19zdGF0ZSktPmJhc2UuY3J0Y3NbX19pXS5wdHIp
LCBcCisJICAgICAgKG9sZF9jcnRjX3N0YXRlKSA9IHRvX2ludGVsX2NydGNfc3RhdGUoKF9fc3Rh
dGUpLT5iYXNlLmNydGNzW19faV0ub2xkX3N0YXRlKSwgXAorCSAgICAgIChuZXdfY3J0Y19zdGF0
ZSkgPSB0b19pbnRlbF9jcnRjX3N0YXRlKChfX3N0YXRlKS0+YmFzZS5jcnRjc1tfX2ldLm5ld19z
dGF0ZSksIDEpOyBcCisJICAgICAoX19pKS0tKSBcCisJCWZvcl9lYWNoX2lmKGNydGMpCisKIHZv
aWQgaW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYnBwLCBpbnQgbmxhbmVzLAogCQkJICAgIGlu
dCBwaXhlbF9jbG9jaywgaW50IGxpbmtfY2xvY2ssCiAJCQkgICAgc3RydWN0IGludGVsX2xpbmtf
bV9uICptX24sCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
