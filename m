Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF97739F06D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 10:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08F66EB1C;
	Tue,  8 Jun 2021 08:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074D66EB1A;
 Tue,  8 Jun 2021 08:08:35 +0000 (UTC)
IronPort-SDR: qvNzR9zzPnGtBiSwn64ssfKx+qqpOhVU2vIJ/xjt1Ordrp1ztRHipWJ+kbX376CoVRuvJN7ewk
 sH4uaD6lxsqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204610721"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204610721"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:08:34 -0700
IronPort-SDR: 3Mtm9x3YDeZpZOczo72pCSGz6I4Ib/FM6r5jvla9nmqXv64b87sY9cECG/jGUfiFGN1bS+xszr
 fXeWvg5TyMvQ==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="485125341"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO [10.215.170.251])
 ([10.215.170.251])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 01:08:32 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210607182210.99036-1-matthew.auld@intel.com>
 <20210607182210.99036-5-matthew.auld@intel.com>
 <044baf68ef8e6fe11941fdb43a9ad404f46c6d3a.camel@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <55432d48-fd10-4deb-5cb9-8c3d03089cef@intel.com>
Date: Tue, 8 Jun 2021 09:08:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <044baf68ef8e6fe11941fdb43a9ad404f46c6d3a.camel@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/ttm: pass along the
 I915_BO_ALLOC_CONTIGUOUS
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

T24gMDgvMDYvMjAyMSAwODoyNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gSGksCj4gCj4g
T24gTW9uLCAyMDIxLTA2LTA3IGF0IDE5OjIyICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+
IEN1cnJlbnRseSB3ZSBqdXN0IGlnbm9yZSB0aGUgSTkxNV9CT19BTExPQ19DT05USUdVT1VTIGZs
YWcsIHdoaWNoIGlzCj4+IGZpbmUgc2luY2UgZXZlcnl0aGluZyBpcyBhbHJlYWR5IGNvbnRpZ3Vv
dXMgd2l0aCB0aGUgdHRtIHJhbmdlCj4+IG1hbmFnZXIuCj4+IEhvd2V2ZXIgaW4gdGhlIG5leHQg
cGF0Y2ggd2Ugd2FudCB0byBzd2l0Y2ggb3ZlciB0byB0aGUgdHRtIGJ1ZGR5Cj4+IG1hbmFnZXIs
IHdoZXJlIGFsbG9jYXRpb25zIGFyZSBieSBkZWZhdWx0IG5vdCBjb250aWd1b3VzLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IENj
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+
IC0tLQo+PiAgwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAxNSAr
KysrKysrKysrKystLS0KPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdHRtLmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRt
LmMKPj4gaW5kZXggNzNkNTJkZjhmMmJlLi4wYjBmY2U0NDVlOWIgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPj4gQEAgLTg2LDEwICs4NiwxOCBAQCBpOTE1
X3R0bV9zZWxlY3RfdHRfY2FjaGluZyhjb25zdCBzdHJ1Y3QKPj4gZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQo+PiAgIAo+PiAgwqBzdGF0aWMgdm9pZAo+PiAgwqBpOTE1X3R0bV9wbGFjZV9mcm9t
X3JlZ2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbXIsCj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgdHRtX3Bs
YWNlICpwbGFjZSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGZsYWdzKQo+PiAg
wqB7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgbWVtc2V0KHBsYWNlLCAwLCBzaXplb2YoKnBsYWNlKSk7
Cj4+ICDCoMKgwqDCoMKgwqDCoMKgcGxhY2UtPm1lbV90eXBlID0gaW50ZWxfcmVnaW9uX3RvX3R0
bV90eXBlKG1yKTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqBzd2l0Y2gobXItPnR5cGUpIHsKPj4g
K8KgwqDCoMKgwqDCoMKgY2FzZSBJTlRFTF9NRU1PUllfTE9DQUw6Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGxhY2UtPmZs
YWdzID0gVFRNX1BMX0ZMQUdfQ09OVElHVU9VUzsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGJyZWFrOwo+PiArwqDCoMKgwqDCoMKgwqB9Cj4gCj4gRG8gd2UgbmVlZCB0byByZXN0
cmljdCB0aGlzIHRvIElOVEVMX01FTU9SWV9MT0NBTD8gV2hpbGUgaXQgZG9lc24ndAo+IGN1cnJl
bnRseSBtYWtlIG11Y2ggc2Vuc2UgZm9yIG90aGVyIG1lbW9yeSByZWdpb25zLCBubyBwb2ludCBp
biBub3QKPiBmb3J3YXJkaW5nIGZvciBhbGw/CgpZZWFoLCBkb24ndCBzZWUgd2h5IG5vdC4KCj4g
Cj4gL1Rob21hcwo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
