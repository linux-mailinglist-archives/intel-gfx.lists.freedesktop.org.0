Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF81A32CB
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 10:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5B86E282;
	Fri, 30 Aug 2019 08:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D786E282
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 08:42:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 01:42:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="381059246"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2019 01:42:03 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 14:01:42 +0530
Message-Id: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v9][PATCH 00/11] drm/i915: adding state checker for
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
ZnJvbSB0aGUgaGFyZHdhcmUuClRoaXMgaXMgZG9uZSBmb3IgbGVnYWN5LCBpOTY1LCBpbGssIGds
ayBhbmQgdGhlaXIgdmFyaWFudCBwbGF0Zm9ybXMuIAoKSW50ZW50aW9uYWxseSwgZXhjbHVkZWQg
YmR3IGFuZCBpdmIgc2luY2UgdGhleSBoYXZlIHNwaWx0IGdhbW1hIG1vZGU7CmZvciB3aGljaCBk
ZWdhbW1hIHJlYWQgb3V0cyBhcmUgcmVxdWlyZWQgKHdoaWNoIEkgdGhpbmsgc2hvdWxkbid0IGJl
CmluY2x1ZGVkIGluIHRoaXMgcGF0Y2ggc2VyaWVzKS4gV2lsbCBpbmNsdWRlIGFmdGVyIGRlZ2Ft
bWEgc3RhdGUgY2hlY2tlcgppcyBjb21wbGV0ZWQuCgp2MTogLUltcGxlbWVudGF0aW9uIGRvbmUg
Zm9yIGxlZ2FjeSBwbGF0Zm9ybXMKICAgICAocmVtb3ZlZCBhbGwgdGhlIHBsYWNlaG9sZGVycykg
KEphbmkpCnYyOiAtUmVzdHJ1Y3R1cmVkIGNvZGUgYW5kIGNyZWF0ZWQgcGxhdGZvcm0gc3BlY2lm
aWMgcGF0Y2ggc2VyaWVzIGZvciAKICAgICBnYW1tYSB2YWxpZGF0aW9uCnYzOiAtUmViYXNlCnY0
OiAtTWlub3IgY2hhbmdlcy1mdW5jdGlvbiBuYW1lIGNoYW5nZXMgbWFpbmx5CnY1OiAtQWRkZWQg
ZGVnYW1tYSB2YWxpZGF0aW9uIChWaWxsZSkKdjY6IC1SZW1vdmVkIGRlZ2FtbWEgY2hhbmdlcywg
ZGVidWdnaW5nIHdhcyBiZWNvbWluZyBkaWZmaWN1bHQKICAgIC1BZGRlZCBmdW5jdGlvbiB0byBh
c3NpZ24gYml0X3ByZWNpc2lvbiBmb3IgZ2FtbWEvZGVnYW1tYQogICAgIGx1dCB2YWx1ZXMgL3Bs
YXRmb3JtCiAgICAtQWRkZWQgZGVidWcgaW5mbyBpbnRvIGludGVsX2R1bXBfcGlwZV9jb25maWco
KSAoSmFuaSkKdjc6IC1BZGRlZCBwbGF0Zm9ybSBzcGVjaWZpYyBmdW5jdGlvbnMgdG8gY29tcHV0
ZSBnYW1tYSBiaXQgcHJlY2lzaW9uCiAgICAgb24gdGhlIGJhc2lzIG9mIEdBTU1BX01PREUgKFZp
bGxlKQogICAgLUNvcnJlY3RlZCBjaGVja3BhdGNoIHdhcm5pbmdzCnY4OiAtUmVzdHJ1Y3R1cmVk
IGNvZGUKICAgIC1SZW1vdmVkIGJkdyBhbmQgaXZiIHBsYXRmb3JtIHN0YXRlIGNoZWNrZXIKdjk6
IC1PYmxpZ2VkIDgwIGNoYXJhY3RlciB3b3JkIGxpbWl0IFtVbWFdCiAgICAtQWRkZWQgc3RhdGUg
Y2hlY2tlciBmb3IgaWNsCiAgICAtQWRkZWQgYml0IHByZWNpc2lvbiBmdW5jIGZvciBpY2wgCgpT
d2F0aSBTaGFybWEgKDExKToKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZnVuYyB0byBnZXQgZ2Ft
bWEgYml0IHByZWNpc2lvbgogIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBkZWJ1ZyBsb2cgZm9yIGNv
bG9yIHBhcmFtZXRlcnMKICBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgZnVuYyB0byBjb21wYXJlIGh3
L3N3IGdhbW1hIGx1dAogIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBtYWNybyB0byBjb21wYXJlIGdh
bW1hIGh3L3N3IGx1dAogIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgaTl4eF9yZWFkX2x1dHMo
KQogIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgaTk2NV9yZWFkX2x1dHMoKQogIGRybS9pOTE1
L2Rpc3BsYXk6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCiAgZHJtL2k5MTUvZGlzcGxheTogRXh0
cmFjdCBpbGtfcmVhZF9sdXRzKCkKICBkcm0vaTkxNS9kaXNwbGF5OiBFeHRyYWN0IGdsa19yZWFk
X2x1dHMoKQogIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgaWNsX3JlYWRfbHV0cygpCiAgRk9S
X1RFU1RJTkdfT05MWTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cgYmxvYnMKCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICB8IDUyMyArKysrKysrKysr
KysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuaCAgIHwgICA3ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgIDM0ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
ICB8ICAyMSArKwogNCBmaWxlcyBjaGFuZ2VkLCA1NzcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
