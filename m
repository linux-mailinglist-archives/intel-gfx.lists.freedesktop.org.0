Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8D2E45F0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 10:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EBC6E90C;
	Fri, 25 Oct 2019 08:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B7E6E90C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 08:41:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 01:41:49 -0700
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="192473612"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 01:41:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191025154933.22607-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191025154933.22607-1-shawn.c.lee@intel.com>
Date: Fri, 25 Oct 2019 11:41:43 +0300
Message-ID: <87eez1b4jc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/cml: Remove unsupport PCI ID
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNSBPY3QgMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4g
d3JvdGU6Cj4gY29tbWl0ICdhN2I0ZGVlYjAyYjkgKCJkcm0vaTkxNS9jbWw6IEFkZCBDTUwgUENJ
IElEUyknCj4gaW50cm9kdWNlZCBuZXcgUENJIElEIHRoYXQgQ01MIHN1cHBvcnQuIEJ1dCBzb21l
IHNrdQo+IGlzIG5vdCBzdXBwb3J0IHlldCBzbyByZW1vdmUgdGhlbSBhdm9pZCB1bmV4cGVjdGVk
IGlzc3VlLgoKUGxlYXNlIGVsYWJvcmF0ZS4KCkJSLApKYW5pLgoKCj4KPiBDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+
IENjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9k
cm0vaTkxNV9wY2lpZHMuaCB8IDQgLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9k
cm0vaTkxNV9wY2lpZHMuaAo+IGluZGV4IGE3MGM5ODJkZGZmOS4uNTZlODIzY2RjNzE3IDEwMDY0
NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiArKysgYi9pbmNsdWRlL2RybS9p
OTE1X3BjaWlkcy5oCj4gQEAgLTQ0OCw5ICs0NDgsNyBAQAo+ICAjZGVmaW5lIElOVEVMX0NNTF9H
VDFfSURTKGluZm8pCVwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QjIxLCBpbmZvKSwgXAo+ICAJ
SU5URUxfVkdBX0RFVklDRSgweDlCQUEsIGluZm8pLCBcCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4
OUJBQiwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFDLCBpbmZvKSwgXAo+IC0J
SU5URUxfVkdBX0RFVklDRSgweDlCQTAsIGluZm8pLCBcCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4
OUJBNSwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkE4LCBpbmZvKSwgXAo+ICAJ
SU5URUxfVkdBX0RFVklDRSgweDlCQTQsIGluZm8pLCBcCj4gQEAgLTQ2MCw5ICs0NTgsNyBAQAo+
ICAjZGVmaW5lIElOVEVMX0NNTF9HVDJfSURTKGluZm8pCVwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QjQxLCBpbmZvKSwgXAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDlCQ0EsIGluZm8pLCBcCj4g
LQlJTlRFTF9WR0FfREVWSUNFKDB4OUJDQiwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QkNDLCBpbmZvKSwgXAo+IC0JSU5URUxfVkdBX0RFVklDRSgweDlCQzAsIGluZm8pLCBcCj4g
IAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDNSwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg5QkM4LCBpbmZvKSwgXAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDlCQzQsIGluZm8pLCBcCgot
LSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
