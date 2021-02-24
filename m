Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16236323F2E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 15:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B856EAC8;
	Wed, 24 Feb 2021 14:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87CB56EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 14:42:17 +0000 (UTC)
IronPort-SDR: vn6jD1supEPBnSPp4O7eKWXleBDBPtdWVxQULXFIA1OtIM/MRWAHOHBdnffQAxO5t4bNV+SaJt
 yU5aMF40q5OQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="165049015"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="165049015"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 06:42:16 -0800
IronPort-SDR: PW3ZwrevHcoBHtzjfw3h33srXaESpVHcD5tyvBNoyBqGG6JpIvAdtvzX7cZ1dHybpzn4USQTeC
 QZTiYT/Vnsdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="403731192"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 24 Feb 2021 06:42:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Feb 2021 16:42:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Feb 2021 16:42:08 +0200
Message-Id: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Move DDI clock readout to
 encoder->get_config()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBEREkgY2xvY2sgcmVhZG91dCBoYXMgbm8gYnVzaW5lc3MgYmVpbmcgaW4KaHN3X2dldF9waXBl
X2NvbmZpZygpLiBMZXQncyBtb3ZlIGl0IHdoZXJlIGl0IGJlbG9uZ3MsCnRoYXQgaXMgZW5jb2Rl
ci0+Z2V0X2NvbmZpZygpLgoKVmlsbGUgU3lyasOkbMOkICg2KToKICBkcm0vaTkxNTogQ2FsbCBw
cmltYXJ5IGVuY29kZXIncyAuZ2V0X2NvbmZpZygpIGZyb20gTVNUIC5nZXRfY29uZmlnKCkKICBk
cm0vaTkxNTogRG8gaW50ZWxfZHBsbF9yZWFkb3V0X2h3X3N0YXRlKCkgYWZ0ZXIgZW5jb2RlciBy
ZWFkb3V0CiAgZHJtL2k5MTU6IFVzZSBwaXBlcyBpbnN0ZWFkIGNydGMgaW5kaWNlcyBpbiBQTEwg
c3RhdGUgdHJhY2tpbmcKICBkcm0vaTkxNTogTW92ZSBEREkgY2xvY2sgcmVhZG91dCB0byBlbmNv
ZGVyLT5nZXRfY29uZmlnKCkKICBkcm0vaTkxNTogQWRkIGVuY29kZXItPmlzX2Nsb2NrX2VuYWJs
ZWQoKQogIGRybS9pOTE1OiBFeHRlbmQgaWNsX3Nhbml0aXplX2VuY29kZXJfcGxsX21hcHBpbmco
KSB0byBhbGwgRERJCiAgICBwbGF0Zm9ybXMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyAgICAgICAgfCAgMjUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0LmMgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICAgIHwgNDQ2ICsrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaCAgICAgIHwgIDExICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAyNjcgKy0tLS0tLS0tLS0KIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jICB8ICAgNCArLQogLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8ICAgMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgIDQ4ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCAgIDggKy0KIDEwIGZpbGVzIGNoYW5n
ZWQsIDUxMCBpbnNlcnRpb25zKCspLCAzMDggZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
