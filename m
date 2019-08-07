Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5401F85191
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09336E73D;
	Wed,  7 Aug 2019 17:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575356E73D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:00:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 10:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="203257684"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2019 10:00:44 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x77H0h7o010955; Wed, 7 Aug 2019 18:00:43 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:00:27 +0000
Message-Id: <20190807170034.8440-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] Hardening firmware fetch
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

TW9yZSBwcm9iZSBmYWlsdXJlcyBpbnNpZGUgdWMgbG9hZGluZyBwYXRoLgoKTWljaGFsIFdhamRl
Y3prbyAoNyk6CiAgZHJtL2k5MTUvdWM6IFByZWZlciBkZXZfaW5mbyBmb3IgcmVwb3J0aW5nIG9w
dGlvbnMKICBkcm0vaTkxNS91YzogSHVDIGZpcm13YXJlIGNhbid0IGJlIHN1cHBvcnRlZCB3aXRo
b3V0IEd1QwogIGRybS9pOTE1L3VjOiBEb24ndCBmZXRjaCBIdUMgZncgaWYgR3VDIGZ3IGZldGNo
IGFscmVhZHkgZmFpbGVkCiAgZHJtL2k5MTU6IERvbid0IHRyeSB0byBwYXJ0aXRpb24gV09QQ00g
d2l0aG91dCBHdUMgZmlybXdhcmUKICBkcm0vaTkxNTogTWFrZSB3b3BjbV90b19pOTE1KCkgcHJp
dmF0ZQogIGRybS9pOTE1L3VjOiBXT1BDTSBwcm9ncmFtbWluZyBlcnJvcnMgYXJlIG5vdCBhbHdh
eXMgcmVhbAogIGRybS9pOTE1L3VjOiBIYXJkZW5pbmcgZmlybXdhcmUgZmV0Y2gKCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYyB8ICAgNSArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmMgICAgIHwgIDQyICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAgfCAxNTYgKysrKysrKysrKysrKysrLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCAgfCAgMTEgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgIHwgICA1IC0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3dvcGNtLmMgICAgICAgIHwgICA3ICstCiA3IGZpbGVzIGNoYW5nZWQsIDE1
NiBpbnNlcnRpb25zKCspLCA3OCBkZWxldGlvbnMoLSkKCi0tIAoyLjE5LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
