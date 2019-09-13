Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD89B286B
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE866F48A;
	Fri, 13 Sep 2019 22:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5446F489
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:32:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="337037955"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 13 Sep 2019 15:32:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 15:32:38 -0700
Message-Id: <20190913223251.354877-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190913223251.354877-1-jose.souza@intel.com>
References: <20190913223251.354877-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/14] drm/i915/tgl: Add missing ddi clock
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
Cc: Taylor@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIlRheWxvciwgQ2xpbnRvbiBBIiA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpT
dGVwIDQuYiB3YXMgY29tcGxldGUgbWlzc2VkIGJlY2F1c2UgaXQgaXMgb25seSByZXF1aXJlZCB0
byBUQyBhbmQgVEJULgoKQnNwZWM6IDQ5MTkwClNpZ25lZC1vZmYtYnk6IFRheWxvciwgQ2xpbnRv
biBBIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
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
