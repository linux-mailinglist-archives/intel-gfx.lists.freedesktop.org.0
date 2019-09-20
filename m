Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F18B98B2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 22:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086086FDEA;
	Fri, 20 Sep 2019 20:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864AC6FDEA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 20:58:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 13:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,530,1559545200"; d="scan'208";a="181908256"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 20 Sep 2019 13:58:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:58:04 -0700
Message-Id: <20190920205810.211048-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 0/6] TGL TC enabling v2-CI
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

UGF0Y2hlcyBmcm9tIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY2
OTUvI3JldjIKdGhhdCBnb3QgcnYtYiBhbmQgZG9uJ3QgaGF2ZSBkZXBlbmRlbmNpZXMgb3ZlciBv
dGhlciBwYXRjaGVzLCBmb3IKQ0kgdGVzdGluZy4KCkNsaW50b24gQSBUYXlsb3IgKDIpOgogIGRy
bS9pOTE1L3RnbDogQWRkIG1pc3NpbmcgZGRpIGNsb2NrIHNlbGVjdCBkdXJpbmcgRFAgaW5pdCBz
ZXF1ZW5jZQogIGRybS9pOTE1L3RnbC9wbGw6IFNldCB1cGRhdGVfYWN0aXZlX2RwbGwKCkpvc8Op
IFJvYmVydG8gZGUgU291emEgKDMpOgogIGRybS9pOTE1L3RnbDogRmluaXNoIG1vZHVsYXIgRklB
IHN1cHBvcnQgb24gcmVnaXN0ZXJzCiAgZHJtL2k5MTUvaWNsOiBVbmlmeSBkaXNhYmxlIGFuZCBl
bmFibGUgcGh5IGNsb2NrIGdhdGluZyBmdW5jdGlvbnMKICBkcm0vaTkxNS90Z2w6IENoZWNrIHRo
ZSBVQyBoZWFsdGggb2YgdGMgY29udHJvbGxlcnMgYWZ0ZXIgcG93ZXIgb24KClZhbmRpdGEgS3Vs
a2FybmkgKDEpOgogIGRybS9pOTE1L3RnbDogQWRkIGRrbCBwaHkgcmVnaXN0ZXJzCgogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDc4ICsrKy0tLS0KIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8ICAxMyArKwogLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAxICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAgfCAgNzIgKysrLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgMTkwICsrKysrKysr
KysrKysrKystLQogNiBmaWxlcyBjaGFuZ2VkLCAyNTYgaW5zZXJ0aW9ucygrKSwgOTkgZGVsZXRp
b25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
