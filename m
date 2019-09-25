Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2833BE922
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 01:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220686E0C2;
	Wed, 25 Sep 2019 23:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7886EEB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 23:45:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 16:45:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="201422309"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga002.jf.intel.com with ESMTP; 25 Sep 2019 16:45:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:45:08 -0700
Message-Id: <20190925234509.29505-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925234509.29505-1-jose.souza@intel.com>
References: <20190925234509.29505-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/tgl: Fix dkl link training
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

TGluayB0cmFpbmluZyBpcyBmYWlsbGluZyB3aGVuIHJ1bm5pbmcgbGluayBhdCAyLjdHSHogYW5k
IDEuNjJHSHogYW5kCmZvbGxvd2luZyBCU3BlYyBwbGwgYWxnb3JpdGhtLgoKQ29tcGFyaW5nIHRo
ZSB2YWx1ZXMgY2FsY3VsYXRlZCBhbmQgdGhlIG9uZXMgZnJvbSB0aGUgcmVmZXJlbmNlIHRhYmxl
Cml0IGxvb2tzIGxpa2UgTUdfQ0xLVE9QMl9DT1JFQ0xLQ1RMMV9BX0RJVlJBVElPIHNob3VsZCBu
b3QgYWx3YXlzIHNldAp0byA1LiBGb3IgRFAgcG9ydHMgSUNMIG1nIHBsbCBhbGdvcml0aG0gc2V0
cyBpdCB0byAxMCBvciA1IGJhc2VkIG9uCmRpdjIgdmFsdWUsIHRoYXQgbWF0Y2hlcyB3aXRoIGRr
bCBoYXJkY29kZWQgdGFibGUuCgpTbyBpbXBsZW1lbnRpbmcgdGhpcyB3YXkgYXMgaXQgcHJvdmVk
IHRvIHdvcmsgaW4gSFcgYW5kIGxlYXZpbmcgYQpjb21tZW50IHNvIHdlIGtub3cgd2h5IGl0IGRv
IG5vdCBtYXRjaCBCU3BlYy4KCnY0OgpVc2luZyB0aGUgc2FtZSBpc19kcCBjaGVjayBhcyBJQ0ws
IG5lZWQgdGVzdGluZyBvbiBIRE1JIG92ZXIgdGMgcG9ydAoKSXNzdWUgcmVwb3J0ZWQgb24gQlNw
ZWMgNDkyMDQuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmMgfCAxNCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmMKaW5kZXggNjlhYmFmYTQ1Y2U5Li5iZTY5YTIzNDQyOTQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTI2MzAsMTMg
KzI2MzAsMTMgQEAgc3RhdGljIGJvb2wgaWNsX21nX3BsbF9maW5kX2Rpdmlzb3JzKGludCBjbG9j
a19raHosIGJvb2wgaXNfZHAsIGJvb2wgdXNlX3NzYywKIAkJCQljb250aW51ZTsKIAogCQkJaWYg
KGRpdjIgPj0gMikgewotCQkJCWlmIChpc19ka2wpIHsKLQkJCQkJYV9kaXZyYXRpbyA9IDU7Ci0J
CQkJCXRsaW5lZHJ2ID0gMTsKLQkJCQl9IGVsc2UgewotCQkJCQlhX2RpdnJhdGlvID0gaXNfZHAg
PyAxMCA6IDU7Ci0JCQkJCXRsaW5lZHJ2ID0gMjsKLQkJCQl9CisJCQkJLyoKKwkJCQkgKiBOb3Rl
OiBhX2RpdnJhdGlvIG5vdCBtYXRjaGluZyBUR0wgQlNwZWMKKwkJCQkgKiBhbGdvcml0aG0gYnV0
IG1hdGNoaW5nIGhhcmRjb2RlZCB2YWx1ZXMgYW5kCisJCQkJICogd29ya2luZyBvbiBIVyBmb3Ig
RFAgYWx0LW1vZGUgYXQgbGVhc3QKKwkJCQkgKi8KKwkJCQlhX2RpdnJhdGlvID0gaXNfZHAgPyAx
MCA6IDU7CisJCQkJdGxpbmVkcnYgPSBpc19ka2wgPyAxIDogMjsKIAkJCX0gZWxzZSB7CiAJCQkJ
YV9kaXZyYXRpbyA9IDU7CiAJCQkJdGxpbmVkcnYgPSAwOwotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
