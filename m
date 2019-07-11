Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9836B65F1F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90446E285;
	Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A5216E27A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894654"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:30:55 -0700
Message-Id: <20190711173115.28296-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/21] drm/i915: Add 4th pipe and transcoder
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

QWRkIHBpcGUgRCBhbmQgdHJhbnNjb2RlciBEIHRvIHByZXBhcmUgZm9yIHBsYXRmb3JtcyBoYXZp
bmcgdGhlbS4KCkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8IDQgKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAzICsrKwogMyBm
aWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDAyODZiOTdjYWEyMi4u
ZDZiYTE1YzU5NzQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTcxODksNyArMTcxODksNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9lcnJv
cl9zdGF0ZSB7CiAJCXUzMiB2dG90YWw7CiAJCXUzMiB2Ymxhbms7CiAJCXUzMiB2c3luYzsKLQl9
IHRyYW5zY29kZXJbNF07CisJfSB0cmFuc2NvZGVyWzVdOwogfTsKIAogc3RydWN0IGludGVsX2Rp
c3BsYXlfZXJyb3Jfc3RhdGUgKgpAQCAtMTcyMDAsNiArMTcyMDAsNyBAQCBpbnRlbF9kaXNwbGF5
X2NhcHR1cmVfZXJyb3Jfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CQlUUkFOU0NPREVSX0EsCiAJCVRSQU5TQ09ERVJfQiwKIAkJVFJBTlNDT0RFUl9DLAorCQlUUkFO
U0NPREVSX0QsCiAJCVRSQU5TQ09ERVJfRURQLAogCX07CiAJaW50IGk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IDhhNGE1N2VmODJhMi4uMWY3
NWIwYTYyN2ZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaApAQCAtNTgsNiArNTgsNyBAQCBlbnVtIHBpcGUgewogCVBJUEVfQSA9IDAsCiAJUElQRV9C
LAogCVBJUEVfQywKKwlQSVBFX0QsCiAJX1BJUEVfRURQLAogCiAJSTkxNV9NQVhfUElQRVMgPSBf
UElQRV9FRFAKQEAgLTc1LDYgKzc2LDcgQEAgZW51bSB0cmFuc2NvZGVyIHsKIAlUUkFOU0NPREVS
X0EgPSBQSVBFX0EsCiAJVFJBTlNDT0RFUl9CID0gUElQRV9CLAogCVRSQU5TQ09ERVJfQyA9IFBJ
UEVfQywKKwlUUkFOU0NPREVSX0QgPSBQSVBFX0QsCiAKIAkvKgogCSAqIFRoZSBmb2xsb3dpbmcg
dHJhbnNjb2RlcnMgY2FuIG1hcCB0byBhbnkgcGlwZSwgdGhlaXIgZW51bSB2YWx1ZQpAQCAtOTgs
NiArMTAwLDggQEAgc3RhdGljIGlubGluZSBjb25zdCBjaGFyICp0cmFuc2NvZGVyX25hbWUoZW51
bSB0cmFuc2NvZGVyIHRyYW5zY29kZXIpCiAJCXJldHVybiAiQiI7CiAJY2FzZSBUUkFOU0NPREVS
X0M6CiAJCXJldHVybiAiQyI7CisJY2FzZSBUUkFOU0NPREVSX0Q6CisJCXJldHVybiAiRCI7CiAJ
Y2FzZSBUUkFOU0NPREVSX0VEUDoKIAkJcmV0dXJuICJFRFAiOwogCWNhc2UgVFJBTlNDT0RFUl9E
U0lfQToKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDk1YjljYTFmZGEyZS4uNmZlM2Q3NGY5
OWZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQyMTcsNiArNDIxNyw3IEBAIGVudW0g
ewogI2RlZmluZSBUUkFOU0NPREVSX0JfT0ZGU0VUIDB4NjEwMDAKICNkZWZpbmUgVFJBTlNDT0RF
Ul9DX09GRlNFVCAweDYyMDAwCiAjZGVmaW5lIENIVl9UUkFOU0NPREVSX0NfT0ZGU0VUIDB4NjMw
MDAKKyNkZWZpbmUgVFJBTlNDT0RFUl9EX09GRlNFVCAweDYzMDAwCiAjZGVmaW5lIFRSQU5TQ09E
RVJfRURQX09GRlNFVCAweDZmMDAwCiAjZGVmaW5lIFRSQU5TQ09ERVJfRFNJMF9PRkZTRVQJMHg2
YjAwMAogI2RlZmluZSBUUkFOU0NPREVSX0RTSTFfT0ZGU0VUCTB4NmI4MDAKQEAgLTU3NjMsNiAr
NTc2NCw3IEBAIGVudW0gewogI2RlZmluZSBQSVBFX0FfT0ZGU0VUCQkweDcwMDAwCiAjZGVmaW5l
IFBJUEVfQl9PRkZTRVQJCTB4NzEwMDAKICNkZWZpbmUgUElQRV9DX09GRlNFVAkJMHg3MjAwMAor
I2RlZmluZSBQSVBFX0RfT0ZGU0VUCQkweDczMDAwCiAjZGVmaW5lIENIVl9QSVBFX0NfT0ZGU0VU
CTB4NzQwMDAKIC8qCiAgKiBUaGVyZSdzIGFjdHVhbGx5IG5vIHBpcGUgRURQLiBTb21lIHBpcGUg
cmVnaXN0ZXJzIGhhdmUKQEAgLTkzNDYsNiArOTM0OCw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUg
ewogI2RlZmluZSBfVFJBTlNfRERJX0ZVTkNfQ1RMX0EJCTB4NjA0MDAKICNkZWZpbmUgX1RSQU5T
X0RESV9GVU5DX0NUTF9CCQkweDYxNDAwCiAjZGVmaW5lIF9UUkFOU19ERElfRlVOQ19DVExfQwkJ
MHg2MjQwMAorI2RlZmluZSBfVFJBTlNfRERJX0ZVTkNfQ1RMX0QJCTB4NjM0MDAKICNkZWZpbmUg
X1RSQU5TX0RESV9GVU5DX0NUTF9FRFAJCTB4NkY0MDAKICNkZWZpbmUgX1RSQU5TX0RESV9GVU5D
X0NUTF9EU0kwCTB4NmI0MDAKICNkZWZpbmUgX1RSQU5TX0RESV9GVU5DX0NUTF9EU0kxCTB4NmJj
MDAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
