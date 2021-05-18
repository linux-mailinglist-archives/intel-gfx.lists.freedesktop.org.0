Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B01AD38779D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EAB6EB2D;
	Tue, 18 May 2021 11:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7A36E879;
 Tue, 18 May 2021 11:28:47 +0000 (UTC)
IronPort-SDR: NQTcdV5x0L3LwUqLMVuESwvDt2fHLHbxNo/prDRX8sGklMdRyaheokl3PttYtdBZA4XU9aDNvh
 KKEqyIfXDO3A==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="264601559"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264601559"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:28:46 -0700
IronPort-SDR: tYyPA+S3jo7fLIZGlkD9V8ILPanOj6dYH7nUTNyxknQrGPnj8/sGLKZf1lZ9U2+go/Lpsfpo9L
 hpH31QPXuJUQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="466371198"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:28:45 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-2-thomas.hellstrom@linux.intel.com>
 <582d6629-1413-2c7f-d09d-aeef43f5c8c1@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <59976a75-8f7d-c969-77a5-ccd1a32bc1fa@linux.intel.com>
Date: Tue, 18 May 2021 13:28:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <582d6629-1413-2c7f-d09d-aeef43f5c8c1@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 01/15] drm/i915: Untangle the vma
 pages_mutex
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgMToxMiBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gSGV5LAo+Cj4g
VGhpcyBuZWVkcyBhIHNtYWxsIGZpeCwgb3RoZXJ3aXNlIGxvb2tzIGdvb2QuCj4KPiBPcCAxOC0w
NS0yMDIxIG9tIDEwOjI2IHNjaHJlZWYgVGhvbWFzIEhlbGxzdHLDtm06Cj4+IEZyb206IFRob21h
cyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KPj4KPj4gQW55IHNsZWVw
aW5nIGRtYV9yZXN2IGxvY2sgdGFrZW4gd2hpbGUgdGhlIHZtYSBwYWdlc19tdXRleCBpcyBoZWxk
Cj4+IHdpbGwgY2F1c2UgYSBsb2NrZGVwIHNwbGF0Lgo+PiBNb3ZlIHRoZSBpOTE1X2dlbV9vYmpl
Y3RfcGluX3BhZ2VzKCkgY2FsbCBvdXQgb2YgdGhlIHBhZ2VzX211dGV4Cj4+IGNyaXRpY2FsIHNl
Y3Rpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVs
bHN0cm9tQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
bWEuYyB8IDMzICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ZtYS5jCj4+IGluZGV4IGE2Y2QwZmE2Mjg0Ny4uN2IxYzBmNGU2MGQ3IDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPj4gQEAgLTgwMCwzMiArODAwLDM3IEBAIHN0YXRpYyBi
b29sIHRyeV9xYWRfcGluKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBpbnQgZmxhZ3Mp
Cj4+ICAgc3RhdGljIGludCB2bWFfZ2V0X3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+PiAg
IHsKPj4gICAJaW50IGVyciA9IDA7Cj4+ICsJYm9vbCBwaW5uZWRfcGFnZXMgPSBmYWxzZTsKPj4g
ICAKPj4gICAJaWYgKGF0b21pY19hZGRfdW5sZXNzKCZ2bWEtPnBhZ2VzX2NvdW50LCAxLCAwKSkK
Pj4gICAJCXJldHVybiAwOwo+PiAgIAo+PiArCWlmICh2bWEtPm9iaikgewo+PiArCQllcnIgPSBp
OTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKHZtYS0+b2JqKTsKPj4gKwkJaWYgKGVycikKPj4gKwkJ
CXJldHVybiBlcnI7Cj4+ICsJCXBpbm5lZF9wYWdlcyA9IHRydWU7Cj4+ICsJfQo+PiArCj4+ICAg
CS8qIEFsbG9jYXRpb25zIGFob3khICovCj4+IC0JaWYgKG11dGV4X2xvY2tfaW50ZXJydXB0aWJs
ZSgmdm1hLT5wYWdlc19tdXRleCkpCj4+IC0JCXJldHVybiAtRUlOVFI7Cj4+ICsJaWYgKG11dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgmdm1hLT5wYWdlc19tdXRleCkpIHsKPj4gKwkJZXJyID0gLUVJ
TlRSOwo+PiArCQlnb3RvIHVucGluOwo+PiArCX0KPj4gICAKPj4gICAJaWYgKCFhdG9taWNfcmVh
ZCgmdm1hLT5wYWdlc19jb3VudCkpIHsKPj4gLQkJaWYgKHZtYS0+b2JqKSB7Cj4+IC0JCQllcnIg
PSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKHZtYS0+b2JqKTsKPj4gLQkJCWlmIChlcnIpCj4+
IC0JCQkJZ290byB1bmxvY2s7Cj4+IC0JCX0KPj4gLQo+PiAgIAkJZXJyID0gdm1hLT5vcHMtPnNl
dF9wYWdlcyh2bWEpOwo+PiAtCQlpZiAoZXJyKSB7Cj4+IC0JCQlpZiAodm1hLT5vYmopCj4+IC0J
CQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZtYS0+b2JqKTsKPj4gKwkJaWYgKGVycikK
Pj4gICAJCQlnb3RvIHVubG9jazsKPj4gLQkJfQo+PiArCQlwaW5uZWRfcGFnZXMgPSBmYWxzZTsK
Pj4gICAJfQo+PiAgIAlhdG9taWNfaW5jKCZ2bWEtPnBhZ2VzX2NvdW50KTsKPj4gICAKPj4gICB1
bmxvY2s6Cj4+ICAgCW11dGV4X3VubG9jaygmdm1hLT5wYWdlc19tdXRleCk7Cj4+ICt1bnBpbjoK
Pj4gKwlpZiAocGlubmVkX3BhZ2VzKQo+PiArCQlfX2k5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdl
cyh2bWEtPm9iaik7Cj4+ICAgCj4+ICAgCXJldHVybiBlcnI7Cj4+ICAgfQo+PiBAQCAtODM4LDEw
ICs4NDMsMTAgQEAgc3RhdGljIHZvaWQgX192bWFfcHV0X3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAq
dm1hLCB1bnNpZ25lZCBpbnQgY291bnQpCj4+ICAgCWlmIChhdG9taWNfc3ViX3JldHVybihjb3Vu
dCwgJnZtYS0+cGFnZXNfY291bnQpID09IDApIHsKPj4gICAJCXZtYS0+b3BzLT5jbGVhcl9wYWdl
cyh2bWEpOwo+PiAgIAkJR0VNX0JVR19PTih2bWEtPnBhZ2VzKTsKPj4gLQkJaWYgKHZtYS0+b2Jq
KQo+PiAtCQkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZtYS0+b2JqKTsKPj4gICAJfQo+
PiAgIAltdXRleF91bmxvY2soJnZtYS0+cGFnZXNfbXV0ZXgpOwo+PiArCWlmICh2bWEtPm9iaikK
Pj4gKwkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHZtYS0+b2JqKTsKPiBZb3UncmUgdW5j
b25kaXRpb25hbGx5IHVucGlubmluZyBwYWdlcyBoZXJlLCBpZiBwYWdlc19jb3VudCB3YXNuJ3Qg
ZHJvcHBlZCB0byAwLCB3ZSB3aWxsIGdvIG5lZ2F0aXZlLgo+Cj4gV2l0aCB0aGF0IGZpeGVkOgo+
Cj4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CgpBaCB5ZXMsIHRoYW5rcy4gVGhhdCB3YXMgYSBsZWZ0b3ZlciBmcm9tIGFu
IGVhcmxpZXIgdmVyc2lvbi4uLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
