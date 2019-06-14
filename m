Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BB345416
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 07:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5078489256;
	Fri, 14 Jun 2019 05:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C30189256
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 05:39:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 22:39:36 -0700
X-ExtLoop1: 1
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2019 22:39:34 -0700
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 23:09:24 -0700
Message-Id: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Refine eDP aux backlight
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Lee@freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
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
bmVkLW9mZi1ieTogTGVlLCBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgMyArKy0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKaW5kZXggN2RlZDk1YTMzNGRiLi45
ODIxMGFlMTcyODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1
eF9iYWNrbGlnaHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMKQEAgLTIxNiwxMyArMjE2LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9l
bmFibGVfYmFja2xpZ2h0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0CiAJ
CX0KIAl9CiAKLQlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwogCWlu
dGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KGNvbm5fc3RhdGUsIGNvbm5lY3Rvci0+cGFuZWwuYmFj
a2xpZ2h0LmxldmVsKTsKKwlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUp
OwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhfZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRlKQogewogCXNldF9hdXhf
YmFja2xpZ2h0X2VuYWJsZShlbmNfdG9faW50ZWxfZHAob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5j
b2RlciksIGZhbHNlKTsKKwlpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChvbGRfY29ubl9zdGF0
ZSwgMCk7CiB9CiAKIHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X3NldHVwX2JhY2tsaWdodChzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
