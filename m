Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9B4EC354
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 13:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A461D6E202;
	Fri,  1 Nov 2019 12:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1726F6E199;
 Fri,  1 Nov 2019 12:58:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 05:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,255,1569308400"; d="scan'208";a="400844041"
Received: from fractal.fi.intel.com ([10.237.72.69])
 by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2019 05:58:34 -0700
To: Petri Latvala <petri.latvala@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20191101105106.12297-1-chris@chris-wilson.co.uk>
 <157260579755.17607.16001529023424116781@skylake-alporthouse-com>
 <20191101112123.GK25209@platvala-desk.ger.corp.intel.com>
From: Tomi Sarvela <tomi.p.sarvela@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <0b7bb816-6074-79df-eb77-af14cb6dcfd8@intel.com>
Date: Fri, 1 Nov 2019 14:58:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191101112123.GK25209@platvala-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-ci: Relegate gem_exec_reloc to
 the shards
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTEvMS8xOSAxOjIxIFBNLCBQZXRyaSBMYXR2YWxhIHdyb3RlOgo+IE9uIEZyaSwgTm92IDAx
LCAyMDE5IGF0IDEwOjU2OjM3QU0gKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGlu
ZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMDEgMTA6NTE6MDYpCj4+PiBUaGUgZ2VtX2V4ZWNfcmVs
b2MgYmFzaWMgc3VidGVzdHMgY292ZXIgYSBjb3VwbGUgZG96ZW4gYmFzaWMgQUJJCj4+PiBzYW5p
dHljaGVja3MsIGFpbWluZyB0byBwcm92ZSB0aGUgQUJJIHdvcmtzLiBXaGlsZSByZWxvY2F0aW9u
cyB1c2VkIHRvCj4+PiBiZSBlc3NlbnRpYWwsIHRoZXkgYXJlIG5vIGxvbmdlciB0aGUgYmFzaXMg
b2YgY3VycmVudCBjbGllbnRzIHdobyBhbGwKPj4+IHNvZnRwaW4uIEl0IGlzIGEgc3RhZ25hbnQg
cG9ydGlvbiBvZiB0aGUgQUJJIHRoYXQgZG9lcyBub3QgY29udHJpYnV0ZQo+Pj4gbXVjaCB0byBv
dmVyYWxsIGRyaXZlciBoZWFsdGggKHRoZSBjb21wbGljYXRlZCBwb3J0aW9ucyBvZiByZWxvY3Mg
YXJlCj4+PiBjb3ZlcmVkIGluIHRoZSBzbW9rZXRlc3RzIGxpa2UgZ2VtX2V4ZWNfcGFyYWxsZWwg
YW5kIGdlbV9leGVjX2d0dGZpbGwpLgo+Pj4gSG93ZXZlciwgZXZlbiB0aG91Z2ggZWFjaCBvZiB0
aGUgYmFzaWMgc3VidGVzdCBpcyB0cml2aWFsIGFuZCBydW5zIGluCj4+PiB2ZXJ5IGxpdHRsZSB0
aW1lLCBzaW5jZSBDSSBpcyBydW5uaW5nIGVhY2ggaW5kaXZpZHVhbGx5IHRoZSB0aW1lIGJldHdl
ZW4KPj4+IHRlc3RzIG1vdW50cyB1cCAoZXNwZWNpYWxseSBvbiBlTU1DIGRldmljZXMgbGlrZSBm
aS1rYmwtc29yYWthKS4KPj4+Cj4+PiBCeSBtb3ZpbmcgdGhlc2UgdGVzdHMgdG8gdGhlIHNoYXJk
cyB3ZSBzaG91bGQgc3BlZWQgdXAgQkFUIG9uIHRoZQo+Pj4gcmF0ZWxpbWl0aW5nIGZpLWtibC1z
b3Jha2EsIHdoaWxlIGxvc2luZyBubyBjb3ZlcmFnZSBvdmVyYWxsIC0tIGFuZAo+Pj4gaG9wZWZ1
bGx5IHdpdGhvdXQgbG9zaW5nIGFueSBvZiB0aGUgcHJlZGljdGl2ZSBmYWlsdXJlIGNvdmVyYWdl
IGluIEJBVC4KPj4+IFRoaXMgc3RhZ25hbnQgYml0IG9mIHVBUEkvdUFCSSB3aWxsIHJlbWFpbiBj
aGVja2VkIGJ5IHRoZSBpcnJlZ3VsYXIgaWRsZQo+Pj4gcnVucy4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+PiBDYzogVG9t
aSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4+PiBDYzogUGV0cmkgTGF0dmFs
YSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Cj4+PiBDYzogTWFydGluIFBlcmVzIDxtYXJ0aW4u
cGVyZXNAbGludXguaW50ZWwuY29tPgo+Pgo+PiBCZWZvcmUgSm9vbmFzIHdlbnQgZmlzaGluZywg
aGUgZ2F2ZSArMS4gU28sCj4+IEFja2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+Cj4+IFRvbWksIFBldHJpLCBNYXJ0aW4gYW55IG9iamVj
dGlvbnM/Cj4+IC1DaHJpcwo+IAo+IEFja2VkLWJ5OiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2
YWxhQGludGVsLmNvbT4KCkxvb2tzIHJlYXNvbmFibGUsIGFuZCBJIGxpa2UgaXQuCgpBY2tlZC1i
eTogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+CgotLSAKSW50ZWwgRmlu
bGFuZCBPeSAtIEJJQyAwMzU3NjA2LTQgLSBXZXN0ZW5kaW5rYXR1IDcsIDAyMTYwIEVzcG9vCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
