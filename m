Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C5E1B4AF7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803E06EA39;
	Wed, 22 Apr 2020 16:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com
 [199.106.114.39])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BF016E4AB;
 Wed, 22 Apr 2020 02:57:28 +0000 (UTC)
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 21 Apr 2020 19:57:27 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg01-sd.qualcomm.com with ESMTP; 21 Apr 2020 19:57:26 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 984B84B8D; Tue, 21 Apr 2020 19:57:26 -0700 (PDT)
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org
Date: Tue, 21 Apr 2020 19:57:13 -0700
Message-Id: <4a3acf8673c08308848fb7ae73d992b6feb758d3.1587523702.git.gurus@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1587523702.git.gurus@codeaurora.org>
References: <cover.1587523702.git.gurus@codeaurora.org>
In-Reply-To: <cover.1587523702.git.gurus@codeaurora.org>
References: <cover.1587523702.git.gurus@codeaurora.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 22 Apr 2020 16:53:58 +0000
Subject: [Intel-gfx] [PATCH v13 01/11] drm/i915: Use 64-bit division macro
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
Cc: Guru Das Srinagesh <gurus@codeaurora.org>,
 David Collins <collinsd@codeaurora.org>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgdGhlIFBXTSBmcmFtZXdvcmsgaXMgc3dpdGNoaW5nIHN0cnVjdCBwd21fc3RhdGUuZHV0
eV9jeWNsZSdzCmRhdGF0eXBlIHRvIHU2NCwgcHJlcGFyZSBmb3IgdGhpcyB0cmFuc2l0aW9uIGJ5
IHVzaW5nIERJVl9ST1VORF9VUF9VTEwKdG8gaGFuZGxlIGEgNjQtYml0IGRpdmlkZW5kLgoKVG86
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6ICJWaWxsZSBTeXJq
w6Rsw6QiIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKClNp
Z25lZC1vZmYtYnk6IEd1cnUgRGFzIFNyaW5hZ2VzaCA8Z3VydXNAY29kZWF1cm9yYS5vcmc+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCmluZGV4IDI3NmY0MzguLjgxNTQ3YTAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKQEAgLTE5MjAsNyAr
MTkyMCw3IEBAIHN0YXRpYyBpbnQgcHdtX3NldHVwX2JhY2tsaWdodChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IsCiAJCXJldHVybiByZXR2YWw7CiAJfQogCi0JbGV2ZWwgPSBESVZf
Uk9VTkRfVVAocHdtX2dldF9kdXR5X2N5Y2xlKHBhbmVsLT5iYWNrbGlnaHQucHdtKSAqIDEwMCwK
KwlsZXZlbCA9IERJVl9ST1VORF9VUF9VTEwocHdtX2dldF9kdXR5X2N5Y2xlKHBhbmVsLT5iYWNr
bGlnaHQucHdtKSAqIDEwMCwKIAkJCSAgICAgQ1JDX1BNSUNfUFdNX1BFUklPRF9OUyk7CiAJcGFu
ZWwtPmJhY2tsaWdodC5sZXZlbCA9CiAJCWludGVsX3BhbmVsX2NvbXB1dGVfYnJpZ2h0bmVzcyhj
b25uZWN0b3IsIGxldmVsKTsKLS0gClRoZSBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5j
LiBpcyBhIG1lbWJlciBvZiB0aGUgQ29kZSBBdXJvcmEgRm9ydW0sCmEgTGludXggRm91bmRhdGlv
biBDb2xsYWJvcmF0aXZlIFByb2plY3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
