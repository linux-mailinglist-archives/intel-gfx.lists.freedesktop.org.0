Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FED975BBF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262BB6E840;
	Thu, 25 Jul 2019 23:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04726E82C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:57:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 16:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="178178558"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2019 16:56:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 16:56:38 -0700
Message-Id: <20190725235643.6870-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Tiger Lake: DKL phy PLLs
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

TW9zdGx5IHRoZSBzYW1lIHBhdGNoZXMgYXMgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82MzY3MC8uClJlYmFzZWQuCgpMdWNhcyBEZSBNYXJjaGkgKDIpOgogIGRybS9p
OTE1L3RnbDogcmUtaW5kZW50IGNvZGUgdG8gcHJlcGFyZSBmb3IgREtMIGNoYW5nZXMKICBkcm0v
aTkxNS90Z2w6IHN0YXJ0IGFkZGluZyB0aGUgREtMIFBMTHMgdG8gdXNlIG9uIFRDIHBvcnRzCgpW
YW5kaXRhIEt1bGthcm5pICgzKToKICBkcm0vaTkxNS90Z2w6IEFkZCBES0wgcGh5IHBsbCByZWdp
c3RlcnMKICBkcm0vaTkxNS90Z2w6IEFkZCBES0wgcGh5IHBsbCBzdGF0ZSBjYWxjdWxhdGlvbnMK
ICBkcm0vaTkxNS90Z2w6IEFkZCBzdXBwb3J0IGZvciBka2wgcGxsIHdyaXRlCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMzM1ICsrKysrKysrKysrKysr
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDk0
ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDM2OCBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlvbnMo
LSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
