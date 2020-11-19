Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6F92B9AEF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1186E5CF;
	Thu, 19 Nov 2020 18:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DE06E5CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:05 +0000 (UTC)
IronPort-SDR: wFfaQOOC1g91ICULbP9lmSugTpXV45LrsZrfryXRInStqEYgKPGyVXdgnOdJKCQvnhkV/+QN8Y
 tigQ8X1m2m4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="158380043"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="158380043"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:04 -0800
IronPort-SDR: OUHzAuIWPVxJ/JH48+Bz+RH+OSYwLsPCiYXDVZDCrVM+jnye0VJ+bWGlkGzMzPFWWF4LNMiYxl
 +WLZIjhoPJcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="357467036"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Nov 2020 10:54:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:48 +0200
Message-Id: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: Clean up the plane data_rate
 stuff
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHNvcnQgb3V0IHRoZSBwbGFuZSBkYXRhX3JhdGUgc3R1ZmYgcHJvcGVybHkgYnkKYWNjb3Vu
dGluZyBlYWNoIGNvbG9yIHBsYW5lIGluZGVwZW5kZW50bHkuIEFuZCB3ZSByZXVzZSB0aGUgc2Ft
ZQpjb2RlIGFuZCBhcHByb2FjaCBmb3IgdGhlIHJlbGF0aXZlIGRhdGEgcmF0ZSAod2hpY2ggaXMg
dXNlZCBmb3IKcGxhbmUgZGRiIGFsbG9jYXRpb24pLgoKQ3VycmVudGx5IGl0J3Mgbm90IGV2ZW4g
b2J2aW91cyBpZiB0aGUgcmVsYXRpdmUgZGF0YSByYXRlIGlzCnJlYWxseSBjb3JyZWN0IGluIGFs
bCB0aGUgY2FzZXMuIFRoZSBub3JtYWwgZGF0YSByYXRlIHN0dWZmCmlzIG11Y2ggbW9yZSBvYnZp
b3VzIHdpdGggdGhlIHdheSBpdCdzIGdldHRpbmcgY29tcHV0ZWQgYWhlYWQKb2YgdGltZS4gQWxz
byByZXVzaW5nIHRoZSBzYW1lIGNvZGUgZm9yIGJvdGggbWVhbnMgd2UgYXQgbGVhc3QKaGF2ZSBq
dXN0IHRoZSBvbmUgc2V0IG9mIGJ1Z3MgdG8gZml4LgoKSSB3YXMgYWxzbyBwb25kZXJpbmcgcG90
ZW50aWFsbHkgcmVwbGFjaW5nIHRoZSByZWxhdGl2ZSBkYXRhCnJhdGUgZW50aXJlbHkgd2l0aCB0
aGUgcmVhbCBkYXRhIHJhdGUsIGJ1dCBpdCdzIG5vdCBvYnZpb3VzCndoYXQgZWZmZWN0IHRoYXQg
d291bGQgaGF2ZSB0byB0aGUgd2F0ZXJtYXJrcy4gU21hbGxlcgpwbGFuZXMgd291bGQgY2VydGFp
bmx5IGdldCBhIGJpZ2dlciBwcm9wb3J0aW9uIG9mIGRkYiBhbGxvY2F0ZWQKdG8gdGhlbSwgd2hp
Y2ggbWlnaHQgcmVzdWx0IGluIHdvcnNlIHBvd2VyIGNvbnN1bXB0aW9uIEkgZ3Vlc3MuCkJ1dCBh
dCBsZWFzdCB3aXRoIGRhdGFfcmF0ZSBhbmQgcmVsX2RhdGFfcmF0ZSBiZWluZyBoYW5kbGVkIAph
bG1vc3QgaWRlbnRpY2FsbHkgd2UgY291bGQgZWFzaWx5IGNoYW5nZSB0aGUgc3RyYXRlZ3kgYXQK
YW55IHRpbWUuCgpWaWxsZSBTeXJqw6Rsw6QgKDEzKToKICBkcm0vaTkxNTogRHJvcCBwb2ludGxl
c3MgdG90YWxfZGF0YV9yYXRlIGFyZ3VtZW50CiAgZHJtL2k5MTU6IERyb3AgcG9pbnRsZXNzIGRl
dl9wcml2IGFyZ3VtZW50CiAgZHJtL2k5MTU6IEV4dHJhY3Qgc2tsX2RkYl9lbnRyeV9pbml0KCkK
ICBkcm0vaTkxNTogSW50cm9kdWNlIHNrbF9wbGFuZV9kZGJfaXRlcgogIGRybS9pOTE1OiBFeHRy
YWN0IHNrbF9hbGxvY2F0ZV9wbGFuZV9kZGIoKQogIGRybS9pOTE1OiBFeHRyYWN0IHNrbF9jcnRj
X2NhbGNfZGJ1Zl9idygpCiAgZHJtL2k5MTU6IFR3ZWFrIHBsYW5lIGRkYiBhbGxvY2F0aW9uIHRy
YWNraW5nCiAgZHJtL2k5MTU6IFNwbGl0IHBsYW5lIGRhdGFfcmF0ZSBpbnRvIGRhdGFfcmF0ZStk
YXRhX3JhdGVfeQogIGRybS9pOTE1OiBFeHRyYWN0IGludGVsX2FkanVzdGVkX3JhdGUoKQogIGRy
bS9pOTE1OiBSZXVzZSBpbnRlbF9hZGp1c3RlZF9yYXRlKCkgZm9yIHBmaXQgcGl4ZWwgcmF0ZSBh
ZGp1c3RtZW50CiAgZHJtL2k5MTU6IFByZS1jYWxjdWxhdGUgcGxhbmUgcmVsYXRpdmUgZGF0YSBy
YXRlCiAgZHJtL2k5MTU6IFJlbW92ZSB0b3RhbFtdIGFuZCB1dl90b3RhbFtdIGZyb20gZGRiIGFs
bG9jYXRpb24KICBkcm0vaTkxNTogcy9wbGFuZV9yZXNfYi9ibG9ja3MvIGV0Yy4KCiAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAxMjIgKystLQogLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIHwgICA4ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgICAgICAgfCAgODEgKy0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgOTMgKystCiAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgIDQgKy0KIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgNjI5ICsrKysrKystLS0tLS0t
LS0tLQogNyBmaWxlcyBjaGFuZ2VkLCA0MjEgaW5zZXJ0aW9ucygrKSwgNTM4IGRlbGV0aW9ucygt
KQoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
