Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C0939AD5B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 23:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F44F6F513;
	Thu,  3 Jun 2021 21:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886186F513
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 21:59:35 +0000 (UTC)
IronPort-SDR: RkGOM7jMUjXGS5OpYNqEP5/mOD1T+oc17kdm12CFKK1l0txRelEQBXL/0zPvhpF3uBqeNb89Ib
 +X0ol/fDGaWQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="202305163"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="202305163"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 14:59:33 -0700
IronPort-SDR: yC36YLLR2jC2SLqUXq4VR6QuL6uDlI7TY3a3Gl6HAI1af3WBdpN25KS8fjTnOBdd/zGWmkE6DC
 1vNIj+sDXKtw==
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="550854832"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Jun 2021 14:59:32 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Jun 2021 15:07:54 -0700
Message-Id: <20210603220754.13920-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Initialize the mbus_offset to fix
 static analysis issue
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
