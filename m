Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485DE16546
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 15:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6436E7D6;
	Tue,  7 May 2019 13:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730796E7D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 13:59:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 06:59:29 -0700
X-ExtLoop1: 1
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga001.fm.intel.com with ESMTP; 07 May 2019 06:59:29 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 19:26:40 +0530
Message-Id: <20190507135644.23882-1-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/4] Enable Multi-segmented-gamma for ICL
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

VGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlcyBwcm9ncmFtbWluZyBvZiBNdWx0aS1zZWdtZW50ZWQt
Z2FtbWEKcGFsZXR0ZSBmb3IgSUNMLgoKU2hhc2hhbmsgU2hhcm1hICgzKToKICBkcm0vaTkxNTog
Q2hhbmdlIGdhbW1hL2RlZ2FtbWFfbHV0X3NpemUgZGF0YSB0eXBlIHRvIHUzMgogIGRybS9pOTE1
OiBSZW5hbWUgaXZiX2xvYWRfbHV0XzEwX21heAogIGRybS9pOTE1L2ljbDogQWRkIE11bHRpLXNl
Z21lbnRlZCBnYW1tYSBzdXBwb3J0CgpVbWEgU2hhbmthciAoMSk6CiAgZHJtL2k5MTUvaWNsOiBB
ZGQgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgZm9yIE11bHRpIFNlZ21lbnRlZCBnYW1tYQoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMTkgKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jb2xvci5jICAgICAgIHwgMTQxICsrKysrKysrKysrKysrKysrKysrKy0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgICA0ICstCiA0IGZpbGVz
IGNoYW5nZWQsIDE1MSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
