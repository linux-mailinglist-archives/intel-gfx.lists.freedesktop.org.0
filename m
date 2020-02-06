Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C3F1541E8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 11:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94D16FA36;
	Thu,  6 Feb 2020 10:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D4506E4C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 10:31:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 02:31:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,409,1574150400"; d="scan'208";a="250018775"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga002.jf.intel.com with ESMTP; 06 Feb 2020 02:31:52 -0800
Date: Thu, 6 Feb 2020 15:53:09 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200206102309.GL24118@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-4-anshuman.gupta@intel.com>
 <20200204142836.GM13686@intel.com> <87imkmwbp5.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imkmwbp5.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Fix broken transcoder err
 state
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wMi0wNCBhdCAxODozNzoyNiArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24g
VHVlLCAwNCBGZWIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4gd3JvdGU6Cj4gPiBPbiBUdWUsIEZlYiAwNCwgMjAyMCBhdCAwNDo1OToyM1BNICsw
NTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToKPiA+PiBTa2lwIHRoZSB0cmFzY29kZXIgd2hvc2Ug
cGlwZSBpcyBkaXNhYmxlZCB3aGlsZQo+ID4+IGluaXRpYWxpemluZyB0cmFzY29kZXIgZXJyb3Ig
c3RhdGUgaW4gMyBkaXNwbGF5Cj4gPj4gcGlwZSBzeWF0ZW0uCj4gPj4gCj4gPj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPj4gU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiA+PiAtLS0K
PiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsr
Ky0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
ID4+IAo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gPj4gaW5kZXggNTcwOWU2NzIxNTFhLi5jZjM2YzNkMGY4ZmMgMTAwNjQ0Cj4gPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+IEBAIC0xODYw
Nyw4ICsxODYwNywxMCBAQCBpbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4+ICAKPiA+PiAgCWZvciAoaSA9IDA7IGkg
PCBBUlJBWV9TSVpFKGVycm9yLT50cmFuc2NvZGVyKTsgaSsrKSB7Cj4gPj4gIAkJZW51bSB0cmFu
c2NvZGVyIGNwdV90cmFuc2NvZGVyID0gdHJhbnNjb2RlcnNbaV07Cj4gPj4gKwkJZW51bSBwaXBl
IHBpcGUgPSAoZW51bSBwaXBlKWNwdV90cmFuc2NvZGVyOwo+ID4KPiA+IE5vdCBjb3JyZWN0IGZv
ciBFRFAgdHJhbnNjb2Rlci4KPiAKPiBOb3IgRFNJPwo+IAo+IEJSLAo+IEphbmkuCj4gCj4gPgo+
ID4+ICAKPiA+PiAtCQlpZiAoIUlOVEVMX0lORk8oZGV2X3ByaXYpLT50cmFuc19vZmZzZXRzW2Nw
dV90cmFuc2NvZGVyXSkKSXMgaXQgb2sgdG8gbWFrZSB0cmFuc19vZmZzZXRzW10gTlVMTCBmb3Ig
ZGlzYWJsZWQgcGlwZSBhcyBhbiBhbm90aGVyIGFwcHJvYWNoPwpUaGFua3MsCkFuc2h1bWFuIEd1
cHRhLgo+ID4+ICsJCWlmICghSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNldHNbY3B1
X3RyYW5zY29kZXJdICYmCj4gPj4gKwkJICAgICEoSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVf
bWFzayAmIEJJVChwaXBlKSkpCj4gPj4gIAkJCWNvbnRpbnVlOwo+ID4+ICAKPiA+PiAgCQllcnJv
ci0+dHJhbnNjb2RlcltpXS5hdmFpbGFibGUgPSB0cnVlOwo+ID4+IC0tIAo+ID4+IDIuMjQuMAo+
IAo+IC0tIAo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
