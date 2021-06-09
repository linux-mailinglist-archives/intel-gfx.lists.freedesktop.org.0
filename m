Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6153A0F1E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 10:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E846E4BB;
	Wed,  9 Jun 2021 08:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614E06E4E6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 08:56:49 +0000 (UTC)
IronPort-SDR: dO4ZcFCtYZTpcolKRHVkqYm1ppcCWXdm4J+0ut8mdmt6ALdofhX6JUE+lUCenetrESPtbYn2xx
 rW2shAIifErw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="192350680"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="192350680"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 01:56:45 -0700
IronPort-SDR: KhXCuwSuabCx73HDqFS2ht8HrzwN8IombjY0MghJauJ7dvFx0cbEtQQncq3SxLk94ZByOe3eAv
 M45COwLd/LsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="552610240"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 09 Jun 2021 01:56:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jun 2021 11:56:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 11:56:26 +0300
Message-Id: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Cleanup intel_crtc leftovers
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
bmlzaCB0aGUgcy9pbnRlbF9jcnRjL2NydGMvIGNvbnZlcnNpb24gd2Ugc3RhcnRlZCBsb25nIGFn
bywKYW5kIGRvIGEgYml0IG9mIG90aGVyIHJlbGF0ZWQgaG91c2UgY2xlYW5pbmcuCgpWaWxsZSBT
eXJqw6Rsw6QgKDYpOgogIGRybS9pOTE1OiBTdG9wIGhhbmQgcm9sbGluZyBkcm1fY3J0Y19tYXNr
KCkKICBkcm0vaTkxNTogQ2xlYW4gdXAgaW50ZWxfZ2V0X2xvYWRfZGV0ZWN0X3BpcGUoKSBhIGJp
dAogIGRybS9pOTE1OiBDbGVhbiB1cCBpbnRlbF9maW5kX2luaXRpYWxfcGxhbmVfb2JqKCkgYSBi
aXQKICBkcm0vaTkxNTogQ2xlYW4gdXAgcHJlLXNrbCB3bSBjYWxsaW5nIGNvbnZlbnRpb24KICBk
cm0vaTkxNTogQ2xlYW4gdXAgaW50ZWxfZmJkZXZfaW5pdF9iaW9zKCkgYSBiaXQKICBkcm0vaTkx
NTogcy9pbnRlbF9jcnRjL2NydGMvCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NydGMuYyAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgIHwgMTY4ICsrKysrKysrKy0tLS0tLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgIHwgIDI4ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJkZXYuYyAgICB8ICA5NCArKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jICAgICAgfCAgMjAgKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICAgfCAgNDIgKysrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3R2LmMgICAgICAgfCAgMTMgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jICAgICB8ICAyNyArKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvdmx2X2RzaS5jICAgICAgICB8ICAxMyArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jICAgICAgICAgICAgICAgfCAgMjIgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAgOTcgKysrKystLS0tLQogMTggZmlsZXMgY2hh
bmdlZCwgMjk2IGluc2VydGlvbnMoKyksIDI2OCBkZWxldGlvbnMoLSkKCi0tIAoyLjMxLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
