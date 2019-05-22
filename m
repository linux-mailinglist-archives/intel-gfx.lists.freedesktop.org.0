Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB9C26514
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DEA89A92;
	Wed, 22 May 2019 13:51:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CAE089A92;
 Wed, 22 May 2019 13:51:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:09 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:08 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:53 +0100
Message-Id: <20190522135104.26930-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 03/14] lib: igt_gt: add execution buffer
 flags to class helper
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cgp3ZSBoYXZlIGEgImNsYXNz
L2luc3RhbmNlIHRvIGViIGZsYWdzIiBoZWxwZXIgYnV0IG5vdCB0aGUKb3Bwb3NpdGUsIGFkZCBp
dC4KClN1Z2dlc3RlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGxp
Yi9pZ3RfZ3QuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogbGliL2lndF9ndC5oIHwgIDIgKysK
IDIgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2xpYi9pZ3Rf
Z3QuYyBiL2xpYi9pZ3RfZ3QuYwppbmRleCBhMmVhYWRmNWNjOGUuLjU5YjYyMjQyNzQ5ZSAxMDA2
NDQKLS0tIGEvbGliL2lndF9ndC5jCisrKyBiL2xpYi9pZ3RfZ3QuYwpAQCAtNDEsNiArNDEsNyBA
QAogI2luY2x1ZGUgImludGVsX3JlZy5oIgogI2luY2x1ZGUgImludGVsX2NoaXBzZXQuaCIKICNp
bmNsdWRlICJpZ3RfZHVtbXlsb2FkLmgiCisjaW5jbHVkZSAiaTkxNS9nZW1fZW5naW5lX3RvcG9s
b2d5LmgiCiAKIC8qKgogICogU0VDVElPTjppZ3RfZ3QKQEAgLTU4Niw2ICs1ODcsMjMgQEAgY29u
c3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyIGludGVsX2V4ZWN1dGlvbl9lbmdpbmVz
MltdID0gewogCXsgfQogfTsKIAoraW50IGdlbV9leGVjYnVmX2ZsYWdzX3RvX2VuZ2luZV9jbGFz
cyh1bnNpZ25lZCBpbnQgZmxhZ3MpCit7CisJc3dpdGNoIChmbGFncyAmIDB4M2YpIHsKKwljYXNl
IEk5MTVfRVhFQ19ERUZBVUxUOgorCWNhc2UgSTkxNV9FWEVDX1JFTkRFUjoKKwkJcmV0dXJuIEk5
MTVfRU5HSU5FX0NMQVNTX1JFTkRFUjsKKwljYXNlIEk5MTVfRVhFQ19CTFQ6CisJCXJldHVybiBJ
OTE1X0VOR0lORV9DTEFTU19DT1BZOworCWNhc2UgSTkxNV9FWEVDX0JTRDoKKwkJcmV0dXJuIEk5
MTVfRU5HSU5FX0NMQVNTX1ZJREVPOworCWNhc2UgSTkxNV9FWEVDX1ZFQk9YOgorCQlyZXR1cm4g
STkxNV9FTkdJTkVfQ0xBU1NfVklERU9fRU5IQU5DRTsKKwlkZWZhdWx0OgorCQlpZ3RfYXNzZXJ0
KDApOworCX0KK30KKwogdW5zaWduZWQgaW50CiBnZW1fY2xhc3NfaW5zdGFuY2VfdG9fZWJfZmxh
Z3MoaW50IGdlbV9mZCwKIAkJCSAgICAgICBlbnVtIGRybV9pOTE1X2dlbV9lbmdpbmVfY2xhc3Mg
Y2xhc3MsCmRpZmYgLS1naXQgYS9saWIvaWd0X2d0LmggYi9saWIvaWd0X2d0LmgKaW5kZXggNTJi
MmYxZWE5NWE1Li44Y2VlZDE0Mjg4YzcgMTAwNjQ0Ci0tLSBhL2xpYi9pZ3RfZ3QuaAorKysgYi9s
aWIvaWd0X2d0LmgKQEAgLTk5LDYgKzk5LDggQEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBpbnRlbF9l
eGVjdXRpb25fZW5naW5lMiB7CiAJYm9vbCBpc192aXJ0dWFsOwogfSBpbnRlbF9leGVjdXRpb25f
ZW5naW5lczJbXTsKIAoraW50IGdlbV9leGVjYnVmX2ZsYWdzX3RvX2VuZ2luZV9jbGFzcyh1bnNp
Z25lZCBpbnQgZmxhZ3MpOworCiB1bnNpZ25lZCBpbnQKIGdlbV9jbGFzc19pbnN0YW5jZV90b19l
Yl9mbGFncyhpbnQgZ2VtX2ZkLAogCQkJICAgICAgIGVudW0gZHJtX2k5MTVfZ2VtX2VuZ2luZV9j
bGFzcyBjbGFzcywKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
