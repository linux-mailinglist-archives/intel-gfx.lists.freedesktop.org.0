Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFEB2A0B71
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD4A6E152;
	Fri, 30 Oct 2020 16:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E583F6E152
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:41:27 +0000 (UTC)
IronPort-SDR: zbdq1BEIah34QzNSYNhmQQxmAe1wJQtVepTn6cI5tFQAKN+PaBIEqJFW6xJE9nVBdvg4UPb7S+
 4DlM4WeZhauQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="156407209"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="156407209"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:41:27 -0700
IronPort-SDR: 3TA9//c7M+tOFQc78XeDZQzUeN7EWp91ShtNV/B9x9Jw+mL02hvm26MUz9URXJ1s/dQFqW/yfx
 TThOHWpVbCgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="324136091"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 30 Oct 2020 09:41:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 18:41:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 18:41:24 +0200
Message-Id: <20201030164124.16922-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Sort EHL/JSL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIEVITC9KU0wgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0
ZXIgdGhhbgpyYW5kb21uZXNzLgoKdjI6IERlYWwgd2l0aCB0aGUgSlNMIHZzLiBFSEwgc3BsaXQK
ClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+
ICN2MQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCAxNCArKysrKysrLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9w
Y2lpZHMuaAppbmRleCAzYjVlZDFlNGYzZWMuLjRhMGEwNmY0YTgxZSAxMDA2NDQKLS0tIGEvaW5j
bHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBA
IC01ODUsMTkgKzU4NSwxOSBAQAogLyogRUhMICovCiAjZGVmaW5lIElOVEVMX0VITF9JRFMoaW5m
bykgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTAwLCBpbmZvKSwJXAotCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0NTcxLCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTUxLCBpbmZvKSwgXAog
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTQxLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0
NTUxLCBpbmZvKSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTU1LCBpbmZvKSwgXAogCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg0NTU3LCBpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTU1LCBp
bmZvKQorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTcxLCBpbmZvKQogCiAvKiBKU0wgKi8KICNkZWZp
bmUgSU5URUxfSlNMX0lEUyhpbmZvKSBcCi0JSU5URUxfVkdBX0RFVklDRSgweDRFNzEsIGluZm8p
LCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDRFNjEsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklD
RSgweDRFNTcsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDRFNTEsIGluZm8pLCBcCiAJ
SU5URUxfVkdBX0RFVklDRSgweDRFNTUsIGluZm8pLCBcCi0JSU5URUxfVkdBX0RFVklDRSgweDRF
NTEsIGluZm8pCisJSU5URUxfVkdBX0RFVklDRSgweDRFNTcsIGluZm8pLCBcCisJSU5URUxfVkdB
X0RFVklDRSgweDRFNjEsIGluZm8pLCBcCisJSU5URUxfVkdBX0RFVklDRSgweDRFNzEsIGluZm8p
CiAKIC8qIFRHTCAqLwogI2RlZmluZSBJTlRFTF9UR0xfMTJfR1QxX0lEUyhpbmZvKSBcCi0tIAoy
LjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
