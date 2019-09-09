Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9632ADF84
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 21:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0494E89C37;
	Mon,  9 Sep 2019 19:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF5489C37
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 19:38:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 12:38:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="335689303"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2019 12:38:33 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:27:59 -0700
Message-Id: <20190909192801.3164-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] HuC updates
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

ICBsaW51eC1maXJtd2FyZTogVXBkYXRlIGZpcm13YXJlIGZpbGUgZm9yIEludGVsIEJsdWV0b290
aCBBWDIwMSAoMjAxOS0wOS0wOSAwNDoyMjo0MiAtMDQwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhl
IEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0v
ZHJtLWZpcm13YXJlIGVobF9odWMKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0NGE2
ZDdlNTc3Y2EzZGYxNmQ4MDRjNTYwZGUxNmNiODQ4M2M0MzA2OgoKICBpOTE1OiBBZGQgSHVDIGZp
cm13YXJlIHY5LjAuMCBmb3IgRUhMICgyMDE5LTA5LTA5IDEyOjE5OjQyIC0wNzAwKQoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgxKToKICAgICAgaTkxNTogQWRkIEh1QyBmaXJtd2Fy
ZSB2OS4wLjAgZm9yIEVITAoKIFdIRU5DRSAgICAgICAgICAgICAgICAgfCAgIDMgKysrCiBpOTE1
L2VobF9odWNfOS4wLjAuYmluIHwgQmluIDAgLT4gNDk4ODgwIGJ5dGVzCiAyIGZpbGVzIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGk5MTUvZWhsX2h1Y185LjAu
MC5iaW4KYW51c2hhQGFudXNoYTp+L2RybS1maXJtd2FyZSQgdHNvY2tzIGdpdCBwdXNoIG9yaWdp
biBlaGxfaHVjCkVudW1lcmF0aW5nIG9iamVjdHM6IDEyLCBkb25lLgpDb3VudGluZyBvYmplY3Rz
OiAxMDAlICgxMi8xMiksIGRvbmUuCkRlbHRhIGNvbXByZXNzaW9uIHVzaW5nIHVwIHRvIDQgdGhy
ZWFkcwpDb21wcmVzc2luZyBvYmplY3RzOiAxMDAlICg4LzgpLCBkb25lLgpXcml0aW5nIG9iamVj
dHM6IDEwMCUgKDgvOCksIDE1My4zMSBLaUIgfCA3Ni42NSBNaUIvcywgZG9uZS4KVG90YWwgOCAo
ZGVsdGEgNSksIHJldXNlZCAxIChkZWx0YSAwKQpUbyBzc2g6Ly9naXQuZnJlZWRlc2t0b3Aub3Jn
L2dpdC9kcm0vZHJtLWZpcm13YXJlCiAqIFtuZXcgYnJhbmNoXSAgICAgIGVobF9odWMgLT4gZWhs
X2h1YwoKQW51c2hhIFNyaXZhdHNhICgyKToKICBkcm0vaTkxNS91YzogVXBkYXRlIE1BS0VfSFVD
X0ZXX1BBVEggbWFjcm8KICBIQVg6IGZvcmNlIGVuYWJsZV9ndWM9MgoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCAyNSArKysrKysrKysrKystLS0tLS0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgfCAgMiArLQogMiBmaWxl
cyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
