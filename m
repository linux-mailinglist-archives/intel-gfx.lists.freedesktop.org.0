Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AD1670C4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C6E6E0CC;
	Fri, 12 Jul 2019 13:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159106E0CC;
 Fri, 12 Jul 2019 13:59:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 06:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="168323405"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jul 2019 06:59:11 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 12 Jul 2019 12:30:20 +0530
Message-Id: <20190712070026.13088-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 0/6] HDCP2.2 Phase II
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

QWRkaW5nIHRoZSB1QVBJIHN1cHBvcnQgZm9yIHRoZSBIRENQIGNvbnRlbnQgdHlwZSBpcyB0aGUg
bWFpbgpmb2N1cyBoZXJlLiBBbG9uZyB3aXRoIHRoYXQgdWV2ZW50IGlzIGltcGxlbWVudGVkIGZv
ciB0aGUKIkNvbnRlbnQgUHJvdGVjdGlvbiIgc3RhdGUgY2hhbmdlIHRoYXQgZ290IHRyaWdnZXJl
ZCBieSBrZXJuZWwuCgp2MTA6CiAgQ29udGVudCBUeXBlIGRvYyBpbXByb3ZlbWVudCBbcGVra2Fd
CiAgRmV3IHN1Z2dlc3Rpb25zIGFkZHJlc3NlZCBvbiB1ZXZlbnQgZ2VuZXJhdGlvbiBwYXRjaCBb
U2Vhbl0KClJhbWFsaW5nYW0gQyAoNik6CiAgZHJtOiBBZGQgQ29udGVudCBwcm90ZWN0aW9uIHR5
cGUgcHJvcGVydHkKICBkcm0vaTkxNTogQXR0YWNoIGNvbnRlbnQgdHlwZSBwcm9wZXJ0eQogIGRy
bTogdWV2ZW50IGZvciBjb25uZWN0b3Igc3RhdHVzIGNoYW5nZQogIGRybS9oZGNwOiB1cGRhdGUg
Y29udGVudCBwcm90ZWN0aW9uIHByb3BlcnR5IHdpdGggdWV2ZW50CiAgZHJtL2k5MTU6IHVwZGF0
ZSB0aGUgaGRjcCBzdGF0ZSB3aXRoIHVldmVudAogIGRybS9oZGNwOiByZWZlcmVuY2UgZm9yIHNy
bSBmaWxlIGZvcm1hdAoKIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgICAg
IHwgIDQgKysKIGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgICAgICAgICAgIHwgNjcg
KysrKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jICAgICAgICAg
ICAgICAgIHwgNzcgKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1f
c3lzZnMuYyAgICAgICAgICAgICAgIHwgMzUgKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgIHwgMzkgKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyB8IDUzICsrKysrKysrKystLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5oIHwgIDIgKy0KIGluY2x1ZGUvZHJt
L2RybV9jb25uZWN0b3IuaCAgICAgICAgICAgICAgIHwgIDcgKysrCiBpbmNsdWRlL2RybS9kcm1f
aGRjcC5oICAgICAgICAgICAgICAgICAgICB8ICA0ICstCiBpbmNsdWRlL2RybS9kcm1fbW9kZV9j
b25maWcuaCAgICAgICAgICAgICB8ICA2ICsrCiBpbmNsdWRlL2RybS9kcm1fc3lzZnMuaCAgICAg
ICAgICAgICAgICAgICB8ICA1ICstCiBpbmNsdWRlL3VhcGkvZHJtL2RybV9tb2RlLmggICAgICAg
ICAgICAgICB8ICA0ICsrCiAxMiBmaWxlcyBjaGFuZ2VkLCAyNjkgaW5zZXJ0aW9ucygrKSwgMzQg
ZGVsZXRpb25zKC0pCgotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
