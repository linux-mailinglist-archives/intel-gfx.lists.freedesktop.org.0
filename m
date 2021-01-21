Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9F52FF660
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 21:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9856E953;
	Thu, 21 Jan 2021 20:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D7F6E953
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 20:53:05 +0000 (UTC)
IronPort-SDR: BmzvQZEIoTegzE0ZP4XJDD/DLGrSB6wu3co+tYRWjL9YsKJENz0xkee8BgaL2FabbZpxN26Ueh
 0UKX6YZs7hLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="176771729"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="176771729"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 12:53:05 -0800
IronPort-SDR: 7yfDQMVL7HJkhZmRKf8wnaJyT4ieLXXwnfvxpnNeckqFd5YtQuYxRMzLs7i4XA88Gr+O/S/wIF
 +zkYaDlw4i4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="403344162"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 21 Jan 2021 12:53:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Jan 2021 22:53:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 22:52:54 +0200
Message-Id: <20210121205302.24897-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/8] drm/i915: Remainder of dbuf state stuff
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
YmFzZWQgZGJ1ZiByZW1haW5kZXJzIGZvciBjaSB0byBjaGV3LiBBbGwgCnJldmlld3dlZCBieSBT
dGFuIG5vdyAodGhhbmtzKS4KClZpbGxlIFN5cmrDpGzDpCAoOCk6CiAgZHJtL2k5MTU6IEV4dHJh
Y3QgaW50ZWxfY3J0Y19kZGJfd2VpZ2h0KCkKICBkcm0vaTkxNTogUGFzcyB0aGUgY3J0YyB0byBz
a2xfY29tcHV0ZV9kYnVmX3NsaWNlcygpCiAgZHJtL2k5MTU6IEludHJvZHVjZSBpbnRlbF9kYnVm
X3NsaWNlX3NpemUoKQogIGRybS9pOTE1OiBJbnRyb2R1Y2Ugc2tsX2RkYl9lbnRyeV9mb3Jfc2xp
Y2VzKCkKICBkcm0vaTkxNTogTW92ZSBwaXBlIGRkYiBlbnRyaWVzIGludG8gdGhlIGRidWYgc3Rh
dGUKICBkcm0vaTkxNTogRXh0cmFjdCBpbnRlbF9jcnRjX2RidWZfd2VpZ2h0cygpCiAgZHJtL2k5
MTU6IEVuY2Fwc3VsYXRlIGRidWYgc3RhdGUgaGFuZGxpbmcgaGFyZGVyCiAgZHJtL2k5MTU6IERv
IGEgYml0IG1vcmUgaW5pdGlhbCByZWFkb3V0IGZvciBkYnVmCgogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQwICstCiAuLi4vZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgIDEgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgOSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jICAgICAgICAgICAgICAgfCA1MzggKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgIDcgKy0KIDYgZmlsZXMgY2hh
bmdlZCwgMjY3IGluc2VydGlvbnMoKyksIDMyOSBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
