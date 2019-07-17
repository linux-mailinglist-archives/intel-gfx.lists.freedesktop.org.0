Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FA36BBB9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 13:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E44E6E116;
	Wed, 17 Jul 2019 11:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B077A6E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 11:45:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 04:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158440138"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Jul 2019 04:45:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jul 2019 14:45:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 14:45:36 +0300
Message-Id: <20190717114536.22937-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Make sure cdclk is high enough for DP
 audio on VLV/CHV
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
Cc: Stefan Gottwald <gottwald@igel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IFZMVi9DSFYgdGhlcmUgaXMgc29tZSBraW5kIG9mIGxpbmthZ2UgYmV0d2VlbiB0aGUgY2RjbGsg
ZnJlcXVlbmN5CmFuZCB0aGUgRFAgbGluayBmcmVxdWVuY3kuIFRoZSBzcGVjIHNheXM6CiJGb3Ig
RFAgYXVkaW8gY29uZmlndXJhdGlvbiwgY2RjbGsgZnJlcXVlbmN5IHNoYWxsIGJlIHNldCB0bwog
bWVldCB0aGUgZm9sbG93aW5nIHJlcXVpcmVtZW50czoKIERQIExpbmsgRnJlcXVlbmN5KE1Ieikg
fCBDZGNsayBmcmVxdWVuY3koTUh6KQogMjcwICAgICAgICAgICAgICAgICAgICB8IDMyMCBvciBo
aWdoZXIKIDE2MiAgICAgICAgICAgICAgICAgICAgfCAyMDAgb3IgaGlnaGVyIgoKSSBzdXNwZWN0
IHRoYXQgd291bGQgbW9yZSBhY2N1cmF0ZWx5IGJlIGV4cHJlc3NlZCBhcwoiY2RjbGsgPj0gRFAg
bGluayBjbG9jayIsIGFuZCBpbiBhbnkgY2FzZSB3ZSBjYW4gZXhwcmVzcyBpdCBsaWtlCnRoYXQg
aW4gdGhlIGNvZGUgYmVjYXVzZSBvZiB0aGUgbGltaXRlZCBzZXQgb2YgY2RjbGsgYW5kIGxpbmsK
ZnJlcXVlbmNpZXMgd2Ugc3VwcG9ydC4KCldpdGhvdXQgdGhpcyB3ZSBjYW4gZW5kIHVwIGluIGEg
c2l0dWF0aW9uIHdoZXJlIHRoZSBjZGNsawppcyB0b28gbG93IGFuZCBlbmFibGluZyBEUCBhdWRp
byB3aWxsIGtpbGwgdGhlIHBpcGUuIEhhcHBlbnMKZWcuIHdpdGggMjU2MHgxNDQwIG1vZGVzIHdo
ZXJlIHRoZSAyNjZNSHogY2RjbGsgaXMgc3VmZmljaWVudAp0byBwdW1wIHRoZSBwaXhlbHMgKDI0
MS41IE1IeiBkb3RjbG9jaykgYnV0IGlzIHRvbyBsb3cgZm9yCnRoZSBEUCBhdWRpbyBkdWUgdG8g
dGhlIGxpbmsgZnJlcXVlbmN5IGJlaW5nIDI3MCBNSHouCgpDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwpUZXN0ZWQtYnk6IFN0ZWZhbiBHb3R0d2FsZCA8Z290dHdhbGRAaWdlbC5jb20+CkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTExNDkK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAx
MSArKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggZDA1ODFhMWFjMjQzLi45
M2IwZDE5MGMxODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMKQEAgLTIyNjIsNiArMjI2MiwxNyBAQCBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX21pbl9jZGNs
ayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoY3J0Y19z
dGF0ZS0+aGFzX2F1ZGlvICYmIElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkKIAkJbWluX2NkY2xr
ID0gbWF4KDIgKiA5NjAwMCwgbWluX2NkY2xrKTsKIAorCS8qCisJICogIkZvciBEUCBhdWRpbyBj
b25maWd1cmF0aW9uLCBjZGNsayBmcmVxdWVuY3kgc2hhbGwgYmUgc2V0IHRvCisJICogIG1lZXQg
dGhlIGZvbGxvd2luZyByZXF1aXJlbWVudHM6CisJICogIERQIExpbmsgRnJlcXVlbmN5KE1Ieikg
fCBDZGNsayBmcmVxdWVuY3koTUh6KQorCSAqICAyNzAgICAgICAgICAgICAgICAgICAgIHwgMzIw
IG9yIGhpZ2hlcgorCSAqICAxNjIgICAgICAgICAgICAgICAgICAgIHwgMjAwIG9yIGhpZ2hlciIK
KwkgKi8KKwlpZiAoKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2
X3ByaXYpKSAmJgorCSAgICBpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpICYm
IGNydGNfc3RhdGUtPmhhc19hdWRpbykKKwkJbWluX2NkY2xrID0gbWF4KGNydGNfc3RhdGUtPnBv
cnRfY2xvY2ssIG1pbl9jZGNsayk7CisKIAkvKgogCSAqIE9uIFZhbGxleXZpZXcgc29tZSBEU0kg
cGFuZWxzIGxvc2UgKHZ8aClzeW5jIHdoZW4gdGhlIGNsb2NrIGlzIGxvd2VyCiAJICogdGhhbiAz
MjAwMDBLSHouCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
