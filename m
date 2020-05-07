Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E11C9029
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3F466E9C2;
	Thu,  7 May 2020 14:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7476E9C2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 14:41:30 +0000 (UTC)
IronPort-SDR: yZZfIob4WbgfnhNiViqsl5I5YiPifJKpOEsLxpX2/aY989e0FV6yjzSy+/nZxl9CINWddrJzqH
 5P5+vVmZALLg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:41:28 -0700
IronPort-SDR: wPMy3yeB49IFp4RtDbQFaIA6DwI1rqLMRA5KRG3d1fnpDvzj757fCzn+Xh8e5Nsjz9BgfOlg9h
 KWNHn340gfLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="278619019"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 07 May 2020 07:41:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 17:41:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 17:41:25 +0300
Message-Id: <20200507144125.2458-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/mst: Wait for ACT sent before enabling
 the pipe
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
ZSBjb3JyZWN0IHNlcXVlbmNlIGFjY29yZGluZyB0byBic3BlYyBpcyB0byB3YWl0IGZvciB0aGUg
QUNUIHNlbnQKc3RhdHVzIGJlZm9yZSB3ZSB0dXJuIG9uIHRoZSBwaXBlLiBNYWtlIGl0IHNvLgoK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwg
OSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKaW5kZXgg
NGQyMzg0NjUwMzgzLi5kMThiNDA2ZjJhN2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtNTEwLDEwICs1MTAsNiBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9tc3RfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJaW50
ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCi0J
aW50ZWxfZW5hYmxlX3BpcGUocGlwZV9jb25maWcpOwotCi0JaW50ZWxfY3J0Y192Ymxhbmtfb24o
cGlwZV9jb25maWcpOwotCiAJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJhY3RpdmUgbGlu
a3MgJWRcbiIsCiAJCSAgICBpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyk7CiAKQEAgLTUyNCw2
ICs1MjAsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwKIAlkcm1fZHBfY2hlY2tfYWN0X3N0YXR1cygmaW50ZWxfZHAt
Pm1zdF9tZ3IpOwogCiAJZHJtX2RwX3VwZGF0ZV9wYXlsb2FkX3BhcnQyKCZpbnRlbF9kcC0+bXN0
X21ncik7CisKKwlpbnRlbF9lbmFibGVfcGlwZShwaXBlX2NvbmZpZyk7CisKKwlpbnRlbF9jcnRj
X3ZibGFua19vbihwaXBlX2NvbmZpZyk7CisKIAlpZiAocGlwZV9jb25maWctPmhhc19hdWRpbykK
IAkJaW50ZWxfYXVkaW9fY29kZWNfZW5hYmxlKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0
YXRlKTsKIH0KLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
