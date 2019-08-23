Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B719AADF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4604B6E593;
	Fri, 23 Aug 2019 08:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A1E6EC2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702040"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:39 -0700
Message-Id: <20190823082055.5992-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 07/23] drm/i915/tgl: PSR link standby is not
 supported anymore
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBY2Nv
cmRpbmcgdG8gQlNwYyBpZiBsaW5rIHN0YW5kYnkgaXMgc2V0IG9uIFRHTCssIFBTUiB3aWxsIG5v
dCBiZQplbmFibGVkLiBWZW5kb3JzIHNob3VsZCBub3QgdXNlIHBhbmVscyB0aGF0IHJlcXVpcmVz
IGxpbmsgc3RhbmRieSBhbmQKZXZlbiBpZiB0aGV5IGRvLCBwYW5lbCBzaG91bGQgYXNzZXJ0IGEg
UFNSIGVycm9yIHRoYXQgd2lsbCBjYXVzZSBQU1IgdG8KYmUgZGlzYWJsZWQuCgpCU3BlYzogNTA0
MzQKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDRlNmIzYWU4YTg3Mi4u
MjQyOTMyOGY5NjNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
QEAgLTEyNDMsOCArMTI0Myw4IEBAIHZvaWQgaW50ZWxfcHNyX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9B
RFdFTEwoZGV2X3ByaXYpKQogCQkvKiBIU1cgYW5kIEJEVyByZXF1aXJlIHdvcmthcm91bmRzIHRo
YXQgd2UgZG9uJ3QgaW1wbGVtZW50LiAqLwogCQlkZXZfcHJpdi0+cHNyLmxpbmtfc3RhbmRieSA9
IGZhbHNlOwotCWVsc2UKLQkJLyogRm9yIG5ldyBwbGF0Zm9ybXMgbGV0J3MgcmVzcGVjdCBWQlQg
YmFjayBhZ2FpbiAqLworCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMikKKwkJLyog
Rm9yIG5ldyBwbGF0Zm9ybXMgdXAgdG8gVEdMIGxldCdzIHJlc3BlY3QgVkJUIGJhY2sgYWdhaW4g
Ki8KIAkJZGV2X3ByaXYtPnBzci5saW5rX3N0YW5kYnkgPSBkZXZfcHJpdi0+dmJ0LnBzci5mdWxs
X2xpbms7CiAKIAlJTklUX1dPUksoJmRldl9wcml2LT5wc3Iud29yaywgaW50ZWxfcHNyX3dvcmsp
OwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
