Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0E55EFEC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 02:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AF56E21F;
	Thu,  4 Jul 2019 00:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10616E21E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 00:06:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 17:06:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,449,1557212400"; d="scan'208";a="339454307"
Received: from puneetya-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.184.98])
 by orsmga005.jf.intel.com with ESMTP; 03 Jul 2019 17:06:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 17:06:45 -0700
Message-Id: <20190704000649.20661-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Modular FIA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBoYXMgYmVlbiBleHRyYWN0ZWQgZnJvbSB0aGUgcHJldmlvdXMgbG9uZ2VyIHNlcmllcyB0
byBhZGQgc3VwcG9ydApmb3IgVGlnZXIgTGFrZTogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MjcyNi8KClJldmlld3MgYXJlIGJlaW5nIGFkZHJlc3NlZCBoZXJlIG9u
IHRoaXMgdmVyc2lvbiBhcyB3ZWxsIGFzIHJld29ya2luZyBpdAp0byBhcHBseSBvbiB0b3Agb2Yg
dGhlIFRDIHBoeSBzcGxpdC4KCkFudXNoYSBTcml2YXRzYSAoMSk6CiAgZHJtL2k5MTU6IEFkZCBt
b2R1bGFyIEZJQQoKTHVjYXMgRGUgTWFyY2hpICgzKToKICBkcm0vaTkxNTogbWFrZSBuZXcgaW50
ZWxfdGMuYyB1c2UgdW5jb3JlIGFjY2Vzc29ycwogIGRybS9pOTE1OiBmaXggaW5jbHVkZSBvcmRl
ciBpbiBpbnRlbF90Yy4qCiAgZHJtL2k5MTU6IG1vdmUgaW50ZWxfZGRpX3NldF9maWFfbGFuZV9j
b3VudCB0byBpbnRlbF90Yy5jCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8ICA0OSArKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYyAgfCAxMjUgKysrKysrKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuaCAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgfCAgMTMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5oIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAg
ICAgfCAgIDEgKwogNiBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRp
b25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
