Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B925E786D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 19:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F5189C82;
	Mon, 28 Oct 2019 18:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CADF89C82
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 18:30:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 11:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="198144505"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 28 Oct 2019 11:30:51 -0700
To: "Hiatt, Don" <don.hiatt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20191024162958.11839-1-don.hiatt@intel.com>
 <0f6b50af-70a4-819b-946d-079d6f9d80f1@intel.com>
 <97654A90DB924C44A3AE6C902A3FEAC15F976A54@ORSMSX106.amr.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e0f9e325-2783-4a2d-7eaf-ac0b78c15e1c@intel.com>
Date: Mon, 28 Oct 2019 11:30:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <97654A90DB924C44A3AE6C902A3FEAC15F976A54@ORSMSX106.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8yOC8xOSAxMToxNyBBTSwgSGlhdHQsIERvbiB3cm90ZToKPj4gRnJvbTogQ2VyYW9s
byBTcHVyaW8sIERhbmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IFNl
bnQ6IE1vbmRheSwgT2N0b2JlciAyOCwgMjAxOSA5OjQ0IEFNCj4+IFRvOiBIaWF0dCwgRG9uIDxk
b24uaGlhdHRAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBT
dWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNC9ndWM6IEZpeCByZXN1bWUg
b24gcGxhdGZvcm1zIHcvbyBHdUMKPj4gc3VibWlzc2lvbiBidXQgZW5hYmxlZAo+Pgo+Pgo+Pgo+
PiBPbiAxMC8yNC8xOSA5OjI5IEFNLCBkb24uaGlhdHRAaW50ZWwuY29tIHdyb3RlOgo+Pj4gRnJv
bTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgo+Pj4KPj4+IENoZWNrIHRvIHNlZSBp
ZiBHdUMgc3VibWlzc2lvbiBpcyBlbmFibGVkIGJlZm9yZSByZXF1ZXN0aW5nIHRoZQo+Pj4gRVhJ
VF9TX1NUQVRFIGFjdGlvbi4KPj4+Cj4+Cj4+IFlvdSdyZSBvbmx5IHNraXBwaW5nIHRoZSByZXN1
bWUsIGJ1dCBkb2VzIGl0IG1ha2UgYW55IHNlbnNlIHRvIGRvIHRoZQo+PiBzdXNwZW5kIGFjdGlv
biBpZiB3ZSdyZSBub3QgZ29pbmcgdG8gY2FsbCB0aGUgcmVzdW1lIG9uZT8gRG9lcyBndWMgZG8K
Pj4gYW55dGhpbmcgaW4gdGhlIHN1c3BlbmQgYWN0aW9uIHRoYXQgd2Ugc3RpbGwgcmVxdWlyZT8g
SSB0aG91Z2h0IGl0IG9ubHkKPj4gc2F2ZWQgdGhlIHN1Ym1pc3Npb24gc3RhdHVzLCB3aGljaCB3
ZSBkb24ndCBjYXJlIGFib3V0IGlmIGd1YyBzdWJtaXNzaW9uCj4+IGlzIGRpc2FibGVkLgo+Pgo+
PiBEYW5pZWxlCj4+Cj4gCj4gSGkgRGFuaWVsZSwKPiAKPiBJIHRyaWVkIHNraXBwaW5nIHRoZSBz
dXNwZW5kIGFsbCB0b2dldGhlciBidXQgdGhlbiB0aGUgSHVDIGdldHMgdGltZW91dHMKPiB3YWl0
aW5nIGZvciB0aGUgR3VDIHRvIGFja25vd2xlZGdlIHRoZSBhdXRoZW50aWNhdGlvbiByZXF1ZXN0
IHdoaWNoIGxlYWRzIHRvIGEKPiB3ZWRnZWQgR1BVLiDimLkKPiAKCkRvIHdlIGtub3cgd2h5PyBp
ZiB3ZSBza2lwIHRoZSBzdXNwZW5kL3Jlc3VtZSBIMkcgYW5kIHJlbG9hZCB0aGUgYmxvYnMgCmFm
dGVyIHJlc2V0dGluZyB0aGUgSFcgaXQgc2hvdWxkIGxvb2sgbGlrZSBhIGNsZWFuIGJvb3QgZnJv
bSB0aGUgSFcgCnBlcnNwZWN0aXZlLCBzbyB0aGUgZmFjdCB0aGF0IEh1QyBhdXRoIHRpbWVzIG91
dCBmZWVscyB3ZWlyZCBhbmQgbWlnaHQgCmhpZGUgb3RoZXIgaXNzdWVzLiBJIGFza2VkIG9uZSBv
ZiB0aGUgZ3VjIGRldnMgYW5kIGhlIGFsc28gdGhpbmtzIHRoaXMgCmlzIG5vdCBleHBlY3RlZCBi
ZWhhdmlvci4gQ2FuIHlvdSBkaWcgYSBiaXQgbW9yZT8KClRoYW5rcywKRGFuaWVsZQoKPiBCVFcs
IEkgbWFkZSBhIHR5cG8gaW4gdGhlIHBhdGNoLCBzaG91bGQgYmUgJ2RybS9pOTE1JyBub3QgJzkx
NCcsIEknbGwgZml4IHRoYXQKPiB1cC4KPiAKPiBUaGFua3MsCj4gCj4gZG9uCj4gCj4gCj4+PiBP
biBzb21lIHBsYXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBvcnQgR3VDIHN1Ym1p
c3Npb24sIGJ1dAo+Pj4gdGhlIHVzZXIgZW5hYmxlZCB0aGUgR3VDIGNvbW11bmljYXRpb24gKGUu
ZyBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uKQo+Pj4gY2FsbGluZyB0aGUgR3VDIEVYSVRfU19TVEFU
RSBhY3Rpb24gcmVzdWx0cyBpbiBsb3NlIG9mIGFiaWxpdHkgdG8KPj4+IGVudGVyIFJDNi4gR3Vh
cmQgYWdhaW5zdCB0aGlzIGJ5IG9ubHkgcmVxdWVzdGluZyB0aGUgR3VDIGFjdGlvbiBvbgo+Pj4g
cGxhdGZvcm1zIHRoYXQgc3VwcG9ydCBHdUMgc3VibWlzc2lvbi4KPj4+Cj4+PiBJJ3ZlIHZlcmZp
ZWQgdGhhdCBpbnRlbF9ndWNfcmVzdW1lKCkgb25seSBnZXRzIGNhbGxlZCB3aGVuIGRyaXZlcgo+
Pj4gaXMgbG9hZGVkIHdpdGg6IGd1Y19lbmFibGU9ezEsMiwzfSwgYWxsIG90aGVyIGNhc2VzIChu
byBhcmdzLAo+Pj4gZ3VjX2VuYWJsZT17MCwtMX0gdGhlIGludGVsX2d1Y19yZXN1bWUoKSBpcyBu
b3QgY2FsbGVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGlu
dGVsLmNvbT4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmMgfCA1ICsrKystCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
LmMKPj4+IGluZGV4IDM3ZjdiY2JmN2RhYy4uMzMzMThlZDEzNWMwIDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKPj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCj4+PiBAQCAtNTY1LDcgKzU2NSwxMCBAQCBp
bnQgaW50ZWxfZ3VjX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+PiAgICAJCUdVQ19Q
T1dFUl9EMCwKPj4+ICAgIAl9Owo+Pj4KPj4+IC0JcmV0dXJuIGludGVsX2d1Y19zZW5kKGd1Yywg
YWN0aW9uLCBBUlJBWV9TSVpFKGFjdGlvbikpOwo+Pj4gKwlpZiAoZ3VjLT5zdWJtaXNzaW9uX3N1
cHBvcnRlZCkKPj4+ICsJCXJldHVybiBpbnRlbF9ndWNfc2VuZChndWMsIGFjdGlvbiwgQVJSQVlf
U0laRShhY3Rpb24pKTsKPj4+ICsKPj4+ICsJcmV0dXJuIDA7Cj4+PiAgICB9Cj4+Pgo+Pj4gICAg
LyoqCj4+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
