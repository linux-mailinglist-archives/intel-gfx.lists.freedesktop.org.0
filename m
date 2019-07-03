Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEFD5E6FC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 16:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D956E159;
	Wed,  3 Jul 2019 14:41:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B829A6E156
 for <Intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 14:41:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 07:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="172153623"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.160])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2019 07:41:17 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 15:41:16 +0100
Message-Id: <20190703144116.15593-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/hangcheck: Look at instdone for all
 engines
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHNlZW1z
IGludGVsX2VuZ2luZV9nZXRfaW5zdGRvbmUgaXMgYWJsZSB0byBnZXQgaW5zdGRvbmUgZm9yIGFs
bCBlbmdpbmVzCmJ1dCBpbnRlbF9oYW5nY2hlY2suYy9zdWJ1bml0c19zdHVjayBkZWNpZGVzIHRv
IGlnbm9yZSBpdCBmb3Igbm9uIHJlbmRlci4KCldlIGNhbiBqdXN0IGRyb3AgdGhlIGNoZWNrIGlu
IHN1YnVuaXRzX3N0dWNrIHNpbmNlIHRoZSBjaGVja3Mgb24KdW5hdmFpbGFibGUgZmllbGRzIHdp
bGwgYWx3YXlzIHJldHVybiBzdHVjaywgd2hpY2ggd2hlbiBiaXR3aXNlIGFuZCB3aXRoCnRoZSBw
b3RlbnRpYWwgdW5zdHVjayBpbnN0ZG9uZSBpcyBoYXJtbGVzcy4KClNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2No
ZWNrLmMgfCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYwppbmRleCA2YmNmYTY0NTZjNDUuLjc5N2Q4
ZWYwOTY5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2No
ZWNrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMKQEAg
LTU3LDkgKzU3LDYgQEAgc3RhdGljIGJvb2wgc3VidW5pdHNfc3R1Y2soc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQogCWludCBzbGljZTsKIAlpbnQgc3Vic2xpY2U7CiAKLQlpZiAoZW5n
aW5lLT5pZCAhPSBSQ1MwKQotCQlyZXR1cm4gdHJ1ZTsKLQogCWludGVsX2VuZ2luZV9nZXRfaW5z
dGRvbmUoZW5naW5lLCAmaW5zdGRvbmUpOwogCiAJLyogVGhlcmUgbWlnaHQgYmUgdW5zdGFibGUg
c3VidW5pdCBzdGF0ZXMgZXZlbiB3aGVuCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
