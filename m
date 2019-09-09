Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 956B7AD257
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 05:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1475789450;
	Mon,  9 Sep 2019 03:42:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1925789364
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 03:42:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Sep 2019 20:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,483,1559545200"; d="scan'208";a="383846685"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 08 Sep 2019 20:42:07 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Sep 2019 20:43:19 -0700
Message-Id: <20190909034325.20006-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Remaining patches to enable Transcoder Port
 Sync for tiled displays
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

VGhpcyBwYXRjaCBzZXJpZXMgYWRkcmVzc2VzIGFsbCByZXZpZXcgY29tbWVudHMgYW5kIG5vdyB0
aGUgZW5hYmxlIGFuZCBkaXNhYmxlCnBhdGhzIGZvbGxvdyB0aGUgbWV0aG9kIG9mIG9idGFpbmlu
ZyBzbGF2ZSBzdGF0ZXMgZnJvbSBtYXN0ZXIgYW5kIHVwZGF0aW5nIG1hc3Rlci1zbGF2ZXMKaW4g
Y29ycmVjdCBvcmRlciBkdXJpbmcgbWFzdGVyIG1vZGVzZXQuCgpUaGUgZGRiIGFsbG9jYXRpb25z
IGFuZCB3YXRlcm1hcmtzIGNoYW5nZXMgYXJlIG5vdCBhZGRyZXNzZWQgaGVyZSBhbmQgd2lsbCBi
ZSBhZGRlZAphZnRlciB0aGUgYmFzaWMgc3VwcG9ydCBnZXRzIHVwc3RyZWFtZWQKCk1hbmFzaSBO
YXZhcmUgKDYpOgogIGRybS9pOTE1L2Rpc3BsYXkvaWNsOiBTYXZlIE1hc3RlciB0cmFuc2NvZGVy
IGluIHNsYXZlJ3MgY3J0Y19zdGF0ZSBmb3IKICAgIFRyYW5zY29kZXIgUG9ydCBTeW5jCiAgZHJt
L2k5MTUvZGlzcGxheS9pY2w6IEVuYWJsZSBUUkFOU0NPREVSIFBPUlQgU1lOQyBmb3IgdGlsZWQg
ZGlzcGxheXMKICAgIGFjcm9zcyBzZXBhcmF0ZSBwb3J0cwogIGRybS9pOTE1L2Rpc3BsYXkvaWNs
OiBIVyBzdGF0ZSByZWFkb3V0IGZvciB0cmFuc2NvZGVyIHBvcnQgc3luYyBjb25maWcKICBkcm0v
aTkxNS9kaXNwbGF5L2ljbDogRW5hYmxlIG1hc3Rlci1zbGF2ZXMgaW4gdHJhbnMgcG9ydCBzeW5j
CiAgZHJtL2k5MTUvZGlzcGxheS9pY2w6IERpc2FibGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgYXMg
cGFydCBvZgogICAgY3J0Y19kaXNhYmxlKCkgc2VxdWVuY2UKICBkcm0vaTkxNS9kaXNwbGF5L2lj
bDogSW4gcG9ydCBzeW5jIG1vZGUgZGlzYWJsZSBzbGF2ZXMgZmlyc3QgdGhlbgogICAgbWFzdGVy
CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgICAzICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA0MzggKysr
KysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCAgfCAgIDUgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
ICAgIHwgICA2ICsKIDQgZmlsZXMgY2hhbmdlZCwgNDQzIGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCgotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
