Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A0849681
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 03:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C40B6E0BA;
	Tue, 18 Jun 2019 01:01:10 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DCE6E0C2
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 01:01:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 18:01:08 -0700
X-ExtLoop1: 1
Received: from relo-linux-5.ra.intel.com ([10.54.133.84])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2019 18:01:08 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 17 Jun 2019 18:01:04 -0700
Message-Id: <20190618010108.27499-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 0/4] Update whitelist support for new hardware
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

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KClJlY2VudCBo
YXJkd2FyZSBhZGRzIHN1cHBvcnQgZm9yIGZpbmVyLWdyYWluZWQgY29udHJvbCBvdmVyCndoaXRl
bGlzdGluZywgYWxsb3dpbmcgcmVnaXN0ZXJzIHRvIGJlIHdoaXRlbGlzdGVkIGluZGVwZW5kZW50
bHkKZm9yIHJlYWRzIGFuZC9vciB3cml0ZXMuIFRoaXMgc2VyaWVzIHdpbGwgYWRkIHRoZSBiYXNp
YyBwbHVtYmluZwp0byBzdXBwb3J0IHRoYXQuCgpKb2huIEhhcnJpc29uICgzKToKICBkcm0vaTkx
NTogU3VwcG9ydCBmbGFncyBpbiB3aGl0bGlzdCBXQXMKICBkcm0vaTkxNTogU3VwcG9ydCB3aGl0
ZWxpc3Qgd29ya2Fyb3VuZHMgb24gYWxsIGVuZ2luZXMKICBkcm0vaTkxNTogQWRkIHdoaXRlbGlz
dCB3b3JrYXJvdW5kcyBmb3IgSUNMCgpSb2JlcnQgTS4gRm9zaGEgKDEpOgogIGRybS9pOTE1OiBV
cGRhdGUgd29ya2Fyb3VuZHMgc2VsZnRlc3QgZm9yIHJlYWQgb25seSByZWdzCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAgIHwgMTA1ICsrKysrKysrKysrKyst
LS0tLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jICAgIHwgIDQz
ICsrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8
ICAgNyArKwogMyBmaWxlcyBjaGFuZ2VkLCAxMjQgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25z
KC0pCgotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
