Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFFCF3B64
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 23:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ECF16F7EA;
	Thu,  7 Nov 2019 22:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DCA6F7EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 22:29:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 14:29:37 -0800
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="192972741"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.155])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 14:29:37 -0800
Date: Thu, 7 Nov 2019 14:29:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191107222930.qzv22rbxveobal2j@ldmartin-desk1>
References: <20191107214559.77087-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107214559.77087-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Fix
 TRANS_DDI_MST_TRANSPORT_SELECT definition
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDE6NDU6NTdQTSAtMDgwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPlRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVCBpcyAyIGJpdHMgd2lkZSBub3QgMywg
aXQgd2FzIHRha2luZwo+b25lIGJpdCBmcm9tIEVEUC9EU0kgSW5wdXQgU2VsZWN0Lgo+Cj5GaXhl
czogYjM1NDVlMDg2ODc3ICgiZHJtL2k5MTUvdGdsOiBhZGQgc3VwcG9ydCB0byBvbmUgRFAtTVNU
IHN0cmVhbSIpCj5DYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KCnVnaCwgZmFjZXBhbG0KCkRvdWJsZSBjaGVja2VkIHRoYXQgaXQgbWF0Y2hlcyB0aGUg
c3BlYy4KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KCnRoYW5rcwpMdWNhcyBEZSBNYXJjaGkKCj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIHwgMiArLQo+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPmluZGV4IGE2MDdlYTUyMDgyOS4u
NzA0NTlhM2Q5M2UzIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+QEAgLTk2NjUsNyArOTY2
NSw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5Q
VVRfQV9PTk9GRgkoNCA8PCAxMikKPiAjZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX0JfT05P
RkYJKDUgPDwgMTIpCj4gI2RlZmluZSAgVFJBTlNfRERJX0VEUF9JTlBVVF9DX09OT0ZGCSg2IDw8
IDEyKQo+LSNkZWZpbmUgIFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9NQVNLCVJFR19H
RU5NQVNLKDEyLCAxMCkKPisjZGVmaW5lICBUUkFOU19ERElfTVNUX1RSQU5TUE9SVF9TRUxFQ1Rf
TUFTSwlSRUdfR0VOTUFTSygxMSwgMTApCj4gI2RlZmluZSAgVFJBTlNfRERJX01TVF9UUkFOU1BP
UlRfU0VMRUNUKHRyYW5zKQlcCj4gCVJFR19GSUVMRF9QUkVQKFRSQU5TX0RESV9NU1RfVFJBTlNQ
T1JUX1NFTEVDVF9NQVNLLCB0cmFucykKPiAjZGVmaW5lICBUUkFOU19ERElfSERDUF9TSUdOQUxM
SU5HCSgxIDw8IDkpCj4tLSAKPjIuMjQuMAo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+SW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
