Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39879172440
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 17:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CE46E94B;
	Thu, 27 Feb 2020 16:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEB36E94B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 16:59:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 08:59:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="227216235"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 08:59:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ross Zwisler <zwisler@google.com>
In-Reply-To: <20200227164355.GA241728@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200221212635.11614-1-jose.souza@intel.com>
 <87wo88qicd.fsf@intel.com> <20200227164355.GA241728@google.com>
Date: Thu, 27 Feb 2020 18:59:42 +0200
Message-ID: <87o8tkq83l.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4-CI] drm/i915/psr: Force PSR probe only
 after full initialization
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

T24gVGh1LCAyNyBGZWIgMjAyMCwgUm9zcyBad2lzbGVyIDx6d2lzbGVyQGdvb2dsZS5jb20+IHdy
b3RlOgo+IE9uIFRodSwgRmViIDI3LCAyMDIwIGF0IDAzOjE4OjI2UE0gKzAyMDAsIEphbmkgTmlr
dWxhIHdyb3RlOgo+PiBPbiBGcmksIDIxIEZlYiAyMDIwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4+ID4gQ29tbWl0IDYwYzZhMTRiNDg5YiAo
ImRybS9pOTE1L2Rpc3BsYXk6IEZvcmNlIHRoZSBzdGF0ZSBjb21wdXRlIHBoYXNlCj4+ID4gb25j
ZSB0byBlbmFibGUgUFNSIikgd2FzIGZvcmNpbmcgdGhlIHN0YXRlIGNvbXB1dGUgdG9vIGVhcmxp
ZXIKPj4gPiBjYXVzaW5nIGVycm9ycyBiZWNhdXNlIG5vdCBldmVyeXRoaW5nIHdhcyBpbml0aWFs
aXplZCwgc28gaGVyZQo+PiA+IG1vdmluZyB0byB0aGUgZW5kIG9mIGk5MTVfZHJpdmVyX21vZGVz
ZXRfcHJvYmUoKSB3aGVuIHRoZSBkaXNwbGF5IGlzCj4+ID4gYWxsIGluaXRpYWxpemVkLgo+PiAK
Pj4gSG1waCwgcmVhbGx5IG5vdCBoYXBweSBhYm91dCB0aGUgcGxhY2VtZW50IGhlcmUuIFRoZXNl
IGFyZSBoaWdoIGxldmVsCj4+IGZ1bmN0aW9ucywgbm90IGEgZHVtcGluZyBncm91bmQgZm9yIHJh
bmRvbSBmZWF0dXJlIHNwZWNpZmljIGhhY2tzLiA6KAo+Cj4gU2hvdWxkIHdlIGp1c3QgcmV2ZXJ0
IAo+Cj4gNjBjNmExNGI0ODliICgiZHJtL2k5MTUvZGlzcGxheTogRm9yY2UgdGhlIHN0YXRlIGNv
bXB1dGUgcGhhc2Ugb25jZSB0byBlbmFibGUgUFNSIikKPgo+IGFuZCB0cnkgdG8gbGFuZCBhIGZp
eGVkLXVwIHZlcnNpb24gaW4gdGhlIG5leHQga2VybmVsIGN5Y2xlPyAgVGhlIGN1cnJlbnQKPiBz
dGF0ZSBpcyB0aGF0IG15IG1hY2hpbmUgaXMgY29tcGxldGVseSB1bmFibGUgdG8gYm9vdCBiZWNh
dXNlIG9mIHRoaXMgaXNzdWUsCj4gYW5kIEkndmUgY29uZmlybWVkIHRoYXQgdGhlIGFib3ZlIHBh
dGNoIHJldmVydHMgY2xlYW5seSBhbmQgZml4ZXMgdGhlIGlzc3VlLgoKSUlVQyB0aGlzIHBhdGNo
LCBhbHJlYWR5IGNvbW1pdHRlZCBhcyBkZjFhNWJmYzE2ZjMgKCJkcm0vaTkxNS9wc3I6IEZvcmNl
ClBTUiBwcm9iZSBvbmx5IGFmdGVyIGZ1bGwgaW5pdGlhbGl6YXRpb24iKSwgZml4ZXMgdGhlIGlz
c3VlIGZvciB5b3UuIEF0CmxlYXN0IHRoZSBUZXN0ZWQtYnkgc2F5cyBzby4gOykgU28gd2Ugc2hv
dWxkIGp1c3QgZ28gd2l0aCB0aGF0LgoKSSdtIGp1c3QgYmVpbmcgZ3J1bXB5IGFib3V0IHRoZSBh
ZXN0aGV0aWNzIG9mIHRoZSBpbXBsZW1lbnRhdGlvbi4gSSd2ZQphbHJlYWR5IGluY29ycG9yYXRl
ZCBzb21lIGNsZWFudXAgdG8gdGhpcyBpbiBhbiBleGlzdGluZyByZWZhY3RvcmluZyBJCmhhZCBb
MV0uCgpCUiwKSmFuaS4KCgpbMV0gaHR0cDovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0
Y2gvbXNnaWQvMjAyMDAyMjcxMzU4MzkuMTI5MTItMS1qYW5pLm5pa3VsYUBpbnRlbC5jb20KCgoK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
