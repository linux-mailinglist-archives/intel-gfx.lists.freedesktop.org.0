Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5A814D059
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 19:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BC86F626;
	Wed, 29 Jan 2020 18:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 465A76F626
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 18:20:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 10:20:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="218028422"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 29 Jan 2020 10:20:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 20:20:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 20:20:27 +0200
Message-Id: <20200129182034.26138-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/dsb: Disable DSB until fixed
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk91
ciBEU0Igc3VwcG9ydCBpcyBib3JrZWQuIFRoZSBEU0Igc2VlbXMgdG8gZ2V0IHN0dWNrIGFuZCB3
ZSBqdXN0CmdldDoKW2RybTppbnRlbF9kc2JfY29tbWl0IFtpOTE1XV0gRFNCIGV4ZWN1dGlvbiBz
dGFydGVkIC0gaGVhZCAweGE4YzAwMCwgdGFpbCAweDEwYzAKW2RybTppbnRlbF9kc2JfY29tbWl0
IFtpOTE1XV0gKkVSUk9SKiBUaW1lZCBvdXQgd2FpdGluZyBmb3IgRFNCIHdvcmtsb2FkIGNvbXBs
ZXRpb24uCltkcm06aWNsX2xvYWRfbHV0cyBbaTkxNV1dIERTQiBlbmdpbmUgaXMgYnVzeS4KCldo
aWNoIGV2ZW4gc2VlbXMgdG8gcmVzdWx0IGluIHVuZGVycnVucyBvbiBzb21lIGludGVybmFsIHN0
dWZmLgpMZXQncyBqdXN0IGRpc2FibGUgaXQgYWxsIHVudGlsIHNvbWVvbmUgZmlndXJlcyBvdXQg
d2hhdCdzIHdyb25nCndpdGggaXQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMgfCA2ICsrKysrLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jCmluZGV4IDEyNzc2ZjA5ZjIyNy4uYTE2YTc4Y2QwZWJlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAgLTEwNSw3ICsxMDUsMTEgQEAgaW50ZWxfZHNiX2dl
dChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAl1MzIgKmJ1ZjsKIAlpbnRlbF93YWtlcmVmX3Qg
d2FrZXJlZjsKIAotCWlmICghSEFTX0RTQihpOTE1KSkKKwkvKgorCSAqIEZJWE1FIERTQiBzdXBw
b3J0IGlzIGJ1c3RlZC4gRFNCIHRlbmRzIHRvIGJlCisJICogYnVzeSB3aGVuIGl0IHNob3VsZG4n
dCBiZS4gRGlzYWJsZSB1bnRpbCBmaXhlZC4KKwkgKi8KKwlpZiAodHJ1ZSB8fCAhSEFTX0RTQihp
OTE1KSkKIAkJcmV0dXJuIGRzYjsKIAogCWlmIChkc2ItPnJlZmNvdW50KysgIT0gMCkKLS0gCjIu
MjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
