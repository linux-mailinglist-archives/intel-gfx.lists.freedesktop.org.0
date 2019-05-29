Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7DC2E950
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 01:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B006E130;
	Wed, 29 May 2019 23:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359F46E12D
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
Date: Wed, 29 May 2019 16:27:34 -0700
Message-Id: <20190529232737.31515-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529232737.31515-1-lucas.demarchi@intel.com>
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/5] lib/igt_core: reserve long options
 for individual tests
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

U3RhcnQgdGhlIGNvcmUgb3B0aW9zbiBmcm9tIDUwMCBzbyB0aGUgaW5kaXZpZHVhbCB0ZXN0cyBj
YW4gaGF2ZSB0aGVpcgpvd24gb3B0aW9ucyBzdGFydGluZyBmcm9tIDAuIFRoaXMgbWFrZXMgaXQg
ZWFzaWVyIHRvIHNldCB0aGUgbG9uZwpvcHRpb25zIHdpdGhvdXQgY29uZmxpY3RpbmcuCgo1MDAg
aXMganVzdCBhIG1hZ2ljIG51bWJlciwgaGlnaGVyIHRoYW4gYW55IGFzY2lpIGNoYXIgdGhhdCBj
b3VsZCBiZQp1c2VkIGluIHRoZSBpbmRpdmlkdWFsIHRlc3QuCgpXaGlsZSBhdCBpdCwgZml4IHRo
ZSBjb2Rpbmcgc3R5bGUgdG8gdXNlIHRhYiByYXRoZXIgdGhhbiBzcGFjZS4KClNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGxpYi9p
Z3RfY29yZS5jIHwgMTYgKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9jb3JlLmMgYi9s
aWIvaWd0X2NvcmUuYwppbmRleCA5Yzg2ZDY2NC4uODE0ZjVjNzIgMTAwNjQ0Ci0tLSBhL2xpYi9p
Z3RfY29yZS5jCisrKyBiL2xpYi9pZ3RfY29yZS5jCkBAIC0yODAsMTIgKzI4MCwxNiBAQCBpbnQg
dGVzdF9jaGlsZHJlbl9zejsKIGJvb2wgdGVzdF9jaGlsZDsKIAogZW51bSB7Ci0gT1BUX0xJU1Rf
U1VCVEVTVFMsCi0gT1BUX1JVTl9TVUJURVNULAotIE9QVF9ERVNDUklQVElPTiwKLSBPUFRfREVC
VUcsCi0gT1BUX0lOVEVSQUNUSVZFX0RFQlVHLAotIE9QVF9IRUxQID0gJ2gnCisJLyoKKwkgKiBM
ZXQgdGhlIGZpcnN0IHZhbHVlcyBiZSB1c2VkIGJ5IGluZGl2aWR1YWwgdGVzdHMgc28gb3B0aW9u
cyBkb24ndAorCSAqIGNvbmZsaWN0IHdpdGggY29yZSBvbmVzCisJICovCisJT1BUX0xJU1RfU1VC
VEVTVFMgPSA1MDAsCisJT1BUX1JVTl9TVUJURVNULAorCU9QVF9ERVNDUklQVElPTiwKKwlPUFRf
REVCVUcsCisJT1BUX0lOVEVSQUNUSVZFX0RFQlVHLAorCU9QVF9IRUxQID0gJ2gnCiB9OwogCiBz
dGF0aWMgaW50IGlndF9leGl0Y29kZSA9IElHVF9FWElUX1NVQ0NFU1M7Ci0tIAoyLjIxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
