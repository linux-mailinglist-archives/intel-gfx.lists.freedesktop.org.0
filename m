Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A559EE7A44
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 21:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EC56EA20;
	Mon, 28 Oct 2019 20:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1966EA0D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 20:38:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 13:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="202622109"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2019 13:38:46 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:40:31 -0700
Message-Id: <20191028204041.13507-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 00/10] Clear Color Support for TGL Render
 Decompression
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VwcG9ydCBmb3IgQ2xlYXIgQ29sb3IgaXMgY29udGFpbmVkIGluIHRoZSBsYXN0IHR3byBwYXRj
aGVzCnN1Ym1pdHRlZCBieSBSYWRoYWtyaXNobmEgU3JpcGFkYS4gVGhlIGZpcnN0IDggcGF0Y2hl
cyBhcmUKY3VycmVudGx5IHVuZGVyZ29pbmcgcmV2aWV3L3JldmlzaW9uIGNoYW5nZXMuIFRoZSBm
aXJzdCA4IHBhdGNoZXMKYXJlIGNoZXJyeS1waWNrZWQgZnJvbSB0aGUgc2VyaWVzCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcwNzgvCgpFeHBlY3RpbmcgZmVlZGJh
Y2sgZm9yIHRoZSA5dGggcGF0Y2hlcy4gVGhlIHNlcmllcyBpcyB0ZXN0ZWQgd2l0aCBrbXNfY3Vi
ZQphbmQgY3VzdG9tIE1lc2EgYnJhbmNoIGJ5IE5hbmxleS4gUmVzZW5kaW5nIGR1ZSB0byBhIHdy
b25nIHBhdGNoIHNlbnQgdG8gdGhlIE1MLgoKRGhpbmFrYXJhbiBQYW5kaXlhbiAoOCk6CiAgZHJt
L2ZyYW1lYnVmZmVyOiBGb3JtYXQgbW9kaWZpZXIgZm9yIEludGVsIEdlbi0xMiByZW5kZXIgY29t
cHJlc3Npb24KICBkcm0vaTkxNTogVXNlIGludGVsX3RpbGVfaGVpZ2h0KCkgaW5zdGVhZCBvZiBy
ZS1pbXBsZW1lbnRpbmcKICBkcm0vaTkxNTogTW92ZSBDQ1Mgc3RyaWRlIGFsaWdubWVudCBXL0Eg
aW5zaWRlCiAgICBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50CiAgZHJtL2k5MTUvdGdsOiBHZW4t
MTIgcmVuZGVyIGRlY29tcHJlc3Npb24KICBkcm0vaTkxNTogRXh0cmFjdCBmcmFtZWJ1ZmVyIEND
UyBvZmZzZXQgY2hlY2tzIGludG8gYSBmdW5jdGlvbgogIGRybS9mcmFtZWJ1ZmZlcjogRm9ybWF0
IG1vZGlmaWVyIGZvciBJbnRlbCBHZW4tMTIgbWVkaWEgY29tcHJlc3Npb24KICBkcm0vZmI6IEV4
dGVuZCBmb3JtYXRfaW5mbyBtZW1iZXIgYXJyYXlzIHRvIGhhbmRsZSBmb3VyIHBsYW5lcwogIEdl
bi0xMiBkaXNwbGF5IGNhbiBkZWNvbXByZXNzIHN1cmZhY2VzIGNvbXByZXNzZWQgYnkgdGhlIG1l
ZGlhIGVuZ2luZS4KClJhZGhha3Jpc2huYSBTcmlwYWRhICgyKToKICBkcm0vZnJhbWVidWZmZXIv
dGdsOiBGb3JtYXQgbW9kaWZpZXIgZm9yIEludGVsIEdlbiAxMiByZW5kZXIKICAgIGNvbXByZXNz
aW9uIHdpdGggQ2xlYXIgQ29sb3IKICBkcm0vaTkxNS90Z2w6IEFkZCBDbGVhciBDb2xvciBzdXBw
b3J0IGZvciBUR0wgUmVuZGVyIERlY29tcHJlc3Npb24KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA0MzQgKysrKysrKysrKysrKystLS0tCiAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDUgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8ICA3MCArKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAxNCArCiBpbmNsdWRlL2Ry
bS9kcm1fZm91cmNjLmggICAgICAgICAgICAgICAgICAgICAgfCAgIDggKy0KIGluY2x1ZGUvdWFw
aS9kcm0vZHJtX2ZvdXJjYy5oICAgICAgICAgICAgICAgICB8ICA0MyArKwogNiBmaWxlcyBjaGFu
Z2VkLCA0NjAgaW5zZXJ0aW9ucygrKSwgMTE0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
