Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C467D39AD15
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 23:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A259E6E7FE;
	Thu,  3 Jun 2021 21:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACFE6E7FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 21:45:37 +0000 (UTC)
IronPort-SDR: SocyqpBnXCCgL/sacEOT3Aw7Fu8+YkLFV+d7B2/lX51C6FixlE5XG3CrWA/rO2u//+kZKfQ38C
 aQRpuH+2KA7w==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="225469760"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="225469760"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 14:45:31 -0700
IronPort-SDR: Y8y8aPoCOEJo01cYYIr1zLh0NRLTqj2rNRSf8RkgIt1fRvgjpvApWPZbxBMAiXuqAba+mVd9f6
 qtRBBxPTu1YQ==
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="550322201"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Jun 2021 14:45:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Jun 2021 14:53:38 -0700
Message-Id: <20210603215338.13804-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Initialize the mbus_offset to fix
 Klockwork issue
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

U3RhdGljIGFuYWx5c2lzIGlkZW50aWZpZWQgYW4gaXNzdWUgaW4gc2tsX2NydGNfYWxsb2NhdGVf
ZGRiIHdoZXJlCm1idXNfb2Zmc2V0IG1heSBiZSB1c2VkIHVuaW5pdGlhbGl6ZWQuClRoaXMgcGF0
Y2ggZml4ZXMgaXQuCgpGaXhlczogODM1YzE3NmNiMWM0ICgiZHJtL2k5MTU6IEludHJvZHVjZSBN
QlVTIHJlbGF0aXZlIGRidWYgb2Zmc2V0cyIpCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5h
c2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAwMGYzZGVhZDIwYWQuLmEzODViOGI3NDE0ZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC00MTYzLDcgKzQxNjMsNyBAQCBza2xfY3J0Y19h
bGxvY2F0ZV9kZGIoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwogCXN0
cnVjdCBza2xfZGRiX2VudHJ5IGRkYl9zbGljZXM7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5w
aXBlOwotCXVuc2lnbmVkIGludCBtYnVzX29mZnNldDsKKwl1bnNpZ25lZCBpbnQgbWJ1c19vZmZz
ZXQgPSAwOwogCXUzMiBkZGJfcmFuZ2Vfc2l6ZTsKIAl1MzIgZGJ1Zl9zbGljZV9tYXNrOwogCXUz
MiBzdGFydCwgZW5kOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
