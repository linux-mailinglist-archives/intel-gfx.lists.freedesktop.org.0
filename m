Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB797C519
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 16:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BBB89F2A;
	Wed, 31 Jul 2019 14:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A693889F27
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 14:39:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 07:39:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="347556463"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 31 Jul 2019 07:39:18 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6VEdHNP001788; Wed, 31 Jul 2019 15:39:17 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 14:38:52 +0000
Message-Id: <20190731143856.35460-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4] Don't sanitize enable_guc
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

djI6IHJlbmFtZSArIGRvbid0IGNhcmUgYWJvdXQgdW5kb2N1bWVudGVkIHZhbHVlcyA8MAoKY2hh
bmdlcyBpbiBJR1QgdG8gc3RvcCB1c2luZyBlbmFibGVfZ3VjIG1vZHBhcmFtIHRvIGRldGVjdApn
dWNfc3VibWlzc2lvbiBtb2RlIHdpbGwgZm9sbG93IHNob3J0bHkKCk1pY2hhbCBXYWpkZWN6a28g
KDQpOgogIGRybS9pOTE1L3VjOiBSZW5hbWUgaW50ZWxfdWNfaXNfdXNpbmcqIGludG8gaW50ZWxf
dWNfc3VwcG9ydHMqCiAgZHJtL2k5MTUvdWM6IENvbnNpZGVyIGVuYWJsZV9ndWMgbW9kcGFyYW0g
ZHVyaW5nIGZ3IHNlbGVjdGlvbgogIGRybS9pOTE1L2d1YzogVXNlIGRlZGljYXRlZCBmbGFnIHRv
IHRyYWNrIHN1Ym1pc3Npb24gbW9kZQogIGRybS9pOTE1L3VjOiBTdG9wIHNhbml0aXppbmcgZW5h
YmxlX2d1YyBtb2RwYXJhbQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5j
ICAgICAgICB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgg
ICAgICAgIHwgIDEyICsrCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNz
aW9uLmMgfCAgMTYgKysrCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNz
aW9uLmggfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgICAg
ICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaCAgICAg
ICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAg
IHwgMTMwICsrKysrKystLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuaCAgICAgICAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5jICAgICAgfCAgMjMgKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICAgICAgIHwgICA0ICstCiAxMCBmaWxlcyBjaGFuZ2VkLCAxMTYgaW5zZXJ0aW9u
cygrKSwgMTAxIGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
