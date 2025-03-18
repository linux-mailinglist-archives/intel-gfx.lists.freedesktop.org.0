Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECB9A66D86
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 09:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC55C10E450;
	Tue, 18 Mar 2025 08:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YpT6PLue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7619510E44D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742285454; x=1773821454;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+LSaWQ+z8m6/iCVZ2JkMFoehL9NVTd/O3vAFsNI6qIA=;
 b=YpT6PLue8wh7jnTjeLYZ2TRddv02WXRx2yhe8yxK8oDxQGMhjJA5yIfV
 OrJHAtMTlx1EauyKCTVYOC9R2pkjMFg1owGh8lDrgI9G/dNvrZ7pObVZd
 B1/7SoLqHXCJhPKrvAY2EYjPaMTvw0WxXCT0B4hrpGMZbdEdXGUTb1j1q
 dGkqafxEPrsz7nLq46jEDQNwOQMqen1P/RRsARLmpQ/ncfiTBNDRncD2g
 jD4+9xw11BsaL9RapJAMlODXB0gsZvjz7DvIMALPVnexxYjRH8d9dBoe5
 WC5mVxU1TD/ZWTv9F/2lPP+2s0sJLlqU+ZZVDLRbk66j8H2Dyon/Qbnoy g==;
X-CSE-ConnectionGUID: 0v7TnNFbQAuD7Juz/ra6rw==
X-CSE-MsgGUID: vhONRjRHTXqSveJCH5FjMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="54403637"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="54403637"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 01:10:43 -0700
X-CSE-ConnectionGUID: hf+EHDSHQK2PGp/QcXC7XA==
X-CSE-MsgGUID: OajVkO8kRuCgSX7T1MMLXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="127026441"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO [10.245.246.143])
 ([10.245.246.143])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 01:10:41 -0700
Message-ID: <9937a6346feccb7ab739aff63a084f63f3ad4382.camel@linux.intel.com>
Subject: Re: [PATCH 11/11] fs: Remove aops->writepage
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Wilcox <willy@infradead.org>, Fan Ni <nifan.cxl@gmail.com>
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
 intel-gfx@lists.freedesktop.org
Date: Tue, 18 Mar 2025 09:10:38 +0100
In-Reply-To: <Z9iibbHs-jHTu7LP@casper.infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-12-willy@infradead.org> <Z9d2JH33sLeCuzfE@fan>
 <Z9eVdplZKs2XVB9J@casper.infradead.org>
 <Z9iibbHs-jHTu7LP@casper.infradead.org>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDI1LTAzLTE3IGF0IDIyOjMwICswMDAwLCBNYXR0aGV3IFdpbGNveCB3cm90ZToK
