Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CE93809F8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A5C6EE69;
	Fri, 14 May 2021 12:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1ED96EE63
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:10 +0000 (UTC)
IronPort-SDR: +GIidYJfrM/g+qy9U3wtlhjNBUk66s4i42L5cgY9/ou0kxIA8h3l+C9g2QlDLgOnEgbGkajtW7
 5CjGMfI/dP+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="187293320"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="187293320"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:02 -0700
IronPort-SDR: Iu7yon1t27V2WqcRpQDEkUTLWvkfNEU6V6p4hk907ubh46eV0YkBm5ZAIIS2mEqfPaTdSlw4T0
 u7LofAbbjo3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="431701742"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 14 May 2021 05:58:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:57:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:40 +0300
Message-Id: <20210514125751.17075-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/14] drm/i915: Use u8 consistently for
 active_planes bitmask
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkJl
IGNvbnNpc3RlbnQgaW4gdGhhdCBhY3RpdmVfcGxhbmVzIGJpdG1hc2sgZml0cyBpbiBhIHU4LgoK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNiArKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKaW5kZXggMmZiNDk2ZmJlZDQzLi44YTA4YTdjMGU3MWYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwpAQCAtMTcwNiw3ICsxNzA2LDcgQEAgc3RhdGljIGludCB2bHZfY29tcHV0
ZV9maWZvKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWNvbnN0IHN0cnVj
dCBnNHhfcGlwZV93bSAqcmF3ID0KIAkJJmNydGNfc3RhdGUtPndtLnZsdi5yYXdbVkxWX1dNX0xF
VkVMX1BNMl07CiAJc3RydWN0IHZsdl9maWZvX3N0YXRlICpmaWZvX3N0YXRlID0gJmNydGNfc3Rh
dGUtPndtLnZsdi5maWZvX3N0YXRlOwotCXVuc2lnbmVkIGludCBhY3RpdmVfcGxhbmVzID0gY3J0
Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH5CSVQoUExBTkVfQ1VSU09SKTsKKwl1OCBhY3RpdmVf
cGxhbmVzID0gY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH5CSVQoUExBTkVfQ1VSU09SKTsK
IAlpbnQgbnVtX2FjdGl2ZV9wbGFuZXMgPSBod2VpZ2h0OChhY3RpdmVfcGxhbmVzKTsKIAljb25z
dCBpbnQgZmlmb19zaXplID0gNTExOwogCWludCBmaWZvX2V4dHJhLCBmaWZvX2xlZnQgPSBmaWZv
X3NpemU7CkBAIC0xODk4LDggKzE4OTgsOCBAQCBzdGF0aWMgaW50IHZsdl9jb21wdXRlX3BpcGVf
d20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJc3RydWN0IHZsdl93bV9z
dGF0ZSAqd21fc3RhdGUgPSAmY3J0Y19zdGF0ZS0+d20udmx2Lm9wdGltYWw7CiAJY29uc3Qgc3Ry
dWN0IHZsdl9maWZvX3N0YXRlICpmaWZvX3N0YXRlID0KIAkJJmNydGNfc3RhdGUtPndtLnZsdi5m
aWZvX3N0YXRlOwotCWludCBudW1fYWN0aXZlX3BsYW5lcyA9IGh3ZWlnaHQ4KGNydGNfc3RhdGUt
PmFjdGl2ZV9wbGFuZXMgJgotCQkJCQkgfkJJVChQTEFORV9DVVJTT1IpKTsKKwl1OCBhY3RpdmVf
cGxhbmVzID0gY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH5CSVQoUExBTkVfQ1VSU09SKTsK
KwlpbnQgbnVtX2FjdGl2ZV9wbGFuZXMgPSBod2VpZ2h0OChhY3RpdmVfcGxhbmVzKTsKIAlib29s
IG5lZWRzX21vZGVzZXQgPSBkcm1fYXRvbWljX2NydGNfbmVlZHNfbW9kZXNldCgmY3J0Y19zdGF0
ZS0+dWFwaSk7CiAJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3Rh
dGU7CiAJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGU7Ci0t
IAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
