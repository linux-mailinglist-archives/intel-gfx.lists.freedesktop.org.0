Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FFC666AD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 07:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1960D6E2C8;
	Fri, 12 Jul 2019 05:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9114F6E2C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 05:57:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 22:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="189740597"
Received: from kdedow-mobl1.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.255.80.125])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2019 22:57:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 22:57:04 -0700
Message-Id: <20190712055706.12143-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/2] Modular FIA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzE3NS8KCkNoYW5nZXM6
CiAgLSBBZGQgY29tbWVudCBleHBsYWluaW5nIG1hcHBpbmcgcG9ydCA8LT4gRklBCiAgLSBBZGQg
Y29tbWl0IHRvIGFwcGx5IG1vZHVsYXIgRklBIG9uIFRHTAoKQW51c2hhIFNyaXZhdHNhICgxKToK
ICBkcm0vaTkxNTogQWRkIG1vZHVsYXIgRklBCgpMdWNhcyBEZSBNYXJjaGkgKDEpOgogIGRybS9p
OTE1L3RnbDogYWRkIG1vZHVsYXIgRklBIHRvIGRldmljZSBpbmZvCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgNiArKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAgICAgIHwgNDcgKysrKysrKysrKysrKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAxMyArKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgIHwgIDEgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgICAgICAgICAgfCAgMSArCiA2IGZpbGVzIGNoYW5n
ZWQsIDU3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
