Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7AF90FB9
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A076E2F7;
	Sat, 17 Aug 2019 09:39:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF4789BE8
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950606"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:31 -0700
Message-Id: <20190817093902.2171-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/40] drm/i915/bdw+: Enable PSR in any eDP
 port
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpGcm9t
IEJEVysgdGhlIFBTUiByZWdpc3RlcnMgbW92ZWQgZnJvbSBERElBIHRvIHRyYW5zY29kZXIsIHNv
IGFueSBwb3J0CndpdGggYSBlRFAgcGFuZWwgY29ubmVjdGVkIGNhbiBoYXZlIFBTUiwgc28gbGV0
cyByZW1vdmUgdGhpcwpsaW1pdGF0aW9uLgoKQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5h
a2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDI5
MTY5ZTI0MzVlOC4uNWQ3YmFhYzFkN2M5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKQEAgLTU4OSwxMSArNTg5LDkgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAogCS8qCiAJICogSFNXIHNwZWMgZXhw
bGljaXRseSBzYXlzIFBTUiBpcyB0aWVkIHRvIHBvcnQgQS4KLQkgKiBCRFcrIHBsYXRmb3JtcyBo
YXZlIGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJhbnNjb2RlciBidXQKLQkgKiBm
b3Igbm93IGl0IG9ubHkgc3VwcG9ydHMgb25lIGluc3RhbmNlIG9mIFBTUiwgc28gbGV0cyBrZWVw
IGl0Ci0JICogaGFyZGNvZGVkIHRvIFBPUlRfQQorCSAqIEJEVysgcGxhdGZvcm1zIGhhdmUgYSBp
bnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlciB0cmFuc2NvZGVyLgogCSAqLwotCWlmIChkaWdf
cG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkgeworCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSAm
JiBkaWdfcG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkgewogCQlEUk1fREVCVUdfS01TKCJQU1Ig
Y29uZGl0aW9uIGZhaWxlZDogUG9ydCBub3Qgc3VwcG9ydGVkXG4iKTsKIAkJcmV0dXJuOwogCX0K
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
