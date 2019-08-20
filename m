Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1D696222
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766D56E80B;
	Tue, 20 Aug 2019 14:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA32E6E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:13:11 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 07:13:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195778716"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 07:13:09 -0700
Date: Tue, 20 Aug 2019 19:42:36 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190820141236.GH7668@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
 <20190820134019.13229-5-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820134019.13229-5-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/hdmi: make hdcp2_msg_data const
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOC0yMCBhdCAxNjo0MDoxOSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gSXQn
cyBzdGF0aWMgY29uc3QgZGF0YSwgbWFrZSBpdCBzby4KPiAKPiBDYzogUmFtYWxpbmdhbSBDIDxy
YW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2Ft
LmNAaW50ZWwuY29tPgoKLVJhbQo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKPiBpbmRleCBkMzBjODMxNGVhYWYuLmUwMmYwZmFlY2YwMiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gQEAgLTE1MjAsNyArMTUyMCw3IEBAIHN0
cnVjdCBoZGNwMl9oZG1pX21zZ19kYXRhIHsKPiAgCXUzMiB0aW1lb3V0MjsKPiAgfTsKPiAgCj4g
LXN0YXRpYyBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfZGF0YSBoZGNwMl9tc2dfZGF0YVtdID0gewo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGhkY3AyX2hkbWlfbXNnX2RhdGEgaGRjcDJfbXNnX2RhdGFb
XSA9IHsKPiAgCXsgSERDUF8yXzJfQUtFX0lOSVQsIDAsIDAgfSwKPiAgCXsgSERDUF8yXzJfQUtF
X1NFTkRfQ0VSVCwgSERDUF8yXzJfQ0VSVF9USU1FT1VUX01TLCAwIH0sCj4gIAl7IEhEQ1BfMl8y
X0FLRV9OT19TVE9SRURfS00sIDAsIDAgfSwKPiAtLSAKPiAyLjIwLjEKPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
