Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ADE5BAC3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 13:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CD6898EA;
	Mon,  1 Jul 2019 11:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64E4898EA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 11:34:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 04:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="186455032"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.249.141.63])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2019 04:34:42 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 14:34:26 +0300
Message-Id: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 00/11] drm/i915: Vulkan performance query
 support
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

SGkgYWxsLAoKSGVyZSBhcmUgYSBudW1iZXIgb2YgZml4ZXMgYW5kIGltcHJvdmVtZW50IG92ZXIg
djUuCgpIZXJlIGlzIGEgc3VtbWFyeSA6CgogICAgICogTmFtZSBvZmZzZXRzL2ZpZWxkcyB1c2Vk
IGluIHRoZSBzY3JhdGNoIGJ1ZmZlcgoKICAgICAqIFNhdmUvcmVzdG9yZSB1c2VkIENTX0dQUiBy
ZWdpc3RlcnMgZm9yIHBlcmYgZGVsYXkKCiAgICAgKiBMaW1pdGluZyB0YWtpbmcgb2YgZ2xvYmFs
IGxvY2sgbm93IHRoYXQgd2UgaGF2ZSBjb25maWd1cmF0aW9uCiAgICAgICBoYXBwZW5pbmcgb24g
Q1MKCiAgICAgKiBQcmV2ZW50IHN0cnVjdHVyZSB0byBiZSBsaXN0ZWQgbW9yZSB0aGFuIG9uY2Ug
aW4gZXhlY2J1ZmZlcgogICAgICAgZXh0ZW5zaW9uIGNoYWluCgpNYW55IHRoYW5rcyB0byBDaHJp
cyBmb3IgaGlzIGNvbW1lbnRzLgoKQ2hlZXJzLAoKTGlvbmVsIExhbmR3ZXJsaW4gKDExKToKICBk
cm0vaTkxNS9wZXJmOiBhZGQgbWlzc2luZyBkZWxheSBmb3IgT0EgbXV4ZXMgY29uZmlndXJhdGlv
bgogIGRybS9pOTE1L3BlcmY6IGludHJvZHVjZSBhIHZlcnNpb25pbmcgb2YgdGhlIGk5MTUtcGVy
ZiB1YXBpCiAgZHJtL2k5MTUvcGVyZjogYWxsb3cgZm9yIENTIE9BIGNvbmZpZ3MgdG8gYmUgY3Jl
YXRlZCBsYXppbHkKICBkcm0vaTkxNTogZW51bWVyYXRlIHNjcmF0Y2ggZmllbGRzCiAgZHJtL2k5
MTUvcGVyZjogaW1wbGVtZW50IGFjdGl2ZSB3YWl0IGZvciBub2EgY29uZmlndXJhdGlvbnMKICBk
cm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgogIGRybS9p
OTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBzdXBwb3J0CiAgZHJtL2k5MTU6IGFkZCBhIG5ldyBw
ZXJmIGNvbmZpZ3VyYXRpb24gZXhlY2J1ZiBwYXJhbWV0ZXIKICBkcm0vaTkxNS9wZXJmOiBhbGxv
dyBob2xkaW5nIHByZWVtcHRpb24gb24gZmlsdGVyZWQgY3R4CiAgZHJtL2k5MTUvcGVyZjogZXhl
Y3V0ZSBPQSBjb25maWd1cmF0aW9uIGZyb20gY29tbWFuZCBzdHJlYW0KICBkcm0vaTkxNTogYWRk
IHN1cHBvcnQgZm9yIHBlcmYgY29uZmlndXJhdGlvbiBxdWVyaWVzCgogLi4uL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgNDUyICsrKysrKysrKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAgMiArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDkgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggIHwgIDI1ICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmggICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgIHwgIDIwICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8ICAzMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jICAgIHwgIDM1ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgMjUgKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgIDExICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgNjEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jICAgICAgICAgICAgICB8IDYyOSArKysrKysrKysrKysrKystLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3RfdHlwZXMuaCAgICB8ICAgNyArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICAgfCAyNzkgKysrKysrKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgNCArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgICAgICAgIHwgICA0ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAgICAgICAgICAgfCAgMTQgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgICB8ICAxMCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgICA1ICstCiBpbmNsdWRl
L3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAgICAgfCAxOTMgKysrKystCiAyMCBm
aWxlcyBjaGFuZ2VkLCAxNjI1IGluc2VydGlvbnMoKyksIDE5OCBkZWxldGlvbnMoLSkKCi0tCjIu
MjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
