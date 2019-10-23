Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D5EE1569
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6ACF6EA00;
	Wed, 23 Oct 2019 09:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E5E96E053
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 09:10:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:10:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="191773395"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga008.jf.intel.com with ESMTP; 23 Oct 2019 02:10:30 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 12:08:02 +0300
Message-Id: <20191023090804.26607-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/2] Refactor Gen11+ SAGV support
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIEdlbjExKyBwbGF0Zm9ybXMgQlNwZWMgc3VnZ2VzdHMgZGlzYWJsaW5nIHNwZWNpZmljClFH
ViBwb2ludHMgc2VwYXJhdGVseSwgZGVwZW5kaW5nIG9uIGJhbmR3aWR0aCBsaW1pdGF0aW9ucwph
bmQgY3VycmVudCBkaXNwbGF5IGNvbmZpZ3VyYXRpb24uIFRodXMgaXQgcmVxdWlyZWQgYWRkaW5n
CmEgbmV3IFBDb2RlIHJlcXVlc3QgZm9yIGRpc2FibGluZyBRR1YgcG9pbnRzIGFuZCBzb21lCnJl
ZmFjdG9yaW5nIG9mIGFscmVhZHkgZXhpc3RpbmcgU0FHViBjb2RlLgoKU3RhbmlzbGF2IExpc292
c2tpeSAoMik6CiAgZHJtL2k5MTU6IFJlZmFjdG9yIGludGVsX2Nhbl9lbmFibGVfc2FndgogIGRy
bS9pOTE1OiBSZXN0cmljdCBxZ3YgcG9pbnRzIHdoaWNoIGRvbid0IGhhdmUgZW5vdWdoIGJhbmR3
aWR0aC4KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAg
MTYgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggICB8ICAg
MyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgICAgICAgfCAxMDUg
KysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaCAgICAgICB8
ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAg
NTggKysrKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8
ICAxMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAg
IDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgICAz
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDIyOCAr
KysrKysrKysrKysrKysrKy0KIDkgZmlsZXMgY2hhbmdlZCwgMzk0IGluc2VydGlvbnMoKyksIDM0
IGRlbGV0aW9ucygtKQoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
