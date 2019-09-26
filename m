Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BABBFAD3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 23:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2EC6EE08;
	Thu, 26 Sep 2019 21:07:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3710A6EE05
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 21:07:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 14:07:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,553,1559545200"; d="scan'208";a="194264369"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga006.jf.intel.com with ESMTP; 26 Sep 2019 14:07:01 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 14:06:58 -0700
Message-Id: <20190926210659.56317-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926210659.56317-1-jose.souza@intel.com>
References: <20190926210659.56317-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 3/4] drm/i915/tgl: Fix dkl link training
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
ZWMgNDkyMDQuCgpSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAx
NCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMKaW5kZXggNjlhYmFmYTQ1Y2U5Li5iZTY5YTIzNDQyOTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKQEAgLTI2MzAsMTMgKzI2MzAsMTMgQEAg
c3RhdGljIGJvb2wgaWNsX21nX3BsbF9maW5kX2Rpdmlzb3JzKGludCBjbG9ja19raHosIGJvb2wg
aXNfZHAsIGJvb2wgdXNlX3NzYywKIAkJCQljb250aW51ZTsKIAogCQkJaWYgKGRpdjIgPj0gMikg
ewotCQkJCWlmIChpc19ka2wpIHsKLQkJCQkJYV9kaXZyYXRpbyA9IDU7Ci0JCQkJCXRsaW5lZHJ2
ID0gMTsKLQkJCQl9IGVsc2UgewotCQkJCQlhX2RpdnJhdGlvID0gaXNfZHAgPyAxMCA6IDU7Ci0J
CQkJCXRsaW5lZHJ2ID0gMjsKLQkJCQl9CisJCQkJLyoKKwkJCQkgKiBOb3RlOiBhX2RpdnJhdGlv
IG5vdCBtYXRjaGluZyBUR0wgQlNwZWMKKwkJCQkgKiBhbGdvcml0aG0gYnV0IG1hdGNoaW5nIGhh
cmRjb2RlZCB2YWx1ZXMgYW5kCisJCQkJICogd29ya2luZyBvbiBIVyBmb3IgRFAgYWx0LW1vZGUg
YXQgbGVhc3QKKwkJCQkgKi8KKwkJCQlhX2RpdnJhdGlvID0gaXNfZHAgPyAxMCA6IDU7CisJCQkJ
dGxpbmVkcnYgPSBpc19ka2wgPyAxIDogMjsKIAkJCX0gZWxzZSB7CiAJCQkJYV9kaXZyYXRpbyA9
IDU7CiAJCQkJdGxpbmVkcnYgPSAwOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
