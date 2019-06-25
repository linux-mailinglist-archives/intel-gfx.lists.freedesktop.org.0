Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7D8552E5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1316E13A;
	Tue, 25 Jun 2019 15:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD1A6E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:07:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="164013694"
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by orsmga003.jf.intel.com with ESMTP; 25 Jun 2019 08:07:06 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 08:35:10 -0700
Message-Id: <1561476910-23655-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
References: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Refine eDP aux backlight
 enable/disable sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9kaWZ5IGF1eCBiYWNrbGlnaHQgZW5hYmxlL2Rpc2FibGUgc2VxdWVuY2UganVzdCBsaWtlIHdo
YXQgd2UKZGlkIGZvciBnZW5lcm5hbCBlRFAgcGFuZWwuIFNldHVwIFBXTSBmcmVxIGFuZCBicmln
aHRuZXNzIGxldmVsCmJlZm9yZSBlbmFibGUgZGlzcGxheSBiYWNrbGlnaHQuCgp2MjogQWNjb3Jk
aW5nIHRvIHNwZWMsIGl0IGlzIG5vdCBuZWNlc3NhcnkgdG8gc2V0IFBXTSB0byAwIGlmCiAgICBi
YWNrbGlnaHQgZW5hYmxlIGFscmVhZHkgb2ZmLiBSZW1vdmUgaW50ZWxfZHBfYXV4X3NldF9iYWNr
bGlnaHQgdG8gMC4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IEpvc2Ug
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBDb29wZXIgQ2hpb3Ug
PGNvb3Blci5jaGlvdUBpbnRlbC5jb20+CgpTaWduZWQtb2ZmLWJ5OiBMZWUgU2hhd24gQyA8c2hh
d24uYy5sZWVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwppbmRleCA2YjBiNzM0NzlmYjguLjcwZDliOWM5
NTg2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9h
dXhfYmFja2xpZ2h0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9hdXhfYmFja2xpZ2h0LmMKQEAgLTIxNiw4ICsyMTYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9k
cF9hdXhfZW5hYmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdAogCQl9CiAJfQogCi0Jc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGludGVsX2RwLCB0cnVl
KTsKIAlpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChjb25uX3N0YXRlLCBjb25uZWN0b3ItPnBh
bmVsLmJhY2tsaWdodC5sZXZlbCk7CisJc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGludGVsX2Rw
LCB0cnVlKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2Rpc2FibGVfYmFja2xpZ2h0
KGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZSkKLS0gCjIu
Ny40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
