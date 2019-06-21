Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7AD4DF3A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9359D6E7EF;
	Fri, 21 Jun 2019 02:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CC26E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:56:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:56:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="154322637"
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by orsmga008.jf.intel.com with ESMTP; 20 Jun 2019 19:56:47 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 20:24:46 -0700
Message-Id: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight
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
YXQgd2UKZGlkIGZvciBnZW5lcm5hbCBlRFAgcGFuZWwuCjEuIFNldHVwIFBXTSBmcmVxIGFuZCBi
cmlnaHRuZXNzIGxldmVsIGJlZm9yZSBlbmFibGUgZGlzcGxheSBiYWNrbGlnaHQuCjIuIFNldCBQ
V00gdG8gMCBhZnRlciBiYWNrbGlnaHQgZW5hYmxlIHdhcyBvZmYuCgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CkNjOiBKb3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgpDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgoKU2ln
bmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDMgKyst
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQu
YwppbmRleCA2YjBiNzM0NzlmYjguLmJiYzU3OTczNDIzOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKQEAgLTIxNiwx
MyArMjE2LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9lbmFibGVfYmFja2xpZ2h0KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0CiAJCX0KIAl9CiAKLQlzZXRfYXV4
X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwogCWludGVsX2RwX2F1eF9zZXRfYmFj
a2xpZ2h0KGNvbm5fc3RhdGUsIGNvbm5lY3Rvci0+cGFuZWwuYmFja2xpZ2h0LmxldmVsKTsKKwlz
ZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwogfQogCiBzdGF0aWMgdm9p
ZCBpbnRlbF9kcF9hdXhfZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRlKQogewogCXNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShl
bmNfdG9faW50ZWxfZHAob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5jb2RlciksIGZhbHNlKTsKKwlp
bnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChvbGRfY29ubl9zdGF0ZSwgMCk7CiB9CiAKIHN0YXRp
YyBpbnQgaW50ZWxfZHBfYXV4X3NldHVwX2JhY2tsaWdodChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IsCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
