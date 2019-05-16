Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E631FF4B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 07:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1EC8920E;
	Thu, 16 May 2019 05:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AB08920E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 05:58:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 22:58:07 -0700
X-ExtLoop1: 1
Received: from hchegond-ivm.ra.intel.com ([10.54.134.59])
 by fmsmga008.fm.intel.com with ESMTP; 15 May 2019 22:58:07 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2019 22:58:05 -0700
Message-Id: <cover.1557985315.git.harish.chegondi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Reg: igt@kms_pipe_crc_basic@* CRC mismatch
 test failures
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBmaXhlcyB0aGUgaWd0QGttc19waXBlX2NyY19iYXNpY0AqIHRlc3QgZmFpbHVy
ZXMgZHVlIHRvIENSQyBtaXNtYXRjaApvbiBDSSBCWVQgc3F1YXdrcyBjaHJvbWVib29rIGFzIHJl
cG9ydGVkIGluOgpodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDMxOTEKClRoZXNlIENSQyBtaXNtYXRjaCB0ZXN0IGZhaWx1cmVzIGhhcHBlbiBjb25zaXN0ZW50
bHkgb24gQllUIHNxdWF3a3MgY2hyb21lYm9vawpUaGVzZSB0ZXN0IGZhaWx1cmVzIGhhcHBlbiB2
ZXJ5IGludGVybWl0dGVudGx5IG9uIHNoYXJkLVNLTCBhbmQgQ01MLVUgc3lzdGVtcy4KVGhpcyBw
YXRjaCBmaXhlcyB0aGVzZSB0ZXN0IGZhaWx1cmVzIG9uIHRoZSBCWVQgcGxhdGZvcm0uIFRoZSBy
ZWFzb24gZm9yIHRoZXNlCkNSQyB0ZXN0IGZhaWx1cmVzIGhhcHBlbmluZyBvbiBTS0wgYW5kIENN
TC1VIHBsYXRmb3JtcyBpcyBzdGlsbCB1bmtub3duIGFuZCBpcwpiZWluZyBpbnZlc3RpZ2F0ZWQu
CgpUaGFua3MKSGFyaXNoLgoKSGFyaXNoIENoZWdvbmRpICgxKToKICBkcm0vaTkxNTogc2tpcCB0
aGUgc2Vjb25kIENSQyBldmVuIGZvciBHRU4gNyBHUFVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
