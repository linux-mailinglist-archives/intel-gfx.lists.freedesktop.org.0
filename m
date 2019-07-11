Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A69565F2A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C995B6E284;
	Thu, 11 Jul 2019 17:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D92B6E27F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894700"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:10 -0700
Message-Id: <20190711173115.28296-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 16/21] drm/i915/gen12: MBUS B credit change
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

RnJvbTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKUHJldmlvdXNseSwg
dGhlIHJlY29tbWVuZGVkIEIgY3JlZGl0IGZvciBhbGwgcGxhdGZvcm1zIHdhcyAyNCAvIG51bWJl
cgpvZiBwaXBlcywgd2hpY2ggd291bGQgZ2l2ZSA2IGZvciBuZXdlciBwbGF0Zm9ybXMgd2l0aCA0
IHBpcGVzLiBIb3dldmVyIDYKaXMgbm90IGVub3VnaCBhbmQgd2UgbmVlZCAxMiBvbiB0aGVzZSBj
YXNlcy4KCldlIGFsc28gbmVlZCBhIGRpZmZlcmVudCBCVyBjcmVkaXQgZm9yIHRoZXNlIHBsYXRm
b3Jtcy4KCkNjOiBBcnRodXIgSiBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGM5
YjE4YWFiNDM3ZC4uODM4OWNmNTE3ZWU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjQyMyw4ICs2NDIzLDE0IEBAIHN0YXRpYyB2b2lkIGlj
bF9waXBlX21idXNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCXUzMiB2YWw7CiAK
IAl2YWwgPSBNQlVTX0RCT1hfQV9DUkVESVQoMik7Ci0JdmFsIHw9IE1CVVNfREJPWF9CV19DUkVE
SVQoMSk7Ci0JdmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCg4KTsKKworCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKSB7CisJCXZhbCB8PSBNQlVTX0RCT1hfQldfQ1JFRElUKDIpOworCQl2
YWwgfD0gTUJVU19EQk9YX0JfQ1JFRElUKDEyKTsKKwl9IGVsc2UgeworCQl2YWwgfD0gTUJVU19E
Qk9YX0JXX0NSRURJVCgxKTsKKwkJdmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCg4KTsKKwl9CiAK
IAlJOTE1X1dSSVRFKFBJUEVfTUJVU19EQk9YX0NUTChwaXBlKSwgdmFsKTsKIH0KLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
