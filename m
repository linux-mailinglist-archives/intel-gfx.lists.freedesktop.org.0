Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A43893CA731
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 20:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6FCC6E88B;
	Thu, 15 Jul 2021 18:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962EB6E88B;
 Thu, 15 Jul 2021 18:50:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="197796124"
X-IronPort-AV: E=Sophos;i="5.84,243,1620716400"; d="scan'208";a="197796124"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 11:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,243,1620716400"; d="scan'208";a="428893753"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 15 Jul 2021 11:49:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 21:49:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 21:49:50 +0300
Message-Id: <20210715184954.7794-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm: Make modeset locking easier
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
Cc: Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
aWxlIHN0YXJpbmcgYXQgc29tZSBEUk1fTU9ERVNFVF9MT0NLX0FMTF97QkVHSU4sRU5EfSgpIGNv
bnZlcnNpb25zCkkgZGVjaWRlZCBJIGRvbid0IHJlYWxseSBsaWtlIHdoYXQgdGhvc2UgbWFjcm9z
IGRvLgoKVGhlIG1haW4gcHJvYmxlbXMgdGhhdCBJIHNlZToKLSB0aGUgbWFnaWMgZ290byBpbnNp
ZGUgbGltaXRzIHRoZWlyIHVzZWZ1bG5lc3MgdG8gYmFpY2FsbHkKICBhIHNpbmdsZSBzdGF0ZW1l
bnQsIHVubGVzcyB5b3UncmUgd2lsbGluZyB0byBsb29rIGluc2lkZSBhbmQKICBmaW5kIG91dCB0
aGUgbmFtZSBvZiB0aGUgbWFnaWMgbGFiZWwKLSBjYW4ndCBoZWxwIGF0IGFsbCBpbiB0aGUgIndl
IGRvbid0IHdhbnQgdG8gbG9jayBldmVyeXRoaW5nIgogIGNhc2VzLCB3aGljaCBhcmUgcXVpdGUg
bnVtZXJvdXMKLSBub3QgYXQgYWxsIG9idmlvdXMgdGhhdCB0aGVyZSdzIGEgbG9vcCBpbiB0aGVy
ZQoKU28gSSBmaWd1cmVkIEknZCB0cnkgdG8gY29tZSB1cCB3aXRoIHNvbWV0aGluZyBtb3JlIHVu
aXZlcnNhbGx5IHVzZWZ1bC4KCkNjOiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4K
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KClZpbGxlIFN5cmrDpGzDpCAoNCk6
CiAgZHJtOiBJbnRyb2R1Y2UgZHJtX21vZGVzZXRfbG9ja19jdHhfcmV0cnkoKQogIGRybTogSW50
cm9kdWNlIGRybV9tb2Rlc2V0X2xvY2tfYWxsX2N0eF9yZXRyeSgpCiAgZHJtL2k5MTU6IEV4dHJh
Y3QgaW50ZWxfY3J0Y19pbml0aWFsX2NvbW1pdCgpCiAgZHJtL2k5MTU6IFVzZSBkcm1fbW9kZXNl
dF9sb2NrX2N0eF9yZXRyeSgpICYgY28uCgogZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlc2V0X2xv
Y2suYyAgICAgICAgICAgIHwgIDQ0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
ZzR4X2RwLmMgICAgICAgICB8ICAxNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdWRpby5jICAgIHwgIDE3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jICAgICAgfCAgMTYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jICB8IDE5MiArKysrKysrKy0tLS0tLS0tLS0KIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jICB8ICA0NSArKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BpcGVfY3JjLmMgfCAgMzggKystLQogaW5jbHVkZS9kcm0vZHJt
X21vZGVzZXRfbG9jay5oICAgICAgICAgICAgICAgIHwgIDI2ICsrKwogOCBmaWxlcyBjaGFuZ2Vk
LCAxODggaW5zZXJ0aW9ucygrKSwgMjA3IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
