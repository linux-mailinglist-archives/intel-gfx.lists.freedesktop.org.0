Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4878BF21A3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 23:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 937036EE32;
	Wed,  6 Nov 2019 22:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4096EE32
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 22:26:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 14:26:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="214399285"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 06 Nov 2019 14:26:13 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 14:25:46 -0800
Message-Id: <20191106222550.20752-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Start removing legacy guc code
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

Tm93IHRoYXQgd2UgaGF2ZSBhIGNsZWFyZXIgcGljdHVyZSBvZiB3aGF0IHRoZSBuZXcgR3VDIHN1
Ym1pc3Npb24gZmxvdwppcyBnb2luZyB0byBsb29rIGxpa2UsIHdlIGNhbiBzdGFydCByZW1vdmlu
ZyB0aGUgY29kZSB0aGF0IHdlIGtub3cgd2UKd29uJ3QgdXNlIGluIHRoZSBmdXR1cmUuIEFzIGEg
c3RhcnRlciwgd2UgY2FuIGdldCByaWQgb2YgdGhlIGRvb3JiZWxscwphbmQgdGhlIEd1QyBjbGll
bnQgY29kZSwgYmVjYXVzZSB0aGUgZm9ybWVyIHdpbGwgYmUgcmVwbGFjZWQgYnkgYW4gSDJHCm5v
dGlmaWNhdGlvbiB0byBHdUMgd2hpbGUgdGhlIGxhdHRlciB3b24ndCBtYWtlIHNlbnNlIGluIHRo
ZSBuZXcgZmxvdyBhcwp0aGUgcHJveHkgc3VibWlzc2lvbiBtZWNoYW5pc20gaXMgZ29uZS4KCkNj
OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IEpvaG4g
SGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+CkNjOiBNYXR0aGV3IEJyb3N0IDxt
YXR0aGV3LmJyb3N0QGludGVsLmNvbT4KCkRhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDQpOgogIGRy
bS9pOTE1L2d1YzogRHJvcCBsZWZ0b3ZlciBwcmVlbXB0aW9uIGNvZGUKICBkcm0vaTkxNS9ndWM6
IGFkZCBhIGhlbHBlciB0byBhbGxvY2F0ZSBhbmQgbWFwIGd1YyB2bWEKICBkcm0vaTkxNS9ndWM6
IGtpbGwgZG9vcmJlbGwgY29kZSBhbmQgc2VsZnRlc3RzCiAgZHJtL2k5MTUvZ3VjOiBraWxsIHRo
ZSBHdUMgY2xpZW50CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAg
ICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyAgICAg
ICAgfCAgMzQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggICAgICAg
IHwgIDE2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfYWRzLmMgICAg
fCAgMjEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19md2lmLmggICB8
ICAgMSAtCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgfCA2
MjcgKysrLS0tLS0tLS0tLS0tLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19z
dWJtaXNzaW9uLmggfCAgNTQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
LmMgICAgICAgICB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2VsZnRlc3Rf
Z3VjLmMgICAgIHwgMjk5IC0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgICAgICAgICAgIHwgIDE4IC0KIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZl
X3NlbGZ0ZXN0cy5oICB8ICAgMSAtCiAxMSBmaWxlcyBjaGFuZ2VkLCAxNDEgaW5zZXJ0aW9ucygr
KSwgOTQzIGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL3NlbGZ0ZXN0X2d1Yy5jCgotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
