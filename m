Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D09C35F839
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B9F6E95F;
	Wed, 14 Apr 2021 15:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB496E95F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:52:30 +0000 (UTC)
IronPort-SDR: yXwihT6+GErt4JEL2Xid66CapV47jZyJfS1Oa/SU5kglWDCZuwt/CIgq7XswVIpWKN4cwa/9yX
 as9STAz/298A==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181791689"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="181791689"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:30 -0700
IronPort-SDR: CBt/d1Yko05hT04Qb3R/URcfWR8uHud/Djo/wr99i1NPE4urK8etdx/7kda8zv+lHgZcMNdMGQ
 RcSfXvFD3Lmw==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="399226632"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 18:52:07 +0300
Message-Id: <20210414155208.3161335-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/adl_p: Require a minimum of 8
 tiles stride for DPT FBs
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

VGhlIHNwZWNpZmljYXRpb24gb25seSByZXF1aXJlcyBEUFQgRkIgc3RyaWRlcyB0byBiZSBQT1Qg
YWxpZ25lZCwgYnV0CnRoZXJlIHNlZW1zIHRvIGJlIGFsc28gYSBtaW5pbXVtIG9mIDggc3RyaWRl
IHRpbGUgcmVxdWlyZW1lbnQuIFNjYW5uaW5nCm91dCBGQnMgd2l0aCA8IDggc3RyaWRlIHRpbGVz
IHdpbGwgcmVzdWx0IGluIHBpcGUgZmF1bHRzIChldmVuIHRob3VnaAp0aGUgc3RyaWRlIGlzIFBP
VCBhbGlnbmVkKS4KClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KQWNrZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jIHwgNiArKysr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMKaW5kZXggYmQ4NjJmNzc3NjJhMi4uMmVl
MTBlY2UyN2M1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYwpAQCAt
NjA5LDcgKzYwOSwxMSBAQCBwbGFuZV92aWV3X2RzdF9zdHJpZGVfdGlsZXMoY29uc3Qgc3RydWN0
IGludGVsX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvbG9yX3BsYW5lLAogCQkJICAgIHVuc2lnbmVk
IGludCBwaXRjaF90aWxlcykKIHsKIAlpZiAoaW50ZWxfZmJfbmVlZHNfcG90X3N0cmlkZV9yZW1h
cChmYikpCi0JCXJldHVybiByb3VuZHVwX3Bvd19vZl90d28ocGl0Y2hfdGlsZXMpOworCQkvKgor
CQkgKiBBRExfUCwgdGhlIG9ubHkgcGxhdGZvcm0gbmVlZGluZyBhIFBPVCBzdHJpZGUgaGFzIGEg
bWluaW11bQorCQkgKiBvZiA4IHN0cmlkZSB0aWxlcy4KKwkJICovCisJCXJldHVybiByb3VuZHVw
X3Bvd19vZl90d28obWF4KHBpdGNoX3RpbGVzLCA4dSkpOwogCWVsc2UKIAkJcmV0dXJuIHBpdGNo
X3RpbGVzOwogfQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
