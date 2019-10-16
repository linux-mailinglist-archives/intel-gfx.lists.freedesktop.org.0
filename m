Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2669DD8D2C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 12:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811D96E90E;
	Wed, 16 Oct 2019 10:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D866B6E90C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 10:03:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 03:03:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="189633903"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga008.jf.intel.com with ESMTP; 16 Oct 2019 03:03:31 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:02:43 +0530
Message-Id: <20191016103249.32121-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v1 0/6] Enable HDR on MCA LSPCON based Gen9 devices
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

R2VuOSBoYXJkd2FyZSBzdXBwb3J0cyBIRE1JMi4wIHRocm91Z2ggTFNQQ09OIGNoaXBzLiBFeHRl
bmRpbmcgSERSCnN1cHBvcnQgZm9yIE1DQSBMU1BDT04gYmFzZWQgR0VOOSBkZXZpY2VzLgoKU09D
IHdpbGwgZHJpdmUgTFNQQ09OIGFzIERQIGFuZCBzZW5kIEhEUiBtZXRhZGF0YSBhcyBzdGFuZGFy
ZApEUCBTRFAgcGFja2V0cy4gTFNQQ09OIHdpbGwgYmUgc2V0IHRvIG9wZXJhdGUgaW4gUENPTiBt
b2RlLAp3aWxsIHJlY2VpdmUgdGhlIG1ldGFkYXRhIGFuZCBjcmVhdGUgRHluYW1pYyBSYW5nZSBh
bmQKTWFzdGVyaW5nIEluZm9mcmFtZSAoRFJNIHBhY2tldHMpIGFuZCBzZW5kIGl0IHRvIEhEUiBj
YXBhYmxlCkhETUkgc2luayBkZXZpY2VzLgoKVW1hIFNoYW5rYXIgKDYpOgogIGRybS9pOTE1L2Rp
c3BsYXk6IEFkZCBIRFIgQ2FwYWJpbGl0eSBkZXRlY3Rpb24gZm9yIExTUENPTgogIGRybS9pOTE1
L2Rpc3BsYXk6IEVuYWJsZSBIRFIgb24gZ2VuOSBkZXZpY2VzIHdpdGggTUNBIExzcGNvbgogIGRy
bS9pOTE1L2Rpc3BsYXk6IEF0dGFjaCBIRFIgcHJvcGVydHkgZm9yIGNhcGFibGUgR2VuOSBkZXZp
Y2VzCiAgZHJtL2k5MTUvZGlzcGxheTogU2V0IEhEUiBJbmZvZnJhbWUgZm9yIEhEUiBjYXBhYmxl
IExTUENPTiBkZXZpY2VzCiAgZHJtL2k5MTUvZGlzcGxheTogRW5hYmxlIEJUMjAyMCBmb3IgSERS
IG9uIExTUENPTiBkZXZpY2VzCiAgZHJtL2k5MTUvZGlzcGxheTogUmVkdWNlIGJsYW5raW5nIHRv
IHN1cHBvcnQgNGs2MEAxMGJwcCBmb3IgTFNQQ09OCgogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9t
aWNfc3RhdGVfaGVscGVyLmMgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNf
dWFwaS5jICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICAgIHwgMTAgKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyAgICAgICB8IDE5ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jICAgICB8IDMzICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbHNwY29uLmMgICB8IDkxICsrKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmggICB8ICA3ICsrCiBpbmNsdWRlL2RybS9kcm1fY29u
bmVjdG9yLmggICAgICAgICAgICAgICAgICAgfCAgMSArCiA5IGZpbGVzIGNoYW5nZWQsIDE1MiBp
bnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
