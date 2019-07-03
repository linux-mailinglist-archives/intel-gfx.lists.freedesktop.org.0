Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6275E8AF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 18:24:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8722589CAF;
	Wed,  3 Jul 2019 16:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F9B89CAF
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 16:24:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 09:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="174993022"
Received: from unknown (HELO ldmartin-desk1) ([10.24.8.246])
 by orsmga002.jf.intel.com with ESMTP; 03 Jul 2019 09:24:03 -0700
Date: Wed, 3 Jul 2019 09:24:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20190703162403.yyejmv6al3f6bvn7@ldmartin-desk1>
References: <20190702192304.31955-1-lucas.demarchi@intel.com>
 <20190703121416.GD7784@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703121416.GD7784@kroah.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH stable-4.9+] drm/i915/dmc: protect against
 reading random memory
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDI6MTQ6MTZQTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
Pk9uIFR1ZSwgSnVsIDAyLCAyMDE5IGF0IDEyOjIzOjA0UE0gLTA3MDAsIEx1Y2FzIERlIE1hcmNo
aSB3cm90ZToKPj4gY29tbWl0IGJjN2I0ODhiMWQxYzcxZGM0YzUxODIyMDY5MTExMjdiYzZjNDEw
ZDYgdXBzdHJlYW0uCj4+Cj4+IFdoaWxlIGxvYWRpbmcgdGhlIERNQyBmaXJtd2FyZSB3ZSB3ZXJl
IGRvdWJsZSBjaGVja2luZyB0aGUgaGVhZGVycyBtYWRlCj4+IHNlbnNlLCBidXQgaW4gbm8gcGxh
Y2Ugd2UgY2hlY2tlZCB0aGF0IHdlIHdlcmUgYWN0dWFsbHkgcmVhZGluZyBtZW1vcnkKPj4gd2Ug
d2VyZSBzdXBwb3NlZCB0by4gVGhpcyBjb3VsZCBiZSB3cm9uZyBpbiBjYXNlIHRoZSBmaXJtd2Fy
ZSBmaWxlIGlzCj4+IHRydW5jYXRlZCBvciBtYWxmb3JtZWQuCj4+Cj4+IEJlZm9yZSB0aGlzIHBh
dGNoOgo+PiAJIyBscyAtbCAvbGliL2Zpcm13YXJlL2k5MTUvaWNsX2RtY192ZXIxXzA3LmJpbgo+
PiAJLXJ3LXItLXItLSAxIHJvb3Qgcm9vdCAgMjU3MTYgRmViICAxIDEyOjI2IGljbF9kbWNfdmVy
MV8wNy5iaW4KPj4gCSMgdHJ1bmNhdGUgLXMgMjU3MDAgL2xpYi9maXJtd2FyZS9pOTE1L2ljbF9k
bWNfdmVyMV8wNy5iaW4KPj4gCSMgbW9kcHJvYmUgaTkxNQo+PiAJIyBkbWVzZ3wgZ3JlcCAtaSBk
bWMKPj4gCVtkcm06aW50ZWxfY3NyX3Vjb2RlX2luaXQgW2k5MTVdXSBMb2FkaW5nIGk5MTUvaWNs
X2RtY192ZXIxXzA3LmJpbgo+PiAJW2RybV0gRmluaXNoZWQgbG9hZGluZyBETUMgZmlybXdhcmUg
aTkxNS9pY2xfZG1jX3ZlcjFfMDcuYmluICh2MS43KQo+Pgo+PiBpLmUuIGl0IGxvYWRzIHJhbmRv
bSBkYXRhLiBOb3cgaXQgZmFpbHMgbGlrZSBiZWxvdzoKPj4gCVtkcm06aW50ZWxfY3NyX3Vjb2Rl
X2luaXQgW2k5MTVdXSBMb2FkaW5nIGk5MTUvaWNsX2RtY192ZXIxXzA3LmJpbgo+PiAJW2RybTpj
c3JfbG9hZF93b3JrX2ZuIFtpOTE1XV0gKkVSUk9SKiBUcnVuY2F0ZWQgRE1DIGZpcm13YXJlLCBy
ZWplY3RpbmcuCj4+IAlpOTE1IDAwMDA6MDA6MDIuMDogRmFpbGVkIHRvIGxvYWQgRE1DIGZpcm13
YXJlIGk5MTUvaWNsX2RtY192ZXIxXzA3LmJpbi4gRGlzYWJsaW5nIHJ1bnRpbWUgcG93ZXIgbWFu
YWdlbWVudC4KPj4gCWk5MTUgMDAwMDowMDowMi4wOiBETUMgZmlybXdhcmUgaG9tZXBhZ2U6IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Zpcm13YXJlL2xp
bnV4LWZpcm13YXJlLmdpdC90cmVlL2k5MTUKPj4KPj4gQmVmb3JlIHJlYWRpbmcgYW55IHBhcnQg
b2YgdGhlIGZpcm13YXJlIGZpbGUsIHZhbGlkYXRlIHRoZSBpbnB1dCBmaXJzdC4KPj4KPj4gRml4
ZXM6IGViODA1NjIzZDhiMSAoImRybS9pOTE1L3NrbDogQWRkIHN1cHBvcnQgdG8gbG9hZCBTS0wg
Q1NSIGZpcm13YXJlLiIpCj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+PiBMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvbXNnaWQvMjAxOTA2MDUyMzU1MzUuMTc3OTEtMS1sdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20KPj4gKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQgYmM3YjQ4OGIxZDFjNzFkYzRjNTE4
MjIwNjkxMTEyN2JjNmM0MTBkNikKPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPj4gWyBMdWNhczogYmFja3BvcnRlZCB0byA0LjkrIGFkanVzdGlu
ZyB0aGUgY29udGV4dCBdCj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgdjQuOSsKPgo+
V2hhdCBhYm91dCBhIDQuMTQueSBhbmQgNC4xOS55IGJhY2twb3J0IGFzIHdlbGw/ICAgSSBjYW4n
dCB0YWtlIHRoaXMKPndpdGhvdXQgdGhvc2UgYXMgd2UgZG8gbm90IHdhbnQgcGVvcGxlIHRvIHVw
Z3JhZGUgYW5kIGhhdmUgYSByZWdyZXNzaW9uLgoKVGhlIGRvY3VtZW50YXRpb24gYWJvdXQgc3Rh
YmxlIHByb2Nlc3MgZXhwbGljaXRlbHkgc2F5cyB0aGUgbWVhbmluZyBvZgp0aGUgdGFnIGlzICdG
b3IgZWFjaCAiLXN0YWJsZSIgdHJlZSBzdGFydGluZyB3aXRoIHRoZSBzcGVjaWZpZWQKdmVyc2lv
bi4nLiBJIHRyaWVkIHRvIG1ha2UgaXQgY2xlYXIgYnkgdXNpbmcgdGhlICcrJyBzdWZmaXggYXMg
SSBzYXcgaW4Kb3RoZXIgY29tbWl0cyBpbiBzdGFibGUgdHJlZS4KClRoaXMgcGF0Y2ggYXBwbGll
cyBjbGVhbmx5IHRvIDQuOSwgNC4xNCBhbmQgNC4xOS4gVGhpcyBjb21taXQgaXMgYWxyZWFkeQph
cHBsaWVkIGluIDUuMSBhcyBpdCBkaWRuJ3QgbmVlZCBhbnkgYmFja3BvcnQuIFRoYXQgd2FzIHRo
ZSBpbnRlbnRpb24sIGxldCBtZQprbm93IGlmIHRoYXQgaXMgbm90IHRoZSBwcm9wZXIgd2F5LgoK
VGhlIG9ubHkgbWlzc2luZyBzdGFibGUgaXMgNC40LCBidXQgdGhhdCBuZWVkcyBtb3JlIGNoYW5n
ZXMgdG8gdGhlCnBhdGNoLgoKTHVjYXMgRGUgTWFyY2hpCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
