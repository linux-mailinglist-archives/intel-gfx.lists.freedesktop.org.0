Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B615AD04
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 17:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9936F53E;
	Wed, 12 Feb 2020 16:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF636F53F
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 16:17:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 08:17:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="313445333"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 12 Feb 2020 08:17:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2020 18:17:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 18:17:30 +0200
Message-Id: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/8] drm/i915: pfit/scaler rework prep stuff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
YmFzZWQgcGZpdC9zY2FsZXIgcmV3b3JrIHByZXAgc3R1ZmYuIFRoZSBldmVudHVhbCBhaW0gaXMg
dG8gZXhwb3NlCm1hcmdpbiBwcm9wZXJ0aWVzIGZvciBleHRlcm5hbCBkaXNwbGF5cy4gTWFpbiB1
c2Ugb2Ygd2hpY2ggaXMgdG8Kc3F1aXNoIHRoZSBpbWFnZSBkb3duIGEgYml0IHRvIGF2b2lkIG92
ZXJzY2FuIG9uIGRpc3BsYXlzIHRoYXQgaW5zaXN0Cm9uIGFsd2F5cyBvdmVyc2Nhbm5pbmcuIFRo
YXQgd2lsbCBoYXBwZW4gdmlhIHRoZSBwZml0L3BpcGUgc2NhbGVyLgoKQW5kIHRvIGF2b2lkIHRo
ZSB1c2VyIGdldHRpbmcgYSBibGFjay9jb3JydXB0ZWQgc2NyZWVuIHdlIGFsc28gbmVlZAp0byBh
ZGQgcHJvcGVyIGNoZWNrcyBhZ2FpbnN0IHZhcmlvdXMgaHcgbGltaXRzIChzY2FsaW5nIGZhY3Rv
cnMsCnBmaXQgd2luZG93IGNvb3JkaW5hdGVzLCBldGMuKS4gSW4gZmFjdCB3ZSdyZSBhbHJlYWR5
IG1pc3NpbmcgYSBidW5jaApvZiBjaGVja3MgZm9yIHNrbCsgcGxhbmUgc2NhbGluZyBjYXNlcyAo
ZWcuIHRoZSBzY2FsZXIgc2ltcGx5IGRvZXNuJ3QKd29yayBjb3JyZWN0bHkgd2l0aCA+NGsgcmVz
b2x1dGlvbnMgc28gdGhvcyBoYXZlIHRvIGJlIHJlamVjdGVkKS4KCkFueXdheXMsIGl0J3MgYSBm
YWlyIGFtb3VudCBvZiB3b3JrIHNvIEknbSBwb3N0aW5nIGl0IGluIHNtYWxsZXIKY2h1bmtzLgoK
VGhlIGVudGlyZSB3b3JrIGNhbiBiZSBmb3VuZCBoZXJlOgpnaXQ6Ly9naXRodWIuY29tL3ZzeXJq
YWxhL2xpbnV4LmdpdCBzY2FsZXJfcmV3b3JrXzIKClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJt
L2k5MTU6IFBhcmFtZXRyaXplIFBGSVRfUElQRQogIGRybS9pOTE1OiBVc2UgaW50ZWxfZGVfd3Jp
dGVfZncoKSBmb3Igc2tsKyBzY2FsZXIgcmVnaXN0ZXJzCiAgZHJtL2k5MTU6IEZpeCBza2wrIG5v
bi1zY2FsZWQgcGZpdCBtb2RlcwogIGRybS9pOTE1OiBGbGF0dGVuIGEgYnVuY2ggb2YgdGhlIHBm
aXQgZnVuY3Rpb25zCiAgZHJtL2k5MTU6IFVzZSBkcm1fcmVjdCB0byBzdG9yZSB0aGUgcGZpdCB3
aW5kb3cgcG9zL3NpemUKICBkcm0vaTkxNTogcy9waXBlX2NvbmZpZy9jcnRjX3N0YXRlLyBpbiBw
Zml0IGZ1bmN0aW9ucwogIGRybS9pOTE1OiBQYXNzIGNvbm5lY3RvciBzdGF0ZSB0byBwZml0IGNh
bGN1bGF0aW9ucwogIGRybS9pOTE1OiBIYXZlIHBmaXQgY2FsY3VsYXRpb25zIHJldHVybiBhbiBl
cnJvciBjb2RlCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgICAgICAg
IHwgIDExICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
fCAzMTkgKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuaCAgfCAgIDEgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgICAgICAgfCAgMzggKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYyAgICAgfCAgMzcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHZkcy5jICAgICB8ICAxNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
YW5lbC5jICAgIHwgMTI3ICsrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGFuZWwuaCAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZf
ZHNpLmMgICAgICAgIHwgICA5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgICAgfCAgIDEgKwogMTEgZmlsZXMgY2hhbmdlZCwgMjg4IGluc2VydGlvbnMoKyks
IDI4NCBkZWxldGlvbnMoLSkKCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
