Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BE255CBD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 02:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85036E1BB;
	Wed, 26 Jun 2019 00:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD9F6E1BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:03:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 17:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="163767552"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2019 17:03:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:03:47 -0700
Message-Id: <20190626000352.31926-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/5] EHL port programming
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJldmlvdXMgc2VyaWVzIHJldmlzaW9uIGhlcmU6CiAgaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIwMTktSnVuZS8yMDI3NzYuaHRtbAoKVGhpcyByZXZp
c2lvbiBpbmNvcnBvcmF0ZXMgSm9zZSdzIGZlZWRiYWNrIG9uIHBhdGNoZXMgIzIsICMzLCBhbmQg
IzQuCgpNYXR0IFJvcGVyICg1KToKICBkcm0vaTkxNS9pY2w6IERyb3AgcG9ydCBwYXJhbWV0ZXIg
dG8gaWNsX2dldF9jb21ib19idWZfdHJhbnMoKQogIGRybS9pOTE1L2VobDogQWRkIHRoaXJkIGNv
bWJvIFBIWSBvZmZzZXQKICBkcm0vaTkxNS9laGw6IERvbid0IHByb2dyYW0gUEhZX01JU0Mgb24g
RUhMIFBIWSBDCiAgZHJtL2k5MTUvZ2VuMTE6IFN0YXJ0IGRpc3Rpbmd1aXNoaW5nICdwaHknIGZy
b20gJ3BvcnQnCiAgZHJtL2k5MTUvZWhsOiBFbmFibGUgRERJLUQKCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAgMjQgKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb21ib19waHkuYyAgICB8IDE1OSArKysrKysrKysrLS0tLS0tLS0KIC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuaCAgICB8ICAgMyArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMTAyICsrKysrKy0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMzIg
KystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgIDE2
ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgMTIg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8ICAgOCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDIwICsr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgICAgICAgICAgIHwgICA0ICst
CiAxMSBmaWxlcyBjaGFuZ2VkLCAyMzkgaW5zZXJ0aW9ucygrKSwgMTQ1IGRlbGV0aW9ucygtKQoK
LS0gCjIuMTcuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