PiBPbiBNb24sIE1hciAxNywgMjAyNSBhdCAwMzoyMjozMEFNICswMDAwLCBNYXR0aGV3IFdpbGNv
eCB3cm90ZToKPiA+IE9uIFN1biwgTWFyIDE2LCAyMDI1IGF0IDA2OjA4OjUyUE0gLTA3MDAsIEZh
biBOaSB3cm90ZToKPiA+ID4gT24gRnJpLCBNYXIgMDcsIDIwMjUgYXQgMDE6NTQ6MTFQTSArMDAw
MCwgTWF0dGhldyBXaWxjb3ggKE9yYWNsZSkKPiA+ID4gd3JvdGU6Cj4gPiA+ID4gQWxsIGNhbGxl
cnMgYW5kIGltcGxlbWVudGF0aW9ucyBhcmUgbm93IHJlbW92ZWQsIHNvIHJlbW92ZSB0aGUKPiA+
ID4gPiBvcGVyYXRpb24KPiA+ID4gPiBhbmQgdXBkYXRlIHRoZSBkb2N1bWVudGF0aW9uIHRvIG1h
dGNoLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFj
bGUpIDx3aWxseUBpbmZyYWRlYWQub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiAKPiA+ID4gSGkgTWF0
dGhldywKPiA+ID4gCj4gPiA+IFRyaWVkIHRvIGFwcGx5IHRoZSByZW1haW5pbmcgcGF0Y2hlcyBp
biB0aGUgcGF0Y2hlc3QgKFBhdGNoIDUtCj4gPiA+IDExKcKgIHdoaWNoCj4gPiA+IGhhdmUgbm90
IHBpY2tlZCB1cCBieSBsaW51eC1uZXh0LiBJdCBzZWVtcyB3ZSBoYXZlIG1vcmUgdG8KPiA+ID4g
Y2xlYW51cC4KPiA+ID4gCj4gPiA+IEZvciBleGFtcGxlLCBJIGhpdCB0aGUgZm9sbG93aW5nIGlz
c3VlIHdoZW4gdHJ5IHRvIGNvbXBpbGUKPiA+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiBkcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iYWNrdXAuYzogSW4gZnVuY3Rpb24KPiA+ID4g4oCYdHRtX2JhY2t1cF9iYWNr
dXBfcGFnZeKAmToKPiA+ID4gZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYmFja3VwLmM6MTM5OjM5
OiBlcnJvcjog4oCYY29uc3Qgc3RydWN0Cj4gPiA+IGFkZHJlc3Nfc3BhY2Vfb3BlcmF0aW9uc+KA
mSBoYXMgbm8gbWVtYmVyIG5hbWVkIOKAmHdyaXRlcGFnZeKAmTsgZGlkCj4gPiA+IHlvdSBtZWFu
IOKAmHdyaXRlcGFnZXPigJk/Cj4gPiA+IMKgIDEzOSB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0ID0gbWFwcGluZy0+YV9vcHMtCj4gPiA+ID53cml0ZXBhZ2UoZm9saW9fZmls
ZV9wYWdlKHRvX2ZvbGlvLCBpZHgpLCAmd2JjKTsKPiA+IAo+ID4gTG9va3MgbGlrZSB0aGF0IHdh
cyBhZGRlZCB0byBsaW51eC1uZXh0IGFmdGVyIEkgY29tcGxldGVkIHRoZQo+ID4gcmVtb3ZhbCBv
Zgo+ID4gLT53cml0ZXBhZ2UuwqAgVGhvbWFzLCB3aGF0J3MgZ29pbmcgb24gaGVyZT8KPiAKPiBU
aGlzIHBhdGNoIGZpeGVzIHRoZSBjb21waWxhdGlvbiBwcm9ibGVtLsKgIEJ1dCBJIGRvbid0IHVu
ZGVyc3RhbmQgd2h5Cj4gaXQncyBtZXNzaW5nIHdpdGggdGhlIHJlY2xhaW0gZmxhZy7CoCBUaG9t
YXMsIGNhbiB5b3UgZXhwbGFpbj8KCkhpLCBTb3JyeSBmb3Igbm90IHJlc3BvbmRpbmcgZWFybGll
ci4gVGhlIHBhdGNoIHRoYXQgdXNlcyB3cml0ZXBhZ2UoKQpoZXJlIGhhcyBiZWVuIGFyb3VuZCBm
b3IgcXVpdGUgc29tZSB0aW1lIHdhaXRpbmcgZm9yIHJldmlld3MgLyBhY2tzIHNvCkkgZmFpbGVk
IHRvIG5vdGljZSB0aGF0IGl0J3MgZ29pbmcgYXdheS4KCkFueXdheSB0aGUgcmVjbGFpbSBmbGFn
IGNsZWFyaW5nIGZvbGxvd3MgdGhhdCBvZiBwYWdlb3V0KCkgaW4gdm1zY2FuLmMKd2hpY2ggd2Fz
IGFsc28gdGhlIGNhc2UgZm9yIHRoZSBpOTE1X2dlbV9zaG1lbS5jIHVzYWdlIGluCl9fc2htZW1f
d3JpdGViYWNrKCkuIE15IHVuZGVyc3RhbmRpbmcgd2FzIHRoYXQgaWYgdGhlIHdyaXRlYmFjayB3
YXMKYWxyZWFkeSBjb21wbGV0ZWQgYXQgdGhhdCBwb2ludCwgdGhlIHJlY2xhaW0gZmxhZyB3YXMg
bm8gbG9uZ2VyCmRlc2lyYWJsZS4KCkxldCBtZSBrbm93IGlmIHRoaXMgcmVxdWlyZXMgc29tZSBh
Y3Rpb24gb24gbXkgc2lkZS4gVW5mb3J0dW5hdGVseQpmcmVlZGVza3RvcC5vcmcgaXMgZG93biBm
b3IgbWFpbnRhaW5hbmNlLCBwb3NzaWJseSBmb3IgdGhlIHdob2xlIHdlZWssCnNvIHRoZXJlIHdp
bGwgYmUgbm8gZHJtIHN1YnN5c3RlbSBQUnMgdGhpcyB3ZWVrIEFGQUlDVC4KClRoZSBmaXggYmVs
b3cgbG9va3MgZ29vZCB0byBtZSwgQlRXLgoKVGhhbmtzLApUaG9tYXMKCgo+IAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS90dG0vdHRtX2JhY2t1cC5jCj4gQEAgLTEzNiwxMyArMTM2LDEzIEBAIHR0
bV9iYWNrdXBfYmFja3VwX3BhZ2Uoc3RydWN0IHR0bV9iYWNrdXAKPiAqYmFja3VwLCBzdHJ1Y3Qg
cGFnZSAqcGFnZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC5mb3JfcmVjbGFpbSA9IDEsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvbGlvX3NldF9yZWNsYWltKHRvX2Zv
bGlvKTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBtYXBwaW5nLT5hX29w
cy0KPiA+d3JpdGVwYWdlKGZvbGlvX2ZpbGVfcGFnZSh0b19mb2xpbywgaWR4KSwgJndiYyk7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gc2htZW1fd3JpdGVvdXQodG9fZm9s
aW8sICZ3YmMpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWZvbGlvX3Rl
c3Rfd3JpdGViYWNrKHRvX2ZvbGlvKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZvbGlvX2NsZWFyX3JlY2xhaW0odG9fZm9saW8pOwo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKiBJZiB3cml0ZXBhZ2Ugc3VjY2VlZHMsIGl0IHVubG9ja3MgdGhlIGZvbGlvLgo+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB3cml0ZXBhZ2UoKSBlcnJvcnMgYXJlIG90aGVy
d2lzZSBkcm9wcGVkLCBzaW5jZQo+IHdyaXRlcGFnZSgpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIGlzIG9ubHkgYmVzdCBlZmZvcnQgaGVyZS4KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICogSWYgd3JpdGVvdXQgc3VjY2VlZHMsIGl0IHVubG9ja3MgdGhlIGZv
bGlvLsKgCj4gZXJyb3JzCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGFyZSBv
dGhlcndpc2UgZHJvcHBlZCwgc2luY2Ugd3JpdGVvdXQgaXMgb25seSBiZXN0Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGVmZm9ydCBoZXJlLgo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChy
ZXQpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb2xp
b191bmxvY2sodG9fZm9saW8pOwo+IAoK

