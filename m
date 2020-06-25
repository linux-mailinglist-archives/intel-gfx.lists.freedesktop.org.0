Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 227AB20A648
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 22:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6946E34B;
	Thu, 25 Jun 2020 20:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA576E34B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 20:00:10 +0000 (UTC)
IronPort-SDR: k9EmLQwlmlzQp7BMWOTO0V1yBup/pDyuGmXdl7l5MT3bQMnwcF8jMz5rGVozfEr/kU/VyjrCDq
 d236yc0yno1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="124708091"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="124708091"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 13:00:07 -0700
IronPort-SDR: SiBRW+mvExkTYN1+dgXR7dLasZffvk0mqU7HgPEUNFiiwozy2RjNLs2b6cACGJuMVwhR/r2HfY
 YaPaiDG2KsUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="312105772"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 25 Jun 2020 13:00:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Jun 2020 23:00:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2020 23:00:03 +0300
Message-Id: <20200625200003.12436-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Clamp linetime wm to <64usec
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBsaW5ldGltZSB3YXRlcm1hcmsgaXMgYSA5IGJpdCB2YWx1ZSwgd2hpY2ggZ2l2ZXMgdXMKYSBt
YXhpbXVtIGxpbmV0aW1lIG9mIGp1c3QgYmVsb3cgNjQgdXNlYy4gSWYgdGhlIGxpbmV0aW1lCmV4
Y2VlZHMgdGhhdCB2YWx1ZSB3ZSBjdXJyZW50bHkganVzdCBkaXNjYXJkIHRoZSBoaWdoIGJpdHMK
YW5kIHByb2dyYW0gdGhlIHJlc3QgaW50byB0aGUgcmVnaXN0ZXIsIHdoaWNoIGFuZ2VycyB0aGUK
c3RhdGUgY2hlY2tlci4KClRvIGF2b2lkIHRoYXQgbGV0J3MganVzdCBjbGFtcCB0aGUgdmFsdWUg
dG8gdGhlIG1heC4gSSBiZWxpZXZlCml0IHNob3VsZCBiZSBwZXJmZWN0bHkgZmluZSB0byBwcm9n
cmFtIGEgc21hbGxlciBsaW5ldGltZSB3bQp0aGFuIHN0cmljdGx5IHJlcXVpcmVkLCBqdXN0IG1l
YW5zIHRoZSBoYXJkd2FyZSBtYXkgZmV0Y2ggZGF0YQpzb29uZXIgdGhhbiBzdHJpY3RseSBuZWVk
ZWQuIFdlIGFyZSBmdXJ0aGVyIHJlYXNzdXJlZCBieSB0aGUKZmFjdCB0aGF0IHdpdGggRFJSUyB0
aGUgc3BlYyB0ZWxscyB1cyB0byBwcm9ncmFtIHRoZSBzbWFsbGVyCm9mIHRoZSB0d28gbGluZXRp
bWVzIGNvcnJlc3BvbmRpbmcgdG8gdGhlIHR3byByZWZyZXNoIHJhdGVzLgoKQ2M6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTggKysrKysrKysr
KysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGExMWJiNjc1ZjliMy4uZDQ4NmQ2NzUxNjZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI1ODEsMTIgKzEyNTgxLDE1IEBAIHN0YXRpYyB1
MTYgaHN3X2xpbmV0aW1lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogewogCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0K
IAkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7CisJaW50IGxpbmV0aW1lX3dtOwogCiAJ
aWYgKCFjcnRjX3N0YXRlLT5ody5lbmFibGUpCiAJCXJldHVybiAwOwogCi0JcmV0dXJuIERJVl9S
T1VORF9DTE9TRVNUKGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsICogMTAwMCAqIDgsCi0JCQkJ
IGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2spOworCWxpbmV0aW1lX3dtID0gRElWX1JPVU5EX0NM
T1NFU1QoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwgKiAxMDAwICogOCwKKwkJCQkJYWRqdXN0
ZWRfbW9kZS0+Y3J0Y19jbG9jayk7CisKKwlyZXR1cm4gbWluKGxpbmV0aW1lX3dtLCAweDFmZik7
CiB9CiAKIHN0YXRpYyB1MTYgaHN3X2lwc19saW5ldGltZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKQEAgLTEyNTk0LDEyICsxMjU5NywxNSBAQCBzdGF0aWMg
dTE2IGhzd19pcHNfbGluZXRpbWVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCiB7CiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21v
ZGUgPQogCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKKwlpbnQgbGluZXRpbWVfd207
CiAKIAlpZiAoIWNydGNfc3RhdGUtPmh3LmVuYWJsZSkKIAkJcmV0dXJuIDA7CiAKLQlyZXR1cm4g
RElWX1JPVU5EX0NMT1NFU1QoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwgKiAxMDAwICogOCwK
LQkJCQkgY2RjbGtfc3RhdGUtPmxvZ2ljYWwuY2RjbGspOworCWxpbmV0aW1lX3dtID0gRElWX1JP
VU5EX0NMT1NFU1QoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwgKiAxMDAwICogOCwKKwkJCQkJ
Y2RjbGtfc3RhdGUtPmxvZ2ljYWwuY2RjbGspOworCisJcmV0dXJuIG1pbihsaW5ldGltZV93bSwg
MHgxZmYpOwogfQogCiBzdGF0aWMgdTE2IHNrbF9saW5ldGltZV93bShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKQEAgLTEyNjA4LDcgKzEyNjE0LDcgQEAgc3RhdGlj
IHUxNiBza2xfbGluZXRpbWVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRj
LT5iYXNlLmRldik7CiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21v
ZGUgPQogCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKLQl1MTYgbGluZXRpbWVfd207
CisJaW50IGxpbmV0aW1lX3dtOwogCiAJaWYgKCFjcnRjX3N0YXRlLT5ody5lbmFibGUpCiAJCXJl
dHVybiAwOwpAQCAtMTI2MjAsNyArMTI2MjYsNyBAQCBzdGF0aWMgdTE2IHNrbF9saW5ldGltZV93
bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoSVNfR0VO
OV9MUChkZXZfcHJpdikgJiYgZGV2X3ByaXYtPmlwY19lbmFibGVkKQogCQlsaW5ldGltZV93bSAv
PSAyOwogCi0JcmV0dXJuIGxpbmV0aW1lX3dtOworCXJldHVybiBtaW4obGluZXRpbWVfd20sIDB4
MWZmKTsKIH0KIAogc3RhdGljIGludCBoc3dfY29tcHV0ZV9saW5ldGltZV93bShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
