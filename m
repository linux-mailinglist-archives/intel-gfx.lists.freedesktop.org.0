Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D09911BD92B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8336EDEA;
	Wed, 29 Apr 2020 10:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9526E6ECE4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:11:06 +0000 (UTC)
IronPort-SDR: DnqtdsxAJ5yZ0k7MT/D3GtV75KqQBp8LnvXq9Vx5cEs8Su2+/pufQByVaeut3TmnDqBiTA0o4t
 40WCfBP9UigA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:11:06 -0700
IronPort-SDR: Nv6EonkIcW1zfPBukITiENUg8dBMpfr7zUZLVsZQtO2Z7zQLLIcIF6sYn865jz3ugc9I3ZqMvy
 RZemw1TVJ7ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="249417348"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 29 Apr 2020 03:11:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:11:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:32 +0300
Message-Id: <20200429101034.8208-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/i915/fbc: Reduce fbc1 compression
 interval to 1 second
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkZWZhdWx0IGZiYzEgY29tcHJlc3Npb24gaW50ZXJ2YWwgd2UgdXNlIGlzIDUwMCBmcmFtZXMu
IFRoYXQKdHJhbnNsYXRlcyB0byBvdmVyIDggc2Vjb25kcyB0eXBpY2FsbHkuIFRoYXQncyByYXRo
ZXIgZXhjZXNzaXZlCnNvIGxldCdzIGRyb3AgaXQgdG8gMSBzZWNvbmQuCgpUaGUgaGFyZHdhcmUg
d2lsbCBub3QgYXR0ZW1wdCByZWNvbXByZXNzaW9uIHVubGVzcyBhdCBsZWFzdCBvbmUKbGluZSBo
YXMgYmVlbiBtb2RpZmllZCwgc28gYSBzaG9ydGVyIGNvbXByZXNzaW9uIGludGVydmFsIHNob3Vs
ZApub3QgY2F1c2UgZXh0cmEgYmFuZHdpZHRoIHVzZSBpbiB0aGUgcHVyZWx5IGlkbGUgc2NlbmFy
aW8uIE9mCmNvdXJzZSBpbiB0aGUgbW9zdGx5IGlkbGUgY2FzZSB3ZSBhcmUgcG9zc2libHkgZ29p
bmcgdG8gcmVjb21wcmVzcwphIGJpdCBtb3JlLgoKU2hvdWxkIHJlYWxseSB0cnkgdG8gZmluZCBz
b21lIGtpbmQgb2Ygc3dlZXQgc3BvdCB0byBtaW5pbWl6ZQp0aGUgZW5lcmd5IHVzYWdlLi4uCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggYjFlYjZhMmVjYzQzLi42
ZWU0NWQ2MzRjZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpA
QCAtNzI3LDggKzcyNyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2Fj
aGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJY2FjaGUtPmZiLm1vZGlmaWVyID0gZmItPm1v
ZGlmaWVyOwogCWNhY2hlLT5mYi5zdHJpZGUgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0u
c3RyaWRlOwogCi0JLyogVGhpcyB2YWx1ZSB3YXMgcHVsbGVkIG91dCBvZiBzb21lb25lJ3MgaGF0
ICovCi0JY2FjaGUtPmludGVydmFsID0gNTAwOworCS8qIEZCQzEgY29tcHJlc3Npb24gaW50ZXJ2
YWw6IGFyYml0cmFyeSBjaG9pY2Ugb2YgMSBzZWNvbmQgKi8KKwljYWNoZS0+aW50ZXJ2YWwgPSBk
cm1fbW9kZV92cmVmcmVzaCgmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSk7CiAKIAljYWNo
ZS0+ZmVuY2VfeV9vZmZzZXQgPSBpbnRlbF9wbGFuZV9mZW5jZV95X29mZnNldChwbGFuZV9zdGF0
ZSk7CiAKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
