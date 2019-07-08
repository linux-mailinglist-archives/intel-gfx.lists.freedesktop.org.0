Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF5062713
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 19:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96016E027;
	Mon,  8 Jul 2019 17:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F8189FC5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 17:28:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 10:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="165515735"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2019 10:28:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 10:28:11 -0700
Message-Id: <20190708172815.6814-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/4] Modular FIA
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

djI6CiAgLSBGaXggc3BhcnNlIHdhcm5pbmcKICAtIERvIG5vdCB0cnkgdG8gbWFrZSBoZWFkZXIg
c2VsZi1jb250YWluZWQKICAtIEZpeCBjb2Rpbmcgc3R5bGUgd2hpbGUgbW92aW5nIGNvZGUKCkFu
dXNoYSBTcml2YXRzYSAoMSk6CiAgZHJtL2k5MTU6IEFkZCBtb2R1bGFyIEZJQQoKTHVjYXMgRGUg
TWFyY2hpICgzKToKICBkcm0vaTkxNTogbWFrZSBuZXcgaW50ZWxfdGMuYyB1c2UgdW5jb3JlIGFj
Y2Vzc29ycwogIGRybS9pOTE1OiBmaXggaW5jbHVkZSBvcmRlciBpbiBpbnRlbF90Yy4qCiAgZHJt
L2k5MTU6IG1vdmUgaW50ZWxfZGRpX3NldF9maWFfbGFuZV9jb3VudCB0byBpbnRlbF90Yy5jCgog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8ICA0OSArKy0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAgfCAxMjUgKysrKysrKysr
KysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCAg
fCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMTMg
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgICAxICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgfCAgIDEgKwogNiBmaWxlcyBj
aGFuZ2VkLCAxMjEgaW5zZXJ0aW9ucygrKSwgNzUgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
