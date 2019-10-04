Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B577ACB644
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 10:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E5B16EAF2;
	Fri,  4 Oct 2019 08:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03EC6EAF2
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 08:35:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 01:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="392226328"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2019 01:35:19 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:56:06 +0530
Message-Id: <20191004082610.24664-1-swati2.sharma@intel.com>
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGJhc2ljYWxseSBhZGRlZCAzIHBhdGNoZXMKIDEuIEZpeGlu
ZyBicm9rZW4gc3RhdGUtY2hlY2tlciBkdXJpbmcgYm9vdCBzaW5jZSBsZWdhY3kgcGxhdGZvcm1z
CiAgICBpLmUuIHBsYXRmb3JtcyBmb3Igd2hpY2ggc3RhdGUgY2hlY2tlciB3YXMgYWxyZWFkeSBl
bmFibGVkCiAyLiBNb3ZpbmcgZ2FtbWFfZW5hYmxlIGNoZWNrcyBpbiBiaXRfcHJlY2lzaW9uIGZ1
bmMoKSB0byBwbGF0Zm9ybQogICAgc3BlY2lmaWMgZnVuYygpCiAzLiBFbmFibGluZyBzdGF0ZSBj
aGVja2VyIGZvciBJQ0wgYW5kIFRHTAoKU3dhdGkgU2hhcm1hICg0KToKICBbdjJdIGRybS9pOTE1
L2NvbG9yOiBmaXggYnJva2VuIGdhbW1hIHN0YXRlLWNoZWNrZXIgZHVyaW5nIGJvb3QKICBkcm0v
aTkxNS9jb2xvcjogbW92ZSBjaGVjayBvZiBnYW1tYV9lbmFibGUgdG8gc3BlY2lmaWMgZnVuYy9w
bGF0Zm9ybQogIFt2NV0gZHJtL2k5MTUvY29sb3I6IEV4dHJhY3QgaWNsX3JlYWRfbHV0cygpCiAg
Rk9SX1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cgYmxvYnMKCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxNjYgKysrKysrKysr
KysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
fCAgIDYgKwogMiBmaWxlcyBjaGFuZ2VkLCAxNTIgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25z
KC0pCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
