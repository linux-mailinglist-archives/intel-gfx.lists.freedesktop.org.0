Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7D21CFC64
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 19:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8990A6E13D;
	Tue, 12 May 2020 17:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E206E136
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 17:41:48 +0000 (UTC)
IronPort-SDR: dMg8FDpd4/BpXrd2j6IGK2ik/5CR90JT+GIyBcew/45wQjqFhw1BcsD8V19X6XtxZY2hxeO/Fc
 r2uQ6z58pk+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:41:47 -0700
IronPort-SDR: EVXG7BqkM06uuP3cp4BK1wlDgt3xmEz/0JYQ3JekOdzR9i8dyxQKo3W7CYHBRn58smTX4IZdWG
 Mw1DsruMcWPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="340979042"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 12 May 2020 10:41:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 20:41:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 20:41:38 +0300
Message-Id: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: DP vswing/preemph fixes
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
ZXNlIHZzd2luZy9wcmVlbXBoIGZpeGVzIHdlcmUgcHJldmlvdXNseSBwb3N0ZWQgYXMgcGFydCBv
Zgp0aGUgbGluayB0cmFpbmluZyBjcnRjX3N0YXRlIHBsdW1iaW5nIHNlcmllcywgYnV0IHNpbmNl
CnRoYXQgcG90ZW50aWFsbHkgaGFkIHNvbWUgb2RkIGJlaGF2aW91ciBpbiBjaSBJJ20gc2VuZGlu
Zwp0aGVzZSBzZXBhcmF0ZWx5LiBIb3BlZnVsbHkgbm90aGluZyBvZGQgcG9wcyB1cCB3aXRoIGp1
c3QgdGhlc2UuLi4KClZpbGxlIFN5cmrDpGzDpCAoNyk6CiAgZHJtL2k5MTU6IEZpeCBjcHQvcHB0
IG1heCBwcmUtZW1waGFzaXMKICBkcm0vaTkxNTogRml4IGlieCBtYXggdnN3aW5nL3ByZWVtcGgK
ICBkcm0vaTkxNTogRml4IGl2YiBjcHUgZWRwIHZzd2luZwogIGRybS9pOTE1OiBBZGQge3ByZWVt
cGgsdm9sdGFnZX1fbWF4KCkgdmZ1bmNzCiAgZHJtL2k5MTU6IFJldmVyc2UgcHJlZW1waCB2cy4g
dm9sdGFnZSBzd2luZyBwcmVmZXJlbmNlCiAgZHJtL2k5MTU6IEZpeCBEUF9UUkFJTl9NQVhfe1BS
RV9FTVBIQVNJUyxTV0lOR31fUkVBQ0hFRCBoYW5kbGluZwogIGRybS9pOTE1OiBSZXBsYWNlIHNv
bWUgaGFuZCByb2xsZWQgbWF4KClzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyAgICAgIHwgMjEgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmggICAgICB8ICAzIC0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyAgICAgICB8IDgwICsrKysrLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuaCAgICAgICB8ICA0IC0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYyB8IDM2ICsrKysrKy0tLQogNiBmaWxlcyBjaGFuZ2VkLCA1NiBp
bnNlcnRpb25zKCspLCA5MSBkZWxldGlvbnMoLSkKCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
