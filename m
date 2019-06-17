Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AA847EC6
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DB0891A4;
	Mon, 17 Jun 2019 09:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D858919F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:31 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:03 +0300
Message-Id: <20190617095108.22118-7-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: make intel_guc_ct.h
 self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfY3QuaCAgICAgICB8IDYgKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
LmhlYWRlci10ZXN0CmluZGV4IDA5NjFiNjYxZGYwOS4uMzE1ZjBiN2QwNDA2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdApAQCAtMjAsNiArMjAsNyBAQCBoZWFk
ZXJfdGVzdCA6PSBcCiAJaTkxNV92Z3B1LmggXAogCWludGVsX2Nzci5oIFwKIAlpbnRlbF9kcnYu
aCBcCisJaW50ZWxfZ3VjX2N0LmggXAogCWludGVsX3BtLmggXAogCWludGVsX3J1bnRpbWVfcG0u
aCBcCiAJaW50ZWxfc2lkZWJhbmQuaCBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19jdC5oCmlu
ZGV4IDQxYmE1OTNhNGRmNy4uZDdiOGMxMjIzOTY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ndWNfY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfY3QuaApAQCAtMjQsMTEgKzI0LDEzIEBACiAjaWZuZGVmIF9JTlRFTF9HVUNfQ1RfSF8KICNk
ZWZpbmUgX0lOVEVMX0dVQ19DVF9IXwogCi1zdHJ1Y3QgaW50ZWxfZ3VjOwotc3RydWN0IGk5MTVf
dm1hOworI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+CisjaW5jbHVkZSA8bGludXgvd29ya3F1
ZXVlLmg+CiAKICNpbmNsdWRlICJpbnRlbF9ndWNfZndpZi5oIgogCitzdHJ1Y3QgaTkxNV92bWE7
CisKIC8qKgogICogRE9DOiBDb21tYW5kIFRyYW5zcG9ydCAoQ1QpLgogICoKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
