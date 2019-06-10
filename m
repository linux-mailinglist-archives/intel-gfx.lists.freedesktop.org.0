Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D3E3B796
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 16:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D1D8914E;
	Mon, 10 Jun 2019 14:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F458914E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 14:40:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 07:40:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208";a="183451311"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2019 07:40:18 -0700
Date: Mon, 10 Jun 2019 17:40:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190610144013.GE9909@ideak-desk.fi.intel.com>
References: <20190610133413.21460-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610133413.21460-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/icl: More workaround for
 port F detection due to broken VBTs"
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMDI6MzQ6MTNQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFRoaXMgcmV2ZXJ0cyBjb21taXQgMWFhMzc1MDg4NWZiY2VjZTVhMGM5ZTZiYmNkMDE0
YWM1MjZjZWE0MS4KPiAKPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTA4ODIKCkhvdyBpcyBpdCByZWxhdGVkPyBOb25lIG9mIHRoZSBh
Ym92ZSBidWcgcmVwb3J0cyBhcmUgYWJvdXQgYSAweDhBNUQKYm94LiAweDhBNTYgaXMgb25lIGFu
ZCAweDhBNUEgaXMgdGhlIG90aGVyLgoKPiAtLS0KPiAgaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aCB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVk
ZS9kcm0vaTkxNV9wY2lpZHMuaAo+IGluZGV4IDZkNjBlYTY4YzE3MS4uNjQ3N2RhMjJhZjI4IDEw
MDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiArKysgYi9pbmNsdWRlL2Ry
bS9pOTE1X3BjaWlkcy5oCj4gQEAgLTU1OSw2ICs1NTksNyBAQAo+ICAjZGVmaW5lIElOVEVMX0lD
TF9QT1JUX0ZfSURTKGluZm8pIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUwLCBpbmZvKSwg
XAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNUMsIGluZm8pLCBcCj4gKwlJTlRFTF9WR0FfREVW
SUNFKDB4OEE1RCwgaW5mbyksIFwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTU5LCBpbmZvKSwJ
XAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8pLAlcCj4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4OEE1MiwgaW5mbyksIFwKPiBAQCAtNTcyLDggKzU3Myw3IEBACj4gIAo+ICAjZGVmaW5l
IElOVEVMX0lDTF8xMV9JRFMoaW5mbykgXAo+ICAJSU5URUxfSUNMX1BPUlRfRl9JRFMoaW5mbyks
IFwKPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUxLCBpbmZvKSwgXAo+IC0JSU5URUxfVkdBX0RF
VklDRSgweDhBNUQsIGluZm8pCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwgaW5mbykKPiAg
Cj4gIC8qIEVITCAqLwo+ICAjZGVmaW5lIElOVEVMX0VITF9JRFMoaW5mbykgXAo+IC0tIAo+IDIu
MjAuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
