Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D85FAD07C2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 09:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3016E8DF;
	Wed,  9 Oct 2019 07:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56AF6E8DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 07:04:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 00:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="200044687"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2019 00:04:54 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 12:25:38 +0530
Message-Id: <20191009065542.27415-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] fix broken state checker and enable state
 checker for icl+
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGJhc2ljYWxseSBhZGRlZCAzIHBhdGNoZXMKIDEuIEZpeGlu
ZyBicm9rZW4gc3RhdGUtY2hlY2tlciBkdXJpbmcgYm9vdCBzaW5jZSBsZWdhY3kgcGxhdGZvcm1z
CiAgICBpLmUuIHBsYXRmb3JtcyBmb3Igd2hpY2ggc3RhdGUgY2hlY2tlciB3YXMgYWxyZWFkeSBl
bmFibGVkCiAyLiBNb3ZpbmcgZ2FtbWFfZW5hYmxlIGNoZWNrcyBpbiBiaXRfcHJlY2lzaW9uIGZ1
bmMoKSB0byBwbGF0Zm9ybQogICAgc3BlY2lmaWMgZnVuYygpCiAzLiBFbmFibGluZyBzdGF0ZSBj
aGVja2VyIGZvciBJQ0wgYW5kIFRHTAoKU3dhdGkgU2hhcm1hICg0KToKICBbdjNdIGRybS9pOTE1
L2NvbG9yOiBmaXggYnJva2VuIGdhbW1hIHN0YXRlLWNoZWNrZXIgZHVyaW5nIGJvb3QKICBbdjJd
IGRybS9pOTE1L2NvbG9yOiBtb3ZlIGNoZWNrIG9mIGdhbW1hX2VuYWJsZSB0byBzcGVjaWZpYwog
ICAgZnVuYy9wbGF0Zm9ybQogIFt2NV0gZHJtL2k5MTUvY29sb3I6IEV4dHJhY3QgaWNsX3JlYWRf
bHV0cygpCiAgRk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cg
YmxvYnMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxNDkg
KysrKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgfCAgIDYgKwogMiBmaWxlcyBjaGFuZ2VkLCAxMzcgaW5zZXJ0aW9ucygrKSwgMTgg
ZGVsZXRpb25zKC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
