Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1186A3B777C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 19:58:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80AE689EB1;
	Tue, 29 Jun 2021 17:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AD589EB1;
 Tue, 29 Jun 2021 17:58:18 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id 65so14465058qko.5;
 Tue, 29 Jun 2021 10:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y5W0aUBusSXiJW+VtZWeoI/G+aodBLgIveOLZc0zYUo=;
 b=kDVLjVkQ1mArJMyLrtOtAC3dboLdefFgPr0jJnNMKOL7m8by7von4B0h7LIuLC16sX
 9cgSOuwYToEYxIM7pYgEIjxfsE4P4ZzNLsQhAQ5pAoQQyDEH0fsjQn41KS3bxGBBQDp6
 2cbBV9mZdylTZNADbbKQacUEQITKQAFxMaFGZD/B/sdwRjAOiLZrIugJg2A5zDRRyfan
 sHru34ss7l6GhoR5y7zpZXIRLkV9RvpdOPTmuwV1kzaUMhJZKSgEJVPYi0eT37WHekaZ
 9QQm8HDR1EWL+owjrbeuMdItuTCLsM8ZJz6nB+BAFGJZadAxCmtm/uBeKmGyvGlH2yjB
 Qx3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y5W0aUBusSXiJW+VtZWeoI/G+aodBLgIveOLZc0zYUo=;
 b=VNcmAv8Un+7TQAa3gATIrPksAGQ9rjnqVuNMwXESagwp1SB/Ikvivk0IsLZgKy9UIa
 VPpzC0tIbXeLsgJ0g8rH8neu3NKnDExFl9X6G6wT1LJLgdgTMx3CyXyHjTipBulipoJq
 nVaN8V1/oWFu9ga7HKVyHQVHH63v44k6M+6Cnp4etc/cgpDQsRr58PdpkmKhv21q5se9
 wEp7pat65JzSgwGMrG4fjTgPOE/Pxk9tYikcrzB/ZcyNJaUDX8gZ9TUZZ4B0eGmwz0eV
 mBw1TQpR1BAuNz5i/H7PS5bIShCifamLLDutoqLEAyPbRqUE90v/nq4H6WqdBzN1t2/v
 unCQ==
X-Gm-Message-State: AOAM533nMZJ9QkoDjfk9v34JWmzqdDB0WxxSc1pUm9At+jnbekLxLbOL
 wkMgKO8pwoUN8YtKctj3duWi84w//JBVHUTD9uA=
X-Google-Smtp-Source: ABdhPJwzO9j1vVp0U+ZflrGwGBTvfA+L1ySMRRztnTsYh44G+qwD7wP42v4DUl/Wf5tqm0gTsWcey5KqktbyNEISR9Y=
X-Received: by 2002:a37:4388:: with SMTP id
 q130mr31362378qka.460.1624989497213; 
 Tue, 29 Jun 2021 10:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210629151203.209465-1-thomas.hellstrom@linux.intel.com>
 <20210629151203.209465-2-thomas.hellstrom@linux.intel.com>
 <YNtBHh0l2Ax8rKxp@phenom.ffwll.local>
