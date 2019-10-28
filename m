Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B050E75A9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 16:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDCB6E96C;
	Mon, 28 Oct 2019 15:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60CFC6E96C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 15:57:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:57:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="224672310"
Received: from vslinko-mobl.ccr.corp.intel.com (HELO [10.252.56.7])
 ([10.252.56.7])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2019 08:57:57 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
 <fd02a3b9-6f1a-df2d-06d1-790067ee9fe5@linux.intel.com>
 <20191028150521.GM1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <2ce4bc38-b61a-9701-0d4b-c0b60b79d071@linux.intel.com>
Date: Mon, 28 Oct 2019 16:57:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028150521.GM1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Fix i845/i865 cursor width
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjgtMTAtMjAxOSBvbSAxNjowNSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBNb24s
IE9jdCAyOCwgMjAxOSBhdCAwMzoyMDozNFBNICswMTAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMjgtMTAtMjAxOSBvbSAxMjozMCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4+PiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pj4K
Pj4+IFRoZSBjaGFuZ2UgZnJvbSB0aGUgdWFwaSBjb29yZGluYXRlcyB0byB0aGUgaW50ZXJuYWwg
Y29vcmRpbmF0ZXMKPj4+IGJyb2tlIHRoZSBjdXJzb3Igb24gaTg0NS9pODY1IGR1ZSB0byBzcmMg
YW5kIGRzdCBnZXR0aW5nIHN3YXBwZWQuCj4+PiBGaXggaXQuCj4+Pgo+Pj4gQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+PiBGaXhlczog
M2E2MTI3NjVmNDIzICgiZHJtL2k5MTU6IFJlbW92ZSBjdXJzb3IgdXNlIG9mIHByb3BlcnRpZXMg
Zm9yIGNvb3JkaW5hdGVzIikKPj4+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KPj4+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+Pj4gaW5kZXggMGYwYzU4MmE1NmQ1Li40N2Ez
YWVmMGZiNjEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPj4+IEBAIC0xMDk0Nyw3ICsxMDk0Nyw3IEBAIHN0YXRpYyB2b2lkIGk4NDVf
dXBkYXRlX2N1cnNvcihzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+Pj4gIAl1bnNpZ25lZCBs
b25nIGlycWZsYWdzOwo+Pj4gIAo+Pj4gIAlpZiAocGxhbmVfc3RhdGUgJiYgcGxhbmVfc3RhdGUt
PmJhc2UudmlzaWJsZSkgewo+Pj4gLQkJdW5zaWduZWQgaW50IHdpZHRoID0gZHJtX3JlY3Rfd2lk
dGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYyk7Cj4+PiArCQl1bnNpZ25lZCBpbnQgd2lkdGggPSBk
cm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2UuZHN0KTsKPj4+ICAJCXVuc2lnbmVkIGlu
dCBoZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCk7Cj4+PiAg
Cj4+PiAgCQljbnRsID0gcGxhbmVfc3RhdGUtPmN0bCB8Cj4+IFllYWgsIEkgZ3Vlc3MgdGhlb3Jl
dGljYWxseSBmaXhlcywgc2hvdWxkIGJlIG9rIHJlZ2FyZGxlc3MgYmVjYXVzZSBubyBzY2FsaW5n
IGlzIHN1cHBvcnRlZCBvbiB0aGUgY3Vyc29yIHNvIHJlY3RhbmdsZXMgYXJlIGlkZW50aWNhbC4g
OikKPiBOby4gT25lIGlzIC4xNiBmaXhlZCBwb2ludCBvdGhlciBpcyBpbnRlZ2VyLiBJZS4gdG90
YWxseSBicm9rZW4gYXRtLAo+IGFzIHByb3ZlbiBieSB0aGUgY3Vyc29yIGJlaW5nIHNtZWFyZWQg
b3ZlciB0aGUgd2hvbGUgc2NyZWVuIG9uIG15IGk4NjUuCj4KQWggcmlnaHQsIG1pc3NlZCB0aGF0
LiA6KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
