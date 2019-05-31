Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0098F31725
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Jun 2019 00:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39CE898FD;
	Fri, 31 May 2019 22:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6091D898FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 22:24:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 15:24:35 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 15:24:35 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 15:24:07 -0700
Message-Id: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] split out intel_display_power
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

U2VwYXJhdGUgdGhlIGRpc3BsYXkgUE0gZnJvbSB0aGUgUENJLWxldmVsIHJ1bnRpbWUgUE0uCkkn
bGwgZm9sbG93IHRoaXMgdXAgd2l0aCB2MiBvZiB0aGUgcnBtIGVuY2Fwc3VsYXRpb24gc2VyaWVz
IFsxXSwgYnV0CkknZCBsaWtlIHRvIGdldCB0aGlzIGluIGJlZm9yZSB0aGF0IHRvIGF2b2lkIGhh
dmluZyB0byBjYXJyeSB0aGlzCmJpZyBkdW1iIGRpZmYgaW4gdGhhdCBzZXJpZXMuCgpbMV0gaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDc1MS8KCkRhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gKDIpOgogIGRybS9pOTE1OiBleHRyYWN0IGludGVsX2Rpc3BsYXlfcG93ZXIu
aC9jIGZyb20gaW50ZWxfcnVudGltZV9wbS5oL2MKICBkcm0vaTkxNTogbW92ZSBtb3JlIGRlZnMg
aW4gaW50ZWxfZGlzcGxheV9wb3dlci5oCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUg
ICAgICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCAgfCAgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgICB8ICAxMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuaCAgICAg
ICB8ICAgODIgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwg
NDYxMiArKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmggfCAgMjg4ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmMgICAgfCA0NzkxICstLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ydW50aW1lX3BtLmggICAgfCAgIDgzICstCiA4IGZpbGVzIGNoYW5nZWQsIDUwMDQg
aW5zZXJ0aW9ucygrKSwgNDk2NSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
