Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59861380D5F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD7A6F38C;
	Fri, 14 May 2021 15:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6516F381
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:21 +0000 (UTC)
IronPort-SDR: cFeBgEcELxwTyNUGnh4OLIbPzpzoBe3J9Gt/ScHufQ/6g5bYYfxVpeDJ5OQlH1JwZ1TD+sjzuX
 TlTC7r3QVBoA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243923"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243923"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
IronPort-SDR: 0Jsu/xA1QzAzupZ3C8BTNcc0FF/noyw+NLBpU6NAHayStc1GKR4pMWW2LO67uH+wV9RGYoTmrI
 /dMv9GVXPt8A==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796570"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:36:52 -0700
Message-Id: <20210514153711.2359617-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 00/19] Another batch of reviewed XeLPD / ADL-P
 patches
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

QW5pbWVzaCBNYW5uYSAoMyk6CiAgZHJtL2k5MTUvYmlnam9pbmVyOiBNb2RlIHZhbGlkYXRpb24g
d2l0aCB1bmNvbXByZXNzZWQgcGlwZSBqb2luZXIKICBkcm0vaTkxNS9iaWdqb2luZXI6IEF2b2lk
IGRzY19jb21wdXRlX2NvbmZpZyBmb3IgdW5jb21wcmVzc2VkCiAgICBiaWdqb2luZXIKICBkcm0v
aTkxNS9iaWdqb2luZXI6IGF0b21pYyBjb21taXQgY2hhbmdlcyBmb3IgdW5jb21wcmVzc2VkIGpv
aW5lcgoKQW51c2hhIFNyaXZhdHNhICgxKToKICBkcm0vaTkxNS9hZGxfcDogQWRkIGNkY2xrIHN1
cHBvcnQgZm9yIEFETC1QCgpKb3PDqSBSb2JlcnRvIGRlIFNvdXphICg3KToKICBkcm0vaTkxNS94
ZWxwZDogUHJvdmlkZSBwb3J0L3BoeSBtYXBwaW5nIGZvciB2YnQKICBkcm0vaTkxNS9kaXNwbGF5
L3RjOiBSZW5hbWUgc2FmZV9tb2RlIGZ1bmN0aW9ucyBvd25lcnNoaXAKICBkcm0vaTkxNS9hZGxf
cDogRW5hYmxlIG1vZHVsYXIgZmlhCiAgZHJtL2k5MTUvYWRsX3A6IEFkZCBJUHMgc3RlcHBpbmcg
bWFwcGluZwogIGRybS9pOTE1L2FkbF9wOiBJbXBsZW1lbnQgV2FfMjIwMTEwOTE2OTQKICBkcm0v
aTkxNS9kaXNwbGF5L2FkbF9wOiBJbXBsZW1lbnQgV2FfMjIwMTEzMjAzMTYKICBkcm0vaTkxNS9h
ZGxfcDogRGlzYWJsZSBDQ1Mgb24gYS1zdGVwIChXYV8yMjAxMTE4NjA1NykKCk1hdHQgUm9wZXIg
KDMpOgogIGRybS9pOTE1L3hlbHBkOiBIYW5kbGUgbmV3IGxvY2F0aW9uIG9mIG91dHB1dHMgRCBh
bmQgRQogIGRybS9pOTE1L3hlbHBkOiBJbmNyZWFzZSBtYXhpbXVtIHdhdGVybWFyayBsaW5lcyB0
byAyNTUKICBkcm0vaTkxNS9hZGxfcDogRXh0ZW5kIFBMQU5FX1dNIGJpdHMgZm9yIGJsb2NrcyAm
IGxpbmVzCgpNaWthIEthaG9sYSAoMSk6CiAgZHJtL2k5MTUvYWRsX3A6IEVuYWJsZS9kaXNhYmxl
IGxvYWRnZW4gc2hhcmluZwoKVmFuZGl0YSBLdWxrYXJuaSAoMyk6CiAgZHJtL2k5MTUvZGlzcGxh
eS9kc2M6IFJlZmFjdG9yIGludGVsX2RwX2RzY19jb21wdXRlX2JwcAogIGRybS9pOTE1L3hlbHBk
OiBTdXBwb3J0IERQMS40IGNvbXByZXNzaW9uIEJQUHMKICBkcm0vaTkxNTogR2V0IHNsaWNlIGhl
aWdodCBiZWZvcmUgY29tcHV0aW5nIHJjIHBhcmFtcwoKVmlsbGUgU3lyasOkbMOkICgxKToKICBk
cm0vaTkxNTogTW92ZSBpbnRlbF9tb2Rlc2V0X2FsbF9waXBlcygpCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgNDYgKysrKysrKy0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgICAgfCA5OCArKysrKysrKystLS0tLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCA0OCAr
KysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8
IDUwICsrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oICB8ICA5ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAg
ICAgfCA3NSArKysrKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9hdXguYyAgIHwgMTQgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgICAgICAgfCAzOSArKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmMgICAgIHwgNDAgKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5oICAgICB8ICAyICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2
ZXJzYWxfcGxhbmUuYyAgICB8IDIwICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgICAgICB8ICA4ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
ICAgICAgICAgICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgICAgfCAxMSArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAg
ICAgICAgICAgICB8IDI3ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmMg
ICAgICAgICAgICAgfCAxMiArKy0KIDE2IGZpbGVzIGNoYW5nZWQsIDM3MSBpbnNlcnRpb25zKCsp
LCAxMjkgZGVsZXRpb25zKC0pCgotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
