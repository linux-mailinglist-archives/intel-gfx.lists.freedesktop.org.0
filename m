Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E9C6D05F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479866E3F4;
	Thu, 18 Jul 2019 14:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCEE6E3F4;
 Thu, 18 Jul 2019 14:51:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 07:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,278,1559545200"; d="scan'208";a="169875897"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 18 Jul 2019 07:51:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 17:51:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 17:50:45 +0300
Message-Id: <20190718145053.25808-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190718145053.25808-1-ville.syrjala@linux.intel.com>
References: <20190718145053.25808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Extract
 intel_hdmi_limited_color_range()
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1
bGwgdGhlIGNvZGUgZm9yIGNvbXB1dGluZyB0aGUgbGltaXRlZCBjb2xvciByYW5nZQpzZXR0aW5n
IGludG8gYSBzbWFsbCBoZWxwZXIuIFdlJ2xsIGFkZCBhIGJpdCBtb3JlIHRvIGl0CmxhdGVyLgoK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDMw
ICsrKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwppbmRleCBiODEwMGNmMjFkZDAuLmNhMzc3YmEzYTE1ZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKQEAgLTIyOTcsNiArMjI5NywyNCBAQCBpbnRlbF9o
ZG1pX3ljYmNyNDIwX2NvbmZpZyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCXJl
dHVybiB0cnVlOwogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9oZG1pX2xpbWl0ZWRfY29sb3JfcmFu
Z2UoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQkJCSAgIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQoreworCWNvbnN0IHN0
cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0ZSA9CisJ
CXRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpOworCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KKwkJJmNydGNfc3RhdGUtPmJh
c2UuYWRqdXN0ZWRfbW9kZTsKKworCWlmIChpbnRlbF9jb25uX3N0YXRlLT5icm9hZGNhc3Rfcmdi
ID09IElOVEVMX0JST0FEQ0FTVF9SR0JfQVVUTykgeworCQkvKiBTZWUgQ0VBLTg2MS1FIC0gNS4x
IERlZmF1bHQgRW5jb2RpbmcgUGFyYW1ldGVycyAqLworCQlyZXR1cm4gY3J0Y19zdGF0ZS0+aGFz
X2hkbWlfc2luayAmJgorCQkJZHJtX2RlZmF1bHRfcmdiX3F1YW50X3JhbmdlKGFkanVzdGVkX21v
ZGUpID09CisJCQlIRE1JX1FVQU5USVpBVElPTl9SQU5HRV9MSU1JVEVEOworCX0gZWxzZSB7CisJ
CXJldHVybiBpbnRlbF9jb25uX3N0YXRlLT5icm9hZGNhc3RfcmdiID09IElOVEVMX0JST0FEQ0FT
VF9SR0JfTElNSVRFRDsKKwl9Cit9CisKIGludCBpbnRlbF9oZG1pX2NvbXB1dGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICAgICAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnLAogCQkJICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5fc3RhdGUpCkBAIC0yMzIzLDE2ICsyMzQxLDggQEAgaW50IGludGVsX2hkbWlfY29tcHV0
ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaWYgKHBpcGVfY29uZmln
LT5oYXNfaGRtaV9zaW5rKQogCQlwaXBlX2NvbmZpZy0+aGFzX2luZm9mcmFtZSA9IHRydWU7CiAK
LQlpZiAoaW50ZWxfY29ubl9zdGF0ZS0+YnJvYWRjYXN0X3JnYiA9PSBJTlRFTF9CUk9BRENBU1Rf
UkdCX0FVVE8pIHsKLQkJLyogU2VlIENFQS04NjEtRSAtIDUuMSBEZWZhdWx0IEVuY29kaW5nIFBh
cmFtZXRlcnMgKi8KLQkJcGlwZV9jb25maWctPmxpbWl0ZWRfY29sb3JfcmFuZ2UgPQotCQkJcGlw
ZV9jb25maWctPmhhc19oZG1pX3NpbmsgJiYKLQkJCWRybV9kZWZhdWx0X3JnYl9xdWFudF9yYW5n
ZShhZGp1c3RlZF9tb2RlKSA9PQotCQkJSERNSV9RVUFOVElaQVRJT05fUkFOR0VfTElNSVRFRDsK
LQl9IGVsc2UgewotCQlwaXBlX2NvbmZpZy0+bGltaXRlZF9jb2xvcl9yYW5nZSA9Ci0JCQlpbnRl
bF9jb25uX3N0YXRlLT5icm9hZGNhc3RfcmdiID09IElOVEVMX0JST0FEQ0FTVF9SR0JfTElNSVRF
RDsKLQl9CisJcGlwZV9jb25maWctPmxpbWl0ZWRfY29sb3JfcmFuZ2UgPQorCQlpbnRlbF9oZG1p
X2xpbWl0ZWRfY29sb3JfcmFuZ2UocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwogCiAJaWYgKGFk
anVzdGVkX21vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxDTEspIHsKIAkJcGlwZV9jb25m
aWctPnBpeGVsX211bHRpcGxpZXIgPSAyOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
