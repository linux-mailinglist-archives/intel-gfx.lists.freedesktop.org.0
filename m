Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584B102518
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5853F6E20A;
	Tue, 19 Nov 2019 13:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2316E20A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:04:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 05:04:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="209189435"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 05:04:11 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 18:03:08 +0530
Message-Id: <20191119123316.5094-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [V3 0/8] Add support for mipi dsi cmd mode
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

QWRkcmVzc2VkIGNvbW1lbnRzIG9uIFJGQy12MiBmcm9tIEphbmksIHRoYW5rcy4KClZhbmRpdGEg
S3Vsa2FybmkgKDgpOgogIGRybS9pOTE1L2RzaTogQ29uZmlndXJlIHRyYW5zY29kZXIgb3BlcmF0
aW9uIGZvciBjb21tYW5kIG1vZGUuCiAgZHJtL2k5MTUvZHNpOiBBZGQgdmJsYW5rIGNhbGN1bGF0
aW9uIGZvciBjb21tYW5kIG1vZGUKICBkcm0vaTkxNS9kc2k6IEFkZCBjbWQgbW9kZSBmbGFncyBp
biBkaXNwbGF5IG1vZGUgcHJpdmF0ZSBmbGFncwogIGRybS9pOTE1L2RzaTogQWRkIGNoZWNrIGZv
ciBwZXJpb2RpYyBjb21tYW5kIG1vZGUKICBkcm0vaTkxNS9kc2k6IFVzZSBwcml2YXRlIGZsYWdz
IHRvIGluZGljYXRlIFRFIGluIGNtZCBtb2RlCiAgZHJtL2k5MTUvZHNpOiBDb25maWd1cmUgVEUg
aW50ZXJydXB0IGZvciBjbWQgbW9kZQogIGRybS9pOTE1L2RzaTogQWRkIFRFIGhhbmRsZXIgZm9y
IGRzaSBjbWQgbW9kZS4KICBkcm0vaTkxNS9kc2k6IEluaXRpYXRlIGZhbWUgcmVxdWVzdCBpbiBj
bWQgbW9kZQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgICAgICB8
IDE1MCArKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jICB8ICAxMCArKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oICAgIHwgIDEwICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzaS5oICAgICAgfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAg
ICAgICAgICAgIHwgMTE5ICsrKysrKysrKysrKystCiA1IGZpbGVzIGNoYW5nZWQsIDI3NyBpbnNl
cnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
