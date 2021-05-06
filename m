Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6FC375856
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 18:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C76E16E7D9;
	Thu,  6 May 2021 16:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202086E7D1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 16:19:35 +0000 (UTC)
IronPort-SDR: RzDdJTCiEMMq6mGEwGwkw5X8BKuDr8Wvj7awNTvwQnaIihUbQVdWsAYaxxDErbnb3ptmhvh1FU
 r8h21uW669VQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="195395914"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="195395914"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:34 -0700
IronPort-SDR: vhfHWpfmdXjL63H9EfUgmPSNnT7mkn6VwhoUtSz+fHvXonCU7LRWtQ5TFD+DXxOWn4aJDi+NLV
 sQE1apZOF7+Q==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="407072117"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 09:19:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 May 2021 19:19:21 +0300
Message-Id: <20210506161930.309688-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210506161930.309688-1-imre.deak@intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/10] drm/i915/xelpd: add XE_LPD display
 characteristics
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

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkxldCdzIHN0YXJ0
IHByZXBhcmluZyBmb3IgdXBjb21pbmcgcGxhdGZvcm1zIHRoYXQgd2lsbCB1c2UgYW4gWEVfTFBE
CmRlc2lnbi4KCnYyOgogLSBVc2UgdGhlIG5vdy1wcmVmZXJyZWQgIlhFX0xQRCIgdGVybSB0byBy
ZWZlciB0byB0aGlzIGRlc2lnbgogLSBVdGlsaXplIERJU1BMQVlfVkVSKCkgcmF0aGVyIHRoYW4g
YSBmZWF0dXJlIGZsYWcKIC0gRHJvcCB1bnVzZWQgbWJ1c19zaXplIGZpZWxkIChMdWNhcykKdjM6
CiAtIEFkanVzdCBmb3IgZGJ1Zi57c2l6ZSxzbGljZV9tYXNrfSAoVmlsbGUpCgpTaWduZWQtb2Zm
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ICh2MikKU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oIHwgIDIgKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgICAgICAgICAgIHwgMTAgKysrKysrKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAppbmRleCBmM2NhNWQ1Yzk3
NzgxLi5hY2Y0NzI1MmQ5ZTc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaApAQCAtMzgwLDYgKzM4MCw4IEBAIGludGVsX2Rpc3Bs
YXlfcG93ZXJfcHV0X2FsbF9pbl9zZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiBl
bnVtIGRidWZfc2xpY2UgewogCURCVUZfUzEsCiAJREJVRl9TMiwKKwlEQlVGX1MzLAorCURCVUZf
UzQsCiAJSTkxNV9NQVhfREJVRl9TTElDRVMKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmlu
ZGV4IGM2NzhlMDY2M2Q4MDguLjAwZTE1ZmUwMGY0ZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YwpAQCAtOTM5LDYgKzkzOSwxNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9p
bmZvIGFkbF9zX2luZm8gPSB7CiAJLmRtYV9tYXNrX3NpemUgPSA0NiwKIH07CiAKKyNkZWZpbmUg
WEVfTFBEX0ZFQVRVUkVTIFwKKwkuZGlzcGxheS52ZXIgPSAxMywJCQkJCQlcCisJLmRpc3BsYXku
aGFzX3Bzcl9od190cmFja2luZyA9IDAsCQkJCVwKKwkuYWJveF9tYXNrID0gR0VOTUFTSygxLCAw
KSwJCQkJCVwKKwkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQ
SVBFX0MpIHwgQklUKFBJUEVfRCksIFwKKwkuY3B1X3RyYW5zY29kZXJfbWFzayA9IEJJVChUUkFO
U0NPREVSX0EpIHwgQklUKFRSQU5TQ09ERVJfQikgfAlcCisJCUJJVChUUkFOU0NPREVSX0MpIHwg
QklUKFRSQU5TQ09ERVJfRCksCQkJXAorCS5kYnVmLnNpemUgPSA0MDk2LAkJCQkJCVwKKwkuZGJ1
Zi5zbGljZV9tYXNrID0gQklUKERCVUZfUzEpIHwgQklUKERCVUZfUzIpIHwgQklUKERCVUZfUzMp
IHwgQklUKERCVUZfUzQpCisKICN1bmRlZiBHRU4KICN1bmRlZiBQTEFURk9STQogCi0tIAoyLjI3
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
