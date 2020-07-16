Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F6922299F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3FE6EC8F;
	Thu, 16 Jul 2020 17:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791616EC96
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:27 +0000 (UTC)
IronPort-SDR: +vE4R5MuPS1bA6G9OR4noaZ26mh0ryfASMVA+G3VcHJjYbLDyzWmPXu16bQgyd1xmxavqFt9RO
 39OrUz43r14w==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="136900366"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="136900366"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:26 -0700
IronPort-SDR: 9YgrxaazHaCIOO0gzwmi24kubEvsASNs9Oxva1I+QafwEkxernprQmDPVrLC9c99GIwxqfXLwm
 YaNGthdsRCsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="317098118"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 16 Jul 2020 10:21:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:58 +0300
Message-Id: <20200716172106.2656-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/14] drm/i915: Ocd the HSW PCI ID hex numbers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
c3Qgb2YgdGhlIEhTVyBQQ0kgSURzIGFyZSB1cHBlciBjYXNlIGhleCBudW1iZXJzLCBidXQgYQpm
ZXcgYXJlIGxvd2VyIGNhc2UuIE1ha2UgaXQgY29uc2lzdGVudCBzbyB0aGVzZSBkb24ndApzdGlj
ayBvdXQgbGlrZSBhIHNvcmUgdGh1bWIuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9k
dGVsZUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDYg
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1
X3BjaWlkcy5oCmluZGV4IDM3OTJhYjVmMjBmZi4uMDI2ZGI0ZDQ5NmU5IDEwMDY0NAotLS0gYS9p
bmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgK
QEAgLTE4MSw3ICsxODEsNyBAQAogCUlOVEVMX0hTV19VTFRfR1QxX0lEUyhpbmZvKSwgXAogCUlO
VEVMX0hTV19VTFhfR1QxX0lEUyhpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwNDAyLCBp
bmZvKSwgLyogR1QxIGRlc2t0b3AgKi8gXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwNDBhLCBpbmZv
KSwgLyogR1QxIHNlcnZlciAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgweDA0MEEsIGluZm8pLCAv
KiBHVDEgc2VydmVyICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MDQwQiwgaW5mbyksIC8qIEdU
MSByZXNlcnZlZCAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDA0MEUsIGluZm8pLCAvKiBHVDEg
cmVzZXJ2ZWQgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwQzAyLCBpbmZvKSwgLyogU0RWIEdU
MSBkZXNrdG9wICovIFwKQEAgLTIwOSw3ICsyMDksNyBAQAogCUlOVEVMX0hTV19VTFRfR1QyX0lE
UyhpbmZvKSwgXAogCUlOVEVMX0hTV19VTFhfR1QyX0lEUyhpbmZvKSwgXAogCUlOVEVMX1ZHQV9E
RVZJQ0UoMHgwNDEyLCBpbmZvKSwgLyogR1QyIGRlc2t0b3AgKi8gXAotCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHgwNDFhLCBpbmZvKSwgLyogR1QyIHNlcnZlciAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgw
eDA0MUEsIGluZm8pLCAvKiBHVDIgc2VydmVyICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MDQx
QiwgaW5mbyksIC8qIEdUMiByZXNlcnZlZCAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDA0MUUs
IGluZm8pLCAvKiBHVDIgcmVzZXJ2ZWQgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwQzEyLCBp
bmZvKSwgLyogU0RWIEdUMiBkZXNrdG9wICovIFwKQEAgLTIzNCw3ICsyMzQsNyBAQAogI2RlZmlu
ZSBJTlRFTF9IU1dfR1QzX0lEUyhpbmZvKSBcCiAJSU5URUxfSFNXX1VMVF9HVDNfSURTKGluZm8p
LCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDA0MjIsIGluZm8pLCAvKiBHVDMgZGVza3RvcCAqLyBc
Ci0JSU5URUxfVkdBX0RFVklDRSgweDA0MmEsIGluZm8pLCAvKiBHVDMgc2VydmVyICovIFwKKwlJ
TlRFTF9WR0FfREVWSUNFKDB4MDQyQSwgaW5mbyksIC8qIEdUMyBzZXJ2ZXIgKi8gXAogCUlOVEVM
X1ZHQV9ERVZJQ0UoMHgwNDJCLCBpbmZvKSwgLyogR1QzIHJlc2VydmVkICovIFwKIAlJTlRFTF9W
R0FfREVWSUNFKDB4MDQyRSwgaW5mbyksIC8qIEdUMyByZXNlcnZlZCAqLyBcCiAJSU5URUxfVkdB
X0RFVklDRSgweDBDMjIsIGluZm8pLCAvKiBTRFYgR1QzIGRlc2t0b3AgKi8gXAotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
