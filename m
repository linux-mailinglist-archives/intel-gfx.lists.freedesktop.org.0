Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E0411766C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 20:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C506E50E;
	Mon,  9 Dec 2019 19:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C71E6E50E
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 19:57:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 11:57:26 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="207018724"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.252.194.64])
 ([10.252.194.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 09 Dec 2019 11:57:26 -0800
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
 <20191205220243.27403-2-daniele.ceraolospurio@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <e1e8d230-e951-7382-4e40-637aad7d648e@Intel.com>
Date: Mon, 9 Dec 2019 11:57:25 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191205220243.27403-2-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/guc: add a helper to
 allocate and map guc vma
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

T24gMTIvNS8yMDE5IDE0OjAyLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IFdlIGFs
cmVhZHkgaGF2ZSBhIGNvdXBsZSBvZiB1c2UtY2FzZXMgaW4gdGhlIGNvZGUgYW5kIGFub3RoZXIg
b25lIHdpbGwKPiBjb21lIGluIG9uZSBvZiB0aGUgbGF0ZXIgcGF0Y2hlcyBpbiB0aGUgc2VyaWVz
Lgo+Cj4gdjI6IHVzZSB0aGUgbmV3IGZ1bmN0aW9uIGZvciB0aGUgQ1Qgb2JqZWN0IGFzIHdlbGwK
Pgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgo+IENjOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwu
Y29tPgo+IENjOiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPiBSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ICN2MQo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgICAgICAgIHwgMzQg
KysrKysrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmggICAgICAgIHwgIDIgKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19hZHMuYyAgICB8IDIxICsrKy0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX2N0LmMgICAgIHwgMjUgKysrLS0tLS0tLS0tLS0KPiAgIC4uLi9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDIyICsrKystLS0tLS0tLQo+
ICAgNSBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCA1MiBkZWxldGlvbnMoLSkKClJl
dmlld2VkLWJ5OiBKb2huIEhhcnJpc29uPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
