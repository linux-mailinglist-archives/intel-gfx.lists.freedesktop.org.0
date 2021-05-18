Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B3E387C97
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 17:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7248B6E0D7;
	Tue, 18 May 2021 15:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883466E0D7;
 Tue, 18 May 2021 15:38:56 +0000 (UTC)
IronPort-SDR: QfM9PppkvcSXnBz7+nC6XGFV4+HTva8vpSHfwWgdG4VHlg2631xkEnktj0pzLQn4zP27aGgeK5
 0VRH17V1DtUg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="286275371"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="286275371"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 08:38:56 -0700
IronPort-SDR: 7jNsrBvQ9zeEFfOzDf+YzCpFXh6nJK4QhKD56xKnIIAp7rlwrrEzwYW7eok98mW+yMQpz61x8B
 /5GX/LG+ATkg==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439089609"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 08:38:55 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
 <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
 <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <f5c008cb-5047-7cbf-0361-e4e58e38d6e0@linux.intel.com>
Date: Tue, 18 May 2021 17:38:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 09/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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

Ck9uIDUvMTgvMjEgNToyOCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxOC4wNS4y
MSB1bSAxNzoyMCBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pgo+PiBPbiA1LzE4LzIxIDU6
MTggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pgo+Pj4KPj4+IEFtIDE4LjA1LjIxIHVt
IDE3OjE1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4KPj4+PiBPbiA1LzE4LzIxIDEw
OjI2IEFNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4+Pj4gV2UgYXJlIGNhbGxpbmcgdGhl
IGV2aWN0aW9uX3ZhbHVhYmxlIGRyaXZlciBjYWxsYmFjayBhdCBldmljdGlvbiAKPj4+Pj4gdGlt
ZSB0bwo+Pj4+PiBkZXRlcm1pbmUgd2hldGhlciB3ZSBhY3R1YWxseSBjYW4gZXZpY3QgYSBidWZm
ZXIgb2JqZWN0Lgo+Pj4+PiBUaGUgdXBjb21pbmcgaTkxNSBUVE0gYmFja2VuZCBuZWVkcyB0aGUg
c2FtZSBmdW5jdGlvbmFsaXR5IGZvciAKPj4+Pj4gc3dhcG91dCwKPj4+Pj4gYW5kIHRoYXQgbWln
aHQgYWN0dWFsbHkgYmUgYmVuZWZpY2lhbCB0byBvdGhlciBkcml2ZXJzIGFzIHdlbGwuCj4+Pj4+
Cj4+Pj4+IEFkZCBhbiBldmljdGlvbl92YWx1YWJsZSBjYWxsIGFsc28gaW4gdGhlIHN3YXBvdXQg
cGF0aC4gVHJ5IHRvIAo+Pj4+PiBrZWVwIHRoZQo+Pj4+PiBjdXJyZW50IGJlaGF2aW91ciBmb3Ig
YWxsIGRyaXZlcnMgYnkgcmV0dXJuaW5nIHRydWUgaWYgdGhlIGJ1ZmZlciAKPj4+Pj4gb2JqZWN0
Cj4+Pj4+IGlzIGFscmVhZHkgaW4gdGhlIFRUTV9QTF9TWVNURU0gcGxhY2VtZW50LiBXZSBjaGFu
Z2UgYmVoYXZpb3VyIGZvciAKPj4+Pj4gdGhlCj4+Pj4+IGNhc2Ugd2hlcmUgYSBidWZmZXIgb2Jq
ZWN0IGlzIGluIGEgVFQgYmFja2VkIHBsYWNlbWVudCB3aGVuIAo+Pj4+PiBzd2FwcGVkIG91dCwK
Pj4+Pj4gaW4gd2hpY2ggY2FzZSB0aGUgZHJpdmVycyBub3JtYWwgZXZpY3Rpb25fdmFsdWFibGUg
cGF0aCBpcyBydW4uCj4+Pj4+Cj4+Pj4+IEZpbmFsbHkgZXhwb3J0IHR0bV90dF91bnBvcHVsYXRl
KCkgYW5kIGRvbid0IHN3YXAgb3V0IGJvcwo+Pj4+PiB0aGF0IGFyZSBub3QgcG9wdWxhdGVkLiBU
aGlzIGFsbG93cyBhIGRyaXZlciB0byBwdXJnZSBhIGJvIGF0Cj4+Pj4+IHN3YXBvdXQgdGltZSBp
ZiBpdHMgY29udGVudCBpcyBubyBsb25nZXIgdmFsdWFibGUgcmF0aGVyIHRoYW4gdG8KPj4+Pj4g
aGF2ZSBUVE0gc3dhcCB0aGUgY29udGVudHMgb3V0Lgo+Pj4+Pgo+Pj4+PiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+Pj4K
Pj4+PiBDaHJpc3RpYW4sCj4+Pj4KPj4+PiBIZXJlIHdlIGhhdmUgYSB0dG1fdHRfdW5wb3B1bGF0
ZSgpIGV4cG9ydCBhcyB3ZWxsIGF0IHRoZSBlbmQuIEkgCj4+Pj4gZmlndXJlIHlvdSB3aWxsIHB1
c2ggYmFjayBvbiB0aGF0IG9uZS4gV2hhdCB3ZSByZWFsbHkgbmVlZCBpcyBhIAo+Pj4+IGZ1bmN0
aW9uYWxpdHkgdG8ganVzdCBkcm9wIHRoZSBibyBjb250ZW50cyBhbmQgZW5kIHVwIGluIHN5c3Rl
bSAKPj4+PiBtZW1vcnkgdW5wb3B1bGF0ZWQuIFNob3VsZCBJIHBlcmhhcHMgYWRkIGEgdXRpbGl0
eSBmdW5jdGlvbiB0byBkbyAKPj4+PiB0aGF0IGluc3RlYWQ/IGxpa2UgdHRtX2JvX3B1cmdlKCk/
Cj4+Pgo+Pj4gV2UgYWxyZWFkeSBoYXZlIHRoYXQuIEp1c3QgY2FsbCB0dG1fYm9fdmFsaWRhdGUo
KSB3aXRob3V0IGFueSBwbGFjZSAKPj4+IHRvIHB1dCB0aGUgYnVmZmVyLgo+Pj4KPj4+IFNlZSBo
b3cgdHRtX2JvX3BpcGVsaW5lX2d1dHRpbmcoKSBpcyB1c2VkLgo+Pj4KPj4+IENocmlzdGlhbi4K
Pj4KPj4gT0ssIHNvIGlzIHRoYXQgcmVlbnRyYW50IGZyb20gdGhlIG1vdmUoKSBvciBzd2FwX25v
dGlmeSgpIGNhbGxiYWNrLgo+Cj4gVGhhdCBzb3VuZHMgbGlrZSBhIGRlc2lnbiBidWcgdG8gbWUg
c2luY2UgeW91IHNob3VsZCBuZXZlciBuZWVkIHRvIGRvIAo+IHRoaXMuCj4KPiBXaGVuIHlvdSB3
YW50IHRvIGRlc3Ryb3kgdGhlIGJhY2tpbmcgc3RvcmUgb2YgYSBidWZmZXIgZHVyaW5nIGV2aWN0
aW9uIAo+IHlvdSBzaG91bGQganVzdCBkbyB0aGlzIGJ5IHJldHVybmluZyBhbiBlbXB0eSBwbGFj
ZW1lbnQgZnJvbSB0aGUgCj4gZXZpY3RfZmxhZ3MgY2FsbGJhY2suCgpTbyB0aGlzIGlzIGZvciB0
aGUgZnVuY3Rpb25hbGl0eSB3aGVyZSB0aGUgdXNlciBoYXMgaW5kaWNhdGVkIHRoYXQgdGhlIApj
b250ZW50cyBpcyBubyBsb25nZXIgb2YgdmFsdWUsIGJ1dCB0aGUgYnVmZmVyIGl0c2VsZgppcyBj
YWNoZWQgdW50aWwgZXZpY3RlZCBvciBzd2FwcGVkIG91dCBmb3IgcGVyZm9ybWFuY2UgcmVhc29u
cy4gU28gdGhlIAphYm92ZSB3b3VsZCB3b3JrIGZvciBldmljdGlvbiwgYnV0IHdoYXQgYWJvdXQg
c3dhcG91dC4gQ291bGQgd2UgYWRkIHNvbWUgCnNpbWlsYXIgZnVuY3Rpb25hbGl0eSB0aGVyZT8K
Ci9UaG9tYXMKCj4KPiBSZWdhcmRzLAo+IENocmlzdGlhbi4KPgo+Pgo+PiAvVGhvbWFzCj4+Cj4+
Cj4+Cj4+Pgo+Pj4+Cj4+Pj4gVGhhbmtzLAo+Pj4+Cj4+Pj4gVGhvbWFzCj4+Pj4KPj4+Pgo+Pj4K
PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
