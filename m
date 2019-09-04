Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60925A868D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACFD6893A4;
	Wed,  4 Sep 2019 16:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E203893A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="194788058"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 04 Sep 2019 09:26:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:11 +0300
Message-Id: <20190904162625.15048-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] drm/edid: Add
 drm_hdmi_avi_infoframe_bars()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBhIGZ1bmN0aW9uIHRvIGZpbGwgdGhlIEFWSSBpbmZvZnJhbWUgYmFyIGluZm9ybWF0aW9uIGZy
b20KdGhlIHN0YW5kYXJkIHR2IG1hcmdpbiBwcm9wZXJ0aWVzLgoKU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWQuYyB8IDE3ICsrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2RybS9k
cm1fZWRpZC5oICAgICB8ICA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9lZGlkLmMKaW5kZXggODJhNGNlZWQzZmNmLi4xZTE2ZWUyMGNkMzEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZWRpZC5jCkBAIC01MjgyLDYgKzUyODIsMjMgQEAgZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9xdWFu
dF9yYW5nZShzdHJ1Y3QgaGRtaV9hdmlfaW5mb2ZyYW1lICpmcmFtZSwKIH0KIEVYUE9SVF9TWU1C
T0woZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9xdWFudF9yYW5nZSk7CiAKKy8qKgorICogZHJtX2hk
bWlfYXZpX2luZm9mcmFtZV9iYXJzKCkgLSBmaWxsIHRoZSBIRE1JIEFWSSBpbmZvZnJhbWUKKyAq
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmFyIGluZm9ybWF0aW9uCisgKiBAZnJh
bWU6IEhETUkgQVZJIGluZm9mcmFtZQorICogQGNvbm5fc3RhdGU6IGNvbm5lY3RvciBzdGF0ZQor
ICovCit2b2lkCitkcm1faGRtaV9hdmlfaW5mb2ZyYW1lX2JhcnMoc3RydWN0IGhkbWlfYXZpX2lu
Zm9mcmFtZSAqZnJhbWUsCisJCQkgICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5fc3RhdGUpCit7CisJZnJhbWUtPnJpZ2h0X2JhciA9IGNvbm5fc3RhdGUtPnR2Lm1hcmdp
bnMucmlnaHQ7CisJZnJhbWUtPmxlZnRfYmFyID0gY29ubl9zdGF0ZS0+dHYubWFyZ2lucy5sZWZ0
OworCWZyYW1lLT50b3BfYmFyID0gY29ubl9zdGF0ZS0+dHYubWFyZ2lucy50b3A7CisJZnJhbWUt
PmJvdHRvbV9iYXIgPSBjb25uX3N0YXRlLT50di5tYXJnaW5zLmJvdHRvbTsKK30KK0VYUE9SVF9T
WU1CT0woZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9iYXJzKTsKKwogc3RhdGljIGVudW0gaGRtaV8z
ZF9zdHJ1Y3R1cmUKIHMzZF9zdHJ1Y3R1cmVfZnJvbV9kaXNwbGF5X21vZGUoY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCiB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
ZWRpZC5oIGIvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAppbmRleCBiOTcxOTQxOGMzZDIuLmUwNzAx
YjNkMzE5NCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAorKysgYi9pbmNsdWRl
L2RybS9kcm1fZWRpZC5oCkBAIC0zNjcsNiArMzY3LDEwIEBAIHZvaWQKIGRybV9oZG1pX2F2aV9p
bmZvZnJhbWVfY29sb3JzcGFjZShzdHJ1Y3QgaGRtaV9hdmlfaW5mb2ZyYW1lICpmcmFtZSwKIAkJ
CQkgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKTsKIAordm9p
ZAorZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9iYXJzKHN0cnVjdCBoZG1pX2F2aV9pbmZvZnJhbWUg
KmZyYW1lLAorCQkJICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0
YXRlKTsKKwogdm9pZAogZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9xdWFudF9yYW5nZShzdHJ1Y3Qg
aGRtaV9hdmlfaW5mb2ZyYW1lICpmcmFtZSwKIAkJCQkgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
