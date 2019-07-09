Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1F863369
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B287489D84;
	Tue,  9 Jul 2019 09:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5805889D84
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:32:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 02:32:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="185876177"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.37.9])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2019 02:32:27 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 12:31:56 +0300
Message-Id: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 00/12] drm/i915: Vulkan performance query
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

SGkgYWxsLAoKQW5vdGhlciBpdGVyYXRpb24sIEkgdGhpbmsgdGhpcyB0aW1lIGl0IG1pZ2h0IGp1
c3QgbmVlZCBzb21lIG1vcmUKbG9va2luZyBpbnRvICJkcm0vaTkxNS9wZXJmOiBleGVjdXRlIE9B
IGNvbmZpZ3VyYXRpb24gZnJvbSBjb21tYW5kCnN0cmVhbSIuCgpDaGVlcnMsCgpMaW9uZWwgTGFu
ZHdlcmxpbiAoMTIpOgogIGRybS9pOTE1L3BlcmY6IGVuc3VyZSB3ZSBrZWVwIGEgcmVmZXJlbmNl
IG9uIHRoZSBkcml2ZXIKICBkcm0vaTkxNS9wZXJmOiBhZGQgbWlzc2luZyBkZWxheSBmb3IgT0Eg
bXV4ZXMgY29uZmlndXJhdGlvbgogIGRybS9pOTE1L3BlcmY6IGludHJvZHVjZSBhIHZlcnNpb25p
bmcgb2YgdGhlIGk5MTUtcGVyZiB1YXBpCiAgZHJtL2k5MTUvcGVyZjogYWxsb3cgZm9yIENTIE9B
IGNvbmZpZ3MgdG8gYmUgY3JlYXRlZCBsYXppbHkKICBkcm0vaTkxNTogZW51bWVyYXRlIHNjcmF0
Y2ggZmllbGRzCiAgZHJtL2k5MTUvcGVyZjogaW1wbGVtZW50IGFjdGl2ZSB3YWl0IGZvciBub2Eg
Y29uZmlndXJhdGlvbnMKICBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVu
ZCBleGVjYnVmMgogIGRybS9pOTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBzdXBwb3J0CiAgZHJt
L2k5MTU6IGFkZCBhIG5ldyBwZXJmIGNvbmZpZ3VyYXRpb24gZXhlY2J1ZiBwYXJhbWV0ZXIKICBk
cm0vaTkxNS9wZXJmOiBhbGxvdyBob2xkaW5nIHByZWVtcHRpb24gb24gZmlsdGVyZWQgY3R4CiAg
ZHJtL2k5MTUvcGVyZjogZXhlY3V0ZSBPQSBjb25maWd1cmF0aW9uIGZyb20gY29tbWFuZCBzdHJl
YW0KICBkcm0vaTkxNTogYWRkIHN1cHBvcnQgZm9yIHBlcmYgY29uZmlndXJhdGlvbiBxdWVyaWVz
CgogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgNDYxICsr
KysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAg
IHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oICB8
ICAgOSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAg
MjUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgICAgIHwgICA2
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAgICAgfCAgMjAg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgIHwgIDMyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgICAgfCAgMzUgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAzMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMTEgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA2MiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICAgIHwgNjU2ICsrKysrKysr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wcmlvbGlzdF90eXBlcy5oICAg
IHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAgICAgICB8
IDI3OSArKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAg
ICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAg
ICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oICAgICAgICAg
ICB8ICAxNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyAg
IHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAg
fCAgIDUgKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8
IDE5MyArKysrKy0KIDIwIGZpbGVzIGNoYW5nZWQsIDE2NjggaW5zZXJ0aW9ucygrKSwgMTk4IGRl
bGV0aW9ucygtKQoKLS0KMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
