Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E901BCFE55
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A20C6E13F;
	Tue,  8 Oct 2019 16:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C436E13F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:01:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="187332323"
Received: from obreen-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.132])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 09:01:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 17:01:13 +0100
Message-Id: <20191008160116.18379-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] intel_memory_region bits
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

Rmlyc3QgYmxvY2sgb2YgcGF0Y2hlcyBmcm9tIHRoZSAnTE1FTSBiYXNpY3MnIHNlcmllcy4KCk1h
dHRoZXcgQXVsZCAoMyk6CiAgZHJtL2k5MTU6IGludHJvZHVjZSBpbnRlbF9tZW1vcnlfcmVnaW9u
CiAgZHJtL2k5MTUvcmVnaW9uOiBzdXBwb3J0IGNvbnRpZ3VvdXMgYWxsb2NhdGlvbnMKICBkcm0v
aTkxNS9yZWdpb246IHN1cHBvcnQgdm9sYXRpbGUgb2JqZWN0cwoKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1faW50ZXJuYWwuYyAgfCAgMTcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAxOCArKwogLi4uL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgIDIwICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAgIDYgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3JlZ2lvbi5jICAgIHwgMTY5ICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmggICAgfCAgMjkgKysKIC4uLi9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICA5NyArKysrKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgICAgfCAyMDMgKysrKysrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgIHwgIDkwICsrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jIHwgICA1ICstCiAuLi4v
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbW9ja19zZWxmdGVzdHMuaCAgfCAgIDEgKwogLi4uL2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgIHwgMjgwICsrKysrKysrKysr
KysrKysrKwogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwg
ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3JlZ2lvbi5jICB8ICA1
OSArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdpb24uaCAgfCAg
MTYgKwogMTcgZmlsZXMgY2hhbmdlZCwgOTk1IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygt
KQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9y
ZWdpb24uYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9yZWdpb24uaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX21lbW9yeV9yZWdpb24uYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19yZWdpb24uYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3JlZ2lvbi5o
CgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
