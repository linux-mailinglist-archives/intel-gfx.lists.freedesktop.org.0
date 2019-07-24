Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5727359F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 19:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE266E605;
	Wed, 24 Jul 2019 17:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0016E56E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 17:34:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="368863774"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2019 10:34:52 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6OHYoSG007518; Wed, 24 Jul 2019 18:34:51 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 17:34:45 +0000
Message-Id: <20190724173446.35188-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190724173446.35188-1-michal.wajdeczko@intel.com>
References: <20190724173446.35188-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Update drawing for firmware
 layout
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

U3BoaW54IHdhcyByZW5kZXJpbmcgZmlybXdhcmUgbGF5b3V0IGFzIGh0bWwgdGFibGUsIGJ1dCBz
aW5jZQp3ZSB3YW50IHRvIGFkZCBzaXplcyByZWxhdGlvbnMgc3dpdGNoIHRvIHBsYWluIHRleHQg
Z3JhcGhpY3MuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZndfYWJpLmggfCAyNSArKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZndfYWJpLmgKaW5kZXggM2NhNTM1NTM0MTUxLi5lMjUyNzFhYWM3NjUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oCkBAIC0x
MSwyMSArMTEsMTggQEAKIC8qKgogICogRE9DOiBHdUMgRmlybXdhcmUgTGF5b3V0CiAgKgotICog
VGhlIEd1QyBmaXJtd2FyZSBsYXlvdXQgbG9va3MgbGlrZSB0aGlzOgorICogVGhlIEd1QyBmaXJt
d2FyZSBsYXlvdXQgbG9va3MgbGlrZSB0aGlzOjoKICAqCi0gKiAgICAgKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0rCi0gKiAgICAgfCAgICAgICAgIHVjX2Nzc19oZWFkZXIgICAgICAg
ICB8Ci0gKiAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Ci0gKiAgICAgfCBj
b250YWlucyBtYWpvci9taW5vciB2ZXJzaW9uICB8Ci0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rCi0gKiAgICAgfCAgICAgICAgICAgICB1Q29kZSAgICAgICAgICAgICB8
Ci0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCi0gKiAgICAgfCAgICAg
ICAgIFJTQSBzaWduYXR1cmUgICAgICAgICB8Ci0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rCi0gKiAgICAgfCAgICAgICAgICBtb2R1bHVzIGtleSAgICAgICAgICB8Ci0g
KiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCi0gKiAgICAgfCAgICAgICAg
ICBleHBvbmVudCB2YWwgICAgICAgICB8Ci0gKiAgICAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rCisgKiAgICAgICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09KworICogICAgICB8ICBGaXJtd2FyZSBi
bG9iICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKKyAqICAgICAgKz09PT09PT09PT09PT09PSs9PT09PT09PT09PT09PT0rPT09PT09PT09PT09
Kz09PT09PT09PT09PSs9PT09PT09PT09PT0rCisgKiAgICAgIHwgIENTUyBoZWFkZXIgICB8ICAg
ICB1Q29kZSAgICAgfCAgICBrZXkgICAgIHwgIG1vZHVsdXMgICB8ICBleHBvbmVudCAgfAorICog
ICAgICArPT09PT09PT09PT09PT09Kz09PT09PT09PT09PT09PSs9PT09PT09PT09PT0rPT09PT09
PT09PT09Kz09PT09PT09PT09PSsKKyAqICAgICAgIDwtaGVhZGVyIHNpemUtPiAgICAgICAgICAg
ICAgICAgPC0tLWhlYWRlciBzaXplIGNvbnRpbnVlZCAtLS0tLS0tLS0tLT4KKyAqICAgICAgIDwt
LS0gc2l6ZSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLT4KKyAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC1r
ZXkgc2l6ZS0+CisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8LW1vZCBzaXplLT4KKyAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8LWV4cCBzaXplLT4KICAqCiAgKiBUaGUg
ZmlybXdhcmUgbWF5IG9yIG1heSBub3QgaGF2ZSBtb2R1bHVzIGtleSBhbmQgZXhwb25lbnQgZGF0
YS4gVGhlIGhlYWRlciwKICAqIHVDb2RlIGFuZCBSU0Egc2lnbmF0dXJlIGFyZSBtdXN0LWhhdmUg
Y29tcG9uZW50cyB0aGF0IHdpbGwgYmUgdXNlZCBieSBkcml2ZXIuCi0tIAoyLjE5LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
