Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D20380A04
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2176EE75;
	Fri, 14 May 2021 12:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551376EE73
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:37 +0000 (UTC)
IronPort-SDR: be44AJNooNp/g/iZyFujs1787SMTAnCULSmCSzOfB9Gzd4brVZw88MhpZkguzQG51cu/T4MoI9
 YdS6SZWKlpXw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="200224715"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="200224715"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:31 -0700
IronPort-SDR: wMndoX9RNxkdkVIV/GYQI89bUNkRXnPqVVby53N5jH+XuQi4/WTBOkSrZ6YoCmf+Nk5q1TYe3v
 MHmd0eGATYaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="393626160"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 14 May 2021 05:58:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:50 +0300
Message-Id: <20210514125751.17075-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/14] drm/i915: Write watermarks for disabled
 pipes on gmch platforms
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3ZlIGV4Y2x1ZGVkIGdtY2ggcGxhdGZvcm1zIGZyb20gd3JpdGluZyB0aGUgZmluYWwgd2F0ZXJt
YXJrcwpmb3IgYW55IGRpc2FibGVkIHBpcGUuIElJUkMgdGhlIHJlYXNvbiB3YXMgcGVyaGFwcyBz
b21lIGxpbmdlcmluZwppc3N1ZSB3aXRoIHRoZSB3YXRlcm1hcmsgbWVyZ2luZyBhY3Jvc3MgdGhl
IHBpcGVzLiBCdXQgSSBjYW4ndApyZWFsbHkgc2VlIGFueSByZWFzb24gZm9yIHRoaXMgYW55bW9y
ZSwgc28gbGV0J3MgdW5pZnkgdGhpcyBiZWhhdmlvdXIuClRoZSBtYWluIGJlbmVmaXQgYmVpbmcg
bW9yZSBjb25zaXN0ZW5jeSBpbiByZWdpc3RlciBkdW1wcyB3aGVuCndlIGRvbid0IGhhdmUgc3Rh
bGUgd2F0ZXJtYXJrcyBoYW5naW5nIGFyb3VuZCBpbiB0aGUgcmVnaXN0ZXJzLgpGdW5jaXRvbmFs
bHkgdGhlcmUgc2hvdWxkIGJlIG5vIGRpZmZlcmVuY2UgYXMgdGhlIGhhcmR3YXJlIGp1c3QKaWdu
b3JlIGFsbCBvZiBpdCB3aGVuIHRoZSBwaXBlIGlzIGRpc2FibGVkLgoKU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggZTY5NjA5NmRiZGU3Li5kZDhkZDhlNjhjNTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMDE5OCw5ICsx
MDE5OCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX29sZF9jcnRjX3N0YXRlX2Rpc2FibGVzKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWludGVsX2ZiY19kaXNhYmxlKGNydGMpOwog
CWludGVsX2Rpc2FibGVfc2hhcmVkX2RwbGwob2xkX2NydGNfc3RhdGUpOwogCi0JLyogRklYTUUg
dW5pZnkgdGhpcyBmb3IgYWxsIHBsYXRmb3JtcyAqLwogCWlmICghbmV3X2NydGNfc3RhdGUtPmh3
LmFjdGl2ZSAmJgotCSAgICAhSEFTX0dNQ0goZGV2X3ByaXYpICYmCiAJICAgIGRldl9wcml2LT5k
aXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcykKIAkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93
YXRlcm1hcmtzKHN0YXRlLCBjcnRjKTsKIH0KLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
