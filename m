Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE8730B79E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 07:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE426E8CD;
	Tue,  2 Feb 2021 06:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9D06E8CD
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 06:05:46 +0000 (UTC)
IronPort-SDR: IoeRhuUcjTwaGjo4md7z++62iwL4Iws64SKN1wT5VPyLB+Y5bJct7XPMS5fKI+OsfY04SP7Nmo
 XFIreaX8o5dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="265635565"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="265635565"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 22:05:46 -0800
IronPort-SDR: XqY5eeVW45dRtaztsRNUfp6AJ19ESbeTwcKaySjJZrNyNKZK+Bp0++tDJSHeOs5b1DKTpJVpbI
 3JsTvvYC04gQ==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="391303529"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.121.82])
 ([10.215.121.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 22:05:44 -0800
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <161221033182.18680.6990863242267144359@emeril.freedesktop.org>
 <YBhl02N9b8V3fMmo@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <eddedcd6-0f67-f15d-b941-e58e9150590b@intel.com>
Date: Tue, 2 Feb 2021 11:35:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YBhl02N9b8V3fMmo@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_the_DDI_clock_routing_mess?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIvMi8yMDIxIDI6MDQgQU0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBNb24sIEZl
YiAwMSwgMjAyMSBhdCAwODoxMjoxMVBNIC0wMDAwLCBQYXRjaHdvcmsgd3JvdGU6Cj4+ID09IFNl
cmllcyBEZXRhaWxzID09Cj4+Cj4+IFNlcmllczogZHJtL2k5MTU6IENsZWFuIHVwIHRoZSBEREkg
Y2xvY2sgcm91dGluZyBtZXNzCj4+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy84NjU0NC8KPj4gU3RhdGUgOiBmYWlsdXJlCj4+Cj4+ID09IFN1bW1hcnkg
PT0KPj4KPj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fOTcxMyAtPiBQYXRjaHdv
cmtfMTk1NTYKPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQo+Pgo+PiBTdW1tYXJ5Cj4+IC0tLS0tLS0KPj4KPj4gICAgKipGQUlMVVJFKioKPj4K
Pj4gICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE5NTU2
IGFic29sdXRlbHkgbmVlZCB0byBiZQo+PiAgICB2ZXJpZmllZCBtYW51YWxseS4KPj4gICAgCj4+
ICAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8g
d2l0aCB0aGUgY2hhbmdlcwo+PiAgICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xOTU1NiwgcGxl
YXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KPj4gICAgdG8gZG9jdW1lbnQg
dGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMg
aW4gQ0kuCj4+Cj4+ICAgIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk1NTYvaW5kZXguaHRtbAo+Pgo+PiBQb3NzaWJsZSBu
ZXcgaXNzdWVzCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0KPj4KPj4gICAgSGVyZSBhcmUgdGhlIHVu
a25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTk1NTY6Cj4+Cj4+ICMjIyBJR1QgY2hhbmdlcyAjIyMKPj4KPj4gIyMjIyBQb3NzaWJsZSByZWdy
ZXNzaW9ucyAjIyMjCj4+Cj4+ICAgICogaWd0QGttc19jaGFtZWxpdW1AY29tbW9uLWhwZC1hZnRl
ci1zdXNwZW5kOgo+PiAgICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RN
RVNHLVdBUk5dWzJdCj4+ICAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzk3MTMvZmktaWNsLXUyL2lndEBrbXNfY2hhbWVsaXVtQGNvbW1vbi1o
cGQtYWZ0ZXItc3VzcGVuZC5odG1sCj4+ICAgICBbMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NTU2L2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1l
bGl1bUBjb21tb24taHBkLWFmdGVyLXN1c3BlbmQuaHRtbAo+IDwzPiBbMTUzLjY5MTc3NF0gaTkx
NSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogRmFpbGVkIHRvIHJlYWQgRFBDRCByZWdpc3Rl
ciAweDkyCj4KPiBTZWVtcyB0byBiZQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaW50ZWwvLS9pc3N1ZXMvMjg2OAo+IGV4Y2VwdCBub3QgeWV0IHRyYWNrZWQgZm9yIGljbC4K
Pgo+IFRoYXQgcmVnaXN0ZXIgc2VlbXMgdG8gYmUgcmVsYXRlZCB0byB0aGUgSERNSSAyLjEgUENP
TiBzdHVmZi4KClllcyB5b3UgYXJlIHJpZ2h0LiBJIHNlZW1lZCB0byBoYXZlIG1pc3NlZCBhIGNo
ZWNrIGZvciByZWFkaW5nIHRoaXMgb25seSAKZm9yIERQQ0QgcmV2Pj0xLjQuCgpJJ2xsIGJlIHNl
bmRpbmcgcGF0Y2ggdG8gZml4IHRoaXMgdG8gaW50ZWwtZ2Z4LgoKSSBoYXZlIGFscmVhZHkgc2Vu
dCBhIHBhdGNoIHRvIGludGVsLXRyeWJvdCB0byB2ZXJpZnkgdGhpcy4KCmh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80MTgxMzcvP3Nlcmllcz04NjU1MSZyZXY9MQoKVGhh
bmtzICYgUmVnYXJkcywKCkFua2l0Cgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
