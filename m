Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5CD3010E4
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7350E6E900;
	Fri, 22 Jan 2021 23:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25026EA71
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:31 +0000 (UTC)
IronPort-SDR: MZBe54bJl8oqXt5oWj7bVlEyn4PBXC1nOk5Zj0yuSibbDEPYCNnSm31cTktv0eDON5Dm/zy1UL
 Xp69X+IuQpeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344454"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344454"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: P+HgGf4eDEG2Hm5uRdmYElKZWbOA175zshgjfWTaMDiPiBW81bQ3qPxHOmldU7LCOCTgOS1eip
 HM7LAJsHrBCw==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466012"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:37 -0800
Message-Id: <20210122232647.22688-8-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 08/18] drm/i915/display: VRR + DRRS cannot be
 enabled together
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IFZSUiBpcyBlbmFibGVkLCBEUlJTIGNhbm5vdCBiZSBlbmFibGVkLCBzbyBtYWtlIHRoaXMgY2hl
Y2sKaW4gYXRvbWljIGNoZWNrLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNmMxYWFhZjU4N2MyLi44
YzEyZDUzNzU2MDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTE3MjUsNiArMTcyNSw5IEBAIGludGVsX2RwX2RycnNfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwKIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0
b3IgPSBpbnRlbF9kcC0+YXR0YWNoZWRfY29ubmVjdG9yOwogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCisJaWYgKHBpcGVfY29uZmln
LT52cnIuZW5hYmxlKQorCQlyZXR1cm47CisKIAkvKgogCSAqIERSUlMgYW5kIFBTUiBjYW4ndCBi
ZSBlbmFibGUgdG9nZXRoZXIsIHNvIGdpdmluZyBwcmVmZXJlbmNlIHRvIFBTUgogCSAqIGFzIGl0
IGFsbG93cyBtb3JlIHBvd2VyLXNhdmluZ3MgYnkgY29tcGxldGUgc2h1dHRpbmcgZG93biBkaXNw
bGF5LAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
