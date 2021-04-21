Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43326367084
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 18:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5926E0CF;
	Wed, 21 Apr 2021 16:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5826E0CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 16:48:53 +0000 (UTC)
IronPort-SDR: qQch+M1ukBnS+phykkUri3Rwu5OgEhv7jVB08jxsElVj7+BaJ4N4Z4pR76sUJcJxhV1/w0sIiw
 vzXZMP3EMsGw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="183220693"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="183220693"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 09:48:52 -0700
IronPort-SDR: w8mU5+nWV0EBSemnt1x22/7E5DI9sD4X/VZJngW97UBvyJ3XVBSO38eFMG9xc33Rzd0xXoayy6
 AU9IMhZgZh3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="385830107"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 21 Apr 2021 09:48:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Apr 2021 19:48:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Apr 2021 19:48:32 +0300
Message-Id: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/17] drm/i915: DDI buf trans cleaup and fixes
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
cyB1cCBwcm9wZXJseSBhbmQgdHVybiB0aGUgd2hvbGUgCnRoaW5nIGludG8gYSB2ZnVuYyB0byBt
YWtlIGl0IGVhc2llciB0byBtYW5hZ2UKbXVsdGlwbGUgcGxhdGZvcm1zLgoKVmlsbGUgU3lyasOk
bMOkICgxNyk6CiAgZHJtL2k5MTU6IHMvaW50ZWwvaHN3LyBmb3IgaHN3L2JkZS9za2wgYnVmIHRy
YW5zCiAgZHJtL2k5MTU6IEludHJvZHVjZSBoc3dfZ2V0X2J1Zl90cmFucygpCiAgZHJtL2k5MTU6
IFdyYXAgdGhlIHBsYXRmb3JtIHNwZWNpZmljIGJ1ZiB0cmFucyBzdHJ1Y3RzIGludG8gYSB1bmlv
bgogIGRybS9pOTE1OiBSZW5hbWUgZGtsIHBoeSBidWYgdHJhbnMgdGFibGVzCiAgZHJtL2k5MTU6
IFdyYXAgdGhlIGJ1ZiB0cmFucyB0YWJsZXMgaW50byBhIHN0cnVjdAogIGRybS9pOTE1OiBJbnRy
b2R1Y2UgaW50ZWxfZ2V0X2J1Zl90cmFucygpCiAgZHJtL2k5MTU7IFJldHVybiB0aGUgd2hvbGUg
YnVmX3RyYW5zIHN0cnVjdCBmcm9tIGdldF9idWZfdHJhbnMoKQogIGRybS9pOTE1OiBTdG9yZSB0
aGUgSERNSSBkZWZhdWx0IGVudHJ5IGluIHRoZSBidWcgdHJhbnMgc3RydWN0CiAgZHJtL2k5MTU6
IEludHJvZHVjZSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKCkKICBkcm0vaTkxNTogQ2xlYW4gdXAg
aHN3L2Jkdy9za2wva2JsIGJ1ZiB0cmFucyBmdW5jcwogIGRybS9pOTE1OiBJbnRyb2R1Y2Ugcmts
X2dldF9jb21ib19idWZfdHJhbnMoKQogIGRybS9pOTE1OiBGaXggZGcxIGJ1ZiB0cmFucyB0YWJs
ZXMKICBkcm0vaTkxNTogRGVkdXBsaWNhdGUgaWNsIERQIEhCUjIgdnMuIGVEUCBIQlIzIHRhYmxl
CiAgZHJtL2k5MTU6IEZpeCBlaGwgZWRwIGhicjIgdnN3aW5nIHRhYmxlCiAgZHJtL2k5MTU6IENs
ZWFuIHVwIGpzbC9laGwgYnVmIHRyYW5zIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBOdWtlIGJ1Zl90
cmFucyBoZG1pIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBBZGQgdGhlIG1pc3NpbmcgYWRscyB2c3dp
bmcgdGFibGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgICAg
IHwgICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAg
fCAgMTYyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oICAgICAg
fCAgICA0ICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAg
fCAyMzU0ICsrKysrKysrKystLS0tLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlf
YnVmX3RyYW5zLmggICAgfCAgIDYzICstCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmggICAgfCAgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmRpLmMgICAgICB8ICAgIDUgKy0KIDcgZmlsZXMgY2hhbmdlZCwgMTQzMiBpbnNlcnRpb25z
KCspLCAxMTYzIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
