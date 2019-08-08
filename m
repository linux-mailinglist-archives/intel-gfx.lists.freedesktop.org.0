Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8098A8574D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 02:49:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D406E77F;
	Thu,  8 Aug 2019 00:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DB66E781
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 00:49:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 17:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="193033756"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2019 17:49:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:49:35 -0700
Message-Id: <20190808004935.1787-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808004935.1787-1-jose.souza@intel.com>
References: <20190808004935.1787-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/tgl: Fix the read of the DDI
 that transcoder is attached to
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVEdMIHRoaXMgcmVnaXN0ZXIgZG8gbm90IG1hcCBkaXJlY3RseSB0byBwb3J0LCBpdCB3YXMg
YWxyZWFkeQpoYW5kbGVkIHdoZW4gc2V0dGluZyBpdChUR0xfVFJBTlNfRERJX1NFTEVDVF9QT1JU
KCkpIGJ1dCBub3Qgd2hlbgpyZWFkaW5nIGl0LgoKVG8gbWFrZSBpdCBjb25zaXNudGVudCBhZGRp
bmcgYSBtYWNybyBmb3IgdGhlIG9sZGVyIGdlbnMgdG9vLgoKdjI6CkFkZGluZyBUR0xfUE9SVF9U
UkFOU19ERElfU0VMRUNUKCkgc28gYWxsIGZ1dHVyZSB1c2VycyBjYW4gcmV1c2UgaXQKKEx1Y2Fz
KQoKdjM6Ck1pc3NlZCBwYXJlbnRoZXNlcyBhcnJvdW5kIHZhbCAoSm9zZSkKCnY0OgpSZW5hbWVk
IFRHTF9QT1JUX1RSQU5TX0RESV9TRUxFQ1QgdG8gVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxf
VE9fUE9SVAooTHVjYXMpCkFkZGVkIFRSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCAoTHVj
YXMpCgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNSArKy0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAyICsrCiAy
IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDkzNWFlYzc2NjBh
Zi4uMGEzMWQ5MTEzNjk5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwpAQCAtMTAzNTQsMTAgKzEwMzU0LDkgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9n
ZXRfZGRpX3BvcnRfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJdG1wID0gSTkxNV9S
RUFEKFRSQU5TX0RESV9GVU5DX0NUTChwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpKTsKIAog
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQotCQlwb3J0ID0gKHRtcCAmIFRHTF9UUkFO
U19ERElfUE9SVF9NQVNLKSA+PgotCQkJVEdMX1RSQU5TX0RESV9QT1JUX1NISUZUOworCQlwb3J0
ID0gVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOwogCWVsc2UKLQkJcG9y
dCA9ICh0bXAgJiBUUkFOU19ERElfUE9SVF9NQVNLKSA+PiBUUkFOU19ERElfUE9SVF9TSElGVDsK
KwkJcG9ydCA9IFRSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOwogCiAJaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCiAJCWljZWxha2VfZ2V0X2RkaV9wbGwoZGV2X3ByaXYs
IHBvcnQsIHBpcGVfY29uZmlnKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQ3NjA4MzBj
ZmQ3Yi4uM2QxYzMwYTgyMzAyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTk0MzIsNiAr
OTQzMiw4IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSAgVEdMX1RSQU5TX0RESV9Q
T1JUX01BU0sJKDB4ZiA8PCBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpCiAjZGVmaW5lICBUUkFO
U19ERElfU0VMRUNUX1BPUlQoeCkJKCh4KSA8PCBUUkFOU19ERElfUE9SVF9TSElGVCkKICNkZWZp
bmUgIFRHTF9UUkFOU19ERElfU0VMRUNUX1BPUlQoeCkJKCgoeCkgKyAxKSA8PCBUR0xfVFJBTlNf
RERJX1BPUlRfU0hJRlQpCisjZGVmaW5lICBUUkFOU19ERElfRlVOQ19DVExfVkFMX1RPX1BPUlQo
dmFsKQkgKCgodmFsKSAmIFRSQU5TX0RESV9QT1JUX01BU0spID4+IFRSQU5TX0RESV9QT1JUX1NI
SUZUKQorI2RlZmluZSAgVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh2YWwpICgo
KHZhbCkgJiBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSyA+PiBUR0xfVFJBTlNfRERJX1BPUlRfU0hJ
RlQpIC0gMSkKICNkZWZpbmUgIFRSQU5TX0RESV9NT0RFX1NFTEVDVF9NQVNLCSg3IDw8IDI0KQog
I2RlZmluZSAgVFJBTlNfRERJX01PREVfU0VMRUNUX0hETUkJKDAgPDwgMjQpCiAjZGVmaW5lICBU
UkFOU19ERElfTU9ERV9TRUxFQ1RfRFZJCSgxIDw8IDI0KQotLSAKMi4yMi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
