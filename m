Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B766F1A0A6A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 11:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567D58870A;
	Tue,  7 Apr 2020 09:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616428870A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 09:49:46 +0000 (UTC)
IronPort-SDR: SC1Suv9g2uyJaj/Re2x+eLumXNdhphqjIvBJUKxtDyG6OJ1hd0zQ3TxRI3ZEiw1Mt9IJwMEI/B
 wnYuyKbsdGRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:49:45 -0700
IronPort-SDR: Qx5g+B8ges+TNd0Q7HOlEp2FYeOYQ0TYDSAILhhM1vQoP9wwDM+GZ92219Kxp2BKSp4+tP8nD2
 aGwBTiiywSAw==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424694002"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 02:49:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 12:49:35 +0300
Message-Id: <cover.1586252867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: from module params to device
 params
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
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBzdGlsbCBwZW5kaW5nIGlndCBjaGFuZ2VzIHRvIHN3aXRjaCBmcm9tIG1vZHVsZSBw
YXJhbSBzeXNmcyB0byB0aGUKZGV2aWNlIHBhcmFtIGRlYnVnZnMuIFBvc3RpbmcgZm9yIGVhcmx5
IHJldmlldy4KCkJSLApKYW5pLgoKQ2M6IEp1aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhLXBla2th
LmhlaWtraWxhQGludGVsLmNvbT4KQ2M6IFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSA8dmVu
a2F0YS5zLmRoYW5hbGFrb3RhQGludGVsLmNvbT4KCgpKYW5pIE5pa3VsYSAoMyk6CiAgZHJtL2k5
MTUvcGFyYW1zOiBkb24ndCBleHBvc2UgaW5qZWN0X3Byb2JlX2ZhaWx1cmUgaW4gZGVidWdmcwog
IGRybS9pOTE1L3BhcmFtczogcHJldmVudCBjaGFuZ2luZyBtb2R1bGUgcGFyYW1zIHJ1bnRpbWUK
ICBkcm0vaTkxNS9wYXJhbXM6IHN3aXRjaCB0byBkZXZpY2Ugc3BlY2lmaWMgcGFyYW1ldGVycwoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8ICA2ICstLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgICAgIHwgIDQgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgICAgICB8ICA2ICstLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTIgKysrLS0tCiAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgMiArLQogLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMTQgKysrLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDkgKysrLS0K
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jICAgICAgfCAxMiArKystLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jICAgICB8ICA0ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMgfCAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jICAgIHwgIDQgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICB8ICA2ICstLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDQgKy0KIC4uLi9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jICB8ICAzICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jICAgICAgICAgfCAgNiArLS0KIC4uLi9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMgICB8ICA2ICstLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jICAgIHwgMTUgKysrKy0tLQogLi4uL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgIDQgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgICAgICAgICB8IDIwICsrKysrLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAgICB8IDIyICsrKysrLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnNfcGFyYW1zLmMgICAgfCAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgIDkgKysrKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA1ICsrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jICAgICAgICAgIHwgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgICB8ICA0ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jICAgICAgICAgICAgfCA0MCArKysrKysrKysrKyst
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oICAgICAgICAgICAgfCAg
MiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Z0LmMgICAgICAgICAgICAgIHwgIDgg
KystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uYyAgICAgIHwgIDYg
Ky0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyAgICAgICAgICAgfCAgOCAr
Ky0tCiAzMiBmaWxlcyBjaGFuZ2VkLCAxNDAgaW5zZXJ0aW9ucygrKSwgMTExIGRlbGV0aW9ucygt
KQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
