Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740D478F17
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 17:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D544789F43;
	Mon, 29 Jul 2019 15:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BDC89F43
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 15:23:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 08:23:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="190611235"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2019 08:23:16 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TFNFE4014113; Mon, 29 Jul 2019 16:23:15 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 15:22:57 +0000
Message-Id: <20190729152301.22588-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] add more probe failures
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

VGhlcmUgYXJlIHN0aWxsIG1hbnkgcGxhY2VzIHdoZXJlIHdlIGNhbiBpbmplY3QgZmFpbHVyZXMs
CmJ1dCBkb2luZyBzbyB3aXRob3V0IHByZXBhcmF0aW9uIG1heSBtYWtlIENJIHVuaGFwcHkgYXMK
aXQgd2lsbCB0cmVhdCBhbnkgbmV3IEVSUk9SL1dBUk4gdmVyeSBzZXJpb3VzbHkuCgpNaXRpZ2F0
ZSB0aGF0IGJ5IGNvbnZlcnRpbmcgc29tZSBvZiBkbWVzZyBtZXNzYWdlcyB0bwpkZWJ1ZyBhZnRl
ciBpbmplY3RpbmcgZmFrZSBlcnJvci4KCk1pY2hhbCBXYWpkZWN6a28gKDQpOgogIGRybS9pOTE1
OiBSZXBvcnQgLUVOT0RFViBhZnRlciBpbmplY3RpbmcgcHJvYmUgZmFpbHVyZQogIGRybS9pOTE1
OiBBZGQgaTkxNSB0byBpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlCiAgZHJtL2k5MTUvdWM6IElu
amVjdCBsb2FkIGVycm9ycyBpbnRvIGludGVsX3VjX2luaXRfaHcKICBkcm0vaTkxNS93b3BjbTog
RG9uJ3QgZmFpbCBvbiBXT1BDTSBwYXJ0aXRpb25pbmcgZmFpbHVyZQoKIC4uLi9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYyAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwgMTEgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAyNyArKysrLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgMTkgKysrKy0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCAyNCArKy0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAgNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZ3Z0LmMgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3VuY29yZS5jICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF93b3BjbS5jICAgICAgICAgICAgfCA2OCArKysrKysrKysrLS0tLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5oICAgICAgICAgICAgfCAxMSArKy0KIDEx
IGZpbGVzIGNoYW5nZWQsIDk3IGluc2VydGlvbnMoKyksIDc1IGRlbGV0aW9ucygtKQoKLS0gCjIu
MTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
