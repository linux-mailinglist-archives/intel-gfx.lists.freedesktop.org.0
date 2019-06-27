Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E409758D5B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 23:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCDB96E846;
	Thu, 27 Jun 2019 21:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A68C6E846
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 21:49:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 14:48:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="170559943"
Received: from aswarup-desk.jf.intel.com ([10.54.75.32])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jun 2019 14:48:59 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 14:44:37 -0700
Message-Id: <20190627214439.17708-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Set correct values for N in deep color mode
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

UGF0Y2ggc2VyaWVzIHRvIHNldCBjb3JyZWN0IHZhbHVlcyBmb3IgTiBiYXNlZCBvbiBwb3J0IGNs
b2NrIGluIGRlZXAKY29sb3IgbW9kZS4gQ3VycmVudGx5LCB0aGUgaGFyZHdhcmUgZG9lc24ndCBz
ZXQgdGhlIGNvcnJlY3QgTiBpbiBkZWVwCmNvbG9yIG1vZGUuIAoKQWRpdHlhIFN3YXJ1cCAoMik6
CiAgZHJtL2k5MTU6IFVzZSBwb3J0IGNsb2NrIHRvIHNldCBjb3JyZWN0IE4gdmFsdWUKICBkcm0v
aTkxNTogQWRkIE4gJiBDVFMgdmFsdWVzIGZvciAxMC8xMiBiaXQgZGVlcCBjb2xvcgoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyB8IDgxICsrKysrKysrKysrKysr
KysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMo
LSkKCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
