Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084423AE61B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 11:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C8589C82;
	Mon, 21 Jun 2021 09:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8626C89C82;
 Mon, 21 Jun 2021 09:33:09 +0000 (UTC)
IronPort-SDR: sP6JXcqeWDWNDXPNfAMwTAB73LK5H1eIhD4RzVbHCEmqGUQ4yQ7EOfxDym6H68pRcZ5wMAYePY
 r1nGSbRJ0DQQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="193944800"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="193944800"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 02:33:08 -0700
IronPort-SDR: wFrD0tK20fhhWLvwMJt3LZBMY3mkfdM+3b9zce1xOzcZJxuKaackEKYE2CiH8A1ZTrPC+sb9J7
 gG1SmM4jwFAw==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="405907593"
Received: from nelsonho-mobl.ger.corp.intel.com (HELO [10.252.31.53])
 ([10.252.31.53])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 02:33:05 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20210618214503.1773805-1-daniel.vetter@ffwll.ch>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <8678b7b8-ad42-3e14-158e-77994b299c6e@intel.com>
Date: Mon, 21 Jun 2021 10:33:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210618214503.1773805-1-daniel.vetter@ffwll.ch>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/eb: Fix pagefault disabling in the
 first slowpath
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Dave Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTgvMDYvMjAyMSAyMjo0NSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBJbgo+IAo+IGNvbW1p
dCBlYmMwODA4ZmEyZGEwNTQ4YTc4ZTcxNTg1ODAyNGNiODFjZDczMmJjCj4gQXV0aG9yOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBEYXRlOiAgIFR1ZSBPY3QgMTgg
MTM6MDI6NTEgMjAxNiArMDEwMAo+IAo+ICAgICAgZHJtL2k5MTU6IFJlc3RyaWN0IHBhZ2VmYXVs
dCBkaXNhYmxpbmcgdG8ganVzdCBhcm91bmQgY29weV9mcm9tX3VzZXIoKQo+IAo+IHdlIGVudGly
ZWx5IG1pc3NlZCB0aGF0IHRoZXJlJ3MgYSBzbG93IHBhdGggY2FsbCB0byBlYl9yZWxvY2F0ZV9l
bnRyeQo+IChvciBpOTE1X2dlbV9leGVjYnVmZmVyX3JlbG9jYXRlX2VudHJ5IGFzIGl0IHdhcyBj
YWxsZWQgYmFjayB0aGVuKQo+IHdoaWNoIHdhcyBsZWZ0IGZ1bGx5IHdyYXBwZWQgYnkgcGFnZWZh
dWx0X2Rpc2FibGUvZW5hYmxlKCkgY2FsbHMuCj4gUHJldmlvdXNseSBhbnkgaXNzdWVzIHdpdGgg
YmxvY2tpbmcgY2FsbHMgd2hlcmUgaGFuZGxlZCBieSB0aGUKPiBmb2xsb3dpbmcgY29kZToKPiAK
PiAJLyogd2UgY2FuJ3Qgd2FpdCBmb3IgcmVuZGVyaW5nIHdpdGggcGFnZWZhdWx0cyBkaXNhYmxl
ZCAqLwo+IAlpZiAocGFnZWZhdWx0X2Rpc2FibGVkKCkgJiYgIW9iamVjdF9pc19pZGxlKG9iaikp
Cj4gCQlyZXR1cm4gLUVGQVVMVDsKPiAKPiBOb3cgYXQgdGhpcyBwb2ludCB0aGUgcHJlZmF1bHRp
bmcgd2FzIHN0aWxsIGFyb3VuZCwgd2hpY2ggbWVhbnMgaW4KPiBub3JtYWwgYXBwbGljYXRpb25z
IGl0IHdhcyB2ZXJ5IGhhcmQgdG8gaGl0IHRoaXMgYnVnLiBObyBpZGVhIHdoeSB0aGUKPiByZWdy
ZXNzaW9ucyBpbiBpZ3RzIHdlcmVuJ3QgY2F1Z2h0Lgo+IAo+IE5vdyB0aGlzIGFsbCBjaGFuZ2Vk
IGJpZyB0aW1lIHdpdGggMiBwYXRjaGVzIG1lcmdlZCBjbG9zZWx5IHRvZ2V0aGVyLgo+IAo+IEZp
cnN0Cj4gCj4gY29tbWl0IDI4ODljYWE5MjMyMTA5YWZjODg4MWYyOWEyMjA1YWJlYjU3MDlkMGMK
PiBBdXRob3I6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IERhdGU6
ICAgRnJpIEp1biAxNiAxNTowNToxOSAyMDE3ICswMTAwCj4gCj4gICAgICBkcm0vaTkxNTogRWxp
bWluYXRlIGxvdHMgb2YgaXRlcmF0aW9ucyBvdmVyIHRoZSBleGVjb2JqZWN0cyBhcnJheQo+IAo+
IHJlbW92ZXMgdGhlIHByZWZhdWx0aW5nIGZyb20gdGhlIGZpcnN0IHJlbG9jYXRpb24gcGF0aCwg
cHVzaGluZyBpdCBpbnRvCj4gdGhlIGZpcnN0IHNsb3dwYXRoIChvZiB3aGljaCB0aGlzIHBhdGNo
IGFkZGVkIGEgdG90YWwgb2YgMyBlc2NhbGF0aW9uCj4gbGV2ZWxzKS4gVGhpcyB3b3VsZCBoYXZl
IHJlYWxseSBxdWlja2x5IHVuY292ZXJlZCB0aGUgYWJvdmUgYnVnLCB3ZXJlCj4gaXQgbm90IGZv
ciBpbW1lZGlhdGUgYWRkaW5nIGEgZHVjdC10YXBlIG9uIHRvcCB3aXRoCj4gCj4gY29tbWl0IDdk
ZDRmNjcyOWY5MjQzYmQ3MDQ2YzZmMDRjMTA3YTQ1NmJkYTM4ZWIKPiBBdXRob3I6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IERhdGU6ICAgRnJpIEp1biAxNiAxNTow
NToyNCAyMDE3ICswMTAwCj4gCj4gICAgICBkcm0vaTkxNTogQXN5bmMgR1BVIHJlbG9jYXRpb24g
cHJvY2Vzc2luZwo+IAo+IGJ5IHB1c2hpbmcgYWxsIGFsbCB0aGUgcmVsb2NhdGlvbiBwYXRjaGlu
ZyB0byB0aGUgZ3B1IGlmIHRoZSBidWZmZXIKPiB3YXMgYnVzeSwgd2hpY2ggYXZvaWRlZCBhbGwg
dGhlIHBvc3NpYmxlIGJsb2NraW5nIGNhbGxzLgo+IAo+IFRoZSBlbnRpcmUgc2xvd3BhdGggd2Fz
IHRoZW4gZnVydGhlcm1vcmUgZGl0Y2hlZCBpbgo+IAo+IGNvbW1pdCA3ZGM4ZjExNDM3NzhhMzVi
MTkwZjk0MTNmMjI4YjNjZjI4ZjY3ZjhkCj4gQXV0aG9yOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBEYXRlOiAgIFdlZCBNYXIgMTEgMTY6MDM6MTAgMjAyMCArMDAw
MAo+IAo+ICAgICAgICAgIGRybS9pOTE1L2dlbTogRHJvcCByZWxvY2F0aW9uIHNsb3dwYXRoCj4g
Cj4gYW5kIHJlc3VycmVjdGVkIGluCj4gCj4gY29tbWl0IGZkMTUwMGZjZDQ0MjBlZWUwNmUyYzdm
M2FhNjA2N2I3OGFjMDU4NzEKPiBBdXRob3I6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gRGF0ZTogICBXZWQgQXVnIDE5IDE2OjA4OjQzIDIw
MjAgKzAyMDAKPiAKPiAgICAgICAgICBSZXZlcnQgImRybS9pOTE1L2dlbTogRHJvcCByZWxvY2F0
aW9uIHNsb3dwYXRoIi4KPiAKPiBidXQgdGhpcyBkaWQgbm90IGZ1cnRoZXIgaW1wYWN0IHdoYXQn
cyBnb2luZyBvbi4KPiAKPiBTaW5jZSBwYWdlZmF1bHRfZGlzYWJsZS9lbmFibGUgaXMgYW4gYXRv
bWljIHNlY3Rpb24sIGFueSBzbGVlcGluZyBpbgo+IHRoZXJlIGlzIHByb2hpYml0ZWQsIGFuZCB3
ZSBkZWZpbml0ZWx5IGRvIHRoYXQgd2l0aG91dCBncHUgcmVsb2NhdGlvbnMKPiBzaW5jZSB3ZSBo
YXZlIHRvIHdhaXQgZm9yIHRoZSBncHUgdXNhZ2UgdG8gZmluaXNoIGJlZm9yZSB3ZSBjYW4gcGF0
Y2gKPiB1cCB0aGUgcmVsb2NhdGlvbnMuCgpXaHkgZG8gd2UgYWxzbyBuZWVkIHRoZSBfX2NvcHlf
ZnJvbV91c2VyX2luYXRvbWljIGluIGViX3JlbG9jYXRlX3ZtYSgpPwoKUmV2aWV3ZWQtYnk6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KCj4gCj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IEpvbiBCbG9vbWZp
ZWxkIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0
aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
ZmZ3bGwuY2g+Cj4gQ2M6ICJUaG9tYXMgSGVsbHN0csO2bSIgPHRob21hcy5oZWxsc3Ryb21AbGlu
dXguaW50ZWwuY29tPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cj4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
PiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiBDYzogSmFzb24gRWtzdHJh
bmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDIgLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYwo+IGluZGV4IDY1MzliODJkZGE1NC4uN2ZmMmZjM2MwYjJjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gQEAgLTIw
ODIsOSArMjA4Miw3IEBAIHN0YXRpYyBub2lubGluZSBpbnQgZWJfcmVsb2NhdGVfcGFyc2Vfc2xv
dyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPiAgIAo+ICAgCWxpc3RfZm9yX2VhY2hfZW50
cnkoZXYsICZlYi0+cmVsb2NzLCByZWxvY19saW5rKSB7Cj4gICAJCWlmICghaGF2ZV9jb3B5KSB7
Cj4gLQkJCXBhZ2VmYXVsdF9kaXNhYmxlKCk7Cj4gICAJCQllcnIgPSBlYl9yZWxvY2F0ZV92bWEo
ZWIsIGV2KTsKPiAtCQkJcGFnZWZhdWx0X2VuYWJsZSgpOwo+ICAgCQkJaWYgKGVycikKPiAgIAkJ
CQlicmVhazsKPiAgIAkJfSBlbHNlIHsKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
