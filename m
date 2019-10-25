Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483E9E504A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 17:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D02F6EAB8;
	Fri, 25 Oct 2019 15:39:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6516EAA1;
 Fri, 25 Oct 2019 15:39:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 08:38:59 -0700
X-IronPort-AV: E=Sophos;i="5.68,229,1569308400"; d="scan'208";a="192571837"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Oct 2019 08:38:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20191025142410.18465-1-tvrtko.ursulin@linux.intel.com>
 <20191025142410.18465-2-tvrtko.ursulin@linux.intel.com>
 <157201643536.11797.12701857221082778286@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <12639e47-d31a-5f58-33d0-ed37023e2f77@linux.intel.com>
Date: Fri, 25 Oct 2019 16:38:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157201643536.11797.12701857221082778286@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [RFC i-g-t 1/1] intel-gpu-top: Support
 for client stats
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

Ck9uIDI1LzEwLzIwMTkgMTY6MTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTI1IDE1OjI0OjEwKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBBZGRzIHN1cHBvcnQgZm9yIHBlci1jbGll
bnQgZW5naW5lIGJ1c3luZXNzIHN0YXRzIGk5MTUgZXhwb3J0cyBpbiBzeXNmcwo+PiBhbmQgcHJv
ZHVjZXMgb3V0cHV0IGxpa2UgdGhlIGJlbG93Ogo+Pgo+PiA9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+PiBp
bnRlbC1ncHUtdG9wIC0gIDkzNS8gOTM1IE1IejsgICAgMCUgUkM2OyAxNC43MyBXYXR0czsgICAg
IDEwOTcgaXJxcy9zCj4gCj4gQ291bGQgd2UgZ2V0ICJncHUgLyBwa2cgV2F0dHMiIHByZXR0eSBw
bGVhc2U/CgpTdXJlLCBuZXh0IHdlZWsgb3Igc28uCgo+IEFyZSBpcnEvcyBpbnRlcmVzdGluZyB3
aXRoIGV4ZWNsaXN0cz8gT3JpZ2luYWxseSB0aGUgaWRlYSB3YXMgdG8gc2F5IGhvdwo+IG1hbnkg
dGltZXMgY2xpZW50cyB3ZXJlIHNsZWVwaW5nIGFuZCBiZWluZyB3b2tlbiB1cC4gTm93IHdlIGlu
dGVycnVwdAo+IHRvIHdpcGUgdGhlIGdwdSdzIG5vc2Ugd2hlbiBpdCBzbmVlemVzLgo+IAo+Pgo+
PiAgICAgICAgSU1DIHJlYWRzOiAgICAgMTQwMSBNaUIvcwo+PiAgICAgICBJTUMgd3JpdGVzOiAg
ICAgICAgNCBNaUIvcwo+Pgo+PiAgICAgICAgICAgIEVOR0lORSAgICAgIEJVU1kgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBNSV9TRU1BIE1JX1dBSVQKPj4gICAgICAgUmVuZGVyLzNE
LzAgICA2My43MyUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiCAgICAgICAgICAgfCAgICAgIDMlICAgICAgMCUKPj4gICAgICAgICBCbGl0
dGVyLzAgICAgOS41MyUgfOKWiOKWiOKWiiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICA2JSAgICAgIDAlCj4+ICAgICAgICAgICBWaWRlby8wICAgMzkuMzIlIHzilojilojilojiloji
lojilojilojilojilojilojilojiloogICAgICAgICAgICAgICAgICB8ICAgICAxNiUgICAgICAw
JQo+PiAgICAgICAgICAgVmlkZW8vMSAgIDE1LjYyJSB84paI4paI4paI4paI4paLICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAgICAwJSAgICAgIDAlCj4+ICAgIFZpZGVvRW5oYW5jZS8wICAg
IDAuMDAlIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgMCUgICAgICAwJQo+
Pgo+PiAgICBQSUQgICAgICAgICAgICBOQU1FICAgICBSQ1MgICAgICAgICAgQkNTICAgICAgICAg
IFZDUyAgICAgICAgIFZFQ1MKPj4gICA0MDg0ICAgICAgICBnZW1fd3NpbSB84paI4paI4paI4paI
4paI4paMICAgICB8fOKWiCAgICAgICAgICB8fCAgICAgICAgICAgfHwgICAgICAgICAgIHwKPj4g
ICA0MDg2ICAgICAgICBnZW1fd3NpbSB84paI4paMICAgICAgICAgfHwgICAgICAgICAgIHx84paI
4paI4paIICAgICAgICB8fCAgICAgICAgICAgfAo+PiA9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pgo+PiBB
cGFydCBmcm9tIHRoZSBleGlzdGluZyBwaHlzaWNhbCBlbmdpbmUgdXRpbGl6YXRpb24gaXQgbm93
IGFsc28gc2hvd3MKPj4gdXRpbGl6YXRpb24gcGVyIGNsaWVudCBhbmQgcGVyIGVuZ2luZSBjbGFz
cy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPj4gLS0tCj4gCj4+ICsjZGVmaW5lIFNZU0ZTX0NMSUVOVFMgIi9zeXMvY2xhc3Mv
ZHJtL2NhcmQwL2NsaWVudHMiCj4gCj4gV2UgbmVlZCB0byBzb21laG93IHB1bGwgdGhlIHJpZ2h0
IGNhcmQuCgpZZWFoLCBhcyBJIHNhaWQgUkZDIGFuZCByZWZlcmVuY2Ugb25seS4gOikKCj4gTm90
aGluZyBzaG9ja2luZyBoZXJlLiBXaGVyZSdzIHRoZSBpbnRlbC1ncHUtb3ZlcmxheSBpbnRlZ3Jh
dGlvbj8gOykKCk1heWJlIGludGVsLWdwdS1vdmVybGF5IHNob3VsZCBiZWNvbWUgYW4gb3V0cHV0
IHBsdWdpbiBmb3IgaW50ZWxfZ3B1X3RvcC4gOikKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
