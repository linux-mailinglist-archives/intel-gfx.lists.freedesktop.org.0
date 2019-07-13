Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B239B6777A
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03496E3E9;
	Sat, 13 Jul 2019 01:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25896E39C
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850942"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:32 -0700
Message-Id: <20190713010940.17711-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/22] drm/i915/tgl: allow the reg_read ioctl to
 read the RCS TIMESTAMP register
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

RnJvbTogSm9yZGFuIEp1c3RlbiA8am9yZGFuLmwuanVzdGVuQGludGVsLmNvbT4KClRoaXMgZW5h
YmxlcyB0aGUgTWVzYSBkcml2ZXIgdG8gYWR2ZXJ0aXNlIHN1cHBvcnQgZm9yIEFSQl90aW1lcl9x
dWVyeSwKYW5kIHRodXMgYW4gT3BlbkdMIHZlcnNpb24gaGlnaGVyIHRoYW4gMy4yLgoKQmFzZWQg
b24gdGhlIElDTCBwYXRjaCBieSBQYXVsbyBaYW5vbmkgYW5kIENOTCBwYXRjaCBieSBOYW5sZXkg
Q2hlcnkuCgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKb3JkYW4gSnVzdGVuIDxqb3JkYW4ubC5qdXN0ZW5AaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3VuY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3Jl
LmMKaW5kZXggNDc1YWIzZDRkOTFkLi4yYjgzOWFjZmEwZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5jCkBAIC0xNzc2LDcgKzE3NzYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJl
Z193aGl0ZWxpc3QgewogfSByZWdfcmVhZF93aGl0ZWxpc3RbXSA9IHsgewogCS5vZmZzZXRfbGR3
ID0gUklOR19USU1FU1RBTVAoUkVOREVSX1JJTkdfQkFTRSksCiAJLm9mZnNldF91ZHcgPSBSSU5H
X1RJTUVTVEFNUF9VRFcoUkVOREVSX1JJTkdfQkFTRSksCi0JLmdlbl9tYXNrID0gSU5URUxfR0VO
X01BU0soNCwgMTEpLAorCS5nZW5fbWFzayA9IElOVEVMX0dFTl9NQVNLKDQsIDEyKSwKIAkuc2l6
ZSA9IDgKIH0gfTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
