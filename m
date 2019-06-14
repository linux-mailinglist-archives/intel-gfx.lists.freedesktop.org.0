Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1434B45417
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 07:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0FC8926E;
	Fri, 14 Jun 2019 05:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1298926E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 05:39:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 22:39:41 -0700
X-ExtLoop1: 1
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2019 22:39:40 -0700
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 23:09:25 -0700
Message-Id: <1560492565-30405-2-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
References: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add backlight enable on/off delay
 for DP aux backlight control
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Lee@freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9sbG93IGdlbmVybGEgZURQIGJhY2tsaWdodCBlbmFibGUgY29udHJvbCBzZXF1ZW5jZS4gQWRk
IFQ4ICh2YWxpZCB2aWRlbwpkYXRhIHRvIGJhY2tsaWdodCBlbmFibGUpIGRlbGF5IGJlZm9yZSB0
dXJuIGJhY2tsaWdodF9lbmFibGUgb24uCkFuZCBUOSAoYmFja2xpZ2h0IGRpc2FibGUgdG8gZW5k
IG9mIHZhbGlkYSB2aWRlbyBkYXRhKSBkZWxheSBhZnRlcgpiYWNrbGlnaHRfZW5hYmxlIG9mZi4K
CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IEpvc2UgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlv
dUBpbnRlbC5jb20+CgpTaWduZWQtb2ZmLWJ5OiBMZWUsIFNoYXduIEMgPHNoYXduLmMubGVlQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0
LmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwppbmRleCA5
ODIxMGFlMTcyODUuLmIwMDhlODg3ZjRlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RwX2F1eF9iYWNrbGlnaHQuYwpAQCAtMjE3LDEyICsyMTcsMjUgQEAgc3RhdGljIHZvaWQg
aW50ZWxfZHBfYXV4X2VuYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3QKIAl9CiAKIAlpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChjb25uX3N0YXRl
LCBjb25uZWN0b3ItPnBhbmVsLmJhY2tsaWdodC5sZXZlbCk7CisKKwl3YWl0X3JlbWFpbmluZ19t
c19mcm9tX2ppZmZpZXMoaW50ZWxfZHAtPmxhc3RfcG93ZXJfb24sCisJCQkJICAgICAgIGludGVs
X2RwLT5iYWNrbGlnaHRfb25fZGVsYXkpOworCiAJc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGlu
dGVsX2RwLCB0cnVlKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2Rpc2FibGVfYmFj
a2xpZ2h0KGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZSkK
IHsKKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0
b3Iob2xkX2Nvbm5fc3RhdGUtPmNvbm5lY3Rvcik7CisJc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCA9IGVuY190b19pbnRlbF9kcCgmY29ubmVjdG9yLT5lbmNvZGVyLT5iYXNlKTsKKworCWludGVs
X2RwLT5sYXN0X2JhY2tsaWdodF9vZmYgPSBqaWZmaWVzOworCiAJc2V0X2F1eF9iYWNrbGlnaHRf
ZW5hYmxlKGVuY190b19pbnRlbF9kcChvbGRfY29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVyKSwgZmFs
c2UpOworCisJd2FpdF9yZW1haW5pbmdfbXNfZnJvbV9qaWZmaWVzKGludGVsX2RwLT5sYXN0X2Jh
Y2tsaWdodF9vZmYsCisJCQkJICAgICAgIGludGVsX2RwLT5iYWNrbGlnaHRfb2ZmX2RlbGF5KTsK
KwogCWludGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KG9sZF9jb25uX3N0YXRlLCAwKTsKIH0KIAot
LSAKMi43LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
