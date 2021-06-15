Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2123A8323
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E955089FBC;
	Tue, 15 Jun 2021 14:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7A589FBC;
 Tue, 15 Jun 2021 14:45:15 +0000 (UTC)
IronPort-SDR: PX4xQA0S/SI/SKryiWODDEszpaKeHnEH2bhkNRwjF4Kn/zaJvCh2b+utvkwHRwIkR+IXV8a6Io
 AC34b8x0HXXA==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="291634863"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="291634863"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 07:45:13 -0700
IronPort-SDR: KhJG8PAt/x2XOA4OLoeTuDEWjZ6cC+zrxgSc0e1YUhdcSiOinRmdILQm0a/wK8rVr3ruqH1UNg
 pla+Vp8u11nQ==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="451989432"
Received: from vlernihx-mobl3.ger.corp.intel.com (HELO [10.252.12.108])
 ([10.252.12.108])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 07:45:12 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
 <20210614162612.294869-8-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <cc1f996f-e8fe-7e74-5bc9-c7d61ebe8322@intel.com>
Date: Tue, 15 Jun 2021 15:45:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210614162612.294869-8-thomas.hellstrom@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v3 07/12] drm/i915/gt: Pipelined page
 migration
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMDYvMjAyMSAxNzoyNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gRnJvbTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gSWYgd2UgcGlwZWxpbmUg
dGhlIFBURSB1cGRhdGVzIGFuZCB0aGVuIGRvIHRoZSBjb3B5IG9mIHRob3NlIHBhZ2VzCj4gd2l0
aGluIGEgc2luZ2xlIHVucHJlZW1wdGlibGUgY29tbWFuZCBwYWNrZXQsIHdlIGNhbiBzdWJtaXQg
dGhlIGNvcGllcwo+IGFuZCBsZWF2ZSB0aGVtIHRvIGJlIHNjaGVkdWxlZCB3aXRob3V0IGhhdmlu
ZyB0byBzeW5jaHJvbm91c2x5IHdhaXQKPiB1bmRlciBhIGdsb2JhbCBsb2NrLiBJbiBvcmRlciB0
byBtYW5hZ2UgbWlncmF0aW9uLCB3ZSBuZWVkIHRvCj4gcHJlYWxsb2NhdGUgdGhlIHBhZ2UgdGFi
bGVzIChhbmQga2VlcCB0aGVtIHBpbm5lZCBhbmQgYXZhaWxhYmxlIGZvciB1c2UKPiBhdCBhbnkg
dGltZSksIGNhdXNpbmcgYSBib3R0bGVuZWNrIGZvciBtaWdyYXRpb25zIGFzIGFsbCBjbGllbnRz
IG11c3QKPiBjb250ZW5kIG9uIHRoZSBsaW1pdGVkIHJlc291cmNlcy4gQnkgaW5saW5pbmcgdGhl
IHBwR1RUIHVwZGF0ZXMgYW5kCj4gcGVyZm9ybWluZyB0aGUgYmxpdCBhdG9taWNhbGx5LCBlYWNo
IGNsaWVudCBvbmx5IG93bnMgdGhlIFBURSB3aGlsZSBpbgo+IHVzZSwgYW5kIHNvIHdlIGNhbiBy
ZXNjaGVkdWxlIGluZGl2aWR1YWwgb3BlcmF0aW9ucyBob3dldmVyIHdlIHNlZSBmaXQuCj4gQW5k
IG1vc3QgaW1wb3J0YW50bHksIHdlIGRvIG5vdCBuZWVkIHRvIHRha2UgYSBnbG9iYWwgbG9jayBv
biB0aGUgc2hhcmVkCj4gdm0sIGFuZCB3YWl0IHVudGlsIHRoZSBvcGVyYXRpb24gaXMgY29tcGxl
dGUgYmVmb3JlIHJlbGVhc2luZyB0aGUgbG9jawo+IGZvciBvdGhlcnMgdG8gY2xhaW0gdGhlIFBU
RSBmb3IgdGhlbXNlbHZlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDby1kZXZlbG9wZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
