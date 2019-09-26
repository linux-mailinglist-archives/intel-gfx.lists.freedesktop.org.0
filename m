Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171BFBEF3C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D346ED98;
	Thu, 26 Sep 2019 10:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869F16ED98
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:06:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 03:06:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="203825624"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga001.fm.intel.com with ESMTP; 26 Sep 2019 03:06:55 -0700
Received: from localhost (172.28.172.64) by IRSMSX102.ger.corp.intel.com
 (163.33.3.155) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 26 Sep
 2019 11:06:55 +0100
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 26 Sep 2019 12:06:32 +0200
Message-ID: <20190926100635.9416-3-michal.winiarski@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190926100635.9416-1-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
MIME-Version: 1.0
X-Originating-IP: [172.28.172.64]
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Adjust length of
 MI_LOAD_REGISTER_REG
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVmYXVsdCBsZW5ndGggdmFsdWUgb2YgTUlfTE9BRF9SRUdJU1RFUl9SRUcgaXMgMS4KQWxzbyBt
b3ZlIGl0IG91dCBvZiBjbWQtcGFyc2VyLW9ubHkgcmVnaXN0ZXJzIHNpbmNlIHdlJ3JlIGdvaW5n
IHRvIHVzZQppdCBpbiBpOTE1LgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1p
Y2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAppbmRleCBmNzhiMTNkNzRlMTcuLjky
MTFiMWFkNDAxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1
X2NvbW1hbmRzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1h
bmRzLmgKQEAgLTE1Miw2ICsxNTIsNyBAQAogI2RlZmluZSAgIE1JX0ZMVVNIX0RXX1VTRV9QUEdU
VAkJKDA8PDIpCiAjZGVmaW5lIE1JX0xPQURfUkVHSVNURVJfTUVNCSAgIE1JX0lOU1RSKDB4Mjks
IDEpCiAjZGVmaW5lIE1JX0xPQURfUkVHSVNURVJfTUVNX0dFTjggIE1JX0lOU1RSKDB4MjksIDIp
CisjZGVmaW5lIE1JX0xPQURfUkVHSVNURVJfUkVHICAgIE1JX0lOU1RSKDB4MkEsIDEpCiAjZGVm
aW5lIE1JX0JBVENIX0JVRkZFUgkJTUlfSU5TVFIoMHgzMCwgMSkKICNkZWZpbmUgICBNSV9CQVRD
SF9OT05fU0VDVVJFCQkoMSkKIC8qIGZvciBzbmIvaXZiL3ZsdiB0aGlzIGFsc28gbWVhbnMgImJh
dGNoIGluIHBwZ3R0IiB3aGVuIHBwZ3R0IGlzIGVuYWJsZWQuICovCkBAIC0yNTYsNyArMjU3LDYg
QEAKICNkZWZpbmUgTUlfQ0xGTFVTSCAgICAgICAgICAgICAgTUlfSU5TVFIoMHgyNywgMCkKICNk
ZWZpbmUgTUlfUkVQT1JUX1BFUkZfQ09VTlQgICAgTUlfSU5TVFIoMHgyOCwgMCkKICNkZWZpbmUg
ICBNSV9SRVBPUlRfUEVSRl9DT1VOVF9HR1RUICgxPDwwKQotI2RlZmluZSBNSV9MT0FEX1JFR0lT
VEVSX1JFRyAgICBNSV9JTlNUUigweDJBLCAwKQogI2RlZmluZSBNSV9SU19TVE9SRV9EQVRBX0lN
TSAgICBNSV9JTlNUUigweDJCLCAwKQogI2RlZmluZSBNSV9MT0FEX1VSQl9NRU0gICAgICAgICBN
SV9JTlNUUigweDJDLCAwKQogI2RlZmluZSBNSV9TVE9SRV9VUkJfTUVNICAgICAgICBNSV9JTlNU
UigweDJELCAwKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
