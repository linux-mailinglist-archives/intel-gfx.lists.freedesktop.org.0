Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7031FAF310
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 00:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50B66E9D4;
	Tue, 10 Sep 2019 22:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5726E9D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 22:52:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 15:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="384496295"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by fmsmga005.fm.intel.com with ESMTP; 10 Sep 2019 15:52:51 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:42:16 -0700
Message-Id: <20190910224218.389-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] HuC Updates
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA2YzY5MThhZDhhZTBkZmIyY2I1OTE0
ODRlYmE1MjU0MDk5ODBjMTZmOgoKICBsaW51eC1maXJtd2FyZTogVXBkYXRlIGZpcm13YXJlIGZp
bGUgZm9yIEludGVsIEJsdWV0b290aCBBWDIwMSAoMjAxOS0wOS0wOSAwNDoyMjo0MiAtMDQwMCkK
CmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWZpcm13YXJlIGVobF9odWMKCmZvciB5b3UgdG8gZmV0
Y2ggY2hhbmdlcyB1cCB0byA0NGE2ZDdlNTc3Y2EzZGYxNmQ4MDRjNTYwZGUxNmNiODQ4M2M0MzA2
OgoKICBpOTE1OiBBZGQgSHVDIGZpcm13YXJlIHY5LjAuMCBmb3IgRUhMICgyMDE5LTA5LTA5IDEy
OjE5OjQyIC0wNzAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgxKToKICAgICAg
aTkxNTogQWRkIEh1QyBmaXJtd2FyZSB2OS4wLjAgZm9yIEVITAoKIFdIRU5DRSAgICAgICAgICAg
ICAgICAgfCAgIDMgKysrCiBpOTE1L2VobF9odWNfOS4wLjAuYmluIHwgQmluIDAgLT4gNDk4ODgw
IGJ5dGVzCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGk5MTUvZWhsX2h1Y185LjAuMC5iaW4KCgpBbnVzaGEgU3JpdmF0c2EgKDIpOgogIGRybS9p
OTE1L3VjOiBVcGRhdGUgR3VDIGFuZCBIdUMgZmlybXdhcmUgbmFtaW5nIGNvbnZlbnRpb24KICBI
QVg6IGZvcmNlIGVuYWJsZV9ndWM9MgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMgfCAyNyArKysrKysrKysrKystLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGFyYW1zLmggICAgICAgfCAgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNl
cnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
