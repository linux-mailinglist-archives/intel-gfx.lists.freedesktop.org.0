Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E62AD432C2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 07:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3AE489294;
	Thu, 13 Jun 2019 05:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9127389294
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 05:17:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 22:17:35 -0700
X-ExtLoop1: 1
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by orsmga008.jf.intel.com with ESMTP; 12 Jun 2019 22:17:34 -0700
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 22:47:22 -0700
Message-Id: <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight enable
 sequence.
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
Cc: Jani Nikula <jani.nikula@intel.com>,
	Cooper Chiou <cooper.chiou@intel.com>, Lee@freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9kaWZ5IGF1eCBiYWNrbGlnaHQgZW5hYmxlIHNlcXVlbmNlIGp1c3QgbGlrZSB3aGF0IHdlCmRp
ZCBmb3IgZ2VuZXJuYWwgZURQIHBhbmVsLgoxLiBTZXR1cCBQV00gZnJlcSBhbmQgYnJpZ2h0bmVz
cyBsZXZlbCBiZWZvcmUgZW5hYmxlIGRpc3BsYXkgYmFja2xpZ2h0LgoyLiBBZGQgVDggKHZhbGlk
IGRhdGEgdG8gYmFja2xpZ2h0IGVuYWJsZSkgZGVsYXkuCgpDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KQ2M6IEpvc2UgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+CkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+CgpTaWdu
ZWQtb2ZmLWJ5OiBMZWUsIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCA2ICsrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwppbmRleCA3ZGVkOTVhMzM0ZGIu
LmMxMTJlMGI5MzBkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBf
YXV4X2JhY2tsaWdodC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9i
YWNrbGlnaHQuYwpAQCAtMjE2LDggKzIxNiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhf
ZW5hYmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdAog
CQl9CiAJfQogCi0Jc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGludGVsX2RwLCB0cnVlKTsKIAlp
bnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChjb25uX3N0YXRlLCBjb25uZWN0b3ItPnBhbmVsLmJh
Y2tsaWdodC5sZXZlbCk7CisKKwl3YWl0X3JlbWFpbmluZ19tc19mcm9tX2ppZmZpZXMoaW50ZWxf
ZHAtPmxhc3RfcG93ZXJfb24sCisJCQkJICAgICAgIGludGVsX2RwLT5iYWNrbGlnaHRfb25fZGVs
YXkpOworCisJc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGludGVsX2RwLCB0cnVlKTsKIH0KIAog
c3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2Rpc2FibGVfYmFja2xpZ2h0KGNvbnN0IHN0cnVjdCBk
cm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZSkKLS0gCjIuNy40CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
