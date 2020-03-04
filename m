Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBD7179B2E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 22:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBEBD6E0FE;
	Wed,  4 Mar 2020 21:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4022E6E0FE
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 21:44:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 13:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="287473494"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Mar 2020 13:44:40 -0800
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227235005.18706-1-jose.souza@intel.com>
 <87lfonqive.fsf@intel.com> <aae242f3-3730-f9fd-0adf-85805c9bb0e4@intel.com>
 <87o8tdpz02.fsf@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <463117c6-5b0f-00c9-8c43-abffbafaad1a@intel.com>
Date: Wed, 4 Mar 2020 13:44:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <87o8tdpz02.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.06 for TGL
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

CgpPbiAzLzMvMjAgMToyOSBBTSwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24gRnJpLCAyOCBGZWIg
MjAyMCwgIlNoYXJtYSwgU3dhdGkyIiA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+IHdyb3RlOgo+
PiBPbiAyOC1GZWItMjAgMTI6NDkgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+Pj4gT24gVGh1LCAy
NyBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOgo+Pj4+IE5ldyBmaXJtd2FyZSBjb250YWlucyBtaW5vciBmaXhlcyBhcm91bmQgY29u
dGV4dCByZXN0b3JlLgo+Pj4KPj4+IFBsZWFzZSBnZXQgdGhlIGZpcm13YXJlIGluIGxpbnV4LWZp
cm13YXJlIGFuZCBDSSBmaXJzdDoKPj4+Cj4+PiA8Nz5bICAgIDYuMzI4ODg0XSBpOTE1IDAwMDA6
MDA6MDIuMDogW2RybTppbnRlbF9jc3JfdWNvZGVfaW5pdCBbaTkxNV1dIExvYWRpbmcgaTkxNS90
Z2xfZG1jX3ZlcjJfMDYuYmluCj4+PiA8ND5bICAgIDYuMzMwNjEyXSBpOTE1IDAwMDA6MDA6MDIu
MDogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9yIGk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbiBmYWls
ZWQgd2l0aCBlcnJvciAtMgo+Pj4gPDU+WyAgICA2LjMzMDY0NV0gaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm1dIEZhaWxlZCB0byBsb2FkIERNQyBmaXJtd2FyZSBpOTE1L3RnbF9kbWNfdmVyMl8wNi5i
aW4uIERpc2FibGluZyBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQuCj4+PiA8NT5bICAgIDYuMzMw
NjQ4XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gRE1DIGZpcm13YXJlIGhvbWVwYWdlOiBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9maXJtd2FyZS9saW51
eC1maXJtd2FyZS5naXQvdHJlZS9pOTE1Cj4+Pgo+Pj4gQlIsCj4+PiBKYW5pLgo+Pj4KPj4gVXBk
YXRlIGZyb20gQ0kgdGVhbTogbGludXgtZmlybXdhcmUgdXBkYXRlZCAobWFudWFsbHkpIHdpdGgK
Pj4gaTkxNS90Z2xfZG1jX3ZlcjJfMDYuYmluLiBSZXJ1biBpbml0aWF0ZWQuIE5leHQgcnVuLCB2
Ml8wNiBzaG91bGQgYmUgbG9hZGVkLgo+IAo+IENvbmZpcm1lZCBpbiB0aGUgbG9ncy4KPiAKPiBQ
bGVhc2UgZW5zdXJlIDIuMDYgaXMgaW4gbGludXgtZmlybXdhcmUgdXBzdHJlYW0gYmVmb3JlIHY1
LjYga2VybmVsCj4gcmVsZWFzZS4KPiAKCkkndmUganVzdCBzZW50IHRoZSBQUiB0byBsaW51eC1m
aXJtd2FyZSBzbyBpdCBzaG91bGRuJ3QgYmUgYW4gaXNzdWUgdG8gCmdldCB0aGUgYmluYXJ5IHVw
c3RyZWFtIGluIHRpbWUgZm9yIDUuNiwgYnV0IGlzbid0IHRoaXMgcGF0Y2ggZ29pbmcgdG8gCmhp
dCA1Ljc/CgpEYW5pZWxlCgo+IEJSLAo+IEphbmkuCj4gCj4gCj4gCj4+Pgo+Pj4+Cj4+Pj4gU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3Iu
YyB8IDQgKystLQo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Ny
LmMKPj4+PiBpbmRleCA1NzMyMGMxMjgzOWYuLjMxMTI1NzJjZmI3ZCAxMDA2NDQKPj4+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCj4+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwo+Pj4+IEBAIC00MCw4ICs0MCw4
IEBACj4+Pj4gICAgCj4+Pj4gICAgI2RlZmluZSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkUJCUlDTF9D
U1JfTUFYX0ZXX1NJWkUKPj4+PiAgICAKPj4+PiAtI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkx
NS90Z2xfZG1jX3ZlcjJfMDQuYmluIgo+Pj4+IC0jZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFV
SVJFRAlDU1JfVkVSU0lPTigyLCA0KQo+Pj4+ICsjZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1
L3RnbF9kbWNfdmVyMl8wNi5iaW4iCj4+Pj4gKyNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJ
UkVECUNTUl9WRVJTSU9OKDIsIDYpCj4+Pj4gICAgI2RlZmluZSBUR0xfQ1NSX01BWF9GV19TSVpF
CQkweDYwMDAKPj4+PiAgICBNT0RVTEVfRklSTVdBUkUoVEdMX0NTUl9QQVRIKTsKPj4+Cj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
