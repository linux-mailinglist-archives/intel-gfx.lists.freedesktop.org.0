Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE447B6FDE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCFA7AA62;
	Thu, 19 Sep 2019 00:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B12A73EC8
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="189426730"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2019 17:07:32 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 17:07:14 -0700
Message-Id: <20190919000726.267988-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919000726.267988-1-jose.souza@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/13] drm/i915/tgl: Add missing ddi clock
 select during DP init sequence
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

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpTdGVw
IDQuYiB3YXMgY29tcGxldGUgbWlzc2VkIGJlY2F1c2UgaXQgaXMgb25seSByZXF1aXJlZCB0byBU
QyBhbmQgVEJULgoKQnNwZWM6IDQ5MTkwClNpZ25lZC1vZmYtYnk6IENsaW50b24gQSBUYXlsb3Ig
PGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCmluZGV4IDNlNjM5NDEzOTk2NC4uODE3OTJhMDRlMGFhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTMyMjQsMTEgKzMyMjQsMTQgQEAgc3RhdGlj
IHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCWludGVsX2VkcF9wYW5lbF9vbihpbnRlbF9kcCk7CiAKIAkvKgotCSAqIDEuYiwgMy4gYW5k
IDQuIGlzIGRvbmUgYmVmb3JlIHRnbF9kZGlfcHJlX2VuYWJsZV9kcCgpIGJ5OgorCSAqIDEuYiwg
My4gYW5kIDQuYSBpcyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSBieToKIAkg
KiBoYXN3ZWxsX2NydGNfZW5hYmxlKCktPmludGVsX2VuY29kZXJzX3ByZV9wbGxfZW5hYmxlKCkg
YW5kCiAJICogaGFzd2VsbF9jcnRjX2VuYWJsZSgpLT5pbnRlbF9lbmFibGVfc2hhcmVkX2RwbGwo
KQogCSAqLwogCisJLyogNC5iICovCisJaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2RlciwgY3J0
Y19zdGF0ZSk7CisKIAkvKiA1LiAqLwogCWlmICghaW50ZWxfcGh5X2lzX3RjKGRldl9wcml2LCBw
aHkpIHx8CiAJICAgIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkKLS0gCjIu
MjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