In-Reply-To: <YNtBHh0l2Ax8rKxp@phenom.ffwll.local>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 29 Jun 2021 18:57:50 +0100
Message-ID: <CAM0jSHOboLZHLELq9n42Xfmmz=M2WgQ8N7vSUccnAfFES6zHUA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH v5 1/3] drm/i915/gem: Implement object
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyOSBKdW4gMjAyMSBhdCAxNjo1MCwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVuIDI5LCAyMDIxIGF0IDA1OjEyOjAxUE0gKzAyMDAs
IFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+ID4gSW50cm9kdWNlIGFuIGludGVyZmFjZSB0byBt
aWdyYXRlIG9iamVjdHMgYmV0d2VlbiByZWdpb25zLgo+ID4gVGhpcyBpcyBwcmltYXJpbHkgaW50
ZW5kZWQgdG8gbWlncmF0ZSBvYmplY3RzIHRvIExNRU0gZm9yIGRpc3BsYXkgYW5kCj4gPiB0byBT
WVNURU0gZm9yIGRtYS1idWYsIGJ1dCBtaWdodCBiZSByZXVzZWQgaW4gb25lIGZvcm0gb3IgYW5v
dGhlciBmb3IKPiA+IHBlcmZvcm1hbmNlLWJhc2VkIG1pZ3JhdGlvbi4KPiA+Cj4gPiB2MjoKPiA+
IC0gVmVyaWZ5IHRoYXQgdGhlIG1lbW9yeSByZWdpb24gZ2l2ZW4gYXMgYW4gaWQgcmVhbGx5IGV4
aXN0cy4KPiA+ICAgKFJlcG9ydGVkIGJ5IE1hdHRoZXcgQXVsZCkKPiA+IC0gQ2FsbCBpOTE1X2dl
bV9vYmplY3Rfe2luaXQscmVsZWFzZX1fbWVtb3J5X3JlZ2lvbigpIHdoZW4gc3dpdGNoaW5nIHJl
Z2lvbgo+ID4gICB0byBoYW5kbGUgYWxzbyBzd2l0Y2hpbmcgcmVnaW9uIGxpc3RzLiAoUmVwb3J0
ZWQgYnkgTWF0dGhldyBBdWxkKQo+ID4gdjM6Cj4gPiAtIEZpeCBpOTE1X2dlbV9vYmplY3RfY2Fu
X21pZ3JhdGUoKSB0byByZXR1cm4gdHJ1ZSBpZiBvYmplY3QgaXMgYWxyZWFkeSBpbgo+ID4gICB0
aGUgY29ycmVjdCByZWdpb24sIGV2ZW4gaWYgdGhlIG9iamVjdCBvcHMgZG9lc24ndCBoYXZlIGEg
bWlncmF0ZSgpCj4gPiAgIGNhbGxiYWNrLgo+ID4gLSBVcGRhdGUgdHlwbyBpbiBjb21taXQgbWVz
c2FnZS4KPiA+IC0gRml4IGtlcm5lbGRvYyBvZiBpOTE1X2dlbV9vYmplY3Rfd2FpdF9taWdyYXRp
b24oKS4KPiA+IHY0Ogo+ID4gLSBJbXByb3ZlIGRvY3VtZW50YXRpb24gKFN1Z2dlc3RlZCBieSBN
YXR0ZXcgQXVsZCBhbmQgTWljaGFlbCBSdWhsKQo+ID4gLSBBbHdheXMgYXNzdW1lIFRUTSBtaWdy
YXRpb24gaGl0cyBhIFRUTSBtb3ZlIGFuZCB1bnNldHMgdGhlIHBhZ2VzIHRocm91Z2gKPiA+ICAg
bW92ZV9ub3RpZnkuIChSZXBvcnRlZCBieSBNYXR0aGV3IEF1bGQpCj4gPiAtIEFkZCBhIGRtYV9m
ZW5jZV9taWdodF93YWl0KCkgYW5ub3RhdGlvbiB0bwo+ID4gICBpOTE1X2dlbV9vYmplY3Rfd2Fp
dF9taWdyYXRpb24oKSAoU3VnZ2VzdGVkIGJ5IERhbmllbCBWZXR0ZXIpCj4gPiB2NToKPiA+IC0g
UmUtYWRkIG1pZ2h0X3NsZWVwKCkgaW5zdGVhZCBvZiBfX2RtYV9mZW5jZV9taWdodF93YWl0KCks
IFNlbnQKPiA+ICAgdjQgd2l0aCB0aGUgd3JvbmcgdmVyc2lvbiwgZGlkbid0IGNvbXBpbGUgYW5k
IF9fZG1hX2ZlbmNlX21pZ2h0X3dhaXQoKQo+ID4gICBpcyBub3QgZXhwb3J0ZWQuCj4gPiAtIEFk
ZGVkIGFuIFItQi4KPgo+IEJ1bW1lciwgSSBtaXNzZWQgdGhhdC4KPgo+IE1hdHQsIHdhbnQgdG8g
Y3JlYXRlIGFuIGV4cG9ydGVkIGRtYV9mZW5jZV9taWdodF93YWl0KCkgd2hpY2ggY29tYmluZXMK
PiBfX2RtYV9mZW5jZV9taWdodF93YWl0KCkgd2l0aCBtaWdodF9zbGVlcCgpPyBBcyBhIGZvbGxv
dy11cCBwYXRjaCBJIHRoaW5rCj4gdGhhdCdkIGJlIG5pY2UsIHdlJ2xsIGhhdmUgYSBidW5jaCBv
ZiBwbGFjZXMgdGhhdCBvZnRlbiBkb24ndCBzbGVlcCwKPiBleGNlcHQgd2hlbiB3ZSBzdGFydCB0
byBoaXQgcmVzb3VyY2UgY29udGVudGlvbiwgc28gdGhpcyBoZWxwZXIgbWlnaHQgYmUKPiB1c2Vm
dWwuCgpTdXJlLCBJJ2xsIHRha2UgYSBsb29rLgoKPiAtRGFuaWVsCj4KPiA+Cj4gPiBSZXBvcnRl
ZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4g
PiBSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhsIDxtaWNoYWVsLmoucnVobEBpbnRlbC5jb20+
Cj4gPiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAg
IHwgMTEyICsrKysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaCAgICB8ICAxMiArKwo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF90eXBlcy5oICB8ICAgOSArKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8ICA3NyArKysrKysrKysrLS0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jICAgICAgfCAgMTkgKysrCj4gPiAgNSBm
aWxlcyBjaGFuZ2VkLCAyMTcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+ID4gaW5kZXggMDdl
OGZmOWE4YWFlLi4yMjViNzdmYjQzMTQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+ID4gQEAgLTUxMyw2ICs1MTMsMTE4IEBAIGJvb2wgaTkx
NV9nZW1fb2JqZWN0X2hhc19pb21lbShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQo+ID4gICAgICAgcmV0dXJuIG9iai0+bWVtX2ZsYWdzICYgSTkxNV9CT19GTEFHX0lPTUVN
Owo+ID4gIH0KPiA+Cj4gPiArLyoqCj4gPiArICogaTkxNV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRl
IC0gV2hldGhlciBhbiBvYmplY3QgbGlrZWx5IGNhbiBiZSBtaWdyYXRlZAo+ID4gKyAqCj4gPiAr
ICogQG9iajogVGhlIG9iamVjdCB0byBtaWdyYXRlCj4gPiArICogQGlkOiBUaGUgcmVnaW9uIGlu
dGVuZGVkIHRvIG1pZ3JhdGUgdG8KPiA+ICsgKgo+ID4gKyAqIENoZWNrIHdoZXRoZXIgdGhlIG9i
amVjdCBiYWNrZW5kIHN1cHBvcnRzIG1pZ3JhdGlvbiB0byB0aGUKPiA+ICsgKiBnaXZlbiByZWdp
b24uIE5vdGUgdGhhdCBwaW5uaW5nIG1heSBhZmZlY3QgdGhlIGFiaWxpdHkgdG8gbWlncmF0ZSBh
cwo+ID4gKyAqIHJldHVybmVkIGJ5IHRoaXMgZnVuY3Rpb24uCj4gPiArICoKPiA+ICsgKiBUaGlz
IGZ1bmN0aW9uIGlzIHByaW1hcmlseSBpbnRlbmRlZCBhcyBhIGhlbHBlciBmb3IgY2hlY2tpbmcg
dGhlCj4gPiArICogcG9zc2liaWxpdHkgdG8gbWlncmF0ZSBvYmplY3RzIGFuZCBtaWdodCBiZSBz
bGlnaHRseSBsZXNzIHBlcm1pc3NpdmUKPiA+ICsgKiB0aGFuIGk5MTVfZ2VtX29iamVjdF9taWdy
YXRlKCkgd2hlbiBpdCBjb21lcyB0byBvYmplY3RzIHdpdGggdGhlCj4gPiArICogSTkxNV9CT19B
TExPQ19VU0VSIGZsYWcgc2V0Lgo+ID4gKyAqCj4gPiArICogUmV0dXJuOiB0cnVlIGlmIG1pZ3Jh
dGlvbiBpcyBwb3NzaWJsZSwgZmFsc2Ugb3RoZXJ3aXNlLgo+ID4gKyAqLwo+ID4gK2Jvb2wgaTkx
NV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBpbnRlbF9yZWdpb25faWQg
aWQpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KG9iai0+YmFzZS5kZXYpOwo+ID4gKyAgICAgdW5zaWduZWQgaW50IG51bV9hbGxvd2VkID0g
b2JqLT5tbS5uX3BsYWNlbWVudHM7Cj4gPiArICAgICBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lv
biAqbXI7Cj4gPiArICAgICB1bnNpZ25lZCBpbnQgaTsKPiA+ICsKPiA+ICsgICAgIEdFTV9CVUdf
T04oaWQgPj0gSU5URUxfUkVHSU9OX1VOS05PV04pOwo+ID4gKyAgICAgR0VNX0JVR19PTihvYmot
Pm1tLm1hZHYgIT0gSTkxNV9NQURWX1dJTExORUVEKTsKPiA+ICsKPiA+ICsgICAgIG1yID0gaTkx
NS0+bW0ucmVnaW9uc1tpZF07Cj4gPiArICAgICBpZiAoIW1yKQo+ID4gKyAgICAgICAgICAgICBy
ZXR1cm4gZmFsc2U7Cj4gPiArCj4gPiArICAgICBpZiAob2JqLT5tbS5yZWdpb24gPT0gbXIpCj4g
PiArICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4gKwo+ID4gKyAgICAgaWYgKCFpOTE1X2dl
bV9vYmplY3RfZXZpY3RhYmxlKG9iaikpCj4gPiArICAgICAgICAgICAgIHJldHVybiBmYWxzZTsK
PiA+ICsKPiA+ICsgICAgIGlmICghb2JqLT5vcHMtPm1pZ3JhdGUpCj4gPiArICAgICAgICAgICAg
IHJldHVybiBmYWxzZTsKPiA+ICsKPiA+ICsgICAgIGlmICghKG9iai0+ZmxhZ3MgJiBJOTE1X0JP
X0FMTE9DX1VTRVIpKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKPiA+ICsKPiA+ICsg
ICAgIGlmIChudW1fYWxsb3dlZCA9PSAwKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gZmFsc2U7
Cj4gPiArCj4gPiArICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX2FsbG93ZWQ7ICsraSkgewo+ID4g
KyAgICAgICAgICAgICBpZiAobXIgPT0gb2JqLT5tbS5wbGFjZW1lbnRzW2ldKQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAg
cmV0dXJuIGZhbHNlOwo+ID4gK30KPiA+ICsKPiA+ICsvKioKPiA+ICsgKiBpOTE1X2dlbV9vYmpl
Y3RfbWlncmF0ZSAtIE1pZ3JhdGUgYW4gb2JqZWN0IHRvIHRoZSBkZXNpcmVkIHJlZ2lvbiBpZAo+
ID4gKyAqIEBvYmo6IFRoZSBvYmplY3QgdG8gbWlncmF0ZS4KPiA+ICsgKiBAd3c6IEFuIG9wdGlv
bmFsIHN0cnVjdCBpOTE1X2dlbV93d19jdHguIElmIE5VTEwsIHRoZSBiYWNrZW5kIG1heQo+ID4g
KyAqIG5vdCBiZSBzdWNjZXNzZnVsIGluIGV2aWN0aW5nIG90aGVyIG9iamVjdHMgdG8gbWFrZSBy
b29tIGZvciB0aGlzIG9iamVjdC4KPiA+ICsgKiBAaWQ6IFRoZSByZWdpb24gaWQgdG8gbWlncmF0
ZSB0by4KPiA+ICsgKgo+ID4gKyAqIEF0dGVtcHQgdG8gbWlncmF0ZSB0aGUgb2JqZWN0IHRvIHRo
ZSBkZXNpcmVkIG1lbW9yeSByZWdpb24uIFRoZQo+ID4gKyAqIG9iamVjdCBiYWNrZW5kIG11c3Qg
c3VwcG9ydCBtaWdyYXRpb24gYW5kIHRoZSBvYmplY3QgbWF5IG5vdCBiZQo+ID4gKyAqIHBpbm5l
ZCwgKGV4cGxpY2l0bHkgcGlubmVkIHBhZ2VzIG9yIHBpbm5lZCB2bWFzKS4gVGhlIG9iamVjdCBt
dXN0Cj4gPiArICogYmUgbG9ja2VkLgo+ID4gKyAqIE9uIHN1Y2Nlc3NmdWwgY29tcGxldGlvbiwg
dGhlIG9iamVjdCB3aWxsIGhhdmUgcGFnZXMgcG9pbnRpbmcgdG8KPiA+ICsgKiBtZW1vcnkgaW4g
dGhlIG5ldyByZWdpb24sIGJ1dCBhbiBhc3luYyBtaWdyYXRpb24gdGFzayBtYXkgbm90IGhhdmUK
PiA+ICsgKiBjb21wbGV0ZWQgeWV0LCBhbmQgdG8gYWNjb21wbGlzaCB0aGF0LCBpOTE1X2dlbV9v
YmplY3Rfd2FpdF9taWdyYXRpb24oKQo+ID4gKyAqIG11c3QgYmUgY2FsbGVkLgo+ID4gKyAqCj4g
PiArICogVGhpcyBmdW5jdGlvbiBpcyBhIGJpdCBtb3JlIHBlcm1pc3NpdmUgdGhhbiBpOTE1X2dl
bV9vYmplY3RfY2FuX21pZ3JhdGUoKQo+ID4gKyAqIHRvIGFsbG93IGZvciBtaWdyYXRpbmcgb2Jq
ZWN0cyB3aGVyZSB0aGUgY2FsbGVyIGtub3dzIGV4YWN0bHkgd2hhdCBpcwo+ID4gKyAqIGhhcHBl
bmluZy4gRm9yIGV4YW1wbGUgd2l0aGluIHNlbGZ0ZXN0cy4gTW9yZSBzcGVjaWZpY2FsbHkgdGhp
cwo+ID4gKyAqIGZ1bmN0aW9uIGFsbG93cyBtaWdyYXRpbmcgSTkxNV9CT19BTExPQ19VU0VSIG9i
amVjdHMgdG8gcmVnaW9ucwo+ID4gKyAqIHRoYXQgYXJlIG5vdCBpbiB0aGUgbGlzdCBvZiBhbGxv
d2FibGUgcmVnaW9ucy4KPiA+ICsgKgo+ID4gKyAqIE5vdGU6IHRoZSBAd3cgcGFyYW1ldGVyIGlz
IG5vdCB1c2VkIHlldCwgYnV0IGluY2x1ZGVkIHRvIG1ha2Ugc3VyZQo+ID4gKyAqIGNhbGxlcnMg
cHV0IHNvbWUgZWZmb3J0IGludG8gb2J0YWluaW5nIGEgdmFsaWQgd3cgY3R4IGlmIG9uZSBpcwo+
ID4gKyAqIGF2YWlsYWJsZS4KPiA+ICsgKgo+ID4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLiBO
ZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuIEluIHBhcnRpY3VsYXIgbWF5Cj4gPiArICog
cmV0dXJuIC1FTlhJTyBvbiBsYWNrIG9mIHJlZ2lvbiBzcGFjZSwgLUVERUFETEsgZm9yIGRlYWRs
b2NrIGF2b2lkYW5jZQo+ID4gKyAqIGlmIEB3dyBpcyBzZXQsIC1FSU5UUiBvciAtRVJFU1RBUlRT
WVMgaWYgc2lnbmFsIHBlbmRpbmcsIGFuZAo+ID4gKyAqIC1FQlVTWSBpZiB0aGUgb2JqZWN0IGlz
IHBpbm5lZC4KPiA+ICsgKi8KPiA+ICtpbnQgaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3csCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
IGVudW0gaW50ZWxfcmVnaW9uX2lkIGlkKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKPiA+ICsgICAgIHN0cnVj
dCBpbnRlbF9tZW1vcnlfcmVnaW9uICptcjsKPiA+ICsKPiA+ICsgICAgIEdFTV9CVUdfT04oaWQg
Pj0gSU5URUxfUkVHSU9OX1VOS05PV04pOwo+ID4gKyAgICAgR0VNX0JVR19PTihvYmotPm1tLm1h
ZHYgIT0gSTkxNV9NQURWX1dJTExORUVEKTsKPiA+ICsgICAgIGFzc2VydF9vYmplY3RfaGVsZChv
YmopOwo+ID4gKwo+ID4gKyAgICAgbXIgPSBpOTE1LT5tbS5yZWdpb25zW2lkXTsKPiA+ICsgICAg
IEdFTV9CVUdfT04oIW1yKTsKPiA+ICsKPiA+ICsgICAgIGlmIChvYmotPm1tLnJlZ2lvbiA9PSBt
cikKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiArCj4gPiArICAgICBpZiAoIWk5MTVf
Z2VtX29iamVjdF9ldmljdGFibGUob2JqKSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FQlVT
WTsKPiA+ICsKPiA+ICsgICAgIGlmICghb2JqLT5vcHMtPm1pZ3JhdGUpCj4gPiArICAgICAgICAg
ICAgIHJldHVybiAtRU9QTk9UU1VQUDsKPiA+ICsKPiA+ICsgICAgIHJldHVybiBvYmotPm9wcy0+
bWlncmF0ZShvYmosIG1yKTsKPiA+ICt9Cj4gPiArCj4gPiAgdm9pZCBpOTE1X2dlbV9pbml0X19v
YmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ID4gIHsKPiA+ICAgICAgIElO
SVRfV09SSygmaTkxNS0+bW0uZnJlZV93b3JrLCBfX2k5MTVfZ2VtX2ZyZWVfd29yayk7Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4gPiBpbmRleCBlYTMy
MjRhNDgwYzQuLjhjYmQ3YTUzMzRlMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5oCj4gPiBAQCAtMTcsNiArMTcsOCBAQAo+ID4gICNpbmNsdWRl
ICJpOTE1X2dlbV93dy5oIgo+ID4gICNpbmNsdWRlICJpOTE1X3ZtYV90eXBlcy5oIgo+ID4KPiA+
ICtlbnVtIGludGVsX3JlZ2lvbl9pZDsKPiA+ICsKPiA+ICAvKgo+ID4gICAqIFhYWDogVGhlcmUg
aXMgYSBwcmV2YWxlbmNlIG9mIHRoZSBhc3N1bXB0aW9uIHRoYXQgd2UgZml0IHRoZQo+ID4gICAq
IG9iamVjdCdzIHBhZ2UgY291bnQgaW5zaWRlIGEgMzJiaXQgX3NpZ25lZF8gdmFyaWFibGUuIExl
dCdzIGRvY3VtZW50Cj4gPiBAQCAtNTk3LDYgKzU5OSwxNiBAQCBib29sIGk5MTVfZ2VtX29iamVj
dF9taWdyYXRhYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwo+ID4KPiA+ICBi
b29sIGk5MTVfZ2VtX29iamVjdF92YWxpZGF0ZXNfdG9fbG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKTsKPiA+Cj4gPiAraW50IGk5MTVfZ2VtX29iamVjdF9taWdyYXRlKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICBlbnVtIGludGVsX3JlZ2lvbl9pZCBpZCk7Cj4gPiArCj4gPiArYm9vbCBpOTE1X2dlbV9vYmpl
Y3RfY2FuX21pZ3JhdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGludGVsX3JlZ2lvbl9pZCBpZCk7Cj4gPiAr
Cj4gPiAraW50IGk5MTVfZ2VtX29iamVjdF93YWl0X21pZ3JhdGlvbihzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5z
aWduZWQgaW50IGZsYWdzKTsKPiA+ICsKPiA+ICAjaWZkZWYgQ09ORklHX01NVV9OT1RJRklFUgo+
ID4gIHN0YXRpYyBpbmxpbmUgYm9vbAo+ID4gIGk5MTVfZ2VtX29iamVjdF9pc191c2VycHRyKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCj4gPiBpbmRleCA0NDFmOTEzYzg3ZTYu
LmVmM2RlMmFlOTcyMyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCj4gPiBAQCAtMTgsNiArMTgsNyBAQAo+ID4KPiA+ICBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsKPiA+ICBzdHJ1Y3QgaW50ZWxfZnJvbmJ1ZmZlcjsK
PiA+ICtzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbjsKPiA+Cj4gPiAgLyoKPiA+ICAgKiBzdHJ1
Y3QgaTkxNV9sdXRfaGFuZGxlIHRyYWNrcyB0aGUgZmFzdCBsb29rdXBzIGZyb20gaGFuZGxlIHRv
IHZtYSB1c2VkCj4gPiBAQCAtNzcsNiArNzgsMTQgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3Rfb3BzIHsKPiA+ICAgICAgICAqIGRlbGF5ZWRfZnJlZSAtIE92ZXJyaWRlIHRoZSBkZWZhdWx0
IGRlbGF5ZWQgZnJlZSBpbXBsZW1lbnRhdGlvbgo+ID4gICAgICAgICovCj4gPiAgICAgICB2b2lk
ICgqZGVsYXllZF9mcmVlKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKPiA+ICsK
PiA+ICsgICAgIC8qKgo+ID4gKyAgICAgICogbWlncmF0ZSAtIE1pZ3JhdGUgb2JqZWN0IHRvIGEg
ZGlmZmVyZW50IHJlZ2lvbiBlaXRoZXIgZm9yCj4gPiArICAgICAgKiBwaW5uaW5nIG9yIGZvciBh
cyBsb25nIGFzIHRoZSBvYmplY3QgbG9jayBpcyBoZWxkLgo+ID4gKyAgICAgICovCj4gPiArICAg
ICBpbnQgKCptaWdyYXRlKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yKTsKPiA+ICsK
PiA+ICAgICAgIHZvaWQgKCpyZWxlYXNlKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KTsKPiA+Cj4gPiAgICAgICBjb25zdCBzdHJ1Y3Qgdm1fb3BlcmF0aW9uc19zdHJ1Y3QgKm1tYXBf
b3BzOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90
dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+ID4gaW5kZXgg
YzM5ZDk4MmM0ZmE2Li41MjFhYjc0MDAwMWEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYwo+ID4gQEAgLTYxNyw3ICs2MTcsOCBAQCBzdHJ1Y3QgdHRtX2Rl
dmljZV9mdW5jcyAqaTkxNV90dG1fZHJpdmVyKHZvaWQpCj4gPiAgICAgICByZXR1cm4gJmk5MTVf
dHRtX2JvX2RyaXZlcjsKPiA+ICB9Cj4gPgo+ID4gLXN0YXRpYyBpbnQgaTkxNV90dG1fZ2V0X3Bh
Z2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gPiArc3RhdGljIGludCBfX2k5
MTVfdHRtX2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHR0bV9wbGFjZW1lbnQgKnBsYWNlbWVu
dCkKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvID0gaTkxNV9n
ZW1fdG9fdHRtKG9iaik7Cj4gPiAgICAgICBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggY3R4ID0g
ewo+ID4gQEAgLTYyNSwxOSArNjI2LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV90dG1fZ2V0X3BhZ2Vz
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gPiAgICAgICAgICAgICAgIC5ub193
YWl0X2dwdSA9IGZhbHNlLAo+ID4gICAgICAgfTsKPiA+ICAgICAgIHN0cnVjdCBzZ190YWJsZSAq
c3Q7Cj4gPiAtICAgICBzdHJ1Y3QgdHRtX3BsYWNlIHJlcXVlc3RlZCwgYnVzeVtJOTE1X1RUTV9N
QVhfUExBQ0VNRU5UU107Cj4gPiAtICAgICBzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1lbnQ7
Cj4gPiAgICAgICBpbnQgcmVhbF9udW1fYnVzeTsKPiA+ICAgICAgIGludCByZXQ7Cj4gPgo+ID4g
LSAgICAgR0VNX0JVR19PTihvYmotPm1tLm5fcGxhY2VtZW50cyA+IEk5MTVfVFRNX01BWF9QTEFD
RU1FTlRTKTsKPiA+IC0KPiA+IC0gICAgIC8qIE1vdmUgdG8gdGhlIHJlcXVlc3RlZCBwbGFjZW1l
bnQuICovCj4gPiAtICAgICBpOTE1X3R0bV9wbGFjZW1lbnRfZnJvbV9vYmoob2JqLCAmcmVxdWVz
dGVkLCBidXN5LCAmcGxhY2VtZW50KTsKPiA+IC0KPiA+ICAgICAgIC8qIEZpcnN0IHRyeSBvbmx5
IHRoZSByZXF1ZXN0ZWQgcGxhY2VtZW50LiBObyBldmljdGlvbi4gKi8KPiA+IC0gICAgIHJlYWxf
bnVtX2J1c3kgPSBmZXRjaF9hbmRfemVybygmcGxhY2VtZW50Lm51bV9idXN5X3BsYWNlbWVudCk7
Cj4gPiAtICAgICByZXQgPSB0dG1fYm9fdmFsaWRhdGUoYm8sICZwbGFjZW1lbnQsICZjdHgpOwo+
ID4gKyAgICAgcmVhbF9udW1fYnVzeSA9IGZldGNoX2FuZF96ZXJvKCZwbGFjZW1lbnQtPm51bV9i
dXN5X3BsYWNlbWVudCk7Cj4gPiArICAgICByZXQgPSB0dG1fYm9fdmFsaWRhdGUoYm8sIHBsYWNl
bWVudCwgJmN0eCk7Cj4gPiAgICAgICBpZiAocmV0KSB7Cj4gPiAgICAgICAgICAgICAgIHJldCA9
IGk5MTVfdHRtX2Vycl90b19nZW0ocmV0KTsKPiA+ICAgICAgICAgICAgICAgLyoKPiA+IEBAIC02
NTIsOCArNjQ2LDggQEAgc3RhdGljIGludCBpOTE1X3R0bV9nZXRfcGFnZXMoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaikKPiA+ICAgICAgICAgICAgICAgICogSWYgdGhlIGluaXRpYWwg
YXR0ZW1wdCBmYWlscywgYWxsb3cgYWxsIGFjY2VwdGVkIHBsYWNlbWVudHMsCj4gPiAgICAgICAg
ICAgICAgICAqIGV2aWN0aW5nIGlmIG5lY2Vzc2FyeS4KPiA+ICAgICAgICAgICAgICAgICovCj4g
PiAtICAgICAgICAgICAgIHBsYWNlbWVudC5udW1fYnVzeV9wbGFjZW1lbnQgPSByZWFsX251bV9i
dXN5Owo+ID4gLSAgICAgICAgICAgICByZXQgPSB0dG1fYm9fdmFsaWRhdGUoYm8sICZwbGFjZW1l
bnQsICZjdHgpOwo+ID4gKyAgICAgICAgICAgICBwbGFjZW1lbnQtPm51bV9idXN5X3BsYWNlbWVu
dCA9IHJlYWxfbnVtX2J1c3k7Cj4gPiArICAgICAgICAgICAgIHJldCA9IHR0bV9ib192YWxpZGF0
ZShibywgcGxhY2VtZW50LCAmY3R4KTsKPiA+ICAgICAgICAgICAgICAgaWYgKHJldCkKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gaTkxNV90dG1fZXJyX3RvX2dlbShyZXQpOwo+ID4g
ICAgICAgfQo+ID4gQEAgLTY2OCw2ICs2NjIsNyBAQCBzdGF0aWMgaW50IGk5MTVfdHRtX2dldF9w
YWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ID4gICAgICAgICAgICAgICBp
OTE1X3R0bV9hZGp1c3RfZ2VtX2FmdGVyX21vdmUob2JqKTsKPiA+ICAgICAgIH0KPiA+Cj4gPiAr
ICAgICBHRU1fV0FSTl9PTihvYmotPm1tLnBhZ2VzKTsKPiA+ICAgICAgIC8qIE9iamVjdCBlaXRo
ZXIgaGFzIGEgcGFnZSB2ZWN0b3Igb3IgaXMgYW4gaW9tZW0gb2JqZWN0ICovCj4gPiAgICAgICBz
dCA9IGJvLT50dG0gPyBpOTE1X3R0bV90dF9nZXRfc3QoYm8tPnR0bSkgOiBvYmotPnR0bS5jYWNo
ZWRfaW9fc3Q7Cj4gPiAgICAgICBpZiAoSVNfRVJSKHN0KSkKPiA+IEBAIC02NzgsNiArNjczLDYz
IEBAIHN0YXRpYyBpbnQgaTkxNV90dG1fZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCj4gPiAgICAgICByZXR1cm4gcmV0Owo+ID4gIH0KPiA+Cj4gPiArc3RhdGljIGlu
dCBpOTE1X3R0bV9nZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiA+
ICt7Cj4gPiArICAgICBzdHJ1Y3QgdHRtX3BsYWNlIHJlcXVlc3RlZCwgYnVzeVtJOTE1X1RUTV9N
QVhfUExBQ0VNRU5UU107Cj4gPiArICAgICBzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1lbnQ7
Cj4gPiArCj4gPiArICAgICBHRU1fQlVHX09OKG9iai0+bW0ubl9wbGFjZW1lbnRzID4gSTkxNV9U
VE1fTUFYX1BMQUNFTUVOVFMpOwo+ID4gKwo+ID4gKyAgICAgLyogTW92ZSB0byB0aGUgcmVxdWVz
dGVkIHBsYWNlbWVudC4gKi8KPiA+ICsgICAgIGk5MTVfdHRtX3BsYWNlbWVudF9mcm9tX29iaihv
YmosICZyZXF1ZXN0ZWQsIGJ1c3ksICZwbGFjZW1lbnQpOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJu
IF9faTkxNV90dG1fZ2V0X3BhZ2VzKG9iaiwgJnBsYWNlbWVudCk7Cj4gPiArfQo+ID4gKwo+ID4g
Ky8qKgo+ID4gKyAqIERPQzogTWlncmF0aW9uIHZzIGV2aWN0aW9uCj4gPiArICoKPiA+ICsgKiBH
RU0gbWlncmF0aW9uIG1heSBub3QgYmUgdGhlIHNhbWUgYXMgVFRNIG1pZ3JhdGlvbiAvIGV2aWN0
aW9uLiBJZgo+ID4gKyAqIHRoZSBUVE0gY29yZSBkZWNpZGVzIHRvIGV2aWN0IGFuIG9iamVjdCBp
dCBtYXkgYmUgZXZpY3RlZCB0byBhCj4gPiArICogVFRNIG1lbW9yeSB0eXBlIHRoYXQgaXMgbm90
IGluIHRoZSBvYmplY3QncyBhbGxvd2FibGUgR0VNIHJlZ2lvbnMsIG9yCj4gPiArICogaW4gZmFj
dCB0aGVvcmV0aWNhbGx5IHRvIGEgVFRNIG1lbW9yeSB0eXBlIHRoYXQgZG9lc24ndCBjb3JyZXNw
b25kIHRvCj4gPiArICogYSBHRU0gbWVtb3J5IHJlZ2lvbi4gSW4gdGhhdCBjYXNlIHRoZSBvYmpl
Y3QncyBHRU0gcmVnaW9uIGlzIG5vdAo+ID4gKyAqIHVwZGF0ZWQsIGFuZCB0aGUgZGF0YSBpcyBt
aWdyYXRlZCBiYWNrIHRvIHRoZSBHRU0gcmVnaW9uIGF0Cj4gPiArICogZ2V0X3BhZ2VzIHRpbWUu
IFRUTSBtYXkgaG93ZXZlciBzZXQgdXAgQ1BVIHB0ZXMgdG8gdGhlIG9iamVjdCBldmVuCj4gPiAr
ICogd2hlbiBpdCBpcyBldmljdGVkLgo+ID4gKyAqIEdlbSBmb3JjZWQgbWlncmF0aW9uIHVzaW5n
IHRoZSBpOTE1X3R0bV9taWdyYXRlKCkgb3AsIGlzIGFsbG93ZWQgZXZlbgo+ID4gKyAqIHRvIHJl
Z2lvbnMgdGhhdCBhcmUgbm90IGluIHRoZSBvYmplY3QncyBsaXN0IG9mIGFsbG93YWJsZSBwbGFj
ZW1lbnRzLgo+ID4gKyAqLwo+ID4gK3N0YXRpYyBpbnQgaTkxNV90dG1fbWlncmF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbXIpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IHR0
bV9wbGFjZSByZXF1ZXN0ZWQ7Cj4gPiArICAgICBzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1l
bnQ7Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgaTkxNV90dG1fcGxhY2VfZnJv
bV9yZWdpb24obXIsICZyZXF1ZXN0ZWQsIG9iai0+ZmxhZ3MpOwo+ID4gKyAgICAgcGxhY2VtZW50
Lm51bV9wbGFjZW1lbnQgPSAxOwo+ID4gKyAgICAgcGxhY2VtZW50Lm51bV9idXN5X3BsYWNlbWVu
dCA9IDE7Cj4gPiArICAgICBwbGFjZW1lbnQucGxhY2VtZW50ID0gJnJlcXVlc3RlZDsKPiA+ICsg
ICAgIHBsYWNlbWVudC5idXN5X3BsYWNlbWVudCA9ICZyZXF1ZXN0ZWQ7Cj4gPiArCj4gPiArICAg
ICByZXQgPSBfX2k5MTVfdHRtX2dldF9wYWdlcyhvYmosICZwbGFjZW1lbnQpOwo+ID4gKyAgICAg
aWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsgICAgIC8q
Cj4gPiArICAgICAgKiBSZWluaXRpYWxpemUgdGhlIHJlZ2lvbiBiaW5kaW5ncy4gVGhpcyBpcyBw
cmltYXJpbHkKPiA+ICsgICAgICAqIHJlcXVpcmVkIGZvciBvYmplY3RzIHdoZXJlIHRoZSBuZXcg
cmVnaW9uIGlzIG5vdCBpbgo+ID4gKyAgICAgICogaXRzIGFsbG93YWJsZSBwbGFjZW1lbnRzLgo+
ID4gKyAgICAgICovCj4gPiArICAgICBpZiAob2JqLT5tbS5yZWdpb24gIT0gbXIpIHsKPiA+ICsg
ICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lvbihvYmopOwo+
ID4gKyAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfaW5pdF9tZW1vcnlfcmVnaW9uKG9iaiwg
bXIpOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+
ID4gIHN0YXRpYyB2b2lkIGk5MTVfdHRtX3B1dF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2dfdGFi
bGUgKnN0KQo+ID4gIHsKPiA+IEBAIC04MTQsNiArODY2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV90dG1fb2JqX29wcyA9IHsKPiA+ICAg
ICAgIC50cnVuY2F0ZSA9IGk5MTVfdHRtX3B1cmdlLAo+ID4gICAgICAgLmFkanVzdF9scnUgPSBp
OTE1X3R0bV9hZGp1c3RfbHJ1LAo+ID4gICAgICAgLmRlbGF5ZWRfZnJlZSA9IGk5MTVfdHRtX2Rl
bGF5ZWRfZnJlZSwKPiA+ICsgICAgIC5taWdyYXRlID0gaTkxNV90dG1fbWlncmF0ZSwKPiA+ICAg
ICAgIC5tbWFwX29mZnNldCA9IGk5MTVfdHRtX21tYXBfb2Zmc2V0LAo+ID4gICAgICAgLm1tYXBf
b3BzID0gJnZtX29wc190dG0sCj4gPiAgfTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3dhaXQuYwo+ID4gaW5kZXggMTA3MGQzYWZkY2U3Li5mOTA5YWFhMDlkOWMgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCj4gPiBAQCAtMjkw
LDMgKzI5MCwyMiBAQCBpOTE1X2dlbV93YWl0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKPiA+ICAgICAgIGk5MTVfZ2VtX29i
amVjdF9wdXQob2JqKTsKPiA+ICAgICAgIHJldHVybiByZXQ7Cj4gPiAgfQo+ID4gKwo+ID4gKy8q
Kgo+ID4gKyAqIGk5MTVfZ2VtX29iamVjdF93YWl0X21pZ3JhdGlvbiAtIFN5bmMgYW4gYWNjZWxl
cmF0ZWQgbWlncmF0aW9uIG9wZXJhdGlvbgo+ID4gKyAqIEBvYmo6IFRoZSBtaWdyYXRpbmcgb2Jq
ZWN0Lgo+ID4gKyAqIEBmbGFnczogd2FpdGluZyBmbGFncy4gQ3VycmVudGx5IHN1cHBvcnRzIG9u
bHkgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUuCj4gPiArICoKPiA+ICsgKiBXYWl0IGZvciBhbnkg
cGVuZGluZyBhc3luYyBtaWdyYXRpb24gb3BlcmF0aW9uIG9uIHRoZSBvYmplY3QsCj4gPiArICog
d2hldGhlciBpdCdzIGV4cGxpY2l0bHkgKGk5MTVfZ2VtX29iamVjdF9taWdyYXRlKCkpIG9yIGlt
cGxpY2l0bHkKPiA+ICsgKiAoc3dhcGluLCBpbml0aWFsIGNsZWFyaW5nKSBpbml0aWF0ZWQuCj4g
PiArICoKPiA+ICsgKiBSZXR1cm46IDAgaWYgc3VjY2Vzc2Z1bCwgLUVSRVNUQVJUU1lTIGlmIGEg
c2lnbmFsIHdhcyBoaXQgZHVyaW5nIHdhaXRpbmcuCj4gPiArICovCj4gPiAraW50IGk5MTVfZ2Vt
X29iamVjdF93YWl0X21pZ3JhdGlvbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGZsYWdzKQo+
ID4gK3sKPiA+ICsgICAgIG1pZ2h0X3NsZWVwKCk7Cj4gPiArICAgICAvKiBOT1AgZm9yIG5vdy4g
Ki8KPiA+ICsgICAgIHJldHVybiAwOwo+ID4gK30KPiA+IC0tCj4gPiAyLjMxLjEKPiA+Cj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
Pgo+IC0tCj4gRGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3Jh
dGlvbgo+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
