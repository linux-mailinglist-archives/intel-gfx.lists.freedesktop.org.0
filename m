Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF872F1B13
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B5B89B0B;
	Mon, 11 Jan 2021 16:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE4489B0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:37:14 +0000 (UTC)
IronPort-SDR: Wc5bk5MorYwVb4JoFZr4BZwBu9Xl9U/OP/G+1XXB9c2hPzE+PsOPpwcunj/3TPTx65T6d05S8Z
 zhb137HH08jQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="157671925"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="157671925"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:37:13 -0800
IronPort-SDR: WQckLUZ40rT62p6kA0xF3d0/Ehjb0XqVtsgSuq+XN3QLjHAtCGGWbMF1OZjkGmTS12fMg69RNa
 hGHwNcXiNhAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="344937255"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 11 Jan 2021 08:37:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Jan 2021 18:37:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 18:37:00 +0200
Message-Id: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: Async flips for all ilk+
 platforms
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNl
Y29uZCBhdHRlbXB0IGF0IGhvb2tpbmcgdXAgYXN5bmMgZmxpcHMgZm9yIGV2ZXJ5b25lLAp0aGlz
IHRpbWUgdGFraW5nIGNhcmUgdG8ga2VlcCB0aGUgcGxhbmUgc3JjIGNvb3JkaW5hdGVzCmJlbG93
IHRoZSBsaW1pdHMgb2YgdGhlIFRJTEVPRkYvT0ZGU0VUIHJlZ2lzdGVyLgoKVmlsbGUgU3lyasOk
bMOkICgxMSk6CiAgZHJtL2k5MTU6IFdBUk4gaWYgcGxhbmUgc3JjIGNvb3JkcyBhcmUgdG9vIGJp
ZwogIGRybS9pOTE1OiBMaW1pdCBwbGFuZSBzdHJpZGUgdG8gYmVsb3cgVElMRU9GRi54IGxpbWl0
CiAgZHJtL2k5MTU6IERyb3AgcmVkdW5kYW50IHBhcmVucwogIGRybS9pOTE1OiBHZW5lcmFsaXpl
IHRoZSBhc3luYyBmbGlwIGNhcGFiaWxpdHkgY2hlY2sKICBkcm0vaTkxNTogQWRkIHBsYW5lIHZm
dW5jcyB0byBlbmFibGUvZGlzYWJsZSBmbGlwX2RvbmUgaW50ZXJydXB0CiAgZHJtL2k5MTU6IE1v
dmUgdGhlIGFzeW5jX2ZsaXAgYml0IHNldHVwIGludG8gdGhlIC5hc3luY19mbGlwKCkgaG9vawog
IGRybS9pOTE1OiBSZXVzZSB0aGUgYXN5bmNfZmxpcCgpIGhvb2sgZm9yIHRoZSBhc3luYyBmbGlw
IGRpc2FibGUgdy9hCiAgZHJtL2k5MTU6IEltcGxlbWVudCBhc3luYyBmbGlwcyBmb3IgYmR3CiAg
ZHJtL2k5MTU6IEltcGxlbWVudCBhc3luYyBmbGlwIGZvciBpdmIvaHN3CiAgZHJtL2k5MTU6IElt
cGxlbWVudCBhc3luYyBmbGlwIGZvciBpbGsvc25iCiAgZHJtL2k5MTU6IEltcGxlbWVudCBhc3lu
YyBmbGlwcyBmb3Igdmx2L2NodgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9w
bGFuZS5jICAgICB8IDIxMyArKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaTl4eF9wbGFuZS5oICAgICB8ICAgMiArLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAxMTIgKysrKystLS0tCiAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8ICA2OSArKysrKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICB8ICA2NyArKystLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmggICAgICAgICAgICAgICB8ICAgMyAtCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDMgKwogOSBmaWxlcyBjaGFuZ2Vk
LCAzNzcgaW5zZXJ0aW9ucygrKSwgMTAwIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
