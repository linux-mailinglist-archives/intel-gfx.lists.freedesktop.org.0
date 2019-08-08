Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E488B86359
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EFD6E83F;
	Thu,  8 Aug 2019 13:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0756E83B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:43:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158103"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:39 +0300
Message-Id: <cover.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: header cleanup of the day
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRhaWx5IGRvc2Ugb2YgaGVhZGVyIGNsZWFudXAuIEkgdGhpbmsgSSdsbCBzZXR0bGUgZG93
biBmb3IgYSB3aGlsZSBhZnRlcgp0aGlzIG9uZS4gOykKCkJSLApKYW5pLgoKSmFuaSBOaWt1bGEg
KDEwKToKICBkcm0vaTkxNTogcmVtb3ZlIHVudXNlZCBkZXZfcHJpdi0+bm9fYXV4X2hhbmRzaGFr
ZQogIGRybS9pOTE1OiBtb3ZlIGFkZF90YWludF9mb3JfQ0koKSB0byBpOTE1X3V0aWxzLmgKICBk
cm0vaTkxNTogbW92ZSBJOTE1X1NUQVRFX1dBUk4oKSBhbmQgX09OKCkgdG8gaW50ZWxfZGlzcGxh
eS5oCiAgZHJtL2k5MTU6IG1vdmUgcHJpbnRpbmcgYW5kIGxvYWQgZXJyb3IgaW5qZWN0IHRvIGk5
MTVfdXRpbHMuW2NoXQogIGRybS9pOTE1OiBleHRyYWN0IGk5MTVfcGVyZi5oIGZyb20gaTkxNV9k
cnYuaAogIGRybS9pOTE1OiBleHRyYWN0IGk5MTVfc3lzZnMuaCBmcm9tIGk5MTVfZHJ2LmgKICBk
cm0vaTkxNTogZXh0cmFjdCBpOTE1X3N1c3BlbmQuaCBmcm9tIGk5MTVfZHJ2LmgKICBkcm0vaTkx
NTogZXh0cmFjdCBpOTE1X21lbWNweS5oIGZyb20gaTkxNV9kcnYuaAogIGRybS9pOTE1OiBleHRy
YWN0IGdlbS9pOTE1X2dlbV9zdG9sZW4uaCBmcm9tIGk5MTVfZHJ2LmgKICBkcm0vaTkxNTogZXh0
cmFjdCBpOTE1X2dlbV9zaHJpbmtlci5oIGZyb20gaTkxNV9kcnYuaAoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDE4ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgfCAgIDQgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3Nocmlua2VyLmggfCAgMzEgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5jICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3N0b2xlbi5oICAgfCAgMzUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmMgICAgICAgICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19sb2cuYyAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9w
YXJzZXIuYyAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAg
ICAgICAgICAgICB8ICA3MyArLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICB8IDE0NiArLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X21lbWNweS5jICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9tZW1jcHkuaCAgICAgICAgICAgfCAgMzIgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmggICAgICAgICAgICAgfCAgMzIgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zdXNwZW5kLmMgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9zdXNwZW5kLmggICAgICAgICAgfCAgMTQgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3lzZnMuYyAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lz
ZnMuaCAgICAgICAgICAgIHwgIDE0ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmMgICAgICAgICAgICB8ICA3OCArKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3V0aWxzLmggICAgICAgICAgICB8ICA0MSArKysrKysKIDIzIGZpbGVzIGNoYW5nZWQsIDMxNCBp
bnNlcnRpb25zKCspLCAyMTggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmgKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmgKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5oCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmgKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuaAogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYwoKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
