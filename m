Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D43563B00F3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 12:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFCC6E0DD;
	Tue, 22 Jun 2021 10:07:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E77366E0DD;
 Tue, 22 Jun 2021 10:07:37 +0000 (UTC)
IronPort-SDR: HVqPe6tMGnIS8s67xqhFPR6ptB2H7+nxG6+4l3Cjki5vsfdBLbAHaoBwmtPyl0hnJAgmo8z17D
 1jLxyA+Gs2Ww==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206844589"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="206844589"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 03:07:35 -0700
IronPort-SDR: suGCEBjZczJBBpC3tr04hYCkQYalzuz7eKBXLe388us1v7BklKiEMgwEfDtyZlDZcAokYQeYtk
 3Usoxc1mvPow==
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="623416908"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO [10.249.254.95])
 ([10.249.254.95])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 03:07:34 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210622093418.153400-1-thomas.hellstrom@linux.intel.com>
 <20210622093418.153400-3-thomas.hellstrom@linux.intel.com>
 <CAM0jSHMWG4tGSHDGzuKw+qC5D-PoXzfDJa_QCdwpn=p20fkC4Q@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <81eff799-996d-cf3d-c734-94d0beacd475@linux.intel.com>
Date: Tue, 22 Jun 2021 12:07:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMWG4tGSHDGzuKw+qC5D-PoXzfDJa_QCdwpn=p20fkC4Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 2/3] drm/i915/ttm: Adjust gem flags and
 caching settings after a move
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjIvMjEgMTE6NDQgQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBPbiBUdWUsIDIyIEp1
biAyMDIxIGF0IDEwOjM0LCBUaG9tYXMgSGVsbHN0csO2bQo+IDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+IEFmdGVyIGEgVFRNIG1vdmUgb3Igb2JqZWN0IGluaXQg
d2UgbmVlZCB0byB1cGRhdGUgdGhlIGk5MTUgZ2VtIGZsYWdzIGFuZAo+PiBjYWNoaW5nIHNldHRp
bmdzIHRvIHJlZmxlY3QgdGhlIG5ldyBwbGFjZW1lbnQuIEN1cnJlbnRseSBjYWNoaW5nIHNldHRp
bmdzCj4+IGFyZSBub3QgY2hhbmdlZCBkdXJpbmcgdGhlIGxpZmV0aW1lIG9mIGFuIG9iamVjdCwg
YWx0aG91Z2ggdGhhdCBtaWdodAo+PiBjaGFuZ2UgbW92aW5nIGZvcndhcmQgaWYgd2UgcnVuIGlu
dG8gcGVyZm9ybWFuY2UgaXNzdWVzIG9yIGlzc3VlcyB3aXRoCj4+IFdDIHN5c3RlbSBwYWdlIGFs
bG9jYXRpb25zLgo+PiBBbHNvIGludHJvZHVjZSBncHVfYmluZHNfaW9tZW0oKSBhbmQgY3B1X21h
cHNfaW9tZW0oKSB0byBjbGVhbiB1cCB0aGUKPj4gdmFyaW91cyB3YXlzIHdlIHByZXZpb3VzbHkg
dXNlZCB0byBkZXRlY3QgdGhpcy4KPj4gRmluYWxseSwgaW5pdGlhbGl6ZSB0aGUgVFRNIG9iamVj
dCByZXNlcnZlZCB0byBiZSBhYmxlIHRvIHVwZGF0ZQo+PiBmbGFncyBhbmQgY2FjaGluZyBiZWZv
cmUgYW55b25lIGVsc2UgZ2V0cyBob2xkIG9mIHRoZSBvYmplY3QuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4K
Pj4gUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4g
LS0tCj4+IHY2Ogo+PiAtIFJlYmFzZSBvbiBhY2NlbGVyYXRlZCB0dG0gbW92ZXMuCj4+IC0tLQo+
IDxzbmlwPgo+Cj4+IEBAIC03NzUsMTQgKzg0NSwxMyBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2Jq
ZWN0X2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPj4gICAgICAgICAgaTkx
NV9nZW1fb2JqZWN0X2luaXQob2JqLCAmaTkxNV9nZW1fdHRtX29ial9vcHMsICZsb2NrX2NsYXNz
LCBmbGFncyk7Cj4+ICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24o
b2JqLCBtZW0pOwo+PiAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfbWFrZV91bnNocmlua2FibGUo
b2JqKTsKPj4gLSAgICAgICBvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0RPTUFJTl9XQyB8
IEk5MTVfR0VNX0RPTUFJTl9HVFQ7Cj4+IC0gICAgICAgb2JqLT5tZW1fZmxhZ3MgfD0gSTkxNV9C
T19GTEFHX0lPTUVNOwo+PiAtICAgICAgIGk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJl
bmN5KG9iaiwgSTkxNV9DQUNIRV9OT05FKTsKPj4gICAgICAgICAgSU5JVF9SQURJWF9UUkVFKCZv
YmotPnR0bS5nZXRfaW9fcGFnZS5yYWRpeCwgR0ZQX0tFUk5FTCB8IF9fR0ZQX05PV0FSTik7Cj4+
ICAgICAgICAgIG11dGV4X2luaXQoJm9iai0+dHRtLmdldF9pb19wYWdlLmxvY2spOwo+PiAgICAg
ICAgICBib190eXBlID0gKG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX1VTRVIpID8gdHRtX2Jv
X3R5cGVfZGV2aWNlIDoKPj4gICAgICAgICAgICAgICAgICB0dG1fYm9fdHlwZV9rZXJuZWw7Cj4+
Cj4+ICsgICAgICAgb2JqLT5iYXNlLnZtYV9ub2RlLmRyaXZlcl9wcml2YXRlID0gaTkxNV9nZW1f
dG9fdHRtKG9iaik7Cj4+ICsKPj4gICAgICAgICAgLyoKPj4gICAgICAgICAgICogSWYgdGhpcyBm
dW5jdGlvbiBmYWlscywgaXQgd2lsbCBjYWxsIHRoZSBkZXN0cnVjdG9yLCBidXQKPj4gICAgICAg
ICAgICogb3VyIGNhbGxlciBzdGlsbCBvd25zIHRoZSBvYmplY3QuIFNvIG5vIGZyZWVpbmcgaW4g
dGhlCj4+IEBAIC03OTAsMTQgKzg1OSwxNiBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2JqZWN0X2lu
aXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKPj4gICAgICAgICAgICogU2ltaWxh
cmx5LCBpbiBkZWxheWVkX2Rlc3Ryb3ksIHdlIGNhbid0IGNhbGwgdHRtX2JvX3B1dCgpCj4+ICAg
ICAgICAgICAqIHVudGlsIHN1Y2Nlc3NmdWwgaW5pdGlhbGl6YXRpb24uCj4+ICAgICAgICAgICAq
Lwo+PiAtICAgICAgIG9iai0+YmFzZS52bWFfbm9kZS5kcml2ZXJfcHJpdmF0ZSA9IGk5MTVfZ2Vt
X3RvX3R0bShvYmopOwo+PiAtICAgICAgIHJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5iZGV2LCBp
OTE1X2dlbV90b190dG0ob2JqKSwgc2l6ZSwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICBi
b190eXBlLCAmaTkxNV9zeXNfcGxhY2VtZW50LAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAg
IG1lbS0+bWluX3BhZ2Vfc2l6ZSA+PiBQQUdFX1NISUZULAo+PiAtICAgICAgICAgICAgICAgICAg
ICAgICAgIHRydWUsIE5VTEwsIE5VTEwsIGk5MTVfdHRtX2JvX2Rlc3Ryb3kpOwo+PiAtICAgICAg
IGlmICghcmV0KQo+PiAtICAgICAgICAgICAgICAgb2JqLT50dG0uY3JlYXRlZCA9IHRydWU7Cj4+
IC0KPj4gLSAgICAgICAvKiBpOTE1IHdhbnRzIC1FTlhJTyB3aGVuIG91dCBvZiBtZW1vcnkgcmVn
aW9uIHNwYWNlLiAqLwo+PiAtICAgICAgIHJldHVybiBpOTE1X3R0bV9lcnJfdG9fZ2VtKHJldCk7
Cj4+ICsgICAgICAgcmV0ID0gdHRtX2JvX2luaXRfcmVzZXJ2ZWQoJmk5MTUtPmJkZXYsIGk5MTVf
Z2VtX3RvX3R0bShvYmopLCBzaXplLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGJvX3R5cGUsICZpOTE1X3N5c19wbGFjZW1lbnQsIDEsCj4gbWVtLT5taW5fcGFnZV9zaXpl
ID4+IFBBR0VfU0hJRlQ/IEFsdGhvdWdoIGp1c3QgcmVhbGlzZWQgdGhhdCBsb29rcwo+IGlmZnkg
c2luY2UgaXQgb25seSBjb25zaWRlcnMgdGhlIGN1cnJlbnQgcmVnaW9uLCB3aGVuIGl0IHNob3Vs
ZAo+IGNvbnNpZGVyIGFsbCBmdXR1cmUgcGxhY2VtZW50cy4gSSB3b25kZXIgaWYgaXQgbWFrZXMg
c2Vuc2UgdG8gbWFrZQo+IHBhZ2VfYWxpZ25tZW50IHBhcnQgb2YgdHRtX3BsYWNlPyBBbnl3YXks
IGl0IGRvZXNuJ3QgbWF0dGVyIGZvciB0aGlzCj4gc2VyaWVzLgoKR29vZCBjYXRjaC4gWWVzIGNv
bXBsZXRlbHkgYWdyZWUgaXQgc2hvdWxkIGJlIHBhcnQgb2YgdHRtX3BsYWNlLiBCdXQgCmV4dGVu
ZGluZyB0dG1fcGxhY2UgYW5kIGF1ZGl0IGFsbCBkcml2ZXJzIHRvIGFsd2F5cyBjbGVhciB1bnVz
ZWQgcGFydHMgCm9mIHR0bV9wbGFjZSBpcyBhIGJpZyB0YXNrLgoKQnV0IGl0J3MgYWxzbyB0aGUg
Y2FzZSB0aGF0IHRoZSByZWdpb24gbWFuYWdlciBpcyBhbGxvd2VkIHRvIGVuZm9yY2UgYW4gCmFs
aWdubWVudCwgdW5rbm93biB0byB1cyBoZXJlLCBzbyB3ZSBtaWdodCB3YW50IHRvIHRha2UgdGhh
dCBhcHByb2FjaCB0byAKYmVnaW4gd2l0aD8KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
