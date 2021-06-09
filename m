Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3FA3A0C76
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 08:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11E26E0D6;
	Wed,  9 Jun 2021 06:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5956E0D6;
 Wed,  9 Jun 2021 06:34:47 +0000 (UTC)
IronPort-SDR: u5DcUwIvC3h7BXb6bVl3R/7eyvUIdR11LaJI/zRBJH9zqDGxcwkJqHCfOqjoZg/nvhzr9Kxycy
 cKz7ReMmfxxg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="268868875"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="268868875"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:34:47 -0700
IronPort-SDR: dK3sOhMys9p6HyLNjO+s5/pR6rdE+fPtUcJDd1O+urh4+kOeU6bN4+dRsnmnrNhFDNDkiFrWfy
 ok6nSc4kh4cg==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="482265758"
Received: from ekolpasx-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.109])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:34:44 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  9 Jun 2021 08:34:27 +0200
Message-Id: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/9] Prereqs for TTM accelerated migration
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
Cc: matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBjb3VwbGUgb2YgcGF0Y2hlcyBmcm9tIENocmlzIHdoaWNoIGltcGxlbWVudCBwaXBlbGluZWQg
bWlncmF0aW9uIGFuZApjbGVhcnMgYnkgYXRvbWljYWxseSB3cml0aW5nIHRoZSBQVEVzIGluIHBs
YWNlIGJlZm9yZSBwZXJmb3JtaW5nIHRoZQphY3R1YWwgYmxpdC4KClNvbWUgd3cgdXRpbGl0aWVz
IG1haW5seSBmb3IgdGhlIGFjY29tcGFueWluZyBzZWxmdGVzdHMgYWRkZWQgYnkgVGhvbWFzLAph
cyB3ZWxsIGFzIG1vZGlmaWVkIHRoZSBhYm92ZSBwYXRjaGVzIGZvciB3dyBsb2NraW5nLSBhbmQg
bG1lbSBzdXBwb3J0LgoKVGhlIGFjdHVhbCBob29rIHVwIHRvIHRoZSBpOTE1IHR0bSBiYWNrZW5k
IGlzIGJlaW5nIHdvcmtlZCBvbiBhbmQgbm90CmluY2x1ZGVkIHlldCwgc28gdGhpcyBpcyBjb25z
aWRlcmVkIHRvIGJlIGFuIGVhcmx5IHJldmlldyBvcHBvcnR1bml0eS4KCnYyOgotIEEgY291cGxl
IG9mIG1pbm9yIHN0eWxlIGZpeGVzIHBvaW50ZWQgb3V0IGJ5IE1hdHRoZXcgQXVsZAotIEV4cG9y
dCBhbmQgdXNlIGludGVsX2VuZ2luZV9kZXN0cm95X3Bpbm5lZF9jb250ZXh0KCkgdG8gYWRkcmVz
cyBhCiAgQ0kgd2FybmluZyAvIGZhaWx1cmUuCgpDaHJpcyBXaWxzb24gKDYpOgogIGRybS9pOTE1
L2d0OiBBZGQgYW4gaW5zZXJ0X2VudHJ5IGZvciBnZW44X3BwZ3R0CiAgZHJtL2k5MTUvZ3Q6IEFk
ZCBhIHJvdXRpbmUgdG8gaXRlcmF0ZSBvdmVyIHRoZSBwYWdldGFibGVzIG9mIGEgR1RUCiAgZHJt
L2k5MTUvZ3Q6IEV4cG9ydCB0aGUgcGlubmVkIGNvbnRleHQgY29uc3RydWN0b3IgYW5kIGRlc3Ry
dWN0b3IKICBkcm0vaTkxNS9ndDogUGlwZWxpbmVkIHBhZ2UgbWlncmF0aW9uCiAgZHJtL2k5MTUv
Z3Q6IFBpcGVsaW5lZCBjbGVhcgogIGRybS9pOTE1L2d0OiBTZXR1cCBhIGRlZmF1bHQgbWlncmF0
aW9uIGNvbnRleHQgb24gdGhlIEdUCgpUaG9tYXMgSGVsbHN0csO2bSAoMyk6CiAgZHJtL2k5MTU6
IFJlZmVyZW5jZSBvYmplY3RzIG9uIHRoZSB3dyBvYmplY3QgbGlzdAogIGRybS9pOTE1OiBCcmVh
ayBvdXQgZG1hX3Jlc3Ygd3cgbG9ja2luZyB1dGlsaXRpZXMgdG8gc2VwYXJhdGUgZmlsZXMKICBk
cm0vaTkxNTogSW50cm9kdWNlIGEgd3cgdHJhbnNhY3Rpb24gaGVscGVyCgogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAgOSArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvZ2VuOF9wcGd0dC5jICAgICAgICAgIHwgIDY4ICsrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmUuaCAgICAgICAgfCAgMTIgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAgIHwgIDI3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3QuYyAgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3R5cGVzLmggICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndHQuaCAgICAgICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbWlncmF0ZS5jICAgICAgIHwgNjg1ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oICAgICAgIHwgIDY1ICsrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlX3R5cGVzLmggfCAgMTUgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVuZGVyc3RhdGUuaCAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmcuaCAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9taWdyYXRlLmMgICAgfCA2NzEgKysrKysrKysrKysrKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8ICA1MiAtLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaCAgICAgICAgICAgICAgIHwgIDEyIC0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmMgICAgICAgICAgICB8ICA2MyArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaCAgICAgICAgICAgIHwgIDUwICsrCiAuLi4vZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgIDEgKwogLi4uL2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X3BlcmZfc2VsZnRlc3RzLmggIHwgICAxICsKIDIxIGZpbGVzIGNoYW5n
ZWQsIDE2NzUgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5jCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZV90eXBlcy5oCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0
ZS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cu
YwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgK
Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
