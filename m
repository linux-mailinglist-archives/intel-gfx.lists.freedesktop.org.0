Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41020227F71
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 13:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6F136E184;
	Tue, 21 Jul 2020 11:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159D389DBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 11:57:27 +0000 (UTC)
IronPort-SDR: OVv89KJFsKUC14JcE5pbrTOGm9UoeN0r2W8GrUA7obGJ3FczxiiXzgMvdrEo45/+EKpPCat8sW
 MCP6TMectbdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="148046758"
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="148046758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 04:57:26 -0700
IronPort-SDR: EO88+4RwU8kD8A4Ton9B4VVGMHhWCIot01OOBvZLBAM4vDKEAOgRltq45nspEGppEJ1DC2dbVO
 wur1yTibTHQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="318317727"
Received: from anusha.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 21 Jul 2020 04:57:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 04:43:20 -0700
Message-Id: <20200721114320.10494-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200721114320.10494-1-anusha.srivatsa@intel.com>
References: <20200721114320.10494-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Load DMC firmware v2.07 for
 Tigerlake
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

QnVtcCBUR0wgRE1DIHZlcnNpb24gdG8gMi4wNy4gdGhpcyBuZXcgdmVyc2lvbiBoYXMgcG93ZXIK
c2F2aW5nIGVuaGFuY2VtZW50cy4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3NyLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMKaW5kZXggZjIy
YTc2NDVjMjQ5Li5lYjc0ZWIxMjMxNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3NyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jc3IuYwpAQCAtNDQsOCArNDQsOCBAQAogI2RlZmluZSBSS0xfQ1NSX1ZFUlNJT05fUkVR
VUlSRUQJQ1NSX1ZFUlNJT04oMiwgMSkKIE1PRFVMRV9GSVJNV0FSRShSS0xfQ1NSX1BBVEgpOwog
Ci0jZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNi5iaW4iCi0jZGVm
aW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCA2KQorI2RlZmluZSBU
R0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3ZlcjJfMDcuYmluIgorI2RlZmluZSBUR0xfQ1NS
X1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgNykKICNkZWZpbmUgVEdMX0NTUl9NQVhf
RldfU0laRQkJMHg2MDAwCiBNT0RVTEVfRklSTVdBUkUoVEdMX0NTUl9QQVRIKTsKIAotLSAKMi4y
NS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
