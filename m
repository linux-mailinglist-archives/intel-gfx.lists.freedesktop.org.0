Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5CB37B690
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 09:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577C36EB4E;
	Wed, 12 May 2021 07:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A71C6E7D3;
 Wed, 12 May 2021 07:05:46 +0000 (UTC)
IronPort-SDR: 9FAIa9dwUK9Jeiz8SOgAO5mC79TLoktrqBCHpqLskq4z5Eb70bSzeAd14ppNirATYZgQNhYunM
 sQoDY7Mo+b6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="197660382"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="197660382"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 00:05:45 -0700
IronPort-SDR: 2dGJKFtJVTbkkQbcD66oRV+gRO1LQtwIicwDqPGtIKcR5MUeUEeSS3hD7MhuDyPd+FSCNw1p6f
 Kj4m/2lba+cw==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="622183686"
Received: from kjeldbeg-mobl2.ger.corp.intel.com ([10.249.254.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 00:05:44 -0700
Message-ID: <e85e9bd7a28c8570c6429683d6d68ee0855afacb.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Thomas
 =?ISO-8859-1?Q?Hellstr=F6m?= "(Intel)"
 <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 12 May 2021 09:05:42 +0200
In-Reply-To: <a0277869-7244-aee0-3359-21dac8f5a724@amd.com>
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
 <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
 <8551810c-a095-3906-d982-7bc409140c48@amd.com>
 <0b7f32d8-bfb9-84dd-fea7-556dddded1cc@linux.intel.com>
 <a0277869-7244-aee0-3359-21dac8f5a724@amd.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/ttm,
 drm/ttm: Introduce a TTM i915 gem object backend
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA1LTEyIGF0IDA4OjU3ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+IEFtIDExLjA1LjIxIHVtIDE2OjI4IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4gPiAK
PiA+IE9uIDUvMTEvMjEgNDowOSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+ID4gCj4g
PiA+IAo+ID4gPiBBbSAxMS4wNS4yMSB1bSAxNjowNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7Zt
IChJbnRlbCk6Cj4gPiA+ID4gCj4gPiA+ID4gT24gNS8xMS8yMSAzOjU4IFBNLCBDaHJpc3RpYW4g
S8O2bmlnIHdyb3RlOgo+ID4gPiA+ID4gQW0gMTEuMDUuMjEgdW0gMTU6MjUgc2NocmllYiBUaG9t
YXMgSGVsbHN0csO2bToKPiA+ID4gPiA+ID4gTW9zdCBsb2dpY2FsIHBsYWNlIHRvIGludHJvZHVj
ZSBUVE0gYnVmZmVyIG9iamVjdHMgaXMgYXMgYW4KPiA+ID4gPiA+ID4gaTkxNQo+ID4gPiA+ID4g
PiBnZW0gb2JqZWN0IGJhY2tlbmQuIFdlIG5lZWQgdG8gYWRkIHNvbWUgb3BzIHRvIGFjY291bnQg
Zm9yCj4gPiA+ID4gPiA+IGFkZGVkCj4gPiA+ID4gPiA+IGZ1bmN0aW9uYWxpdHkgbGlrZSBkZWxh
eWVkIGRlbGV0ZSBhbmQgTFJVIGxpc3QKPiA+ID4gPiA+ID4gbWFuaXB1bGF0aW9uLgo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gSW5pdGlhbGx5IHdlIHN1cHBvcnQgb25seSBMTUVNIGFuZCBTWVNU
RU0gbWVtb3J5LCBidXQKPiA+ID4gPiA+ID4gU1lTVEVNCj4gPiA+ID4gPiA+ICh3aGljaCBpbiB0
aGlzIGNhc2UgbWVhbnMgZXZpY3RlZCBMTUVNIG9iamVjdHMpIGlzIG5vdAo+ID4gPiA+ID4gPiB2
aXNpYmxlIHRvIGk5MTUgR0VNIHlldC4gVGhlIHBsYW4gaXMgdG8gbW92ZSB0aGUgaTkxNSBnZW0K
PiA+ID4gPiA+ID4gc3lzdGVtIAo+ID4gPiA+ID4gPiByZWdpb24KPiA+ID4gPiA+ID4gb3ZlciB0
byB0aGUgVFRNIHN5c3RlbSBtZW1vcnkgdHlwZSBpbiB1cGNvbWluZyBwYXRjaGVzLgo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gV2Ugc2V0IHVwIEdQVSBiaW5kaW5ncyBkaXJlY3RseSBib3RoIGZy
b20gTE1FTSBhbmQgZnJvbSB0aGUKPiA+ID4gPiA+ID4gc3lzdGVtIAo+ID4gPiA+ID4gPiByZWdp
b24sCj4gPiA+ID4gPiA+IGFzIHRoZXJlIGlzIG5vIG5lZWQgdG8gdXNlIHRoZSBsZWdhY3kgVFRN
X1RUIG1lbW9yeSB0eXBlLgo+ID4gPiA+ID4gPiBXZSByZXNlcnZlCj4gPiA+ID4gPiA+IHRoYXQg
Zm9yIGZ1dHVyZSBwb3J0aW5nIG9mIEdHVFQgYmluZGluZ3MgdG8gVFRNLgo+ID4gPiA+ID4gPiAK
PiA+ID4gPiA+ID4gVGhlcmUgYXJlIHNvbWUgY2hhbmdlcyB0byBUVE0gdG8gYWxsb3cgZm9yIHB1
cmdpbmcgc3lzdGVtCj4gPiA+ID4gPiA+IG1lbW9yeSAKPiA+ID4gPiA+ID4gYnVmZmVyCj4gPiA+
ID4gPiA+IG9iamVjdHMgYW5kIHRvIHJlZnVzZSBzd2FwcGluZyBvZiBzb21lIG9iamVjdHM6Cj4g
PiA+ID4gPiA+IFVuZm9ydHVuYXRlbHkgaTkxNSAKPiA+ID4gPiA+ID4gZ2VtCj4gPiA+ID4gPiA+
IHN0aWxsIHJlbGllcyBoZWF2aWx5IG9uIHNob3J0LXRlcm0gb2JqZWN0IHBpbm5pbmcsIGFuZAo+
ID4gPiA+ID4gPiB3ZSd2ZSAKPiA+ID4gPiA+ID4gY2hvc2VuIHRvCj4gPiA+ID4gPiA+IGtlZXAg
c2hvcnQtdGVybS1waW5uZWQgYnVmZmVyIG9iamVjdHMgb24gdGhlIFRUTSBMUlUgbGlzdHMKPiA+
ID4gPiA+ID4gZm9yIG5vdywKPiA+ID4gPiA+ID4gbWVhbmluZyB0aGF0IHdlIG5lZWQgc29tZSBz
b3J0IG9mIG1lY2hhbmlzbSB0byB0ZWxsIFRUTQo+ID4gPiA+ID4gPiB0aGV5IGFyZSBub3QKPiA+
ID4gPiA+ID4gc3dhcHBhYmxlLiBBIGxvbmdlciB0ZXJtIGdvYWwgaXMgdG8gZ2V0IHJpZCBvZiB0
aGUgc2hvcnQtCj4gPiA+ID4gPiA+IHRlcm0gCj4gPiA+ID4gPiA+IHBpbm5pbmcuCj4gPiA+ID4g
PiAKPiA+ID4gPiA+IFdlbGwganVzdCB1c2UgdGhlIGV2aWN0aW9uX3ZhbHVhYmxlIGludGVyZmFj
ZSBmb3IgdGhpcy4KPiA+ID4gPiAKPiA+ID4gPiBZZXMsIHdlIGRvIHRoYXQgZm9yIHZyYW0vbG1l
bSBldmljdGlvbiwgYnV0IHdlIGhhdmUgbm90aGluZwo+ID4gPiA+IHNpbWlsYXIgCj4gPiA+ID4g
Zm9yIHN5c3RlbSBzd2FwcGluZy4gRG8gSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHkgdGhhdCB5
b3UKPiA+ID4gPiB3YW50IG1lIAo+ID4gPiA+IHRvIGFkZCBhIGNhbGwgdG8gZXZpY3Rpb25fdmFs
dWFibGUoKSBhbHNvIGZvciB0aGF0IGluc3RlYWQgb2YgCj4gPiA+ID4gc3dhcF9wb3NzaWJsZSgp
Pwo+ID4gPiAKPiA+ID4gWW91IHNob3VsZCBhbHJlYWR5IGhhdmUgdGhhdC4gZXZpY3Rpb25fdmFs
dWFibGUgaXMgY2FsbGVkIGluIGJvdGgKPiA+ID4gY2FzZXMuCj4gPiA+IAo+ID4gSG1tLiBJIGNh
biBvbmx5IHNlZSBpdCBjYWxsZWQgZnJvbSB0dG1fbWVtX2V2aWN0X2ZpcnN0KCkgd2hpY2ggaXMK
PiA+IG5vdCAKPiA+IGluIHRoZSBzd2FwcGluZyBwYXRoPyBPciBkbyBJIG1pc3Mgc29tZXRoaW5n
Pwo+IAo+IE1obSwgbG9va3MgbGlrZSBteSByZWNvbGxlY3Rpb24gd2FzIHdyb25nLiBXZSBzaG91
bGQgcHJvYmFibHkgbW92ZQo+IHRoZSAKPiBjYWxsIGludG8gdGhlIHR0bV9ib19ldmljdF9zd2Fw
b3V0X2FsbG93YWJsZSgpIGZ1bmN0aW9uLgoKWWVzLCBJIHRoaW5rIHdlIGFsc28gbmVlZCBhIGNv
bnZlbnRpb24gd2hldGhlciBpdCdzIGNhbGxlZCBkbWFfcmVzdgpsb2NrZWQgb3Igbm90LCBzaW5j
ZSB0aGUgaGVscGVyIGFjY2Vzc2VzIGJvLT5tZW0sIHdoaWNoIHNob3VsZCByZWFsbHkKb25seSBi
ZSBkb25lIHVuZGVyIHJlc2VydmF0aW9uLiBBdCB0aGUgc2FtZSBwb2ludCwgdGhlcmUgaXMgdmFs
dWUgaW4KY2FsbGluZyB0aGlzIGZ1bmN0aW9uIHdoaWxlIGhvbGRpbmcgdGhlIExSVSBsb2NrLgoK
QWxzbywgSSB3b25kZXIgd2hldGhlciBpbXBsZW1lbnRhdGlvbnMgb2YgdGhpcyBjYWxsYmFjayBt
aWdodCBlbmNvdW50ZXIKdW5leHBlY3RlZCBkYXRhIHdoZW4gY2FsbGVkIGZyb20gdGhlIHN3YXBv
dXQgcGF0aCwgYmVjYXVzZSBhdCBsZWFzdCB0aGUKaGVscGVyIGFzc3VtZXMgaXQgbm90IGluIHN5
c3RlbSBtZW1vcnksIHNpbmNlIGl0IGlzIGFjY2Vzc2luZyBiby0KPm1lbS5zdGFydC4gCgpTbyB1
bmxlc3Mgd2UgdXNlIGEgc2VwYXJhdGUgY2FsbGJhY2sgZm9yIHN3YXBvdXQsIHRoZXJlJ3Mgc29t
ZSBhdWRpdGluZwp0byBiZSBkb25lLgoKUGxzIGxldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLgpU
aGFua3MsClRob21hcwoKCgo+IAo+IENocmlzdGlhbi4KPiAKPiA+IAo+ID4gVGhhbmtzLAo+ID4g
Cj4gPiBUaG9tYXMKPiA+IAo+ID4gCj4gPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
