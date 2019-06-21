Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1F84DF24
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0FE6E7EF;
	Fri, 21 Jun 2019 02:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 291766E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:34:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:34:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="168695727"
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jun 2019 19:34:10 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 20:02:08 -0700
Message-Id: <1561086128-19145-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
References: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
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
YXQgd2UKZGlkIGZvciBnZW5lcm5hbCBlRFAgcGFuZWwuCjEuIFNldHVwIFBXTSBmcmVxIGFuZCBi
cmlnaHRuZXNzIGxldmVsIGJlZm9yZSBlbmFibGUgZGlzcGxheSBiYWNrbGlnaHQuCjIuIFNldCBQ
V00gdG8gMCBhZnRlciBiYWNrbGlnaHQgZW5hYmxlIHdhcyBvZmYuCgp2MjogQ29kZSBzdHJ1Y3R1
cmUgd2FzIGNoYW5nZWQuIE1vZGlmeSB0aGlzIHBhdGNoIHRvIGFsaWduIHRoZSBsYXRlc3QuCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBKb3NlIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VA
aW50ZWwuY29tPgoKU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNr
bGlnaHQuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2F1eF9iYWNrbGlnaHQuYwppbmRleCA2YjBiNzM0NzlmYjguLmJiYzU3OTczNDIzOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xp
Z2h0LmMKQEAgLTIxNiwxMyArMjE2LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9lbmFi
bGVfYmFja2xpZ2h0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0CiAJCX0K
IAl9CiAKLQlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwogCWludGVs
X2RwX2F1eF9zZXRfYmFja2xpZ2h0KGNvbm5fc3RhdGUsIGNvbm5lY3Rvci0+cGFuZWwuYmFja2xp
Z2h0LmxldmVsKTsKKwlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwog
fQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhfZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRlKQogewogCXNldF9hdXhfYmFj
a2xpZ2h0X2VuYWJsZShlbmNfdG9faW50ZWxfZHAob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5jb2Rl
ciksIGZhbHNlKTsKKwlpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChvbGRfY29ubl9zdGF0ZSwg
MCk7CiB9CiAKIHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X3NldHVwX2JhY2tsaWdodChzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
