Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 491D7C3A9A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 18:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761386E847;
	Tue,  1 Oct 2019 16:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484A66E84A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 16:36:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 09:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="216127628"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2019 09:36:05 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 19:35:55 +0300
Message-Id: <20191001163555.24356-2-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
References: <20191001163555.24356-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: extend audio CDCLK>=2*BCLK
 constraint to more platforms
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIENEQ0xLPj0yKkJDTEsgY29uc3RyYWludCBhcHBsaWVzIHRvIGFsbCBnZW5lcmF0aW9ucyBz
aW5jZSBnZW4xMC4KRXh0ZW5kIHRoZSBjb25zdHJhaW50IGxvZ2ljIGluIGF1ZGlvIGdldC9wdXRf
cG93ZXIoKS4KClNpZ25lZC1vZmYtYnk6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKaW5kZXggYTczMWFm
N2FkYTA4Li4wMzFkN2U1M2M3ZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXVkaW8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F1ZGlvLmMKQEAgLTg2MCw3ICs4NjAsNyBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBpOTE1
X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIoc3RydWN0IGRldmljZSAqa2RldikKIAkJfQogCiAJ
CS8qIEZvcmNlIENEQ0xLIHRvIDIqQkNMSyBhcyBsb25nIGFzIHdlIG5lZWQgYXVkaW8gcG93ZXJl
ZC4gKi8KLQkJaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKQorCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkKIAkJCWdsa19mb3JjZV9h
dWRpb19jZGNsayhkZXZfcHJpdiwgdHJ1ZSk7CiAKIAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
PT0gMTEgfHwgSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMCkKLS0gCjIuMTcuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
