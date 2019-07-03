Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8C55E35F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915116E124;
	Wed,  3 Jul 2019 12:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6270C6E124
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:01:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 05:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184731489"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 05:01:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-3-chris@chris-wilson.co.uk>
 <629db077-98c1-d547-e665-2ec3cdac542d@linux.intel.com>
 <156215442563.20783.9266174576167797969@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <441408ce-9d3d-4135-204d-9d60618f0ec7@linux.intel.com>
Date: Wed, 3 Jul 2019 13:01:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156215442563.20783.9266174576167797969@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915/gt: Use caller provided
 forcewake for intel_mocs_init_engine
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA3LzIwMTkgMTI6NDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTAzIDEyOjIzOjUyKQo+Pgo+PiBPbiAwMy8wNy8yMDE5IDEwOjE3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBEdXJpbmcgcG9zdC1yZXNldCByZXN1bWUsIHdlIGNh
bGwgaW50ZWxfbW9jc19pbml0X2VuZ2luZSB0byByZWluaXRpYWxpc2UKPj4+IHRoZSBNT0NTIHJl
Z2lzdGVycy4gU3VwcmlzaW5nbHksIGVzcGVjaWFsbHkgd2hlbiBlbmhhbmNlZCBieSBsb2NrZGVw
LAo+Pj4gdGhlIGFjcXVpc2l0aW9uIG9mIHRoZSBmb3JjZXdha2UgbG9jayBhcm91bmQgZWFjaCBy
ZWdpc3RlciB3cml0ZSB0YWtlcyBhCj4+PiBzdWJzdGFudGlhbCBwb3J0aW9uIG9mIHRoZSByZXNl
dCB0aW1lLiBXZSBkb24ndCBuZWVkIHRvIHVzZSB0aGUKPj4+IGluZGl2aWR1YWwgZm9yY2V3YWtl
IGhlcmUgYXMgd2UgY2FuIGFzc3VtZSB0aGF0IHRoZSBjYWxsZXIgaXMgaG9sZGluZyBhCj4+PiBi
bGFua2V0IGZvcmNld2FrZSBmb3IgdGhlIHJlc2V0JnJlc3VtZSBhbmQgdGhlIHJlc3VtZSBpcyBz
ZXJpYWxpc2VkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9tb2NzLmMgfCAxNSArKysrKysrKystLS0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuYwo+Pj4gaW5kZXggYWU2Y2JmMGQ1MTdjLi4yOTBhNWU5YjkwYjkgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+Pj4gQEAgLTM0Niw2ICszNDYs
OSBAQCB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+Pj4gICAgICAgIHVuc2lnbmVkIGludCBpbmRleDsKPj4+ICAgICAgICB1MzIgdW51
c2VkX3ZhbHVlOwo+Pj4gICAgCj4+PiArICAgICAvKiBDYWxsZWQgdW5kZXIgYSBibGFua2V0IGZv
cmNld2FrZSAqLwo+Pj4gKyAgICAgYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHVuY29yZSwgRk9S
Q0VXQUtFX0FMTCk7Cj4+PiArCj4+Cj4+IEFzc2VydCBpcyBzdHJpY3RseSBzcGVha2luZyBhIGJp
dCB3ZWFrIHNpbmNlIGZvcmNld2FrZSBzdGF0dXMgY2FuCj4+IHRoZW9yZXRpY2FsbHkgY2hhbmdl
IHVudGlsIHRoZSBhY3R1YWwgYWNjZXNzIGJlbG93LiBCdXQgaW4gb3VyIGN1cnJlbnQKPj4gY29k
ZSB3ZSBpbmRlZWQgaG9sZCBpdCBmb3IgdGhlIHdob2xlIHJlc2V0Lgo+IAo+IFlvdSB3YW50IHRv
IGRpc3Rpbmd1aXNoIGJldHdlZW4gYW4gZXhwbGljaXQgaG9sZCBieSB0aGUgY2FsbGVyIGFuZCB0
aGUKPiBhdXRvLgoKWWVzLCB3ZSBqdXN0IGRvbid0IGhhdmUgYSB3YXkgb2YgZGlzdGluZ3Vpc2hp
bmcgaWYgdGhlIGNhbGxlciBpcyBob2xkaW5nIApvciB0aGV5IHdlcmUgaGVsZCBhbmQgYWJvdXQg
dG8gYmUgcmVsZWFzZWQuCgo+PiBJIGRvbid0IGhhdmUgYW55IGFjdHVhbCBpZGVhcyBvbiBob3cg
dG8gZnVuZGFtZW50YWxseSBpbXByb3ZlIHRoZQo+PiBhc3NlcnQuIFRob3VnaHQgdG8gaGF2ZSBp
dCBhZnRlciB0aGUgd3JpdGVzIGlzIHRoZSBvbmx5IHRoaW5nIHdoaWNoIGNhbWUKPj4gdG8gbWlu
ZC4gVGhvdWdodHM/Cj4gCj4gSSBkZWZpbml0ZWx5IHByZWZlciBoYXZpbmcgaXQgdXBmcm9udCB0
byBkb2N1bWVudCB0aGUgZnVuY3Rpb24KPiBwcmVjb25kaXRpb25zLCBhbmQgc28gd291bGQgcHJl
ZmVyIGlmIHRoZSBhc3NlcnQgYWN0dWFsbHkgZGlkIGFzc2VydCBhbgo+IGV4cGxpY2l0IGZvcmNl
d2FrZSBhcyBpdCBpcyBtZWFudCB0byBkbyA6KQoKUHJvYmFibHkgYmV0dGVyIHllcy4gSSB3YXMg
anVzdCB0aGlua2luZyBvdXQgbG91ZC4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
