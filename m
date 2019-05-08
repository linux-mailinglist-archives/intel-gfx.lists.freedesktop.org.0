Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7718317B69
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 16:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A918967B;
	Wed,  8 May 2019 14:16:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25B4895C3;
 Wed,  8 May 2019 14:16:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 07:16:33 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 08 May 2019 07:16:32 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-17-tvrtko.ursulin@linux.intel.com>
 <155731847301.28545.3793641581373958416@skylake-alporthouse-com>
 <8d694e1c-93b8-dcab-2fd4-cd9e3cd4bb72@linux.intel.com>
 <155732381542.28545.8719412973977978878@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a5bf9e6c-79c7-592b-aa88-35549e3e8332@linux.intel.com>
Date: Wed, 8 May 2019 15:16:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155732381542.28545.8719412973977978878@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 16/21] gem_wsim: Some more
 example workloads
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

Ck9uIDA4LzA1LzIwMTkgMTQ6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDE0OjUwOjQxKQo+Pgo+PiBPbiAwOC8wNS8yMDE5IDEzOjI3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTA4IDEzOjEwOjUzKQo+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4+Pj4KPj4+PiBBIGZldyBhZGRpdGlvbmFsIHdvcmtsb2FkcyB1c2VmdWwgZm9y
IGV4cGVyaW1lbnRpbmcgd2l0aCBzY2hlZHVsaW5nLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Cj4+PiBBcmUgdGhl
IGV4dHJhIG1vZGVzICYgLndzaW0gc3VwcG9ydGVkIGJ5IHNjcmlwdHMvbWVkaWEtYmVuY2gucGw/
Cj4+PiBpLmUuIGNhbiBJIGp1c3QgcnVuIG1lZGlhLWJlbmNoLnBsIGFuZCBoYXZlIGl0IGV4ZXJj
aXNlIGFsbCB0aGUgbmV3Cj4+PiBmZWF0dXJlcz8KPj4KPj4gTm90IHN1cmUgd2hhdCB5b3UgbWVh
biBieSBleHRyYSBtb2Rlcz8gSWYgYWxsIG5ldyB3c2ltIGNvbW1hbmRzIHRoZW4gbm8uCj4+IFRo
ZXkgYXJlIG5vdCBpbiB0aGUgZGVmYXVsdCBtZWRpYS1iZW5jaC5wbCBzZXQuIFRoZSB3b3JrbG9h
ZHMgZnJvbSB0aGlzCj4+IHBhdGNoIGFyZSBub3QgaW4gdGhhdCBzZXQgc28gYXJlIGp1c3QgZm9y
IHJlZmVyZW5jZS4KPiAKPiBUaGF0J3Mgd2hhdCBJIG1lYW50LCBhcmUgdGhlIG5ldyBleGFtcGxl
LndzaW0gd2l0aCBleHBsaWNpdCBlbmdpbmUgbWFwcwo+IGFuZCBzbyBJIHByZXN1bWUgaW50ZXIt
bWl4aW5nIG9mIGxvYWQtYmFsYW5jZWQgd29ya2xvYWRzIHdpdGggb3RoZXIgd29yawo+IGluY2x1
ZGVkIGluIHRoZSBkZWZhdWx0IHNldCBydW4gYnkgLi9zY3JpcHRzL21lZGlhLWJlbmNoLnBsCgpJ
dCdzIG5vdCBpbiB0aGUgZGVmYXVsdCBzZXQgYnV0IG1hbnVhbCB3b3JrbG9hZHMgY2FuIGJlIGdp
dmVuIHRvIAptZWRpYS1iZW5jaC5wbCB1c2luZyB0aGUgLXcgc3dpdGNoLiBTdHJpbmcgcGFzc2Vk
IHRoZXJlIGlzIHBhc3NlZCBvbnRvIApnZW1fd3NpbSBkaXJlY3RseSBzbyBvbmUgb3IgbW9yZSB3
b3JrbG9hZHMgY2FuIGJlIG1hbnVhbGx5IHNwZWNpZmllZC4KCj4gV2hhdCdzIHRoZSBtaW5pbXVt
IGFtb3VudCBvZiBlZmZvcnQgSSBuZWVkIHRvIGV4ZXJjaXNlIGFsbCB0aGUgbmV3Cj4gZmVhdHVy
ZXMgb2YgZ2VtX3dzaW0/IDopCgpmcmFtZS1zcGxpdC02MGZwcy53c2ltIHVzZXMgYWxtb3N0IGFs
bCBuZXcgZmVhdHVyZXM6IHByZWVtcHRpb24gY29udHJvbCwgCmVuZ2luZSBtYXAsIGxvYWQgYmFs
YW5jZSwgYm9uZCwgc3VibWl0IGZlbmNlIGFuZCB0aGUgImVuZGxlc3MiIGJhdGNoLgoKT25seSBt
aXNzaW5nIGlzIFNTRVUgY29udHJvbCBmb3Igd2hpY2ggSSBkaWQgbm90IGFkZCBhbiBleGFtcGxl
IHdvcmtsb2FkIAoodGhlcmUgaXMgYSBzbmlwcGV0IGluIFJFQURNRSB0aG91Z2gpIHNpbmNlIHRo
ZSBhY2Nlc3MgdG8gdWFwaSBpcyAKYmxvY2tlZCBvdXRzaWRlIHRoZSBnZW4xMSBzcGVjaWFsIGNh
c2UuIFRvIHVzZSB0aGF0IHRoZSBpOTE1IElTX0dFTjExIApjaGVjayBpbiBzZXRfc3NldSBuZWVk
cyB0byBiZSBsaWZ0ZWQgYXMgd2VsbC4KCj4+IFZpcnR1YWwgZW5naW5lIChnZW1fd3NpbSAtYiBp
OTE1KSBpcyBzdXBwb3J0ZWQgYnkgbWVkaWEtYmVuY2gucGwgZXZlbgo+PiB3aXRoIHRoZSBvbGQv
ZGVmYXVsdCBzZXQgb2Ygd29ya2xvYWRzLgo+Pgo+PiBUaGUgY2F0Y2ggaXMgb2xkIHdzaW0gd29y
a2xvYWRzIHVzZSBWQ1MgdG8gbWVhbiBhbnkgVkNTIGFuZCBpbiB0aG9zZQo+PiBjYXNlcyAtYiBp
OTE1IHdpbGwgc2V0IHVwIHRoZSB2aXJ0dWFsIGVuZ2luZQo+PiBhdXRvbWF0aWNhbGx5L3RyYW5z
cGFyZW50bHkuIFNvIHRob3NlIG9sZCB3b3JrbG9hZHMgY2FuIGJlIHJhbiBib3RoIHdpdGgKPj4g
dXNlcnNwYWNlIG9yIGk5MTUgYmFsYW5jaW5nLgo+IAo+IEFuZCBzZWVtcyB0byBzdGlsbCBiZSB3
b3JraW5nLgoKSSdkIGhvcGUgc28sIEkgbW9zdGx5IGRvIHRlc3QgdGhpbmdzISA6KQoKUmVnYXJk
cywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
