Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B105942B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 08:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCA46E87D;
	Fri, 28 Jun 2019 06:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263966E87D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 06:28:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 23:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="164974947"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga003.jf.intel.com with ESMTP; 27 Jun 2019 23:28:32 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 12:23:56 +0530
Message-Id: <20190628065359.10375-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 0/3] Extend BT2020 support in iCSC and fixes
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

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciBCVDIwMjAgWUNiQ3IgdG8gUkdCIGNvbnZlcnNp
b24KdXNpbmcgaW5wdXQgQ1NDLiBUaGlzIGFsc28gZml4ZXMgaXNzdWVzIHdpdGggQlQ2MDEgYW5k
IEJUNzA5CmNvZWZmaWNpZW50cy4KCnYyOiBGaXhlZCBWaWxsZSdzIHJldmlldyBjb21tZW50cy4K
CnYzOiBSZWJhc2UuCgp2NDogUmViYXNlLgoKVW1hIFNoYW5rYXIgKDMpOgogIGRybS9pOTE1L2lj
bDogSGFuZGxlIFlDYkNyIHRvIFJHQiBjb252ZXJzaW9uIGZvciBCVDIwMjAgY2FzZQogIGRybS9p
OTE1L2ljbDogRml4IFkgcHJlLW9mZnNldCBmb3IgRnVsbCBSYW5nZSBZQ2JDcgogIGRybS9pOTE1
L2ljbDogRml4ZWQgSW5wdXQgQ1NDIENvLWVmZmljaWVudHMgZm9yIEJUNjAxLzcwOQoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCA1NSArKysrKysrKysrKysr
KystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMo
LSkKCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
