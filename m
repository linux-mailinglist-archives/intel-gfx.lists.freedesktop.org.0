Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E54D933F5A8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 17:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E6E6E83B;
	Wed, 17 Mar 2021 16:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288C56E83B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:37:33 +0000 (UTC)
IronPort-SDR: 3rCMlUhjKuib3yzKIBvm8FezAx81DQgm/XmvA5mfy+2/qUb2M3dGiGGkuY9gXVl3OUkOnuL6PM
 cWVYLUDEsZDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="253511383"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="253511383"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:32 -0700
IronPort-SDR: UEHScu0UV4bIJ8yeTxuQYdnuIWQpN57LacRs0gxmPQamj6azHD7vLYCJdswK3TzJrKBaZWGoHd
 8YrzH8/qm5pg==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="511784819"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:36:44 +0200
Message-Id: <41526a4eee5fb0de8d7f1ffe4c09965b63ccbaa8.1615998927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615998927.git.jani.nikula@intel.com>
References: <cover.1615998927.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/14] drm/i915/bios: limit default outputs
 by platform on missing VBT
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlLURESSBhbmQgbm9uLUNIViBhcmVuJ3QgdXNpbmcgdGhlIGluZm9ybWF0aW9uIGNyZWF0ZWQg
aGVyZSBhbnl3YXksIHNvCmRvbid0IGJvdGhlciBzZXR0aW5nIHRoZSBkZWZhdWx0cyBmb3IgdGhl
bS4gVGhpcyBzaG91bGQgYmUgYQpub24tZnVuY3Rpb25hbCBjaGFuZ2UsIGJ1dCBpcyBzZXBhcmF0
ZWQgaGVyZSB0byBjYXRjaCBhbnkgcmVncmVzc2lvbnMgaW4KYSBzaW5nbGUgY29tbWl0LgoKQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5k
ZXggM2RiNDFmZTBjNTQ2Li5iMGY4ZDk1MmVkOWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0yMDgyLDYgKzIwODIsOSBAQCBpbml0X3ZidF9taXNzaW5n
X2RlZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCWVudW0gcG9ydCBw
b3J0OwogCisJaWYgKCFIQVNfRERJKGk5MTUpICYmICFJU19DSEVSUllWSUVXKGk5MTUpKQorCQly
ZXR1cm47CisKIAlmb3JfZWFjaF9wb3J0KHBvcnQpIHsKIAkJc3RydWN0IGRkaV92YnRfcG9ydF9p
bmZvICppbmZvID0KIAkJCSZpOTE1LT52YnQuZGRpX3BvcnRfaW5mb1twb3J0XTsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
