Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C91E7B12A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A976E5FC;
	Tue, 30 Jul 2019 18:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE5B6E5FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:04:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP; 30 Jul 2019 11:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="172032291"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.102])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2019 11:04:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 11:04:02 -0700
Message-Id: <20190730180407.5993-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/5] Tiger Lake: MOCS table handling
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

djMgb2YgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDI3NS8KCkNo
YW5nZXM6CiAgLSBGaXggY2hlY2twYXRjaCB3YXJuaW5nIG9uIGNvbW1pdCBtZXNzYWdlCiAgLSBN
aW5vciBjaGFuZ2Ugb24gImRybS9pOTE1L3RnbDogc3RvcCB1c2luZyBFUlJPUl9HRU42IGFuZCBE
T05FX1JFRyIKICAtIFJlYmFzZSBhZ2FpbiB0byBiZSBhYmxlIHRvIGFwcGx5CgpMdWNhcyBEZSBN
YXJjaGkgKDIpOgogIGRybS9pOTE1L3RnbDogTW92ZSBmYXVsdCByZWdpc3RlcnMgdG8gdGhlaXIg
bmV3IG9mZnNldAogIGRybS9pOTE1L3RnbDogc3RvcCB1c2luZyBFUlJPUl9HRU42IGFuZCBET05F
X1JFRwoKTWljaGVsIFRoaWVycnkgKDEpOgogIGRybS9pOTE1L3RnbDogVGlnZXJsYWtlIG9ubHkg
aGFzIGdsb2JhbCBNT0NTIHJlZ2lzdGVycwoKVG9tYXN6IExpcyAoMSk6CiAgZHJtL2k5MTUvdGds
OiBEZWZpbmUgTU9DUyBlbnRyaWVzIGZvciBUaWdlcmxha2UKClR2cnRrbyBVcnN1bGluICgxKToK
ICBkcm0vaTkxNTogTW92ZSBNT0NTIHNldHVwIHRvIGludGVsX21vY3MuYwoKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgfCAgMjQgKysrKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX21vY3MuYyAgICAgfCAxMjEgKysrKysrKysrKysrKysrKysrKystLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuaCAgICAgfCAgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9ncHVfZXJyb3IuYyAgICB8ICAyOSArKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uaCB8ICAgMSArCiA5IGZpbGVzIGNoYW5nZWQsIDE1OSBpbnNlcnRpb25zKCspLCAzMCBk
ZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
