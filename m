Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2611CA73B6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E58A897E0;
	Tue,  3 Sep 2019 19:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6130A897E0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:33:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 12:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="176693236"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2019 12:32:58 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 00:52:50 +0530
Message-Id: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v10][PATCH 0/8] drm/i915: adding state checker for
 gamma lut values
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEKKDhCSVQgYW5kIDEwQklUKS5UaGlzIHJlYWRzIGhhcmR3YXJlIHN0YXRlLCBhbmQgY29tcGFy
ZXMgdGhlIG9yaWdpbmFsbHkKcmVxdWVzdGVkIHN0YXRlKHMvdykgdG8gdGhlIHN0YXRlIHJlYWQg
ZnJvbSB0aGUgaGFyZHdhcmUuClRoaXMgaXMgZG9uZSBmb3IgbGVnYWN5LCBpbGssIGdsayBhbmQg
dGhlaXIgdmFyaWFudCBwbGF0Zm9ybXMuIFJlc3Qgb2YKdGhlIHBsYXRmb3JtcyB3aWxsIGJlIGVu
YWJsZWQgb24gdG9wIG9mIHRoaXMgbGF0ZXIuCgpJbnRlbnRpb25hbGx5LCBleGNsdWRlZCBiZHcg
YW5kIGl2YiBzaW5jZSB0aGV5IGhhdmUgc3BpbHQgZ2FtbWEgbW9kZTsKZm9yIHdoaWNoIGRlZ2Ft
bWEgcmVhZCBvdXRzIGFyZSByZXF1aXJlZCAod2hpY2ggSSB0aGluayBzaG91bGRuJ3QgYmUKaW5j
bHVkZWQgaW4gdGhpcyBwYXRjaCBzZXJpZXMpLiBXaWxsIGluY2x1ZGUgYWZ0ZXIgZGVnYW1tYSBz
dGF0ZSBjaGVja2VyCmlzIGNvbXBsZXRlZC4KCnYxOiAgLUltcGxlbWVudGF0aW9uIGRvbmUgZm9y
IGxlZ2FjeSBwbGF0Zm9ybXMKICAgICAgKHJlbW92ZWQgYWxsIHRoZSBwbGFjZWhvbGRlcnMpIChK
YW5pKQp2MjogIC1SZXN0cnVjdHVyZWQgY29kZSBhbmQgY3JlYXRlZCBwbGF0Zm9ybSBzcGVjaWZp
YyBwYXRjaCBzZXJpZXMgZm9yIAogICAgICBnYW1tYSB2YWxpZGF0aW9uCnYzOiAgLVJlYmFzZQp2
NDogIC1NaW5vciBjaGFuZ2VzLWZ1bmN0aW9uIG5hbWUgY2hhbmdlcyBtYWlubHkKdjU6ICAtQWRk
ZWQgZGVnYW1tYSB2YWxpZGF0aW9uIChWaWxsZSkKdjY6ICAtUmVtb3ZlZCBkZWdhbW1hIGNoYW5n
ZXMsIGRlYnVnZ2luZyB3YXMgYmVjb21pbmcgZGlmZmljdWx0CiAgICAgLUFkZGVkIGZ1bmN0aW9u
IHRvIGFzc2lnbiBiaXRfcHJlY2lzaW9uIGZvciBnYW1tYS9kZWdhbW1hCiAgICAgIGx1dCB2YWx1
ZXMgL3BsYXRmb3JtCiAgICAgLUFkZGVkIGRlYnVnIGluZm8gaW50byBpbnRlbF9kdW1wX3BpcGVf
Y29uZmlnKCkgKEphbmkpCnY3OiAgLUFkZGVkIHBsYXRmb3JtIHNwZWNpZmljIGZ1bmN0aW9ucyB0
byBjb21wdXRlIGdhbW1hIGJpdCBwcmVjaXNpb24KICAgICAgb24gdGhlIGJhc2lzIG9mIEdBTU1B
X01PREUgKFZpbGxlKQogICAgIC1Db3JyZWN0ZWQgY2hlY2twYXRjaCB3YXJuaW5ncwp2ODogIC1S
ZXN0cnVjdHVyZWQgY29kZQogICAgIC1SZW1vdmVkIGJkdyBhbmQgaXZiIHBsYXRmb3JtIHN0YXRl
IGNoZWNrZXIKdjk6ICAtT2JsaWdlZCA4MCBjaGFyYWN0ZXIgd29yZCBsaW1pdCBbVW1hXQogICAg
IC1BZGRlZCBzdGF0ZSBjaGVja2VyIGZvciBpY2wKICAgICAtQWRkZWQgYml0IHByZWNpc2lvbiBm
dW5jIGZvciBpY2wKdjEwOiAtRHJvcHBlZCBtdWx0aS1zZWcgZ2FtbWEgbW9kZSBbSmFuaV0KICAg
ICAtRW5hYmxlZCBiYXNpYyBpbmZyYXN0cnVjdHVyZSBvbmx5IFtKYW5pXQogICAgIC1NaW5vciBm
aXhlcyBbSmFuaV0KClN3YXRpIFNoYXJtYSAoOCk6CiAgZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1
bmMgdG8gZ2V0IGdhbW1hIGJpdCBwcmVjaXNpb24KICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZGVi
dWcgbG9nIGZvciBjb2xvciBwYXJhbWV0ZXJzCiAgZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMg
dG8gY29tcGFyZSBody9zdyBnYW1tYSBsdXQKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgbWFjcm8g
dG8gY29tcGFyZSBnYW1tYSBody9zdyBsdXQKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGk5
eHhfcmVhZF9sdXRzKCkKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMo
KQogIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgZ2xrX3JlYWRfbHV0cygpCiAgRk9SX1RFU1RJ
TkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cgYmxvYnMKCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICB8IDI4NCArKysrKysrKysrKysrKysr
KysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaCAg
IHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
IDM0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwg
ICA5ICsKIDQgZmlsZXMgY2hhbmdlZCwgMzMxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
CgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
