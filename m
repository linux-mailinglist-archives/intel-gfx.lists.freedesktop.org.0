Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56493AEEAC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 17:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281BA6E110;
	Tue, 10 Sep 2019 15:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986436E110
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 15:42:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 08:42:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="214345900"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2019 08:42:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 08:42:44 -0700
Message-Id: <20190910154252.30503-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/8] cdclk consolidation and rework for
 BXT-TGL
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

UHJldmlvdXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVzIHdhcyBoZXJlOgogICAgaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIwMTktU2VwdGVtYmVyLzIxMTg1
My5odG1sCgpUaGlzIHZlcnNpb24gaW5jb3Jwb3JhdGVzIFZpbGxlJ3MgY29tbWVudHMsIG1vc3Qg
b2Ygd2hpY2ggYXJlIG9uIHRoZQpzZWNvbmQgcGF0Y2ggd2hlcmUgd2UgaW50cm9kdWNlIHRoZSBj
ZGNsayB0YWJsZXMuICBUaGUgc3RydWN0dXJlIGFuZApwYXJzaW5nIG9mIHRoZSB0YWJsZXMgaXMg
bm93IGRvbmUgaW4gYSBjbGVhbmVyIGFuZCBtb3JlIGZ1dHVyZS1wcm9vZgptYW5uZXIuCgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1hdHQgUm9w
ZXIgKDgpOgogIGRybS9pOTE1OiBDb25zb2xpZGF0ZSBieHQvY25sL2ljbCBjZGNsayByZWFkb3V0
CiAgZHJtL2k5MTU6IFVzZSBsaXRlcmFsIHJlcHJlc2VudGF0aW9uIG9mIGNkY2xrIHRhYmxlcwog
IGRybS9pOTE1OiBDb21iaW5lIGJ4dF9zZXRfY2RjbGsgYW5kIGNubF9zZXRfY2RjbGsKICBkcm0v
aTkxNTogS2lsbCBjbmxfc2FuaXRpemVfY2RjbGsoKQogIGRybS9pOTE1OiBDb25zb2xpZGF0ZSB7
Ynh0LGNubCxpY2x9X3VuaW5pdF9jZGNsawogIGRybS9pOTE1OiBBZGQgY2FsY192b2x0YWdlX2xl
dmVsIGRpc3BsYXkgdmZ1bmMKICBkcm0vaTkxNTogRW5oYW5jZSBjZGNsayBzYW5pdGl6YXRpb24K
ICBkcm0vaTkxNTogQ29uc29saWRhdGUge2J4dCxjbmwsaWNsfV9pbml0X2NkY2xrCgogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgOTY1ICsrKysrKystLS0tLS0t
LS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oIHwgICA3
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8ICAgNCArCiAz
IGZpbGVzIGNoYW5nZWQsIDM0NSBpbnNlcnRpb25zKCspLCA2MzEgZGVsZXRpb25zKC0pCgotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
