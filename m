Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BAB59A06
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 14:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318456E8EE;
	Fri, 28 Jun 2019 12:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20DB86E8EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 12:07:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 05:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="153354887"
Received: from akamins1-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.35])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2019 05:07:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 15:07:17 +0300
Message-Id: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/3] drm/i915: CTS fixes
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

QW51aiB0ZXN0ZWQgdGhlIHVwZGF0ZSB0byB0aGUgSUNMIHdoaXRlbGlzdC4gV2UgbmVlZCBhIGdv
b2Qgc291bCB0bwplaXRoZXIgUmIvQWNrIHRoZSByZXN0LgoKVGhhbmtzLAoKTGlvbmVsIExhbmR3
ZXJsaW4gKDMpOgogIGRybS9pOTE1OiBmaXggd2hpdGVsaXN0IHNlbGZ0ZXN0cyB3aXRoIHJlYWRv
bmx5IHJlZ2lzdGVycwogIGRybS9pOTE1OiB3aGl0ZWxpc3QgUFNfKERFUFRIfElOVk9DQVRJT04p
X0NPVU5UCiAgZHJtL2k5MTUvaWNsOiB3aGl0ZWxpc3QgUFNfKERFUFRIfElOVk9DQVRJT04pX0NP
VU5UCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAgIHwgMzAg
KysrKysrKysrKysrKysrKysrLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJv
dW5kcy5jICAgIHwgIDMgKysKIDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKLS0KMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
