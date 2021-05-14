Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F41D380A02
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87AE6EE74;
	Fri, 14 May 2021 12:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395D96EE6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:28 +0000 (UTC)
IronPort-SDR: NYYNnDeXc78JjL5RATzWWg3WwPLZSHSFxpulL0PzOb8UfpG4bpMoAjfPTqHUyoOHYtq+X1Lttg
 5ID90ddyf/vQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="187584470"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="187584470"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:20 -0700
IronPort-SDR: NX2Ucf2wbCvB2xyhIT3azUCL2FS9CosqGRdc3qT+JywiFNwWziXhMCcHFMfuthyLFhDat/VK+U
 RA2hd2Dwq5og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="436370011"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 14 May 2021 05:58:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:46 +0300
Message-Id: <20210514125751.17075-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/14] drm/i915: Simplify up vlv watermark
 sanitation
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGNhbiBzaW1wbGlmeSB0aGUgdmx2IHdhdGVybWFyayBzYW5pdGF0aW9uIGJ5IHJldXNpbmcgdGhl
CnNlY29uZCBoYWxmIG9mIHZsdl9jb21wdXRlX3BpcGVfd20oKSB0byBjb252ZXJ0IHRoZSBzYW5p
dGl6ZWQKcmF3IHdhdGVybWFya3MgaW50byB0aGUgcHJvcGVyIGZvcm0gdG8gYmUgdXNlZCBhcyB0
aGUKb3B0aW1hbC9pbnRlcm1lZGlhdGUgd2F0ZXJtYXJrcy4KCkFsc28gdG8gYmUgY29uc2lzdGVu
dCB3aXRoIG5vcm1hbCB3YXRlcm1hcmsgY29tcHV0YXRpb24gdGhlIHNhbml0aXplZAp3YXRlcm1h
cmtzIHNob3VsZCBiZSBhbGwgMCBmb3IgYW55IGRpc2FibGVkIHBsYW5lLiBQcmV2aW91c2x5IHdl
Cnplcm9lZCBvdXQgdGhlIHdhdGVybWFya3Mgb25seSB1cCB0byB0aGUgbGV2ZWwgKGllLiBQTTIv
NS9EVkRGUykKdGhhdCB3YXMgZW5hYmxlZC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyB8IDE1ICsrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBi
MmViYzVmZjAwMDcuLjY3NzZmZTQxYzQ0ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC02
NzAxLDMwICs2NzAxLDI3IEBAIHZvaWQgdmx2X3dtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0
ZSk7CiAJCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUgPQogCQkJdG9faW50
ZWxfcGxhbmVfc3RhdGUocGxhbmUtPmJhc2Uuc3RhdGUpOwotCQlzdHJ1Y3Qgdmx2X3dtX3N0YXRl
ICp3bV9zdGF0ZSA9ICZjcnRjX3N0YXRlLT53bS52bHYub3B0aW1hbDsKLQkJY29uc3Qgc3RydWN0
IHZsdl9maWZvX3N0YXRlICpmaWZvX3N0YXRlID0KLQkJCSZjcnRjX3N0YXRlLT53bS52bHYuZmlm
b19zdGF0ZTsKIAkJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsKLQkJaW50IGxl
dmVsOworCQlpbnQgbGV2ZWwsIG51bV9sZXZlbHMgPSBpbnRlbF93bV9udW1fbGV2ZWxzKGRldl9w
cml2KTsKIAogCQlpZiAocGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkKIAkJCWNvbnRpbnVlOwog
Ci0JCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8IHdtX3N0YXRlLT5udW1fbGV2ZWxzOyBsZXZlbCsr
KSB7CisJCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8IG51bV9sZXZlbHM7IGxldmVsKyspIHsKIAkJ
CXN0cnVjdCBnNHhfcGlwZV93bSAqcmF3ID0KIAkJCQkmY3J0Y19zdGF0ZS0+d20udmx2LnJhd1ts
ZXZlbF07CiAKIAkJCXJhdy0+cGxhbmVbcGxhbmVfaWRdID0gMDsKLQotCQkJd21fc3RhdGUtPndt
W2xldmVsXS5wbGFuZVtwbGFuZV9pZF0gPQotCQkJCXZsdl9pbnZlcnRfd21fdmFsdWUocmF3LT5w
bGFuZVtwbGFuZV9pZF0sCi0JCQkJCQkgICAgZmlmb19zdGF0ZS0+cGxhbmVbcGxhbmVfaWRdKTsK
IAkJfQogCX0KIAogCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGNydGMpIHsK
IAkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQogCQkJdG9faW50ZWxfY3J0
Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKKwkJaW50IHJldDsKKworCQlyZXQgPSBfdmx2X2Nv
bXB1dGVfcGlwZV93bShjcnRjX3N0YXRlKTsKKwkJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0s
IHJldCk7CiAKIAkJY3J0Y19zdGF0ZS0+d20udmx2LmludGVybWVkaWF0ZSA9CiAJCQljcnRjX3N0
YXRlLT53bS52bHYub3B0aW1hbDsKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
