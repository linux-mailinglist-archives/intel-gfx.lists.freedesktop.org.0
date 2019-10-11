Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD32D36BD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 03:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1BB6E943;
	Fri, 11 Oct 2019 01:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46DC6E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 01:09:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394243439"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 18:09:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 18:09:00 -0700
Message-Id: <20191011010907.103309-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] Small fixes before fixing MST
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

SSdtIHRyeWluZyB0byB1bmRlcnN0YW5kIHdoeSBUR0wgaXMgZmFpbGluZyBvbiBsaW5rIHRyYWlu
aW5nIHdoZW4gTVNUIGlzCmVuYWJsZWQuIEkgY291bGRuJ3QgZmluZCBpdCB5ZXQsIGJ1dCBoZXJl
IHNvbWUgdHJpdmlhbCBwYXRjaGVzIHRyeWluZyB0bwppbXByb3ZlIG91ciBjb2RlLgoKTHVjYXMg
RGUgTWFyY2hpICg3KToKICBkcm0vaTkxNTogc2ltcGxpZnkgc2V0dGluZyBvZiBkZGlfaW9fcG93
ZXJfZG9tYWluCiAgZHJtL2k5MTU6IGNsZWFudXAgdW51c2VkIHJldHVybnMgb24gRFAtTVNUCiAg
ZHJtL2k5MTU6IGZpeCBwb3J0IGNoZWNrcyBmb3IgTVNUIHN1cHBvcnQgb24gZ2VuID49IDExCiAg
ZHJtL2k5MTU6IHJlbW92ZSBleHRyYSBuZXcgbGluZSBvbiBwaXBlX2NvbmZpZyBtaXNtYXRjaAog
IGRybS9pOTE1OiBhZGQgcGlwZSBuYW1lIHRvIHBpcGUgbWlzbWF0Y2ggbG9ncwogIGRybS9pOTE1
OiBwcmV0dGlmeSBNU1QgZGVidWcgbWVzc2FnZQogIGRybS9kcC1tc3Q6IGZpeCB3YXJuaW5nIG9u
IHVudXNlZCB2YXIKCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jICAgICAg
ICB8ICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwg
NDMgKystLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDU1ICsrKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgICAgICB8ICA5ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMgIHwgMjYgKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5oICB8ICAyICstCiA2IGZpbGVzIGNoYW5nZWQsIDU0IGlu
c2VydGlvbnMoKyksIDgzIGRlbGV0aW9ucygtKQoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
