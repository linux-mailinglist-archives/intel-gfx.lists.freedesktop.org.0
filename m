Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E5EC3B4
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 14:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784A96F7D7;
	Fri,  1 Nov 2019 13:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D796F7D7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 13:33:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 06:33:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="206402669"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 01 Nov 2019 06:33:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Nov 2019 15:33:39 +0200
Date: Fri, 1 Nov 2019 15:33:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20191101133339.GG1208@intel.com>
References: <20191029160407.21178-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029160407.21178-1-shawn.c.lee@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 1/2] drm/i915/cml: Remove unsupport PCI ID
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMTI6MDQ6MDZBTSArMDgwMCwgTGVlIFNoYXduIEMgd3Jv
dGU6Cj4gY29tbWl0ICdhN2I0ZGVlYjAyYjkgKCJkcm0vaTkxNS9jbWw6IEFkZCBDTUwgUENJIElE
UyknCj4gaW50cm9kdWNlZCBuZXcgUENJIElEIHRoYXQgQ01MIHN1cHBvcnQuIEJ1dCBzb21lIFBD
SQo+IElEcyB3ZXJlIHJlbW92ZWQgZnJvbSBDTUwgSURzIGluIEJTcGVjLgoKU2VyaWVzIGxndG0u
ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgoKUGxlYXNlIHJlYmFzZSBvbnRvIGxhdGVzdCBkcm0tdGlwIGFuZCByZXBvc3Qgc28gdGhh
dCBDSSBjYW4KaGF2ZSBhIGdvIGF0IGl0LgoKPiAKPiB2MjogcmVtb3ZlIHNvbWUgaW5hY2N1cmF0
ZSBkZXNjcmlwdGlvbnMuCj4gdjM6IGZpeCB0eXBvLgo+IHY0OiBhZGQgbWlzc2luZyB2ZXJzaW9u
IG51bWJlci4KPiB2NTogbm8gdXBkYXRlLgo+IHY2OiB1cGRhdGUgcGF0Y2ggY29tbWVudC4KPiAK
PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0
c2FAaW50ZWwuY29tPgo+IENjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiAt
LS0KPiAgaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lp
ZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiBpbmRleCBhNzBjOTgyZGRmZjkuLjU2
ZTgyM2NkYzcxNyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCj4gKysr
IGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+IEBAIC00NDgsOSArNDQ4LDcgQEAKPiAgI2Rl
ZmluZSBJTlRFTF9DTUxfR1QxX0lEUyhpbmZvKQlcCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUIy
MSwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFBLCBpbmZvKSwgXAo+IC0JSU5U
RUxfVkdBX0RFVklDRSgweDlCQUIsIGluZm8pLCBcCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJB
QywgaW5mbyksIFwKPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkEwLCBpbmZvKSwgXAo+ICAJSU5U
RUxfVkdBX0RFVklDRSgweDlCQTUsIGluZm8pLCBcCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJB
OCwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkE0LCBpbmZvKSwgXAo+IEBAIC00
NjAsOSArNDU4LDcgQEAKPiAgI2RlZmluZSBJTlRFTF9DTUxfR1QyX0lEUyhpbmZvKQlcCj4gIAlJ
TlRFTF9WR0FfREVWSUNFKDB4OUI0MSwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QkNBLCBpbmZvKSwgXAo+IC0JSU5URUxfVkdBX0RFVklDRSgweDlCQ0IsIGluZm8pLCBcCj4gIAlJ
TlRFTF9WR0FfREVWSUNFKDB4OUJDQywgaW5mbyksIFwKPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QkMwLCBpbmZvKSwgXAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDlCQzUsIGluZm8pLCBcCj4gIAlJ
TlRFTF9WR0FfREVWSUNFKDB4OUJDOCwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QkM0LCBpbmZvKSwgXAo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
