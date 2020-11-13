Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990DF2B27C8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C118D6E869;
	Fri, 13 Nov 2020 22:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBE76E869
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:05:00 +0000 (UTC)
IronPort-SDR: Jbu4T/VDYg1T5OrBe3OpmyW6NzwdWbVEyvxzaESPUdRPij+ffB+U9uZ0UMOQgay19olXQtCORm
 Mwvy2ElT4uiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="234696411"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="234696411"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:05:00 -0800
IronPort-SDR: G87oORCUS+8O1mzEADGnXmPkdEHeZoWtAKnyQkscxm5owcNA6UkehG7woRaF0zn/UJB69gxqUc
 xZiBhJlOTrrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="355681837"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 13 Nov 2020 14:04:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:04:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:55 +0200
Message-Id: <20201113220358.24794-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/23] drm/i915: Disable legacy cursor fastpath
 for bigjoiner
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
ZSBsZWdhY3kgY3Vyc29yIGZhc3RwYXRoIGNvZGUgZG9lc24ndCBkZWFsIHdpdGggYmlnam9pbmVy
LgpEaXNhYmxlIHRoZSBmYXN0cGF0aCBmb3Igbm93LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZWViNTA0MTNmYzhlLi4xOWU5YzM3OTUyNjUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0x
Njg5Miw5ICsxNjg5MiwxMSBAQCBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJt
X3BsYW5lICpfcGxhbmUsCiAJLyoKIAkgKiBXaGVuIGNydGMgaXMgaW5hY3RpdmUgb3IgdGhlcmUg
aXMgYSBtb2Rlc2V0IHBlbmRpbmcsCiAJICogd2FpdCBmb3IgaXQgdG8gY29tcGxldGUgaW4gdGhl
IHNsb3dwYXRoCisJICoKKwkgKiBGSVhNRSBiaWdqb2luZXIgZmFzdHBhdGggd291bGQgYmUgZ29v
ZAogCSAqLwogCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlIHx8IG5lZWRzX21vZGVzZXQoY3J0
Y19zdGF0ZSkgfHwKLQkgICAgY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUpCisJICAgIGNydGNfc3Rh
dGUtPnVwZGF0ZV9waXBlIHx8IGNydGNfc3RhdGUtPmJpZ2pvaW5lcikKIAkJZ290byBzbG93Owog
CiAJLyoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
