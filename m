Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD6AAABEE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 21:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8070289FC0;
	Thu,  5 Sep 2019 19:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D564289FC0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 19:27:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 12:27:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="383970312"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga006.fm.intel.com with ESMTP; 05 Sep 2019 12:27:08 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 00:47:08 +0530
Message-Id: <1567711031-26144-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH 0/3] adding gamma state checker for CHV and i965
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEgbHV0IHZhbHVlcwpmb3IgY2hlcnJ5dmlldyBhbmQgaTk2NSBwbGF0Zm9ybXMuIEl0J3MgZXh0
ZW5zaW9uIG9mIHRoZQpwYXRjaCBzZXJpZXMgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3BhdGNoLzMyODI0Ni8/c2VyaWVzPTU4MDM5CndoaWNoIGVuYWJsZWQgdGhlIGJhc2ljIGlu
ZnJhc3RydWN0dXJlIGFuZCBzdGF0ZSBjaGVja2VyIGZvciAKZmV3IGxlZ2FjeSBwbGF0Zm9ybXMu
CgpTd2F0aSBTaGFybWEgKDMpOgogIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBnYW1tYSBwcmVjaXNp
b24gZnVuY3Rpb24gZm9yIENIVgogIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgaTk2NV9yZWFk
X2x1dHMoKQogIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCgogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTExICsrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgICAgfCAgIDYgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTExIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
