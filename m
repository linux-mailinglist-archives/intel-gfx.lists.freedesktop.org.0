Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36931218801
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD1F86E8C1;
	Wed,  8 Jul 2020 12:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0292F6E8BF;
 Wed,  8 Jul 2020 12:49:56 +0000 (UTC)
IronPort-SDR: SW6TsDG3VKK35bVdjT4O0wHAHLmIarvVU9upOvBO/udsIR6ws5hx62niWH2CkfteGgGXxIIRBv
 gqCYbhsvcaHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="145287694"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="145287694"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:49:56 -0700
IronPort-SDR: ZlsVN8wIFt0JJ2Mjqgyu3jjAFQdVLxPQA3nEuHNRo1OeEXAI3Ku1HyotiR0otImnFWgnTjmCAi
 DNxsRvXjIDTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="267117934"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jul 2020 05:49:55 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 13:49:54 +0100
Date: Wed, 8 Jul 2020 15:49:52 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20200708124952.l42a3xzssejs3zas@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-2-janusz.krzysztofik@linux.intel.com>
 <159309887614.186992.12805428537676828006@macragge.hardline.pl>
 <632af55bd2d4395d3b51898bf51436d05a1bc06c.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <632af55bd2d4395d3b51898bf51436d05a1bc06c.camel@linux.intel.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 1/8]
 tests/core_hotunplug: Duplicate debug messages in dmesg
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMjYsIDIwMjAgYXQgMTI6MTg6MDBQTSArMDIwMCwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+IEhpIE1pY2hhxYIsCj4gCj4gVGhhbmtzIGZvciByZXZpZXcuCj4gCj4gT24g
VGh1LCAyMDIwLTA2LTI1IGF0IDE3OjI3ICswMjAwLCBNaWNoYcWCIFdpbmlhcnNraSB3cm90ZToK
PiA+IFF1b3RpbmcgSmFudXN6IEtyenlzenRvZmlrICgyMDIwLTA2LTIyIDE4OjQ0OjA4KQo+ID4g
PiBUaGUgcHVycG9zZSBvZiBkZWJ1ZyBtZXNzYWdlcyBkaXNwbGF5ZWQgYnkgdGhlIHRlc3QgaXMg
dG8gbWFrZQo+ID4gPiBpZGVudGlmaWNhdGlvbiBvZiBhIHN1YnRlc3QgcGhhc2UgdGhhdCBmYWls
cyBtb3JlIGVhc3kuICBTaW5jZSBpc3N1ZXMKPiA+ID4gZXhoaWJpdGVkIGJ5IHRoZSB0ZXN0IGFy
ZSBtb3N0bHkgcmVwb3J0ZWQgdG8gZG1lc2csIHByaW50IHRob3NlIGRlYnVnCj4gPiA+IG1lc3Nh
Z2VzIHRvIC9kZXYva21zZyBhcyB3ZWxsLgo+ID4gCj4gPiBJJ20gbm90IGEgZmFuIG9mIHNwYW1t
aW5nIGRtZXNnIGZyb20gSUdUIGFuZCBJJ2QgcHJlZmVyIGlmIHlvdSBhZGQgdGhpcyBsb2dnaW5n
Cj4gPiB0byB0aGUga2VybmVsLCAKPiBUaGUgaWRlYSB3YXMgdG8gc2ltcGx5IGxvZyBJR1QgYWN0
aW9ucywgbm90IHRvIGxvZyBrZXJuZWwgcmVhY3Rpb25zIG9uCj4gdGhlbSB3aGljaCBhbHJlYWR5
IGhhcHBlbnMuICBEb2luZyB0aGF0IGZyb20gdGhlIGtlcm5lbCB3b3VsZCBwcm9iYWJseQo+IHJl
cXVpcmUgbW9kaWZpY2F0aW9ucyB0byBQQ0kgc3lzZnMgaGFuZGxpbmcgb3IgdG8gc3lzZnMgaW4g
Z2VuZXJhbC4KPiAKPiBJZiB5b3Ugc2VlIG5vIGJlbmVmaXRzIGZyb20gdGhhdCwgbGV0J3MgZHJv
cCB0aGlzIHBhdGNoLgoKV2UgKG1lICYgUGV0cmkpIHdlcmUgdGhpbmtpbmcgYWJvdXQgZG9pbmcg
c29tZXRoaW5nIHNpbWlsYXIsIGJ1dCBvbmx5CmZvciB0aGUgcGxhY2VzIHdoZXJlIGtlcm5lbCBs
b2dzIGFyZSBoYXJkIHRvIGNvcnJlbGF0ZSB3aXRoIHRoZSB0ZXN0CmFjdGlvbnMsIHRvIGhhdmUg
dGhvc2UgInN5bmNocm9uaXphdGlvbiBwb2ludHMiIGJldHdlZW4gbG9ncyBmb3Iga2V5Cm9wZXJh
dGlvbnMuCgpUaGUgbWFpbiByZWFzb24gd2FzIENoYW1lbGl1bSAtIGV4dGVybmFsIGJvYXJkIHRo
YXQgc2ltdWxhdGVzIGRpc3BsYXkKYW5kIGNhbiBjYXVzZSBob3RwbHVnIGV2ZW50cyB0byBoYXBw
ZW4uIExvZ2dpbmcgQ2hhbWVsaXVtIG9wZXJhdGlvbnMgaW4KZG1lc2cgd291bGQgbWFrZSBhbnkg
a2luZCBvZiBidWcgYXNzZXNzbWVudCBvciB0cm91Ymxlc2hvb3RpbmcgbXVjaAplYXNpZXIgLSB3
YXMgdGhhdCBhIHBoYW50b20gaG90cGx1Zz8gb3Igc29tZXRoaW5nIHRoYXQgd2FzIHRyaWdnZXJl
ZCBieQp1cz8gSGF2ZSB3ZSBzdGFydGVkIGRvaW5nIGFueXRoaW5nIGVsc2UgYmVmb3JlIHRoZSBs
aW5rIGhhcyBzZXR0bGVkPwpXaGF0IGhhcHBlbmVkIGR1cmluZyBEUCBGU00gaGFuZGxpbmc/CgpU
aGlzIGlzIGEgdmVyeSBzcGVjaWFsIGNhc2UgYXMgd2UgZGVhbCB3aXRoIGFuIGV4dGVybmFsIGJv
YXJkIHRoYXQKZHJpdmVzIG91ciBIVyB0aHJvdWdoIHdpcmVzIGFuZCBsYXllcnMgb2YgZmlybXdh
cmUgYW5kIGZvciBzdXJlIHRoZXJlIGJlCmRyYWdvbnMuCgoKQW55d2F5LCBJIHdvdWxkIGxpa2Ug
dG8gc2VlIHVzIGhhdmluZyBhIHdheSBvZiBsb2dnaW5nIHRob3NlICJzeW5jCnBvaW50cyIgaW50
byBrbWVzZyBpbiBpZ3RfY29yZSwgZS5nLiBieSBjcmVhdGluZyBfa21lc2cgc3VmZml4ZWQgdmVy
c2lvbgpvZiBsb2cgZnVuY3Rpb25zLgoKQnV0IEkgYWxzbyBzZWUgTWljaGHFgidzIHBvaW50IC0g
dG9vIGZyaXZvbG91cyBsb2dnaW5nIGp1c3QgY3JlYXRlcwpub2lzZSwgYW5kIHdlIHNob3VsZG4n
dCBkb3VibGUgbG9nIC0gaWYgc29tZXRoaW5nIGlzIGFscmVhZHkgZWFzeSB0bwpmaW5kIGluIHRo
ZSBrZXJuZWwgbG9ncyBhbmQgdGhlIGNvcnJlbGF0aW5nIHRlc3QgYWN0aW9uIHRvIGxvZ3MgaXMg
bm90CnRvbyBoYXJkIHdoeSBzaG91bGQgd2UgYWRkIG1vcmUgbm9pc2U/CgpBcyBvZiB0aGUgZXhh
bXBsZXMgaW4gdGhpcyB0aHJlYWQgLSBJIGFtIG5vdCB2ZXJ5IGZhbWlsaWFyIHdpdGggdGhlIGFy
ZWEKYW5kIEkgbGVhdmUgaXQgdXAgdG8geW91IHR3byB0byBkZWNpZGUgd2hhdCB3b3VsZCBiZSBo
ZWxwZnVsLCB3aGF0IHdvdWxkCmJlIHVubmVjZXNzYXJ5IHJlcGV0aXRpb24gYW5kIHdoYXQgd291
bGQgYmUgYmV0dGVyIG9mZiBsb2dnZWQgaW4gdGhlCmtlcm5lbC4KClRMO0RSOiBZZXMgZm9yIGxv
Z2dpbmcgdGhpbmdzIGludG8ga21lc2csIGJ1dCB3ZSBzaG91bGQgYmUgY2FyZWZ1bCBhYm91dAog
ICAgICAgd2hhdCB3ZSBsb2cgdG8gbm90IG1ha2UgdGhlIHNpdHVhdGlvbiBhbnkgd29yc2UuCgot
LSAKQ2hlZXJzLApBcmVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
