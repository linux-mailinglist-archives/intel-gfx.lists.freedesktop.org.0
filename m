Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8F0771CF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 21:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055306EE35;
	Fri, 26 Jul 2019 19:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41CD6EE35
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 19:05:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 12:05:12 -0700
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="164690754"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Jul 2019 12:05:12 -0700
Date: Fri, 26 Jul 2019 12:05:47 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190726190547.GA13316@intel.com>
References: <20190726002412.5827-1-lucas.demarchi@intel.com>
 <20190726002412.5827-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726002412.5827-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: allow the reg_read ioctl
 to read the RCS TIMESTAMP register
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

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMDU6MjQ6MTFQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvcmRhbiBKdXN0ZW4gPGpvcmRhbi5sLmp1c3RlbkBpbnRlbC5jb20+
Cj4gCj4gVGhpcyBlbmFibGVzIHRoZSBNZXNhIGRyaXZlciB0byBhZHZlcnRpc2Ugc3VwcG9ydCBm
b3IgQVJCX3RpbWVyX3F1ZXJ5LAo+IGFuZCB0aHVzIGFuIE9wZW5HTCB2ZXJzaW9uIGhpZ2hlciB0
aGFuIDMuMi4KPiAKPiBCYXNlZCBvbiB0aGUgSUNMIHBhdGNoIGJ5IFBhdWxvIFphbm9uaSBhbmQg
Q05MIHBhdGNoIGJ5IE5hbmxleSBDaGVyeS4KPiAKPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9yZGFuIEp1c3RlbiA8am9yZGFuLmwu
anVzdGVuQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiBpbmRleCA0NzVhYjNkNGQ5
MWQuLjJiODM5YWNmYTBmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4g
QEAgLTE3NzYsNyArMTc3Niw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnX3doaXRlbGlzdCB7
Cj4gIH0gcmVnX3JlYWRfd2hpdGVsaXN0W10gPSB7IHsKPiAgCS5vZmZzZXRfbGR3ID0gUklOR19U
SU1FU1RBTVAoUkVOREVSX1JJTkdfQkFTRSksCj4gIAkub2Zmc2V0X3VkdyA9IFJJTkdfVElNRVNU
QU1QX1VEVyhSRU5ERVJfUklOR19CQVNFKSwKPiAtCS5nZW5fbWFzayA9IElOVEVMX0dFTl9NQVNL
KDQsIDExKSwKPiArCS5nZW5fbWFzayA9IElOVEVMX0dFTl9NQVNLKDQsIDEyKSwKPiAgCS5zaXpl
ID0gOAo+ICB9IH07Cj4gIAo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
