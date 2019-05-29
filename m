Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8A2E94F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 01:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602476E12D;
	Wed, 29 May 2019 23:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5658C6E130
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 23:27:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 16:27:44 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.138])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 16:27:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 16:27:33 -0700
Message-Id: <20190529232737.31515-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/5] lib/tests: fix conflicting args test
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugd2FudCB0byBjaGVjayBpZiB0aGUgbG9uZyBvcHRpb24gY29uZmxpY3RzIHdpdGggb25lIGZy
b20gdGhlIGNvcmUuClRoZSBjaGVjayBmb3IgY29uZmxpY3Rpbmcgc2hvcnQgb3B0aW9uIGFscmVh
ZHkgZXhpc3RzIGp1c3QgYWJvdmUuCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBsaWIvdGVzdHMvaWd0X2NvbmZsaWN0aW5nX2Fy
Z3MuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2xpYi90ZXN0cy9pZ3RfY29uZmxpY3RpbmdfYXJncy5jIGIvbGliL3Rl
c3RzL2lndF9jb25mbGljdGluZ19hcmdzLmMKaW5kZXggYzM1N2I2YzUuLmQ4YmUxMzhlIDEwMDY0
NAotLS0gYS9saWIvdGVzdHMvaWd0X2NvbmZsaWN0aW5nX2FyZ3MuYworKysgYi9saWIvdGVzdHMv
aWd0X2NvbmZsaWN0aW5nX2FyZ3MuYwpAQCAtOTEsNyArOTEsNyBAQCBpbnQgbWFpbihpbnQgYXJn
YywgY2hhciAqKmFyZ3YpCiAJaW50ZXJuYWxfYXNzZXJ0X3dzaWduYWxlZChkb19mb3JrKCksIFNJ
R0FCUlQpOwogCiAJLyogY29uZmxpY3Qgb24gbG9uZyBvcHRpb24gJ3ZhbCcgcmVwcmVzZW50YXRp
b25zICovCi0JbG9uZ19vcHRpb25zWzBdID0gKHN0cnVjdCBvcHRpb24pIHsgIml0ZXJhdGlvbnMi
LCByZXF1aXJlZF9hcmd1bWVudCwgTlVMTCwgMH07CisJbG9uZ19vcHRpb25zWzBdID0gKHN0cnVj
dCBvcHRpb24pIHsgImxpc3Qtc3VidGVzdHMiLCByZXF1aXJlZF9hcmd1bWVudCwgTlVMTCwgMH07
CiAJc2hvcnRfb3B0aW9ucyA9ICIiOwogCWludGVybmFsX2Fzc2VydF93c2lnbmFsZWQoZG9fZm9y
aygpLCBTSUdBQlJUKTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
