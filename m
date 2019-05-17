Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 202C421B1E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5504E89023;
	Fri, 17 May 2019 16:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EDC389023
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:03:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:03:20 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2019 09:03:18 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:00:30 +0530
Message-Id: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v3 0/3] Extend BT2020 support in iCSC and fixes
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciBCVDIwMjAgWUNiQ3IgdG8gUkdCIGNvbnZlcnNp
b24KdXNpbmcgaW5wdXQgQ1NDLiBUaGlzIGFsc28gZml4ZXMgaXNzdWVzIHdpdGggQlQ2MDEgYW5k
IEJUNzA5CmNvZWZmaWNpZW50cy4KCnYyOiBGaXhlZCBWaWxsZSdzIHJldmlldyBjb21tZW50cy4K
CnYzOiBSZWJhc2UuCgpVbWEgU2hhbmthciAoMyk6CiAgZHJtL2k5MTUvaWNsOiBIYW5kbGUgWUNi
Q3IgdG8gUkdCIGNvbnZlcnNpb24gZm9yIEJUMjAyMCBjYXNlCiAgZHJtL2k5MTUvaWNsOiBGaXgg
WSBwcmUtb2Zmc2V0IGZvciBGdWxsIFJhbmdlIFlDYkNyCiAgZHJtL2k5MTUvaWNsOiBGaXhlZCBJ
bnB1dCBDU0MgQ28tZWZmaWNpZW50cyBmb3IgQlQ2MDEvNzA5CgogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfc3ByaXRlLmMgfCA1NSArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgot
LSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
