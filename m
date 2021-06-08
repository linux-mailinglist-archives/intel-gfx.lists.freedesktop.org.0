Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FBA39F2EA
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5866EB94;
	Tue,  8 Jun 2021 09:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017A06EB90;
 Tue,  8 Jun 2021 09:53:18 +0000 (UTC)
IronPort-SDR: 28ZGHvOZQQqqiXlEvIhUhcSOdh3VoQWlwKgVlQzzSCvU273wmSagOu1ZhXswBg4AwI6ix6UJRx
 j1DXPzePtidQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="201792172"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="201792172"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:53:18 -0700
IronPort-SDR: Ynh8ox5Gxes+DfPgXyNZhTpjjOy6Q/Orrw7g+Z7QUIbjcY/x2/LOsPM7Jgujhazz4vcHztA0p9
 spgrJQQRp3Gg==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="447837975"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO [10.249.254.115])
 ([10.249.254.115])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:53:16 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210608084428.142676-1-matthew.auld@intel.com>
 <20210608084428.142676-6-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <8e8a5115-730e-c892-a241-c69a5662b2c7@linux.intel.com>
Date: Tue, 8 Jun 2021 11:53:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210608084428.142676-6-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/ttm: switch over to
 ttm_buddy_man
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvOC8yMSAxMDo0NCBBTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE1vdmUgYmFjayB0byB0
aGUgYnVkZHkgYWxsb2NhdG9yIGZvciBtYW5hZ2luZyBkZXZpY2UgbG9jYWwgbWVtb3J5LCBhbmQK
PiByZXN0b3JlIHRoZSBsb3N0IG1vY2sgc2VsZnRlc3RzLiBLZWVwIGFyb3VuZCB0aGUgcmFuZ2Ug
bWFuYWdlciByZWxhdGVkCj4gYml0cywgc2luY2Ugd2UgbGlrZWx5IG5lZWQgdGhpcyBmb3IgbWFu
YWdpbmcgc3RvbGVuIGF0IHNvbWUgcG9pbnQuIEZvcgo+IHN0b2xlbiB3ZSBhbHNvIGRvbid0IG5l
ZWQgdG8gcmVzZXJ2ZSBhbnl0aGluZyBzbyBubyBuZWVkIHRvIHN1cHBvcnQgYQo+IGdlbmVyaWMg
cmVzZXJ2ZSBpbnRlcmZhY2UuCj4KPiB2MihUaG9tYXMpOgo+ICAgICAgLSBiby0+cGFnZV9hbGln
bm1lbnQgaXMgaW4gcGFnZSB1bml0cywgbm90IGJ5dGVzCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwgIDI2ICstLQo+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICAgIHwgIDU1ICst
LS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgIHwg
IDE3IC0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmMgICAgICAg
fCAxMDAgKysrLS0tLS0tLS0KPiAgIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5
X3JlZ2lvbi5jICB8IDE3MCArKysrKysrKysrKystLS0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9tb2NrX3JlZ2lvbi5jICB8ICAxNSArLQo+ICAgNiBmaWxlcyBjaGFuZ2Vk
LCAxNjggaW5zZXJ0aW9ucygrKSwgMjE1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+IGluZGV4IGM2MTIyNzVjMzZjOS4uNWJmMWQxOTQ1ZGQ2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+IEBAIC0xODEs
MTEgKzE4MSw3IEBAIHN0YXRpYyBib29sIGk5MTVfdHRtX2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4gICAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiA9IGk5MTVfdHRtX3RvX2dlbShibyk7Cj4gICAKPiAgIAkvKiBXaWxsIGRvIGZvciBub3cu
IE91ciBwaW5uZWQgb2JqZWN0cyBhcmUgc3RpbGwgb24gVFRNJ3MgTFJVIGxpc3RzICovCj4gLQlp
ZiAoIWk5MTVfZ2VtX29iamVjdF9ldmljdGFibGUob2JqKSkKPiAtCQlyZXR1cm4gZmFsc2U7Cj4g
LQo+IC0JLyogVGhpcyBpc24ndCB2YWxpZCB3aXRoIGEgYnVkZHkgYWxsb2NhdG9yICovCj4gLQly
ZXR1cm4gdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxlKGJvLCBwbGFjZSk7Cj4gKwlyZXR1cm4gaTkx
NV9nZW1fb2JqZWN0X2V2aWN0YWJsZShvYmopOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCBp
OTE1X3R0bV9ldmljdF9mbGFncyhzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+IEBAIC0z
MjgsMTEgKzMyNCwxNSBAQCBpOTE1X3R0bV9yZXNvdXJjZV9nZXRfc3Qoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKPiAgIAlzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvID0gaTkx
NV9nZW1fdG9fdHRtKG9iaik7Cj4gICAJc3RydWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2VyICptYW4g
PQo+ICAgCQl0dG1fbWFuYWdlcl90eXBlKGJvLT5iZGV2LCByZXMtPm1lbV90eXBlKTsKPiArCXN0
cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptciA9IG9iai0+bW0ucmVnaW9uOwo+ICAgCj4gICAJ
aWYgKG1hbi0+dXNlX3R0KQo+ICAgCQlyZXR1cm4gaTkxNV90dG1fdHRfZ2V0X3N0KGJvLT50dG0p
Owo+ICAgCj4gLQlyZXR1cm4gaW50ZWxfcmVnaW9uX3R0bV9ub2RlX3RvX3N0KG9iai0+bW0ucmVn
aW9uLCByZXMtPm1tX25vZGUpOwo+ICsJaWYgKG1yLT5pc19yYW5nZV9tYW5hZ2VyKQoKRGlkIHlv
dSBsb29rIGF0IG1vdmluZyB0aGlzIHRlc3QgaW50byBpbnRlbF9yZWdpb25fdHRtX25vZGVfdG9f
c3QoKSkKCj4gKwkJcmV0dXJuIGludGVsX3JlZ2lvbl90dG1fbm9kZV90b19zdChtciwgcmVzKTsK
PiArCWVsc2UKPiArCQlyZXR1cm4gaTkxNV9zZ19mcm9tX2J1ZGR5X3Jlc291cmNlKHJlcywgbXIt
PnJlZ2lvbi5zdGFydCk7Cj4gICB9CgpUaGFua3MsCgpUaG9tYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
