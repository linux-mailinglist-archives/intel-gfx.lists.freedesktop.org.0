Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996D0FCB2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 17:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFE0891F4;
	Tue, 30 Apr 2019 15:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D2E891F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 15:23:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 08:23:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="140129961"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by orsmga006.jf.intel.com with ESMTP; 30 Apr 2019 08:23:46 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 20:51:04 +0530
Message-Id: <20190430152108.31814-1-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4] Enable Multi-segmented-gamma for ICL
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
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMTkgKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY29sb3IuYyAgICAgICB8IDEzOSArKysrKysrKysrKysrKysrKysrKystLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8ICAgNCArLQogNCBmaWxl
cyBjaGFuZ2VkLCAxNTEgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
