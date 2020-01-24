Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7139148F07
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 21:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F2072BA3;
	Fri, 24 Jan 2020 20:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE5272BA2;
 Fri, 24 Jan 2020 20:02:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 12:02:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="230435163"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2020 12:02:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2020 22:02:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 Jan 2020 22:02:28 +0200
Message-Id: <20200124200231.10517-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
References: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/edid: Document why we don't bounds
 check the DispID CEA block start/end
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
Cc: intel-gfx@lists.freedesktop.org, Andres Rodriguez <andresx7@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFm
dGVyIG11Y2ggaGVhZCBzY3JhdGNoaW5nIEkgbWFuYWdlZCB0byBjb252aW5jZSBteXNlbGYgdGhh
dApmb3JfZWFjaF9kaXNwbGF5aWRfZGIoKSBoYXMgYWxyZWFkeSBkb25lIHRoZSBib3VuZHMgY2hl
Y2tzIGZvcgp0aGUgRGlzcElEIENFQSBkYXRhIGJsb2NrLiBXaGljaCBpcyB3aHkgd2UgZG9uJ3Qg
bmVlZCB0byByZXBlYXQKdGhlbSBpbiBjZWFfZGJfb2Zmc2V0cygpLiBUbyBhdm9pZCBoYXZpbmcg
dG8gZ28gdGhyb3VnaCB0aGF0CnBhaW4gYWdhaW4gaW4gdGhlIGZ1dHVyZSBhZGQgYSBjb21tZW50
IHdoaWNoIGV4cGxhaW5zIHRoaXMgZmFjdC4KCkNjOiBBbmRyZXMgUm9kcmlndWV6IDxhbmRyZXN4
N0BnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgfCA0ICsr
KysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDNk
ZjU3NDQwMjZiMC4uMDM2OWE1NGUzZDMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2VkaWQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtNDAwMSw2ICs0MDAx
LDEwIEBAIGNlYV9kYl9vZmZzZXRzKGNvbnN0IHU4ICpjZWEsIGludCAqc3RhcnQsIGludCAqZW5k
KQogCSAqICAgbm8gbm9uLURURCBkYXRhLgogCSAqLwogCWlmIChjZWFbMF0gPT0gREFUQV9CTE9D
S19DVEEpIHsKKwkJLyoKKwkJICogZm9yX2VhY2hfZGlzcGxheWlkX2RiKCkgaGFzIGFscmVhZHkg
dmVyaWZpZWQKKwkJICogdGhhdCB0aGVzZSBzdGF5IHdpdGhpbiBleHBlY3RlZCBib3VuZHMuCisJ
CSAqLwogCQkqc3RhcnQgPSAzOwogCQkqZW5kID0gKnN0YXJ0ICsgY2VhWzJdOwogCX0gZWxzZSBp
ZiAoY2VhWzBdID09IENFQV9FWFQpIHsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
