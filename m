Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873BFB7F23
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61D96F682;
	Thu, 19 Sep 2019 16:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9ED6F75D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="271275091"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Sep 2019 09:31:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:00 +0300
Message-Id: <20190919163113.17402-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 08/21] uxa: Use named
 initializers
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bGVuY2UgdGhlIGNvbXBpbGVyIHdhcm5pbmcgYWJvdXQgbWlzc2luZyBpbml0aWFsaXplcnMKYnkg
dXNpbmcgbmFtZWQgaW5pdGlhbGl6ZXJzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBzcmMvdXhhL2ludGVsX2Rpc3Bs
YXkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL3NyYy91eGEvaW50ZWxfZGlzcGxheS5jIGIvc3JjL3V4YS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggODA5Y2RhMWRkNTZiLi5iYTRiOGQ4NzQxMmMgMTAwNjQ0Ci0tLSBhL3Ny
Yy91eGEvaW50ZWxfZGlzcGxheS5jCisrKyBiL3NyYy91eGEvaW50ZWxfZGlzcGxheS5jCkBAIC0x
ODE4LDcgKzE4MTgsNyBAQCBlcnJvcl9vdXQ6CiB9CiAKIHN0YXRpYyBjb25zdCB4Zjg2Q3J0Y0Nv
bmZpZ0Z1bmNzUmVjIGludGVsX3hmODZjcnRjX2NvbmZpZ19mdW5jcyA9IHsKLQlpbnRlbF94Zjg2
Y3J0Y19yZXNpemUKKwkucmVzaXplID0gaW50ZWxfeGY4NmNydGNfcmVzaXplLAogfTsKIAogLyoK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
