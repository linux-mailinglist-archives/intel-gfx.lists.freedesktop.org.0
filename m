Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE1825005
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 15:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B59892D8;
	Tue, 21 May 2019 13:22:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BFD7892D8;
 Tue, 21 May 2019 13:22:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 06:22:20 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 21 May 2019 06:22:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
 <20190520144739.13111-3-tvrtko.ursulin@linux.intel.com>
 <155842546526.23981.5722257697980402246@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2c71f2e6-2d60-740a-7e87-dde07d651ab0@linux.intel.com>
Date: Tue, 21 May 2019 14:22:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155842546526.23981.5722257697980402246@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 02/27] trace.pl: Ignore
 signaling on non i915 fences
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIxLzA1LzIwMTkgMDg6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTIwIDE1OjQ3OjE0KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBnZW1fd3NpbSB1c2VzIHRoZSBzd19mZW5j
ZSB0aW1lbGluZSBhbmQgY29uZnVzZXMgdGhlIHNjcmlwdC4KPj4KPj4gdjI6Cj4+ICAgKiBDaGVj
ayB0aGUgY29ycmVjdCB0aW1lbGluZSBhcyB3ZWxsLiAoQ2hyaXMpCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAg
IHNjcmlwdHMvdHJhY2UucGwgfCAzICsrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL3NjcmlwdHMvdHJhY2UucGwgYi9zY3JpcHRzL3RyYWNl
LnBsCj4+IGluZGV4IDhjODk2Y2ZkZTZiMC4uYWMxNDFhNTE0MDU1IDEwMDc1NQo+PiAtLS0gYS9z
Y3JpcHRzL3RyYWNlLnBsCj4+ICsrKyBiL3NjcmlwdHMvdHJhY2UucGwKPj4gQEAgLTQ0Myw2ICs0
NDMsOSBAQCB3aGlsZSAoPD4pIHsKPj4gICAgICAgICAgfSBlbHNpZiAoJHRwX25hbWUgZXEgJ2Rt
YV9mZW5jZTpkbWFfZmVuY2Vfc2lnbmFsZWQ6Jykgewo+PiAgICAgICAgICAgICAgICAgIG15ICRu
a2V5Owo+PiAgIAo+PiArICAgICAgICAgICAgICAgbmV4dCB1bmxlc3MgJHRweydkcml2ZXInfSBl
cSAnaTkxNScgYW5kCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAkdHB7J3RpbWVsaW5l
J30gZXEgJ3NpZ25hbGVkJzsKPiAKPiBIb3BlZnVsbHkgdGhhdCByZW1haW5zIHVuaXF1ZS4uLgo+
IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAK
PiBJIGRvIHJlY2FsbCB3YW50aW5nIHRvIHJlbW92ZSB0aGUgc3RyaW5ncyBmcm9tIGFsbCB0aGUg
dHJhY2Vwb2ludHMgOi1wCgpFZWVrLi4gbGV0J3MgdHJ5IGFuZCBub3QgbWFrZSB0aGUgcmVxdWVz
dCB0cmFjaW5nIGFiaWxpdHkgZXZlbiBtb3JlIHVzZWxlc3MuCgpCZWNhdXNlIGZvciB0cmFjZS5w
bCB0aGUgZGVjb3VwbGVkIGZyb20gYWN0dWFsIHJlcXVlc3QgY29tcGxldGlvbiBuYXR1cmUgCm9m
IGRtYV9mZW5jZV9zaWduYWxlZCBpcyBkZXByZXNzaW5nIGVub3VnaC4gSSB3b25kZXIgaG93IGJl
dHRlciB0cmFjaW5nIAp0b29scyB2aWV3L2NvcGUgd2l0aCB0aGlzLgoKQW5kIEknZCBhbHNvIHdy
aXRlIHRvIFNhbnRhIHRvIHdpcmUgbWUgdXAgYSByZWFsIHJlcXVlc3Qgc3RhcnQsIHRvIApkaXN0
aW5ndWlzaCBzZW1hcGhvcmVzIHZzIGJhdGNoIGV4ZWN1dGlvbi4gSW4gdGhlIHJlYWxtIG9mIGlt
cG9zc2libGUgCndpc2hlcyB5ZWFoLgoKUGVyc2lzdGVudCBicmVhZGNydW1icyB3aGlsZSB0cmFj
aW5nIGlzIGFub3RoZXIgb25lIGZvciB3aGljaCBldmVuIHRoZXJlIAp3YXMgYSBwYXRjaCBzb21l
IHRpbWUgYmFjay4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
