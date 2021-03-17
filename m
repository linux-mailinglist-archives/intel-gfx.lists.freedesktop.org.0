Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 566D133F85D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 19:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081316E081;
	Wed, 17 Mar 2021 18:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ADCC6E1ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 18:49:10 +0000 (UTC)
IronPort-SDR: 7nI/y/8LJG7BQm4kd/vujSmt4L8DgimAU5+p8879lRd7zlDom5IPSEq348WM4n4WJyONGxgyQM
 HUQmFdprXMQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="253537474"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="253537474"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 11:49:09 -0700
IronPort-SDR: Ck7fOKTlmeLNnI9Gznlkbt0fDuYk9ODfx2Seu5E3YNRBeDxLEB8BqyCI42SDeUMt+xw9YOBlX6
 OWhHI/IJ1ROQ==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="511828580"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 11:49:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 20:49:01 +0200
Message-Id: <20210317184901.4029798-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210317184901.4029798-1-imre.deak@intel.com>
References: <20210317184901.4029798-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Disable LTTPR support when the
 LTTPR rev < 1.4
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QnkgdGhlIHNwZWNpZmljYXRpb24gdGhlIDB4RjAwMDAgLSAweEYwMkZGIHJhbmdlIGlzIG9ubHkg
dmFsaWQgaWYgdGhlCkxUVFBSIHJldmlzaW9uIGF0IDB4RjAwMDAgaXMgYXQgbGVhc3QgMS40LiBE
aXNhYmxlIHRoZSBMVFRQUiBzdXBwb3J0Cm90aGVyd2lzZS4KCkZpeGVzOiA3YjJhNGFiOGIwZWYg
KCJkcm0vaTkxNTogU3dpdGNoIHRvIExUVFBSIHRyYW5zcGFyZW50IG1vZGUgbGluayB0cmFpbmlu
ZyIpCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2NS4xMQpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMgIHwgMTQgKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKaW5kZXggZDhk
OTA5MDMyMjZmLi5kOTJlYjE5MmM4OWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCkBAIC0xMDAsMTcgKzEwMCwyMyBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9yZWFkX2x0dHByX2NvbW1vbl9jYXBzKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApCiAJCXJldHVybiBmYWxzZTsKIAogCWlmIChkcm1fZHBfcmVhZF9sdHRw
cl9jb21tb25fY2FwcygmaW50ZWxfZHAtPmF1eCwKLQkJCQkJICBpbnRlbF9kcC0+bHR0cHJfY29t
bW9uX2NhcHMpIDwgMCkgewotCQlpbnRlbF9kcF9yZXNldF9sdHRwcl9jb21tb25fY2FwcyhpbnRl
bF9kcCk7Ci0JCXJldHVybiBmYWxzZTsKLQl9CisJCQkJCSAgaW50ZWxfZHAtPmx0dHByX2NvbW1v
bl9jYXBzKSA8IDApCisJCWdvdG8gcmVzZXRfY2FwczsKIAogCWRybV9kYmdfa21zKCZkcF90b19p
OTE1KGludGVsX2RwKS0+ZHJtLAogCQkgICAgIkxUVFBSIGNvbW1vbiBjYXBhYmlsaXRpZXM6ICUq
cGhcbiIsCiAJCSAgICAoaW50KXNpemVvZihpbnRlbF9kcC0+bHR0cHJfY29tbW9uX2NhcHMpLAog
CQkgICAgaW50ZWxfZHAtPmx0dHByX2NvbW1vbl9jYXBzKTsKIAorCS8qIFRoZSBtaW5pbXVtIHZh
bHVlIG9mIExUX1RVTkFCTEVfUEhZX1JFUEVBVEVSX0ZJRUxEX0RBVEFfU1RSVUNUVVJFX1JFViBp
cyAxLjQgKi8KKwlpZiAoaW50ZWxfZHAtPmx0dHByX2NvbW1vbl9jYXBzWzBdIDwgMHgxNCkKKwkJ
Z290byByZXNldF9jYXBzOworCiAJcmV0dXJuIHRydWU7CisKK3Jlc2V0X2NhcHM6CisJaW50ZWxf
ZHBfcmVzZXRfbHR0cHJfY29tbW9uX2NhcHMoaW50ZWxfZHApOworCXJldHVybiBmYWxzZTsKIH0K
IAogc3RhdGljIGJvb2wKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
