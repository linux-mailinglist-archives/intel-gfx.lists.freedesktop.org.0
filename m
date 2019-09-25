Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77627BE923
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 01:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C5B6EEC9;
	Wed, 25 Sep 2019 23:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74AAF6E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 23:45:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 16:45:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="201422298"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga002.jf.intel.com with ESMTP; 25 Sep 2019 16:45:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:45:05 -0700
Message-Id: <20190925234509.29505-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] TGL TC enabling v4
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

VEdMIFRDIGVuYWJsaW5nIHY0Cgp2MTogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82NjY5NS8jcmV2MQp2MjogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82NjY5NS8jcmV2Mgp2MiBwYXRjaGVzIG1lcmdlZDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzAyMi8KdjM6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNjY2OTUvI3JldjMKdjMgcGF0Y2hlcyBtZXJnZWQ6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcxODEvCgpDbGludG9uIEEgVGF5bG9y
ICgyKToKICBkcm0vaTkxNS90YzogVXBkYXRlIERQX01PREUgcHJvZ3JhbW1pbmcKICBkcm0vaTkx
NS90Z2w6IEFkZCBka2wgcGh5IHByb2dyYW1taW5nIHNlcXVlbmNlcwoKSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSAoMSk6CiAgZHJtL2k5MTUvdGdsOiBGaXggZGtsIGxpbmsgdHJhaW5pbmcKCkx1Y2Fz
IERlIE1hcmNoaSAoMSk6CiAgZHJtL2k5MTUvdGdsOiBpbml0aWFsaXplIFRDIGFuZCBUQlQgcG9y
dHMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAyNTcg
KysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYyB8ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
ICAgICAgIHwgIDE1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCAg
ICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
ICAgfCAgMTMgKy0KIDYgZmlsZXMgY2hhbmdlZCwgMjM0IGluc2VydGlvbnMoKyksIDczIGRlbGV0
aW9ucygtKQoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
