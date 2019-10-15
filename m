Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF167D8431
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 01:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C192C6E8A9;
	Tue, 15 Oct 2019 23:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824416E893
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 23:03:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 16:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,301,1566889200"; d="scan'208";a="225590062"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 15 Oct 2019 16:03:23 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 16:05:13 -0700
Message-Id: <20191015230519.15022-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/6] Enable Transcoder port sync for Tiled
 displays
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

VGhpcyBzZXQgb2YgcGF0Y2hlcyBlbmFibGVzIHRyYW5zY29kZXIgcG9ydCBzeW5jIHRvIHN5bmNo
cm9uaXplIHRpbGVkIGRpc3BsYXlzCmFjcm9zcyBtdWx0aXBsZSBTU1QgRFAgcG9ydHMgdXNpbmcg
dGhlIG1hc3Rlci1zbGF2ZSBtb2RlbC4KVGhpcyBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBrbXNfZHBf
dGlsZWRfZGlzcGxheS5jIElHVCB0ZXN0IHdoaWNoIHZhbGlkYXRlcwp0aGUgcGFnZSBmbGlwIHN5
bmNocm9uaXphdGlvbi4KClRoaXMgc2V0IG9mIHBhdGNoZXMgYWRkcmVzc2VzIHRoZSBmaW5hbCBz
ZXQgb2YgY29tbWVudHMgZnJvbSBWaWxsZQphbmQgTWFhcnRlbi4KCk1hbmFzaSBOYXZhcmUgKDYp
OgogIGRybS9pOTE1L2Rpc3BsYXkvaWNsOiBTYXZlIE1hc3RlciB0cmFuc2NvZGVyIGluIHNsYXZl
J3MgY3J0Y19zdGF0ZSBmb3IKICAgIFRyYW5zY29kZXIgUG9ydCBTeW5jCiAgZHJtL2k5MTUvZGlz
cGxheS9pY2w6IEVuYWJsZSBUUkFOU0NPREVSIFBPUlQgU1lOQyBmb3IgdGlsZWQgZGlzcGxheXMK
ICAgIGFjcm9zcyBzZXBhcmF0ZSBwb3J0cwogIGRybS9pOTE1L2Rpc3BsYXkvaWNsOiBIVyBzdGF0
ZSByZWFkb3V0IGZvciB0cmFuc2NvZGVyIHBvcnQgc3luYyBjb25maWcKICBkcm0vaTkxNS9kaXNw
bGF5L2ljbDogRW5hYmxlIG1hc3Rlci1zbGF2ZXMgaW4gdHJhbnMgcG9ydCBzeW5jCiAgZHJtL2k5
MTUvZGlzcGxheS9pY2w6IERpc2FibGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgYXMgcGFydCBvZgog
ICAgY3J0Y19kaXNhYmxlKCkgc2VxdWVuY2UKICBkcm0vaTkxNS9kaXNwbGF5L2ljbDogSW4gcG9y
dCBzeW5jIG1vZGUgZGlzYWJsZSBzbGF2ZXMgZmlyc3QgdGhlbgogICAgbWFzdGVyCgogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgICAzICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA0MjggKysrKysrKysrKysr
KysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAg
IDQgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICA2
ICsKIDQgZmlsZXMgY2hhbmdlZCwgNDMxIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoK
LS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
