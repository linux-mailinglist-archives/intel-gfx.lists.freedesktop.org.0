Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B2E39EFA4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:36:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D3E6EAD3;
	Tue,  8 Jun 2021 07:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078C06EAD3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 07:36:08 +0000 (UTC)
IronPort-SDR: 2ak1CB8iO05pqLUXnolzsN+hgR6kCLueGMzesOMVDCz47+BxTx46rcvVESF6DcyMSatKQ10mrC
 qL8EUU/5aChg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204605121"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204605121"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:36:06 -0700
IronPort-SDR: dxIXRlytaonvxgDrRNqJ17uKgkDx8vUxXBZI4h5gvaS88fJygH+wOldF9IDP4oMlwK3SPMOOXz
 NHrWIZIql92Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="413296119"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 08 Jun 2021 00:36:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jun 2021 10:36:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 10:35:46 +0300
Message-Id: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/17] drm/i915: DDI buf trans cleaup and
 fixes
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
ZSBEREkgYnVmIHRyYW5zIGZ1bmN0aW9ucyBrZWVwIHR1cm5pbmcgaW50byBiYWQKc3BhZ2hldHRp
IGV2ZXJ5IHRpbWUgYSBuZXcgcGxhdGZvcm0gZ2V0cyBhZGRlZC4KU3BsaXQgdGhlIHBsYXRmb3Jt
cyB1cCBwcm9wZXJseSBhbmQgdHVybiB0aGUgd2hvbGUKdGhpbmcgaW50byBhIHZmdW5jIHRvIG1h
a2UgaXQgZWFzaWVyIHRvIG1hbmFnZQptdWx0aXBsZSBwbGF0Zm9ybXMuCgp2MjogUmViYXNlIGR1
ZSB0byBhZGwtcCBsYW5kaW5nIGluIHRoZSBtZWFudGltZQoKVmlsbGUgU3lyasOkbMOkICgxNyk6
CiAgZHJtL2k5MTU6IHMvaW50ZWwvaHN3LyBmb3IgaHN3L2Jkdy9za2wgYnVmIHRyYW5zCiAgZHJt
L2k5MTU6IEludHJvZHVjZSBoc3dfZ2V0X2J1Zl90cmFucygpCiAgZHJtL2k5MTU6IFdyYXAgdGhl
IHBsYXRmb3JtIHNwZWNpZmljIGJ1ZiB0cmFucyBzdHJ1Y3RzIGludG8gYSB1bmlvbgogIGRybS9p
OTE1OiBSZW5hbWUgZGtsIHBoeSBidWYgdHJhbnMgdGFibGVzCiAgZHJtL2k5MTU6IFdyYXAgdGhl
IGJ1ZiB0cmFucyB0YWJsZXMgaW50byBhIHN0cnVjdAogIGRybS9pOTE1OiBJbnRyb2R1Y2UgaW50
ZWxfZ2V0X2J1Zl90cmFucygpCiAgZHJtL2k5MTU7IFJldHVybiB0aGUgd2hvbGUgYnVmX3RyYW5z
IHN0cnVjdCBmcm9tIGdldF9idWZfdHJhbnMoKQogIGRybS9pOTE1OiBTdG9yZSB0aGUgSERNSSBk
ZWZhdWx0IGVudHJ5IGluIHRoZSBidWcgdHJhbnMgc3RydWN0CiAgZHJtL2k5MTU6IEludHJvZHVj
ZSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKCkKICBkcm0vaTkxNTogQ2xlYW4gdXAgaHN3L2Jkdy9z
a2wva2JsIGJ1ZiB0cmFucyBmdW5jcwogIGRybS9pOTE1OiBJbnRyb2R1Y2UgcmtsX2dldF9jb21i
b19idWZfdHJhbnMoKQogIGRybS9pOTE1OiBGaXggZGcxIGJ1ZiB0cmFucyB0YWJsZXMKICBkcm0v
aTkxNTogRGVkdXBsaWNhdGUgaWNsIERQIEhCUjIgdnMuIGVEUCBIQlIzIHRhYmxlCiAgZHJtL2k5
MTU6IEZpeCBlaGwgZWRwIGhicjIgdnN3aW5nIHRhYmxlCiAgZHJtL2k5MTU6IENsZWFuIHVwIGpz
bC9laGwgYnVmIHRyYW5zIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBOdWtlIGJ1Zl90cmFucyBoZG1p
IGZ1bmN0aW9ucwogIGRybS9pOTE1OiBBZGQgdGhlIG1pc3NpbmcgYWRscyB2c3dpbmcgdGFibGVz
CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgICAgIHwgICAgMyAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgMTY3ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oICAgICAgfCAgICA0ICst
CiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCAyNDM3ICsr
KysrKysrKystLS0tLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5z
LmggICAgfCAgIDY4ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmggICAgfCAgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmRpLmMg
ICAgICB8ICAgIDUgKy0KIDcgZmlsZXMgY2hhbmdlZCwgMTQ3MyBpbnNlcnRpb25zKCspLCAxMjE1
IGRlbGV0aW9ucygtKQoKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
