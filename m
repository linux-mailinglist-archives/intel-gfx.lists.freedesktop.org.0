Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1939520FFAE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 754456E504;
	Tue, 30 Jun 2020 21:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2AF6E504
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:25 +0000 (UTC)
IronPort-SDR: HR3EGZ+ivBNRDh51oPwffPEMYNVRTIVB2NAXiKURlium0lDqOnw4SIX51+LyNC6t3y/RxJrAzJ
 9hMwa0U7SNuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="145459928"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="145459928"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:25 -0700
IronPort-SDR: f6HwnviC8hKlAVfilzk7BJBbg07LSaJlUsrrOGMLo8HfmaJm+WL9XPQNJGTci2HRovIqInA8IK
 Cric2xU6r4Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="281377543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2020 14:56:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:56 +0300
Message-Id: <20200630215601.28557-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Configure GEN11_{TBT,
 TC}_HOTPLUG_CTL for ports TC5/6
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmdl
bjExX2hwZF9kZXRlY3Rpb25fc2V0dXAoKSBpcyBtaXNzaW5nIHBvcnRzIFRDNS82LiBBZGQgdGhl
bS4KClRPRE86IE1pZ2h0IGJlIG5pY2UgdG8gb25seSBlbmFibGUgdGhlIGhwZCBkZXRlY3Rpb24g
bG9naWMKZm9yIHBvcnRzIHdlIGFjdHVhbGx5IGhhdmUuIFNob3VsZCBiZSByb2xsZWQgb3V0IGZv
ciBhbGwKcGxhdGZvcm1zIGlmL3doZW4gZG9uZS4uLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jIHwgOCArKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCBhZDUy
MTA5Yzc0N2QuLjgzOWFlNjc0YmM0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0zMTA5
LDE0ICszMTA5LDE4IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9kZXRlY3Rpb25fc2V0dXAoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWhvdHBsdWcgfD0gR0VOMTFfSE9UUExV
R19DVExfRU5BQkxFKFBPUlRfVEMxKSB8CiAJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQ
T1JUX1RDMikgfAogCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzMpIHwKLQkJ
ICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEM0KTsKKwkJICAgR0VOMTFfSE9UUExV
R19DVExfRU5BQkxFKFBPUlRfVEM0KSB8CisJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQ
T1JUX1RDNSkgfAorCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzYpOwogCUk5
MTVfV1JJVEUoR0VOMTFfVENfSE9UUExVR19DVEwsIGhvdHBsdWcpOwogCiAJaG90cGx1ZyA9IEk5
MTVfUkVBRChHRU4xMV9UQlRfSE9UUExVR19DVEwpOwogCWhvdHBsdWcgfD0gR0VOMTFfSE9UUExV
R19DVExfRU5BQkxFKFBPUlRfVEMxKSB8CiAJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQ
T1JUX1RDMikgfAogCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzMpIHwKLQkJ
ICAgR0VOMTFfSE9UUExVR19DVExfRU5BQkxFKFBPUlRfVEM0KTsKKwkJICAgR0VOMTFfSE9UUExV
R19DVExfRU5BQkxFKFBPUlRfVEM0KSB8CisJCSAgIEdFTjExX0hPVFBMVUdfQ1RMX0VOQUJMRShQ
T1JUX1RDNSkgfAorCQkgICBHRU4xMV9IT1RQTFVHX0NUTF9FTkFCTEUoUE9SVF9UQzYpOwogCUk5
MTVfV1JJVEUoR0VOMTFfVEJUX0hPVFBMVUdfQ1RMLCBob3RwbHVnKTsKIH0KIAotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
