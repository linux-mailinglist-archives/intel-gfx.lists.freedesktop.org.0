Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 311CC2B6F06
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FD86E07F;
	Tue, 17 Nov 2020 19:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE81C6E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:44:56 +0000 (UTC)
IronPort-SDR: 1iOixuhpqmfmJt0CDRhKJ+gD9cA+JQa+f2r9pIwBPXZnnYdvaGllbucNpawwlK1ba7aN0LFWZz
 2fWgZVZtrMSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171094516"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="171094516"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:44:54 -0800
IronPort-SDR: hx7ESUtX5/VLdv9YXxwY1EhZ8FOMewgr1IQDQ3+h88/s2P7J2UwC6uWpAUibtX5TXCOYS6Vsas
 iIVeFpGO1h9Q==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="359034211"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 17 Nov 2020 11:44:53 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:47:18 -0800
Message-Id: <20201117194718.11462-16-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 15/15] drm/i915: Enable bigjoiner
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkVu
b3VnaCBwbHVtYmluZyBzaG91bGQgYmUgaW4gcGxhY2UgdG8gdGhyb3cgdGhlIGJpZ2pvaW5lciBz
d2l0Y2guCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
fCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDg1N2YzOTc3OTY1NC4uMzg5NmQwOGM0MTc3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yNjAsOSArMjYwLDYg
QEAgYm9vbCBpbnRlbF9kcF9jYW5fYmlnam9pbmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmaW50ZWxfZGlnX3BvcnQtPmJhc2U7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5i
YXNlLmRldik7CiAKLQkvKiBGSVhNRSByZW1vdmUgb25jZSBldmVyeXRoaW5nIGlzIGluIHBsYWNl
ICovCi0JcmV0dXJuIGZhbHNlOwotCiAJcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIg
fHwKIAkJKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEgJiYKIAkJIGVuY29kZXItPnBvcnQgIT0g
UE9SVF9BKTsKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
