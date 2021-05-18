Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA14387983
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CCA6EB65;
	Tue, 18 May 2021 13:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01E16EB61;
 Tue, 18 May 2021 13:06:05 +0000 (UTC)
IronPort-SDR: HeJlBocQsFeOxR44ZxnZCa47vjKqPKbT8z6fs7djiEjLqfvyfZoUe8ebekm9U8zat90j6rvJyL
 zRC/RBIC2ZfQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198754014"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="198754014"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:06:05 -0700
IronPort-SDR: J3O8coO30SNUe+MOJEe/x2gRUPB21dxPslGRmw9lBMT7K9AKXtnvqmlaR94rDNIw39259tF9P9
 BNQzn5o5yJMA==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="438657089"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:06:04 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-5-thomas.hellstrom@linux.intel.com>
 <3feacf02-0854-68d4-f26b-88ed0528e9ff@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <00ada105-d0f4-f556-3eba-8503ea73c408@linux.intel.com>
Date: Tue, 18 May 2021 15:06:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <3feacf02-0854-68d4-f26b-88ed0528e9ff@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/ttm: Export functions to
 initialize and finalize the ttm range manager standalone
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgMTo1MSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxOC4wNS4y
MSB1bSAxMDoyNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBpOTE1IG1vY2sgc2VsZnRl
c3RzIGFyZSBydW4gd2l0aG91dCB0aGUgZGV2aWNlIHNldCB1cC4gSW4gb3JkZXIgdG8gYmUgCj4+
IGFibGUKPj4gdG8gcnVuIHRoZSByZWdpb24gcmVsYXRlZCBtb2NrIHNlbGZ0ZXN0cywgZXhwb3J0
IGZ1bmN0aW9ucyBpbiBvcmRlciAKPj4gZm9yIHRoZQo+PiBUVE0gcmFuZ2UgbWFuYWdlciB0byBi
ZSBzZXQgdXAgd2l0aG91dCBhIGRldmljZSB0byBhdHRhY2ggaXQgdG8uCj4KPiBGcm9tIHRoZSBj
b2RlIGl0IGxvb2tzIGdvb2QsIGJ1dCB0byBiZSBob25lc3QgSSBkb24ndCB0aGluayB0aGF0IHRo
aXMgCj4gbWFrZXMgbXVjaCBzZW5zZSBmcm9tIHRoZSBvcmdhbml6YXRpb25hbCBwb2ludCBvZiB2
aWV3Lgo+Cj4gSWYgYSBzZWxmIHRlc3QgZXhlcmNpc2VzIGludGVybmFscyBvZiBUVE0gaXQgc2hv
dWxkIGJlIG1vdmVkIGludG8gVFRNIAo+IGFzIHdlbGwuCgpUaGlzIHBhcnRpY3VsYXIgc2VsZnRl
c3QgYWN0dWFsbHkgZXhlcmNpc2VzIGk5MTUgbWVtb3J5IHJlZ2lvbnMgd2hpY2ggaXMgCmEgbGV2
ZWwgYWJvdmUgVFRNLCBidXQgdGhlIG1lbW9yeSByZWdpb25zIGFyZSBiYWNrZWQgYnkgVFRNLiBT
aW5jZSB0aGV5IAphcmUgbW9jayBzZWxmdGVzdHMgdGhleSBkb24ndCBoYXZlIGEgVFRNIGRldmlj
ZS4gRm9yIHRoZSBidWRkeSBhbGxvY2F0b3IgCnRoZSBzaXR1YXRpb24gd291bGQgYmUgdGhlIHNh
bWUsIGJ1dCB0aGVyZSB3ZSBoYXZlIHNlbGZ0ZXN0cyB0aGF0IApleGVyY2lzZSB0aGUgYWxsb2Nh
dG9yIHN0YW5kYWxvbmUsIGFuZCB0aG9zZSB3b3VsZCBwcm9iYWJseSBmaXQgYmVzdCAKaW50byBh
IFRUTSBzZWxmdGVzdCBpbmZyYXN0cnVjdHVyZS4KCkFsdGhvdWdoIGluIHRoaXMgcGFydGljdWxh
ciBjYXNlLCB3ZSBjb3VsZCBvZiBjb3Vyc2UgYWRkIGEgbW9jayBUVE0gCmRldmljZSBhbmQgYmUg
ZG9uZS4gUGxzIGxldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rLgoKL1Rob21hcwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
