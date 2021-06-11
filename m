Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5E83A3B76
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 07:44:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861706E0C9;
	Fri, 11 Jun 2021 05:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C896E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 05:44:46 +0000 (UTC)
IronPort-SDR: GlwUFXM7A1+dMaJGUgyORMDRJ1/91OtINJaUmeTjZPDyYiPa9W7GAa0Q4orGel+/sVQgDQPIYQ
 tjKFp4+zrhiA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="269315285"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="269315285"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 22:44:45 -0700
IronPort-SDR: nE8so0pHNNqtk5Kopf710DAsQCzm4OmDAvcZ1kjNCGE+8w1vr2FWPbDi6oFcaiogdO/Q7E+Z2S
 elky3mipO1Jg==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="486473298"
Received: from skallurr-mobl.ger.corp.intel.com (HELO [10.249.254.170])
 ([10.249.254.170])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 22:44:44 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <c9ea7221-cc54-3394-f664-3f819ecc6d06@linux.intel.com>
 <CAM0jSHMhXFKXzULOdVjQb_wM_oMqWTqvL1e-9jrhOTvPK37iyw@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <f1e4bd6e-618d-12ce-a31c-65ef218acc87@linux.intel.com>
Date: Fri, 11 Jun 2021 07:44:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMhXFKXzULOdVjQb_wM_oMqWTqvL1e-9jrhOTvPK37iyw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] Strange hugepages result?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMTAvMjEgOTo1NyBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IEhpLAo+Cj4gT24gVGh1
LCAxMCBKdW4gMjAyMSBhdCAyMDowMiwgVGhvbWFzIEhlbGxzdHLDtm0KPiA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+PiBIaSwgTWF0dGhldyEKPj4KPj4gSSBnb3Qg
YSBmdW5ueSByZXN1bHQgZnJvbSB0aGUgaHVnZXBhZ2VzIHNlbGZ0ZXN0IHdoZW4gdHJ5aW5nIHRv
IGJyZWFrCj4+IG91dCBzb21lIGZ1bmN0aW9uYWxpdHkgZnJvbSBzaG1lbSB0byBtYWtlIGEgdHRt
IHBhZ2UgcG9vbCBmb3IKPj4gY2FjaGVkLW9ubHkgVFRNIHN5c3RlbSBib3MuCj4+Cj4+IEl0IHR1
cm5zIG91dCB0aGF0IHNobWVtIGNvbXB1dGVkIHRoZSBwYWdlc2l6ZXMgdXNpbmcgdGhlIHVuZGVy
bHlpbmcKPj4gcGFnZXMgcmF0aGVyIHRoYW4gdGhlIGRtYSBzZWdtZW50cywgc28gd2hlbiBJIGNo
YW5nZWQgdGhhdCwgaHVnZXBhZ2VzCj4+IHN0YXJ0ZWQgZmFpbGluZy4KPj4KPj4gaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MTIyNy8KPj4KPj4gQnV0IHdoZW4gaGFj
a2luZyB0aGUgcGFnZS1zaXplIGNvbXB1dGF0aW9uIHRvIHVzZSB0aGUgdW5kZXJseWluZyBwYWdl
cywKPj4gaXQncyBmaW5lIGFnYWluCj4+Cj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvOTEzMzYvCj4+Cj4+IEl0IHNlZW1zIGxpa2Ugc29tZSBhc3N1bXB0aW9uIGFi
b3V0IGh1Z2UgZG1hIHNlZ21lbnRzIGlzIHdyb25nLCBlaXRoZXIKPj4gaW4gb3VyIHBhZ2Utc2l6
ZSBjYWxjdWxhdGlvbiwgaW4gdGhlIHNlbGZ0ZXN0IG9yIGluIHRoZSBhY3R1YWwgaHVnZSBwYWdl
Cj4+IHNldHVwLiBDb3VsZCBpdCBiZSB0aGF0IGh1Z2Ugc2l6ZWQgc2VnbWVudHMgYXJlIGFzc3Vt
ZWQgdG8gYmUgcHJvcGVybHkKPj4gYWxpZ25lZD8KPiBXZSBkaXNhYmxlZCBUSFAgZm9yICRyZWFz
b25zLCBzbyBzaHJpbmtfdGhwIHdpbGwgcHJldHR5IG11Y2ggYWx3YXlzCj4gc2tpcCBJIHRoaW5r
LCB1bmxlc3Mgd2UgaGFwcGVuIHRvIGNvYWxlc2NlIGVub3VnaCBwYWdlcyB0byBtYWtlIGEgMk0K
PiBwYWdlLiBJIGd1ZXNzIHdpdGggeW91ciBjaGFuZ2UgdGhhdCBpcyBzb21laG93IG1vcmUgbGlr
ZWx5IG5vdyB0aGF0IHdlCj4gdXNlIGk5MTVfc2dfZG1hX3NpemVzKCkgYW5kIGNhbGwgaXQgYWZ0
ZXIgd2UgZG8gdGhlIGRtYV9tYXBfc2cuIEkKPiB0aGluayB0aGUgaW50ZWwgaW9tbXUgZHJpdmVy
IGFsc28gZG9lcyBjb2FsZXNjaW5nIG9yIHNvbWV0aGluZy4gVGhlCj4gc2dfcGFnZV9zaXplcyBp
cyBtb3N0bHkganVzdCBhIGhldXJpc3RpYyB0aG91Z2guCj4KPiBUaGUgdGVzdCBmYWlsdXJlIGxv
b2tzIGxpa2UgYSBidWcgaW4gdGhlIHRlc3QgdGhvdWdoLCBJIHRoaW5rIHNpbmNlCj4gdGhlIG9i
amVjdCBtaWdodCBzdGlsbCBiZSBhY3RpdmUoZ3B1X3dyaXRlKSB3ZSBuZWVkIHRvIGFsc28gZm9y
Y2UKPiBTSFJJTktfQUNUSVZFLCBvdGhlcndpc2UgdGhlIHNocmlua2VyIHdpbGwganVzdCBpZ25v
cmUgdGhlIG9iamVjdC4gVGhlCj4gdGVzdCBkaWQgd29yayBhdCBzb21lIHBvaW50IGJ1dCBJIGd1
ZXNzIGhhcyBiZWVuIG1vZGlmaWVkL3JlZmFjdG9yZWQgYQo+IGZldyB0aW1lcy4KCk9rIG1ha2Vz
IHNlbnNlLiBJJ2xsIHNlZSBpZiBJIGNhbiBmaXggdGhlIHRlc3QgdGhlbi4gQW5kIHllcywgdGhl
IApkaWZmZXJlbmNlIGluIGJlaGF2aW9yIGlzIG1vc3QgbGlrZWx5IGR1ZSB0byB0aGUgaW9tbXUg
ZHJpdmVyIGNvYWxlc2NpbmcgCnN0dWZmLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
