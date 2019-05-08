Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B991808E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 21:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD818986D;
	Wed,  8 May 2019 19:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF7BD8986D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 19:38:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 12:38:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,447,1549958400"; d="scan'208";a="169740419"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by fmsmga002.fm.intel.com with ESMTP; 08 May 2019 12:38:03 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 01:05:22 +0530
Message-Id: <20190508193526.28374-1-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] Enable Multi-segmented-gamma for ICL
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
aTkxNS9pbnRlbF9jb2xvci5jICAgICAgIHwgMTQwICsrKysrKysrKysrKysrKysrKysrKy0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgICA0ICstCiA0IGZpbGVz
IGNoYW5nZWQsIDE1MCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCi0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
