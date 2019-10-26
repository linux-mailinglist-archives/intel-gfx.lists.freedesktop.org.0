Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3418BE5761
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 02:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A56E6EBD7;
	Sat, 26 Oct 2019 00:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CEC6EBD7
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 00:09:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 17:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="189085278"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 25 Oct 2019 17:09:40 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 17:09:16 -0700
Message-Id: <20191026000916.8883-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for TGL GuC/HuC binaries
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAzNDBlMDZlYjRiNTdkYTBjYmNlYjI1
ZmFmN2I1MjYyNjNiM2UzZGZhOgoKICBsaW51eC1maXJtd2FyZTogQWRkIGZpcm13YXJlIGZpbGUg
Zm9yIEludGVsIEJsdWV0b290aCBBWDIwMSAoMjAxOS0xMC0yNSAwODoyNjoxNiAtMDQwMCkKCmFy
ZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWZpcm13YXJlIGVobF90Z2xfdWMKCmZvciB5b3UgdG8gZmV0
Y2ggY2hhbmdlcyB1cCB0byAwOTA2MjU4NDdiOGUyZjI1NWJiZDRlMGFhMTY0MTk4M2E1NzBhYzc2
OgoKICBpOTE1OiBBZGQgSHVDIGZpcm13YXJlIHY3LjAuMyBmb3IgVEdMICgyMDE5LTEwLTI1IDE2
OjU0OjM4IC0wNzAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpEYW5pZWxlIENlcmFvbG8gU3B1cmlvICg0KToKICAgICAg
aTkxNTogQWRkIEd1QyBmaXJtd2FyZSB2MzMuMC40IGZvciBFSEwKICAgICAgaTkxNTogQWRkIEh1
QyBmaXJtd2FyZSB2OS4wLjAgZm9yIEVITAogICAgICBpOTE1OiBBZGQgR3VDIGZpcm13YXJlIHYz
NS4yLjAgZm9yIFRHTAogICAgICBpOTE1OiBBZGQgSHVDIGZpcm13YXJlIHY3LjAuMyBmb3IgVEdM
CgogV0hFTkNFICAgICAgICAgICAgICAgICAgfCAgMTIgKysrKysrKysrKysrCiBpOTE1L2VobF9n
dWNfMzMuMC40LmJpbiB8IEJpbiAwIC0+IDM5NjI4OCBieXRlcwogaTkxNS9laGxfaHVjXzkuMC4w
LmJpbiAgfCBCaW4gMCAtPiA0OTg4ODAgYnl0ZXMKIGk5MTUvdGdsX2d1Y18zNS4yLjAuYmluIHwg
QmluIDAgLT4gNDE3NzI4IGJ5dGVzCiBpOTE1L3RnbF9odWNfNy4wLjMuYmluICB8IEJpbiAwIC0+
IDUyMTQwOCBieXRlcwogNSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgaTkxNS9laGxfZ3VjXzMzLjAuNC5iaW4KIGNyZWF0ZSBtb2RlIDEwMDY0NCBp
OTE1L2VobF9odWNfOS4wLjAuYmluCiBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS90Z2xfZ3VjXzM1
LjIuMC5iaW4KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L3RnbF9odWNfNy4wLjMuYmluCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
