Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5414388CD0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 13:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A2D6E0CB;
	Wed, 19 May 2021 11:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545776E0CB;
 Wed, 19 May 2021 11:29:54 +0000 (UTC)
IronPort-SDR: KimdIFIZrqYcEI6VCL156iJvOT+jtqieMfWILBROke1Ei9hS6I4yUxdqEK6LWLfNnqQOMsgRBL
 y3n5UgTsOPPg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="201012218"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="201012218"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 04:29:53 -0700
IronPort-SDR: CV7bWyQGGp7P/0MmNTJvSEkU3DEAmczYakI4NUmx2pV26X98XfUSe91IcefXhwi1MXfTe8ci9h
 Uec8AlrMZOSg==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="627629061"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO [10.249.254.222])
 ([10.249.254.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 04:29:51 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-11-thomas.hellstrom@linux.intel.com>
 <CAM0jSHPLdajyqtZBsR1C75aSgBa8wV1FLnQSa+tytAOKr5x11A@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <bceb5941-ef60-0c6b-40b4-f27792924146@linux.intel.com>
Date: Wed, 19 May 2021 13:29:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPLdajyqtZBsR1C75aSgBa8wV1FLnQSa+tytAOKr5x11A@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 10/15] drm/i915/ttm: Introduce a TTM i915
 gem object backend
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGEgbG90IGZvciByZXZpZXdpbmcsIE1hdHRoZXchCgpPbiA1LzE5LzIxIDExOjUzIEFN
LCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4gT24gVHVlLCAxOCBNYXkgMjAyMSBhdCAwOToyOCwgVGhv
bWFzIEhlbGxzdHLDtm0KPiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3Rl
Ogo+PiBNb3N0IGxvZ2ljYWwgcGxhY2UgdG8gaW50cm9kdWNlIFRUTSBidWZmZXIgb2JqZWN0cyBp
cyBhcyBhbiBpOTE1Cj4+IGdlbSBvYmplY3QgYmFja2VuZC4gV2UgbmVlZCB0byBhZGQgc29tZSBv
cHMgdG8gYWNjb3VudCBmb3IgYWRkZWQKPj4gZnVuY3Rpb25hbGl0eSBsaWtlIGRlbGF5ZWQgZGVs
ZXRlIGFuZCBMUlUgbGlzdCBtYW5pcHVsYXRpb24uCj4+Cj4+IEluaXRpYWxseSB3ZSBzdXBwb3J0
IG9ubHkgTE1FTSBhbmQgU1lTVEVNIG1lbW9yeSwgYnV0IFNZU1RFTQo+PiAod2hpY2ggaW4gdGhp
cyBjYXNlIG1lYW5zIGV2aWN0ZWQgTE1FTSBvYmplY3RzKSBpcyBub3QKPj4gdmlzaWJsZSB0byBp
OTE1IEdFTSB5ZXQuIFRoZSBwbGFuIGlzIHRvIG1vdmUgdGhlIGk5MTUgZ2VtIHN5c3RlbSByZWdp
b24KPj4gb3ZlciB0byB0aGUgVFRNIHN5c3RlbSBtZW1vcnkgdHlwZSBpbiB1cGNvbWluZyBwYXRj
aGVzLgo+Pgo+PiBXZSBzZXQgdXAgR1BVIGJpbmRpbmdzIGRpcmVjdGx5IGJvdGggZnJvbSBMTUVN
IGFuZCBmcm9tIHRoZSBzeXN0ZW0gcmVnaW9uLAo+PiBhcyB0aGVyZSBpcyBubyBuZWVkIHRvIHVz
ZSB0aGUgbGVnYWN5IFRUTV9UVCBtZW1vcnkgdHlwZS4gV2UgcmVzZXJ2ZQo+PiB0aGF0IGZvciBm
dXR1cmUgcG9ydGluZyBvZiBHR1RUIGJpbmRpbmdzIHRvIFRUTS4KPj4KPj4gUmVtb3ZlIHRoZSBv
bGQgbG1lbSBiYWNrZW5kLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+Cj4+ICsvKioKPj4gKyAqIGk5MTVf
Z2VtX29iamVjdF9ldmljdGFibGUgLSBXaGV0aGVyIG9iamVjdCBpcyBsaWtlbHkgZXZpY3RhYmxl
IGFmdGVyIHVuYmluZC4KPj4gKyAqIEBvYmo6IFRoZSBvYmplY3QgdG8gY2hlY2sKPj4gKyAqCj4+
ICsgKiBUaGlzIGZ1bmN0aW9uIGNoZWNrcyB3aGV0aGVyIHRoZSBvYmplY3QgaXMgbGlrZWx5IHVu
dmljdGFibGUgYWZ0ZXIgdW5iaW5kLgo+PiArICogSWYgdGhlIG9iamVjdCBpcyBub3QgbG9ja2Vk
IHdoZW4gY2hlY2tpbmcsIHRoZSByZXN1bHQgaXMgb25seSBhZHZpc29yeS4KPj4gKyAqIElmIHRo
ZSBvYmplY3QgaXMgbG9ja2VkIHdoZW4gY2hlY2tpbmcsIGFuZCB0aGUgZnVuY3Rpb24gcmV0dXJu
cyB0cnVlLAo+PiArICogdGhlbiBhbiBldmljdGlvbiBzaG91bGQgaW5kZWVkIGJlIHBvc3NpYmxl
LiBCdXQgc2luY2UgdW5sb2NrZWQgdm1hCj4+ICsgKiB1bnBpbm5pbmcgYW5kIHVuYmluZGluZyBp
cyBjdXJyZW50bHkgcG9zc2libGUsIHRoZSBvYmplY3QgY2FuIGFjdHVhbGx5Cj4+ICsgKiBiZWNv
bWUgZXZpY3RhYmxlIGV2ZW4gaWYgdGhpcyBmdW5jdGlvbiByZXR1cm5zIGZhbHNlLgo+PiArICoK
Pj4gKyAqIFJldHVybjogdHJ1ZSBpZiB0aGUgb2JqZWN0IG1heSBiZSBldmljdGFibGUuIEZhbHNl
IG90aGVyd2lzZS4KPj4gKyAqLwo+PiArYm9vbCBpOTE1X2dlbV9vYmplY3RfZXZpY3RhYmxlKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGk5
MTVfdm1hICp2bWE7Cj4+ICsgICAgICAgaW50IHBpbl9jb3VudCA9IGF0b21pY19yZWFkKCZvYmot
Pm1tLnBhZ2VzX3Bpbl9jb3VudCk7Cj4+ICsKPj4gKyAgICAgICBpZiAoIXBpbl9jb3VudCkKPj4g
KyAgICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+PiArCj4+ICsgICAgICAgc3Bpbl9sb2NrKCZv
YmotPnZtYS5sb2NrKTsKPj4gKyAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHZtYSwgJm9iai0+
dm1hLmxpc3QsIG9ial9saW5rKSB7Cj4+ICsgICAgICAgICAgICAgICBpZiAoaTkxNV92bWFfaXNf
cGlubmVkKHZtYSkpIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3Bpbl91bmxvY2soJm9i
ai0+dm1hLmxvY2spOwo+PiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4+
ICsgICAgICAgICAgICAgICB9Cj4+ICsgICAgICAgICAgICAgICBpZiAoYXRvbWljX3JlYWQoJnZt
YS0+cGFnZXNfY291bnQpKQo+PiArICAgICAgICAgICAgICAgICAgICAgICBwaW5fY291bnQtLTsK
PiBDYW4ndCBwYWdlc19jb3VudCBiZSA+IDEsIHdoaWNoIHdvdWxkIGFsc28gYmUgcmVmbGVjdGVk
IGluCj4gcGFnZXNfcGluX2NvdW50PyBUaGUgdm1hX3BpbiBwYXRoIGxvb2tzIHZlcnkgY29tcGxl
eC4KClllcywgYW5kIE1hYXJ0ZW4gcG9pbnRlZCBvdXQgYSBidWcgaW4gaXQgYXMgd2VsbC4gV2Ug
bm93IG9ubHkgdGFrZSBhIApwYWdlc19waW5fY291bnQgd2hlbiB2bWEtPnBhZ2VzX2NvdW50IHRy
YW5zaXRpb25zIGZyb20gMC0+MSBzbyB0aGUgYWJvdmUgCmNvZGUgc2hvdWxkIGJlIGNvcnJlY3Qs
IEkgdGhpbmsuCgo+Cj4+ICsgICAgICAgfQo+PiArICAgICAgIHNwaW5fdW5sb2NrKCZvYmotPnZt
YS5sb2NrKTsKPj4gKyAgICAgICBHRU1fV0FSTl9PTihwaW5fY291bnQgPCAwKTsKPj4gKwo+PiAr
ICAgICAgIHJldHVybiBwaW5fY291bnQgPT0gMDsKPj4gK30KPj4gKwo+PiAgIHZvaWQgaTkxNV9n
ZW1faW5pdF9fb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICB7Cj4+
ICAgICAgICAgIElOSVRfV09SSygmaTkxNS0+bW0uZnJlZV93b3JrLCBfX2k5MTVfZ2VtX2ZyZWVf
d29yayk7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPj4g
aW5kZXggMmViZDc5NTM3YWVhLi5hZTU5MzBlMzA3ZDUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPj4gQEAgLTIwMCw2ICsyMDAsOSBAQCBzdGF0
aWMgaW5saW5lIGJvb2wgaTkxNV9nZW1fb2JqZWN0X3RyeWxvY2soc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKPj4KPj4gICBzdGF0aWMgaW5saW5lIHZvaWQgaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+PiAgIHsKPj4gKyAgICAg
ICBpZiAob2JqLT5vcHMtPmFkanVzdF9scnUpCj4+ICsgICAgICAgICAgICAgICBvYmotPm9wcy0+
YWRqdXN0X2xydShvYmopOwo+IEludGVyZXN0aW5nLCBzbyB3ZSBidW1wIHRoZSBscnUgZXZlbiB3
aGVuIHdlIGp1c3QgZHJvcCB0aGUgbG9jaz8KWWVzLCBhcyBhbiBpbml0aWFsIGFwcHJveGltYXRp
b24uIFRUTSBoYXMgaGlzdG9yaWNhbGx5IGRvbmUgdGhpcyBhbmQgaXQgCm1heSBub3QgYmUgdGhl
IGJlc3QgY2hvaWNlLCBidXQgZHJvcHBpbmcgdGhlIGxvY2sgbWVhbnMgd2UndmUganVzdCB1c2Vk
IAp0aGUgb2JqZWN0IGZvciBzb21ldGhpbmcsIHR5cGljYWxseSBDUywgc28gaGVuY2Ugd2UgYnVt
cCB0aGUgTFJVLgo+PiArCj4+ICAgICAgICAgIGRtYV9yZXN2X3VubG9jayhvYmotPmJhc2UucmVz
dik7Cj4+ICAgfQo+Pgo+PiBAQCAtNTg3LDYgKzU5MCwxMiBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0
X3JlYWRfZnJvbV9wYWdlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIHU2NCBvZmZz
ZXQsCj4+Cj4+ICAgYm9vbCBpOTE1X2dlbV9vYmplY3RfaXNfc2htZW0oY29uc3Qgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaik7Cj4+Cj4+ICt2b2lkIF9faTkxNV9nZW1fZnJlZV9vYmpl
Y3RfcmN1KHN0cnVjdCByY3VfaGVhZCAqaGVhZCk7Cj4+ICsKPj4gK3ZvaWQgX19pOTE1X2dlbV9m
cmVlX29iamVjdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKPj4gKwo+PiArYm9v
bCBpOTE1X2dlbV9vYmplY3RfZXZpY3RhYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmopOwo+PiArCj4+ICAgI2lmZGVmIENPTkZJR19NTVVfTk9USUZJRVIKPj4gICBzdGF0aWMgaW5s
aW5lIGJvb2wKPj4gICBpOTE1X2dlbV9vYmplY3RfaXNfdXNlcnB0cihzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF90eXBlcy5oCj4+IGluZGV4IDk4ZjY5ZDhmZDM3ZC4uYjM1MDc2NWUxOTM1IDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90
eXBlcy5oCj4+IEBAIC02Myw2ICs2MywyMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9v
cHMgewo+PiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
cHdyaXRlICphcmcpOwo+Pgo+PiAgICAgICAgICBpbnQgKCpkbWFidWZfZXhwb3J0KShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKPj4gKwo+PiArICAgICAgIC8qKgo+PiArICAgICAg
ICAqIGFkanVzdF9scnUgLSBub3RpZnkgdGhhdCB0aGUgbWFkdmlzZSB2YWx1ZSB3YXMgdXBkYXRl
ZAo+PiArICAgICAgICAqIEBvYmo6IFRoZSBnZW0gb2JqZWN0Cj4+ICsgICAgICAgICoKPj4gKyAg
ICAgICAgKiBUaGUgbWFkdmlzZSB2YWx1ZSBtYXkgaGF2ZSBiZWVuIHVwZGF0ZWQsIG9yIG9iamVj
dCB3YXMgcmVjZW50bHkKPj4gKyAgICAgICAgKiByZWZlcmVuY2VkIHNvIGFjdCBhY2NvcmRpbmds
eSAoUGVyaGFwcyBjaGFuZ2luZyBhbiBMUlUgbGlzdCBldGMpLgo+PiArICAgICAgICAqLwo+PiAr
ICAgICAgIHZvaWQgKCphZGp1c3RfbHJ1KShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KTsKPj4gKwo+PiArICAgICAgIC8qKgo+PiArICAgICAgICAqIGRlbGF5ZWRfZnJlZSAtIE92ZXJy
aWRlIHRoZSBkZWZhdWx0IGRlbGF5ZWQgZnJlZSBpbXBsZW1lbnRhdGlvbgo+PiArICAgICAgICAq
Lwo+PiArICAgICAgIHZvaWQgKCpkZWxheWVkX2ZyZWUpKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopOwo+PiAgICAgICAgICB2b2lkICgqcmVsZWFzZSkoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7Cj4+Cj4+ICAgICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7IC8qIGZyaWVu
ZGx5IG5hbWUgZm9yIGRlYnVnLCBlLmcuIGxvY2tkZXAgY2xhc3NlcyAqLwo+PiBAQCAtMzA3LDYg
KzMyMSwxMCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7Cj4+ICAgICAgICAgICAgICAg
ICAgYm9vbCBkaXJ0eToxOwo+PiAgICAgICAgICB9IG1tOwo+Pgo+PiArICAgICAgIHN0cnVjdCB7
Cj4+ICsgICAgICAgICAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKmNhY2hlZF9pb19zdDsKPj4gKyAg
ICAgICB9IHR0bTsKPj4gKwo+PiAgICAgICAgICAvKiogUmVjb3JkIG9mIGFkZHJlc3MgYml0IDE3
IG9mIGVhY2ggcGFnZSBhdCBsYXN0IHVuYmluZC4gKi8KPj4gICAgICAgICAgdW5zaWduZWQgbG9u
ZyAqYml0XzE3Owo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3JlZ2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lv
bi5jCj4+IGluZGV4IGYyNWU2NjQ2YzViNy4uZDFmMTg0MDU0MGRkIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5jCj4+IEBAIC0xOCwxMSArMTgsNyBA
QCB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0X21lbW9yeV9yZWdpb24oc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKPj4KPj4gICAgICAgICAgbXV0ZXhfbG9jaygmbWVtLT5vYmplY3Rz
LmxvY2spOwo+Pgo+PiAtICAgICAgIGlmIChvYmotPmZsYWdzICYgSTkxNV9CT19BTExPQ19WT0xB
VElMRSkKPj4gLSAgICAgICAgICAgICAgIGxpc3RfYWRkKCZvYmotPm1tLnJlZ2lvbl9saW5rLCAm
bWVtLT5vYmplY3RzLnB1cmdlYWJsZSk7Cj4+IC0gICAgICAgZWxzZQo+PiAtICAgICAgICAgICAg
ICAgbGlzdF9hZGQoJm9iai0+bW0ucmVnaW9uX2xpbmssICZtZW0tPm9iamVjdHMubGlzdCk7Cj4+
IC0KPj4gKyAgICAgICBsaXN0X2FkZCgmb2JqLT5tbS5yZWdpb25fbGluaywgJm1lbS0+b2JqZWN0
cy5saXN0KTsKPj4gICAgICAgICAgbXV0ZXhfdW5sb2NrKCZtZW0tPm9iamVjdHMubG9jayk7Cj4+
ICAgfQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzkwZjVlYzQ1YzRkCj4+IC0t
LSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0
bS5jCj4+IEBAIC0wLDAgKzEsNTE5IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
TUlUCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IMKpIDIwMjEgSW50ZWwgQ29ycG9yYXRpb24KPj4g
KyAqLwo+PiArCj4+ICsjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fZHJpdmVyLmg+Cj4+ICsjaW5j
bHVkZSA8ZHJtL3R0bS90dG1fcGxhY2VtZW50Lmg+Cj4+ICsKPj4gKyNpbmNsdWRlICJpOTE1X2Ry
di5oIgo+PiArI2luY2x1ZGUgImludGVsX21lbW9yeV9yZWdpb24uaCIKPj4gKyNpbmNsdWRlICJp
bnRlbF9yZWdpb25fdHRtLmgiCj4+ICsKPj4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fb2JqZWN0
LmgiCj4+ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgo+PiArI2luY2x1ZGUgImdl
bS9pOTE1X2dlbV90dG0uaCIKPj4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fdHRtX2JvX3V0aWwu
aCIKPj4gKwo+PiArI2RlZmluZSBJOTE1X1BMX0xNRU0wIFRUTV9QTF9QUklWCj4+ICsjZGVmaW5l
IEk5MTVfUExfU1lTVEVNIFRUTV9QTF9TWVNURU0KPj4gKyNkZWZpbmUgSTkxNV9QTF9TVE9MRU4g
VFRNX1BMX1ZSQU0KPj4gKyNkZWZpbmUgSTkxNV9QTF9HR1RUIFRUTV9QTF9UVAo+PiArCj4+ICsj
ZGVmaW5lIEk5MTVfVFRNX1BSSU9fUFVSR0UgICAgIDAKPj4gKyNkZWZpbmUgSTkxNV9UVE1fUFJJ
T19OT19QQUdFUyAgMQo+PiArI2RlZmluZSBJOTE1X1RUTV9QUklPX0hBU19QQUdFUyAyCj4+ICsK
Pj4gKy8qKgo+PiArICogc3RydWN0IGk5MTVfdHRtX3R0IC0gVFRNIHBhZ2UgdmVjdG9yIHdpdGgg
YWRkaXRpb25hbCBwcml2YXRlIGluZm9ybWF0aW9uCj4+ICsgKiBAdHRtOiBUaGUgYmFzZSBUVE0g
cGFnZSB2ZWN0b3IuCj4+ICsgKiBAZGV2OiBUaGUgc3RydWN0IGRldmljZSB1c2VkIGZvciBkbWEg
bWFwcGluZyBhbmQgdW5tYXBwaW5nLgo+PiArICogQGNhY2hlZF9zdDogVGhlIGNhY2hlZCBzY2F0
dGVyLWdhdGhlciB0YWJsZS4KPj4gKyAqCj4+ICsgKiBOb3RlIHRoYXQgRE1BIG1heSBiZSBnb2lu
ZyBvbiByaWdodCB1cCB0byB0aGUgcG9pbnQgd2hlcmUgdGhlIHBhZ2UtCj4+ICsgKiB2ZWN0b3Ig
aXMgdW5wb3B1bGF0ZWQgaW4gZGVsYXllZCBkZXN0cm95LiBIZW5jZSBrZWVwIHRoZQo+PiArICog
c2NhdHRlci1nYXRoZXIgdGFibGUgbWFwcGVkIGFuZCBjYWNoZWQgdXAgdG8gdGhhdCBwb2ludC4g
VGhpcyBpcwo+PiArICogZGlmZmVyZW50IGZyb20gdGhlIGNhY2hlZCBnZW0gb2JqZWN0IGlvIHNj
YXR0ZXItZ2F0aGVyIHRhYmxlIHdoaWNoCj4+ICsgKiBkb2Vzbid0IGhhdmUgYW4gYXNzb2NpYXRl
ZCBkbWEgbWFwcGluZy4KPj4gKyAqLwo+PiArc3RydWN0IGk5MTVfdHRtX3R0IHsKPiBXaGF0IGlz
IHRoZSBfdHQgaGVyZSBidHc/IFRyYW5zbGF0aW9uIHRhYmxlPyBXZSBhbHNvIGhhdmUgdXNlX3R0
Cj4gZWxzZXdoZXJlLiB0dG1fdHQgbG9va3MgbGlrZSBpdCBqdXN0IGhvbGRzIGFuIGFycmF5IG9m
IHBhZ2VzLCBhbmQKPiBhc3NvY2lhdGVkIGRhdGE/IHR0bV9wdj8KSXQncyBqdXN0IGJhZCBuYW1p
bmcuIGk5MTVfdHRtX3B2IHdvdWxkIGJlIGJldHRlciwgSSBhZ3JlZSwgYnV0IG90aGVyIApkcml2
ZXJzIGNvbnNpc3RlbnRseSB1c2UgdHQuCj4KPj4gKyAgICAgICBzdHJ1Y3QgdHRtX3R0IHR0bTsK
Pj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4+ICsgICAgICAgc3RydWN0IHNnX3RhYmxl
ICpjYWNoZWRfc3Q7Cj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHR0bV9wbGFj
ZSBsbWVtMF9zeXNfcGxhY2VtZW50X2ZsYWdzW10gPSB7Cj4+ICsgICAgICAgewo+PiArICAgICAg
ICAgICAgICAgLmZwZm4gPSAwLAo+PiArICAgICAgICAgICAgICAgLmxwZm4gPSAwLAo+PiArICAg
ICAgICAgICAgICAgLm1lbV90eXBlID0gSTkxNV9QTF9MTUVNMCwKPj4gKyAgICAgICAgICAgICAg
IC5mbGFncyA9IDAsCj4+ICsgICAgICAgfSwgewo+PiArICAgICAgICAgICAgICAgLmZwZm4gPSAw
LAo+PiArICAgICAgICAgICAgICAgLmxwZm4gPSAwLAo+PiArICAgICAgICAgICAgICAgLm1lbV90
eXBlID0gSTkxNV9QTF9TWVNURU0sCj4+ICsgICAgICAgICAgICAgICAuZmxhZ3MgPSAwLAo+PiAr
ICAgICAgIH0KPj4gK307Cj4+ICsKPj4gK3N0cnVjdCB0dG1fcGxhY2VtZW50IGk5MTVfbG1lbTBf
cGxhY2VtZW50ID0gewo+PiArICAgICAgIC5udW1fcGxhY2VtZW50ID0gMSwKPj4gKyAgICAgICAu
cGxhY2VtZW50ID0gJmxtZW0wX3N5c19wbGFjZW1lbnRfZmxhZ3NbMF0sCj4+ICsgICAgICAgLm51
bV9idXN5X3BsYWNlbWVudCA9IDEsCj4+ICsgICAgICAgLmJ1c3lfcGxhY2VtZW50ID0gJmxtZW0w
X3N5c19wbGFjZW1lbnRfZmxhZ3NbMF0sCj4+ICt9Owo+PiArCj4+ICtzdHJ1Y3QgdHRtX3BsYWNl
bWVudCBpOTE1X2xtZW0wX3N5c19wbGFjZW1lbnQgPSB7Cj4+ICsgICAgICAgLm51bV9wbGFjZW1l
bnQgPSAxLAo+PiArICAgICAgIC5wbGFjZW1lbnQgPSAmbG1lbTBfc3lzX3BsYWNlbWVudF9mbGFn
c1swXSwKPj4gKyAgICAgICAubnVtX2J1c3lfcGxhY2VtZW50ID0gMiwKPj4gKyAgICAgICAuYnVz
eV9wbGFjZW1lbnQgPSAmbG1lbTBfc3lzX3BsYWNlbWVudF9mbGFnc1swXSwKPj4gK307Cj4+ICsK
Pj4gK3N0cnVjdCB0dG1fcGxhY2VtZW50IGk5MTVfc3lzX3BsYWNlbWVudCA9IHsKPj4gKyAgICAg
ICAubnVtX3BsYWNlbWVudCA9IDEsCj4+ICsgICAgICAgLnBsYWNlbWVudCA9ICZsbWVtMF9zeXNf
cGxhY2VtZW50X2ZsYWdzWzFdLAo+PiArICAgICAgIC5udW1fYnVzeV9wbGFjZW1lbnQgPSAxLAo+
PiArICAgICAgIC5idXN5X3BsYWNlbWVudCA9ICZsbWVtMF9zeXNfcGxhY2VtZW50X2ZsYWdzWzFd
LAo+PiArfTsKPj4gKwo+PiArc3RhdGljIHZvaWQgaTkxNV90dG1fYWRqdXN0X2xydShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKPj4gKwo+PiArc3RhdGljIHN0cnVjdCB0dG1fdHQg
Kmk5MTVfdHRtX3R0X2NyZWF0ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHBhZ2VfZmxhZ3Mp
Cj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2VyICptYW4gPQo+PiAr
ICAgICAgICAgICAgICAgdHRtX21hbmFnZXJfdHlwZShiby0+YmRldiwgYm8tPm1lbS5tZW1fdHlw
ZSk7Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGk5MTVfdHRt
X3RvX2dlbShibyk7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfdHRtX3R0ICppOTE1X3R0Owo+PiAr
ICAgICAgIGludCByZXQ7Cj4+ICsKPj4gKyAgICAgICBpOTE1X3R0ID0ga3phbGxvYyhzaXplb2Yo
Kmk5MTVfdHQpLCBHRlBfS0VSTkVMKTsKPj4gKyAgICAgICBpZiAoIWk5MTVfdHQpCj4+ICsgICAg
ICAgICAgICAgICByZXR1cm4gTlVMTDsKPj4gKwo+PiArICAgICAgIGlmIChvYmotPmZsYWdzICYg
STkxNV9CT19BTExPQ19DUFVfQ0xFQVIgJiYKPj4gKyAgICAgICAgICAgbWFuLT51c2VfdHQpCj4+
ICsgICAgICAgICAgICAgICBwYWdlX2ZsYWdzIHw9IFRUTV9QQUdFX0ZMQUdfWkVST19BTExPQzsK
Pj4gKwo+PiArICAgICAgIHJldCA9IHR0bV90dF9pbml0KCZpOTE1X3R0LT50dG0sIGJvLCBwYWdl
X2ZsYWdzLCB0dG1fY2FjaGVkKTsKPj4gKyAgICAgICBpZiAocmV0KSB7Cj4+ICsgICAgICAgICAg
ICAgICBrZnJlZShpOTE1X3R0KTsKPj4gKyAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+PiAr
ICAgICAgIH0KPj4gKwo+PiArICAgICAgIGk5MTVfdHQtPmRldiA9IG9iai0+YmFzZS5kZXYtPmRl
djsKPj4gKwo+PiArICAgICAgIHJldHVybiAmaTkxNV90dC0+dHRtOwo+PiArfQo+PiArCj4+ICtz
dGF0aWMgdm9pZCBpOTE1X3R0bV90dF91bnBvcHVsYXRlKHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2
LCBzdHJ1Y3QgdHRtX3R0ICp0dG0pCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfdHRtX3R0
ICppOTE1X3R0ID0gY29udGFpbmVyX29mKHR0bSwgdHlwZW9mKCppOTE1X3R0KSwgdHRtKTsKPj4g
Kwo+PiArICAgICAgIGlmIChpOTE1X3R0LT5jYWNoZWRfc3QpIHsKPj4gKyAgICAgICAgICAgICAg
IGRtYV91bm1hcF9zZ3RhYmxlKGk5MTVfdHQtPmRldiwgaTkxNV90dC0+Y2FjaGVkX3N0LAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRE1BX0JJRElSRUNUSU9OQUwsIDApOwo+
PiArICAgICAgICAgICAgICAgc2dfZnJlZV90YWJsZShpOTE1X3R0LT5jYWNoZWRfc3QpOwo+PiAr
ICAgICAgICAgICAgICAga2ZyZWUoaTkxNV90dC0+Y2FjaGVkX3N0KTsKPj4gKyAgICAgICAgICAg
ICAgIGk5MTVfdHQtPmNhY2hlZF9zdCA9IE5VTEw7Cj4+ICsgICAgICAgfQo+PiArICAgICAgIHR0
bV9wb29sX2ZyZWUoJmJkZXYtPnBvb2wsIHR0bSk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lk
IGk5MTVfdHRtX3R0X2Rlc3Ryb3koc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsIHN0cnVjdCB0dG1f
dHQgKnR0bSkKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgaTkxNV90dG1fdHQgKmk5MTVfdHQgPSBj
b250YWluZXJfb2YodHRtLCB0eXBlb2YoKmk5MTVfdHQpLCB0dG0pOwo+PiArCj4+ICsgICAgICAg
dHRtX3R0X2Rlc3Ryb3lfY29tbW9uKGJkZXYsIHR0bSk7Cj4+ICsgICAgICAga2ZyZWUoaTkxNV90
dCk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBib29sIGk5MTVfdHRtX2V2aWN0aW9uX3ZhbHVhYmxl
KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCB0dG1fcGxhY2UgKnBsYWNlKQo+PiArewo+PiAr
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBpOTE1X3R0bV90b19nZW0o
Ym8pOwo+PiArCj4+ICsgICAgICAgLyogV2lsbCBkbyBmb3Igbm93LiBPdXIgcGlubmVkIG9iamVj
dHMgYXJlIHN0aWxsIG9uIFRUTSdzIExSVSBsaXN0cyAqLwo+PiArICAgICAgIGlmICghaTkxNV9n
ZW1fb2JqZWN0X2V2aWN0YWJsZShvYmopKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNl
Owo+PiArCj4+ICsgICAgICAgLyogVGhpcyBpc24ndCB2YWxpZCB3aXRoIGEgYnVkZHkgYWxsb2Nh
dG9yICovCj4+ICsgICAgICAgcmV0dXJuIHR0bV9ib19ldmljdGlvbl92YWx1YWJsZShibywgcGxh
Y2UpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgdm9pZCBpOTE1X3R0bV9ldmljdF9mbGFncyhzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgdHRtX3BsYWNlbWVudCAqcGxhY2VtZW50KQo+PiArewo+PiArICAgICAgICpw
bGFjZW1lbnQgPSBpOTE1X3N5c19wbGFjZW1lbnQ7Cj4gV2hhdCdzIHRoZSBzdG9yeSBoZXJlPwoK
SGVyZSBpdCdzIGluZGljYXRlZCB0aGF0IHRoZSBibyBpcyBhYm91dCB0byBiZSBldmljdGVkIGFu
ZCBUVE0gYXNrcyB1cyAKd2hlcmUgdG8gcGxhY2UgaXQuIFdlIHBsYWNlIGl0IGluIHN5c3RlbSBt
ZW1vcnksIGJ1dCB0aGF0IHN5c3RlbSBtZW1vcnkgCmlzIG5vdCB5ZXQgdmlzaWJsZSB0byBHRU0u
CgoKPgo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IGk5MTVfdHRtX21vdmVfbm90aWZ5KHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiA9IGk5MTVfdHRtX3RvX2dlbShibyk7Cj4+ICsgICAgICAgaW50IHJl
dDsKPj4gKwo+PiArICAgICAgIHJldCA9IGk5MTVfZ2VtX29iamVjdF91bmJpbmQob2JqLCBJOTE1
X0dFTV9PQkpFQ1RfVU5CSU5EX0FDVElWRSk7Cj4+ICsgICAgICAgaWYgKHJldCkKPj4gKyAgICAg
ICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICsKPj4gKyAgICAgICByZXQgPSBfX2k5MTVfZ2VtX29i
amVjdF9wdXRfcGFnZXMob2JqKTsKPj4gKyAgICAgICBpZiAocmV0KQo+PiArICAgICAgICAgICAg
ICAgcmV0dXJuIHJldDsKPj4gKwo+PiArICAgICAgIHJldHVybiAwOwo+PiArfQo+PiArCj4+ICtz
dGF0aWMgdm9pZCBpOTE1X3R0bV9mcmVlX2NhY2hlZF9pb19zdChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQo+PiArewo+PiArICAgICAgIGlmIChvYmotPnR0bS5jYWNoZWRfaW9fc3Qp
IHsKPj4gKyAgICAgICAgICAgICAgIHNnX2ZyZWVfdGFibGUob2JqLT50dG0uY2FjaGVkX2lvX3N0
KTsKPj4gKyAgICAgICAgICAgICAgIGtmcmVlKG9iai0+dHRtLmNhY2hlZF9pb19zdCk7Cj4+ICsg
ICAgICAgICAgICAgICBvYmotPnR0bS5jYWNoZWRfaW9fc3QgPSBOVUxMOwo+PiArICAgICAgIH0K
Pj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgaTkxNV90dG1fcHVyZ2Uoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmpl
Y3QgKmJvID0gaTkxNV9nZW1fdG9fdHRtKG9iaik7Cj4+ICsKPj4gKyAgICAgICBpZiAob2JqLT5t
bS5tYWR2ID09IF9fSTkxNV9NQURWX1BVUkdFRCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybjsK
Pj4gKwo+PiArICAgICAgIGk5MTVfdHRtX2ZyZWVfY2FjaGVkX2lvX3N0KG9iaik7Cj4+ICsKPj4g
KyAgICAgICB0dG1fcmVzb3VyY2VfZnJlZShibywgJmJvLT5tZW0pOwo+PiArICAgICAgIGlmIChi
by0+dHRtKSB7Cj4+ICsgICAgICAgICAgICAgICB0dG1fdHRfdW5wb3B1bGF0ZShiby0+YmRldiwg
Ym8tPnR0bSk7Cj4+ICsgICAgICAgICAgICAgICBiby0+dHRtLT5wYWdlX2ZsYWdzIHw9IFRUTV9Q
QUdFX0ZMQUdfWkVST19BTExPQzsKPj4gKyAgICAgICB9Cj4+ICsKPj4gKyAgICAgICBvYmotPm1t
Lm1hZHYgPSBfX0k5MTVfTUFEVl9QVVJHRUQ7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGk5
MTVfdHRtX3N3YXBfbm90aWZ5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCj4+ICt7Cj4+
ICsgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IGk5MTVfdHRtX3RvX2dl
bShibyk7Cj4+ICsgICAgICAgaW50IHJldCA9IGk5MTVfdHRtX21vdmVfbm90aWZ5KGJvKTsKPj4g
Kwo+PiArICAgICAgIEdFTV9XQVJOX09OKHJldCk7Cj4+ICsgICAgICAgR0VNX1dBUk5fT04ob2Jq
LT50dG0uY2FjaGVkX2lvX3N0KTsKPj4gKyAgICAgICBpZiAoIXJldCAmJiBvYmotPm1tLm1hZHYg
IT0gSTkxNV9NQURWX1dJTExORUVEKQo+PiArICAgICAgICAgICAgICAgaTkxNV90dG1fcHVyZ2Uo
b2JqKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgaTkxNV90dG1fZGVsZXRlX21lbV9ub3Rp
Znkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsKPj4gKwo+PiAr
ICAgICAgIGlmIChsaWtlbHkob2JqKSkgewo+PiArICAgICAgICAgICAgICAgLyogVGhpcyByZWxl
YXNlcyBhbGwgZ2VtIG9iamVjdCBiaW5kaW5ncyB0byB0aGUgYmFja2VuZC4gKi8KPj4gKyAgICAg
ICAgICAgICAgIF9faTkxNV9nZW1fZnJlZV9vYmplY3Qob2JqKTsKPj4gKyAgICAgICB9Cj4+ICt9
Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqCj4+ICtpOTE1X3R0
bV9yZWdpb24oc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsIGludCB0dG1fbWVtX3R5cGUpCj4+ICt7
Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjb250YWluZXJfb2Yo
YmRldiwgdHlwZW9mKCppOTE1KSwgYmRldik7Cj4+ICsKPj4gKyAgICAgICAvKiBUaGVyZSdzIHNv
bWUgcm9vbSBmb3Igb3B0aW1pemF0aW9uIGhlcmUuLi4gKi8KPj4gKyAgICAgICBHRU1fQlVHX09O
KHR0bV9tZW1fdHlwZSAhPSBJOTE1X1BMX1NZU1RFTSAmJgo+PiArICAgICAgICAgICAgICAgICAg
dHRtX21lbV90eXBlIDwgSTkxNV9QTF9MTUVNMCk7Cj4+ICsgICAgICAgaWYgKHR0bV9tZW1fdHlw
ZSA9PSBJOTE1X1BMX1NZU1RFTSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiBpbnRlbF9tZW1v
cnlfcmVnaW9uX2xvb2t1cChpOTE1LCBJTlRFTF9NRU1PUllfU1lTVEVNLAo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDApOwo+IFNvIGF0IHRoZSBt
b21lbnQgd2UganVzdCBoYXZlIGxtZW0gdXNpbmcgdGhlIG5ldyB0dG0gYmFja2VuZCwgcmlnaHQ/
Cj4gU3RvbGVuIGFuZCBzeXN0ZW0gYXJlIHVuY2hhbmdlZD8KCkFUTSB5ZXMuCgo+Cj4+ICsKPj4g
KyAgICAgICByZXR1cm4gaW50ZWxfbWVtb3J5X3JlZ2lvbl9sb29rdXAoaTkxNSwgSU5URUxfTUVN
T1JZX0xPQ0FMLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0
dG1fbWVtX3R5cGUgLSBJOTE1X1BMX0xNRU0wKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIHN0cnVj
dCBzZ190YWJsZSAqaTkxNV90dG1fdHRfZ2V0X3N0KHN0cnVjdCB0dG1fdHQgKnR0bSkKPj4gK3sK
Pj4gKyAgICAgICBzdHJ1Y3QgaTkxNV90dG1fdHQgKmk5MTVfdHQgPSBjb250YWluZXJfb2YodHRt
LCB0eXBlb2YoKmk5MTVfdHQpLCB0dG0pOwo+PiArICAgICAgIHN0cnVjdCBzY2F0dGVybGlzdCAq
c2c7Cj4+ICsgICAgICAgc3RydWN0IHNnX3RhYmxlICpzdDsKPj4gKyAgICAgICBpbnQgcmV0Owo+
PiArCj4+ICsgICAgICAgaWYgKGk5MTVfdHQtPmNhY2hlZF9zdCkKPj4gKyAgICAgICAgICAgICAg
IHJldHVybiBpOTE1X3R0LT5jYWNoZWRfc3Q7Cj4+ICsKPj4gKyAgICAgICBzdCA9IGt6YWxsb2Mo
c2l6ZW9mKCpzdCksIEdGUF9LRVJORUwpOwo+PiArICAgICAgIGlmICghc3QpCj4+ICsgICAgICAg
ICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPj4gKwo+PiArICAgICAgIHNnID0gX19z
Z19hbGxvY190YWJsZV9mcm9tX3BhZ2VzCj4+ICsgICAgICAgICAgICAgICAoc3QsIHR0bS0+cGFn
ZXMsIHR0bS0+bnVtX3BhZ2VzLCAwLAo+PiArICAgICAgICAgICAgICAgICh1bnNpZ25lZCBsb25n
KXR0bS0+bnVtX3BhZ2VzIDw8IFBBR0VfU0hJRlQsCj4+ICsgICAgICAgICAgICAgICAgaTkxNV9z
Z19zZWdtZW50X3NpemUoKSwgTlVMTCwgMCwgR0ZQX0tFUk5FTCk7Cj4+ICsgICAgICAgaWYgKElT
X0VSUihzZykpIHsKPj4gKyAgICAgICAgICAgICAgIGtmcmVlKHN0KTsKPj4gKyAgICAgICAgICAg
ICAgIHJldHVybiBFUlJfQ0FTVChzZyk7Cj4+ICsgICAgICAgfQo+PiArCj4+ICsgICAgICAgcmV0
ID0gZG1hX21hcF9zZ3RhYmxlKGk5MTVfdHQtPmRldiwgc3QsIERNQV9CSURJUkVDVElPTkFMLCAw
KTsKPj4gKyAgICAgICBpZiAocmV0KSB7Cj4+ICsgICAgICAgICAgICAgICBzZ19mcmVlX3RhYmxl
KHN0KTsKPj4gKyAgICAgICAgICAgICAgIGtmcmVlKHN0KTsKPj4gKyAgICAgICAgICAgICAgIHJl
dHVybiBFUlJfUFRSKHJldCk7Cj4+ICsgICAgICAgfQo+PiArCj4+ICsgICAgICAgaTkxNV90dC0+
Y2FjaGVkX3N0ID0gc3Q7Cj4+ICsgICAgICAgcmV0dXJuIHN0Owo+PiArfQo+PiArCj4+ICtzdGF0
aWMgc3RydWN0IHNnX3RhYmxlICoKPj4gK2k5MTVfdHRtX3Jlc291cmNlX2dldF9zdChzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IHR0bV9yZXNvdXJjZSAqcmVzKQo+PiArewo+PiArICAgICAgIHN0cnVjdCB0dG1fYnVmZmVy
X29iamVjdCAqYm8gPSBpOTE1X2dlbV90b190dG0ob2JqKTsKPj4gKyAgICAgICBzdHJ1Y3QgdHRt
X3Jlc291cmNlX21hbmFnZXIgKm1hbiA9Cj4+ICsgICAgICAgICAgICAgICB0dG1fbWFuYWdlcl90
eXBlKGJvLT5iZGV2LCByZXMtPm1lbV90eXBlKTsKPj4gKwo+PiArICAgICAgIGlmIChtYW4tPnVz
ZV90dCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiBpOTE1X3R0bV90dF9nZXRfc3QoYm8tPnR0
bSk7Cj4+ICsKPj4gKyAgICAgICByZXR1cm4gaW50ZWxfcmVnaW9uX3R0bV9ub2RlX3RvX3N0KG9i
ai0+bW0ucmVnaW9uLCByZXMtPm1tX25vZGUpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IGk5
MTVfdHRtX21vdmUoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgYm9vbCBldmljdCwKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHR0bV9yZXNvdXJjZSAqbmV3X21lbSwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB0dG1fcGxhY2UgKmhvcCkKPj4gK3sK
Pj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9f
Z2VtKGJvKTsKPj4gKyAgICAgICBzdHJ1Y3QgdHRtX3Jlc291cmNlX21hbmFnZXIgKm5ld19tYW4g
PQo+PiArICAgICAgICAgICAgICAgdHRtX21hbmFnZXJfdHlwZShiby0+YmRldiwgbmV3X21lbS0+
bWVtX3R5cGUpOwo+PiArICAgICAgIHN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlciAqb2xkX21h
biA9Cj4+ICsgICAgICAgICAgICAgICB0dG1fbWFuYWdlcl90eXBlKGJvLT5iZGV2LCBiby0+bWVt
Lm1lbV90eXBlKTsKPj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbmV3X3Jl
ZywgKm9sZF9yZWc7Cj4+ICsgICAgICAgdW5pb24gewo+PiArICAgICAgICAgICAgICAgc3RydWN0
IGk5MTVfdHRtX2ttYXBfaXRlcl90dCB0dDsKPj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1
X3R0bV9rbWFwX2l0ZXJfaW9tYXAgaW87Cj4+ICsgICAgICAgfSBfbmV3X2l0ZXIsIF9vbGRfaXRl
cjsKPj4gKyAgICAgICBzdHJ1Y3QgaTkxNV90dG1fa21hcF9pdGVyICpuZXdfaXRlciwgKm9sZF9p
dGVyOwo+PiArICAgICAgIHN0cnVjdCBzZ190YWJsZSAqbmV3X3N0Owo+PiArICAgICAgIGludCBy
ZXQ7Cj4+ICsKPj4gKyAgICAgICBuZXdfcmVnID0gaTkxNV90dG1fcmVnaW9uKGJvLT5iZGV2LCBu
ZXdfbWVtLT5tZW1fdHlwZSk7Cj4+ICsgICAgICAgb2xkX3JlZyA9IGk5MTVfdHRtX3JlZ2lvbihi
by0+YmRldiwgYm8tPm1lbS5tZW1fdHlwZSk7Cj4+ICsgICAgICAgR0VNX0JVR19PTighbmV3X3Jl
ZyB8fCAhb2xkX3JlZyk7Cj4+ICsKPj4gKyAgICAgICAvKiBTeW5jIGZvciBub3cuIFdlIGNvdWxk
IGRvIHRoZSBhY3R1YWwgY29weSBhc3luYy4gKi8KPj4gKyAgICAgICByZXQgPSB0dG1fYm9fd2Fp
dF9jdHgoYm8sIGN0eCk7Cj4+ICsgICAgICAgaWYgKHJldCkKPj4gKyAgICAgICAgICAgICAgIHJl
dHVybiByZXQ7Cj4+ICsKPj4gKyAgICAgICByZXQgPSBpOTE1X3R0bV9tb3ZlX25vdGlmeShibyk7
Cj4+ICsgICAgICAgaWYgKHJldCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICsK
Pj4gKyAgICAgICBpZiAob2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFEVl9XSUxMTkVFRCkgewo+PiAr
ICAgICAgICAgICAgICAgaTkxNV90dG1fcHVyZ2Uob2JqKTsKPj4gKyAgICAgICAgICAgICAgIHR0
bV9yZXNvdXJjZV9mcmVlKGJvLCBuZXdfbWVtKTsKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAw
Owo+PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIC8qIFBvcHVsYXRlIHR0bSB3aXRoIHBhZ2Vz
IGlmIG5lZWRlZC4gVHlwaWNhbGx5IHN5c3RlbSBtZW1vcnkuICovCj4+ICsgICAgICAgaWYgKG5l
d19tYW4tPnVzZV90dCAmJiBiby0+dHRtKSB7Cj4+ICsgICAgICAgICAgICAgICByZXQgPSB0dG1f
dHRfcG9wdWxhdGUoYm8tPmJkZXYsIGJvLT50dG0sIGN0eCk7Cj4+ICsgICAgICAgICAgICAgICBp
ZiAocmV0KQo+PiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+PiArICAgICAg
IH0KPj4gKwo+PiArICAgICAgIG5ld19zdCA9IGk5MTVfdHRtX3Jlc291cmNlX2dldF9zdChvYmos
IG5ld19tZW0pOwo+PiArICAgICAgIGlmIChJU19FUlIobmV3X3N0KSkKPj4gKyAgICAgICAgICAg
ICAgIHJldHVybiBQVFJfRVJSKG5ld19zdCk7Cj4+ICsKPj4gKyAgICAgICBuZXdfaXRlciA9IG5l
d19tYW4tPnVzZV90dCA/Cj4+ICsgICAgICAgICAgICAgICBpOTE1X3R0bV9rbWFwX2l0ZXJfdHRf
aW5pdCgmX25ld19pdGVyLnR0LCBiby0+dHRtKSA6Cj4+ICsgICAgICAgICAgICAgICBpOTE1X3R0
bV9rbWFwX2l0ZXJfaW9tYXBfaW5pdCgmX25ld19pdGVyLmlvLCAmbmV3X3JlZy0+aW9tYXAsCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdfc3QsIG5l
d19yZWctPnJlZ2lvbi5zdGFydCk7Cj4+ICsKPj4gKyAgICAgICBvbGRfaXRlciA9IG9sZF9tYW4t
PnVzZV90dCA/Cj4+ICsgICAgICAgICAgICAgICBpOTE1X3R0bV9rbWFwX2l0ZXJfdHRfaW5pdCgm
X29sZF9pdGVyLnR0LCBiby0+dHRtKSA6Cj4+ICsgICAgICAgICAgICAgICBpOTE1X3R0bV9rbWFw
X2l0ZXJfaW9tYXBfaW5pdCgmX29sZF9pdGVyLmlvLCAmb2xkX3JlZy0+aW9tYXAsCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPnR0bS5jYWNoZWRf
aW9fc3QsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBv
bGRfcmVnLT5yZWdpb24uc3RhcnQpOwo+PiArCj4+ICsgICAgICAgaTkxNV90dG1fbW92ZV9tZW1j
cHkoYm8sIG5ld19tZW0sIG5ld19pdGVyLCBvbGRfaXRlcik7Cj4+ICsgICAgICAgaTkxNV90dG1f
ZnJlZV9jYWNoZWRfaW9fc3Qob2JqKTsKPj4gKwo+PiArICAgICAgIGlmICghbmV3X21hbi0+dXNl
X3R0KQo+PiArICAgICAgICAgICAgICAgb2JqLT50dG0uY2FjaGVkX2lvX3N0ID0gbmV3X3N0Owo+
PiArCj4+ICsgICAgICAgcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gK3N0cnVjdCB0dG1fZGV2aWNl
X2Z1bmNzIGk5MTVfdHRtX2JvX2RyaXZlciA9IHsKPj4gKyAgICAgICAudHRtX3R0X2NyZWF0ZSA9
IGk5MTVfdHRtX3R0X2NyZWF0ZSwKPj4gKyAgICAgICAudHRtX3R0X3VucG9wdWxhdGUgPSBpOTE1
X3R0bV90dF91bnBvcHVsYXRlLAo+PiArICAgICAgIC50dG1fdHRfZGVzdHJveSA9IGk5MTVfdHRt
X3R0X2Rlc3Ryb3ksCj4+ICsgICAgICAgLmV2aWN0aW9uX3ZhbHVhYmxlID0gaTkxNV90dG1fZXZp
Y3Rpb25fdmFsdWFibGUsCj4+ICsgICAgICAgLmV2aWN0X2ZsYWdzID0gaTkxNV90dG1fZXZpY3Rf
ZmxhZ3MsCj4+ICsgICAgICAgLm1vdmUgPSBpOTE1X3R0bV9tb3ZlLAo+PiArICAgICAgIC52ZXJp
ZnlfYWNjZXNzID0gTlVMTCwKPj4gKyAgICAgICAuc3dhcF9ub3RpZnkgPSBpOTE1X3R0bV9zd2Fw
X25vdGlmeSwKPj4gKyAgICAgICAuZGVsZXRlX21lbV9ub3RpZnkgPSBpOTE1X3R0bV9kZWxldGVf
bWVtX25vdGlmeSwKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBpbnQgaTkxNV90dG1fZ2V0X3BhZ2Vz
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0
IHR0bV9idWZmZXJfb2JqZWN0ICpibyA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOwo+PiArICAgICAg
IHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCBjdHggPSB7Cj4+ICsgICAgICAgICAgICAgICAuaW50
ZXJydXB0aWJsZSA9IHRydWUsCj4+ICsgICAgICAgICAgICAgICAubm9fd2FpdF9ncHUgPSBmYWxz
ZSwKPj4gKyAgICAgICB9Owo+PiArICAgICAgIHN0cnVjdCBzZ190YWJsZSAqc3Q7Cj4+ICsgICAg
ICAgaW50IHJldDsKPj4gKwo+PiArICAgICAgIC8qIFN3YXAgaW4uICovCj4+ICsgICAgICAgaWYg
KGJvLT50dG0gJiYgKGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NXQVBQRUQp
KSB7Cj4+ICsgICAgICAgICAgICAgICByZXQgPSB0dG1fdHRfcG9wdWxhdGUoYm8tPmJkZXYsIGJv
LT50dG0sICZjdHgpOwo+PiArICAgICAgICAgICAgICAgaWYgKHJldCkKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4gKyAgICAgICB9Cj4+ICsKPj4gKyAgICAgICAvKiBN
b3ZlIHRvIHRoZSByZXF1ZXN0ZWQgcGxhY2VtZW50LiAqLwo+PiArICAgICAgIHJldCA9IHR0bV9i
b192YWxpZGF0ZShibywgJmk5MTVfbG1lbTBfcGxhY2VtZW50LCAmY3R4KTsKPj4gKyAgICAgICBp
ZiAocmV0KQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldCA9PSAtRU5PU1BDID8gLUVOWElP
IDogcmV0Owo+PiArCj4+ICsgICAgICAgLyogT2JqZWN0IGVpdGhlciBoYXMgYSBwYWdlIHZlY3Rv
ciBvciBpcyBhbiBpb21lbSBvYmplY3QgKi8KPj4gKyAgICAgICBzdCA9IGJvLT50dG0gPyBpOTE1
X3R0bV90dF9nZXRfc3QoYm8tPnR0bSkgOiBvYmotPnR0bS5jYWNoZWRfaW9fc3Q7Cj4+ICsgICAg
ICAgaWYgKElTX0VSUihzdCkpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihzdCk7
Cj4+ICsKPj4gKyAgICAgICBfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMob2JqLCBzdCwgaTkx
NV9zZ19kbWFfc2l6ZXMoc3QtPnNnbCkpOwo+PiArCj4+ICsgICAgICAgaTkxNV90dG1fYWRqdXN0
X2xydShvYmopOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIHJldDsKPj4gK30KPj4gKwo+PiArc3Rh
dGljIHZvaWQgaTkxNV90dG1fcHV0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnN0
KQo+PiArewo+PiArICAgICAgIC8qCj4+ICsgICAgICAgICogV2UncmUgY3VycmVudGx5IG5vdCBj
YWxsZWQgZnJvbSBhIHNocmlua2VyLCBzbyBwdXRfcGFnZXMoKQo+PiArICAgICAgICAqIHR5cGlj
YWxseSBtZWFucyB0aGUgb2JqZWN0IGlzIGFib3V0IHRvIGRlc3Ryb3llZCwgb3IgY2FsbGVkCj4+
ICsgICAgICAgICogZnJvbSBtb3ZlX25vdGlmeSgpLiBTbyBqdXN0IGF2b2lkIGRvaW5nIG11Y2gg
Zm9yIG5vdy4KPj4gKyAgICAgICAgKiBJZiB0aGUgb2JqZWN0IGlzIG5vdCBkZXN0cm95ZWQgbmV4
dCwgVGhlIFRUTSBldmljdGlvbiBsb2dpYwo+PiArICAgICAgICAqIGFuZCBzaHJpbmtlcnMgd2ls
bCBtb3ZlIGl0IG91dCBpZiBuZWVkZWQuCj4+ICsgICAgICAgICovCj4+ICsKPj4gKyAgICAgICBp
OTE1X3R0bV9hZGp1c3RfbHJ1KG9iaik7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIGk5MTVf
dHRtX2FkanVzdF9scnUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPj4gK3sKPj4g
KyAgICAgICBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvID0gaTkxNV9nZW1fdG9fdHRtKG9i
aik7Cj4+ICsKPj4gKyAgICAgICAvKgo+PiArICAgICAgICAqIERvbid0IG1hbmlwdWxhdGUgdGhl
IFRUTSBMUlVzIHdoaWxlIGluIFRUTSBibyBkZXN0cnVjdGlvbi4KPj4gKyAgICAgICAgKiBXZSdy
ZSBjYWxsZWQgdGhyb3VnaCBpOTE1X3R0bV9kZWxldGVfbWVtX25vdGlmeSgpLgo+PiArICAgICAg
ICAqLwo+PiArICAgICAgIGlmICgha3JlZl9yZWFkKCZiby0+a3JlZikpCj4+ICsgICAgICAgICAg
ICAgICByZXR1cm47Cj4+ICsKPj4gKyAgICAgICAvKgo+PiArICAgICAgICAqIFB1dCBvbiB0aGUg
Y29ycmVjdCBMUlUgbGlzdCBkZXBlbmRpbmcgb24gdGhlIE1BRFYgc3RhdHVzCj4+ICsgICAgICAg
ICovCj4+ICsgICAgICAgc3Bpbl9sb2NrKCZiby0+YmRldi0+bHJ1X2xvY2spOwo+PiArICAgICAg
IGlmIChvYmotPm1tLm1hZHYgIT0gSTkxNV9NQURWX1dJTExORUVEKSB7Cj4+ICsgICAgICAgICAg
ICAgICBiby0+cHJpb3JpdHkgPSBJOTE1X1RUTV9QUklPX1BVUkdFOwo+PiArICAgICAgIH0gZWxz
ZSBpZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2JqKSkgewo+PiArICAgICAgICAgICAg
ICAgaWYgKGJvLT5wcmlvcml0eSA8IEk5MTVfVFRNX1BSSU9fSEFTX1BBR0VTKQo+PiArICAgICAg
ICAgICAgICAgICAgICAgICBiby0+cHJpb3JpdHkgPSBJOTE1X1RUTV9QUklPX0hBU19QQUdFUzsK
Pj4gKyAgICAgICB9IGVsc2Ugewo+PiArICAgICAgICAgICAgICAgaWYgKGJvLT5wcmlvcml0eSA+
IEk5MTVfVFRNX1BSSU9fTk9fUEFHRVMpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGJvLT5w
cmlvcml0eSA9IEk5MTVfVFRNX1BSSU9fTk9fUEFHRVM7Cj4+ICsgICAgICAgfQo+PiArCj4+ICsg
ICAgICAgdHRtX2JvX21vdmVfdG9fbHJ1X3RhaWwoYm8sICZiby0+bWVtLCBOVUxMKTsKPj4gKyAg
ICAgICBzcGluX3VubG9jaygmYm8tPmJkZXYtPmxydV9sb2NrKTsKPj4gK30KPj4gKwo+PiArLyoK
Pj4gKyAqIFRUTS1iYWNrZWQgZ2VtIG9iamVjdCBkZXN0cnVjdGlvbiByZXF1aXJlcyBzb21lIGNs
YXJpZmljYXRpb24uCj4+ICsgKiBCYXNpY2FsbHkgd2UgaGF2ZSB0d28gcG9zc2liaWxpdGllcyBo
ZXJlLiBXZSBjYW4gZWl0aGVyIHJlbHkgb24gdGhlCj4+ICsgKiBpOTE1IGRlbGF5ZWQgZGVzdHJ1
Y3Rpb24gYW5kIHB1dCB0aGUgVFRNIG9iamVjdCB3aGVuIHRoZSBvYmplY3QKPj4gKyAqIGlzIGlk
bGUuIFRoaXMgd291bGQgYmUgZGV0ZWN0ZWQgYnkgVFRNIHdoaWNoIHdvdWxkIGJ5cGFzcyB0aGUK
Pj4gKyAqIFRUTSBkZWxheWVkIGRlc3Ryb3kgaGFuZGxpbmcuIFRoZSBvdGhlciBhcHByb2FjaCBp
cyB0byBwdXQgdGhlIFRUTQo+PiArICogb2JqZWN0IGVhcmx5IGFuZCByZWx5IG9uIHRoZSBUVE0g
ZGVzdHJveWVkIGhhbmRsaW5nLCBhbmQgdGhlbiBmcmVlCj4+ICsgKiB0aGUgbGVmdG92ZXIgcGFy
dHMgb2YgdGhlIEdFTSBvYmplY3Qgb25jZSBUVE0ncyBkZXN0cm95ZWQgbGlzdCBoYW5kbGluZyBp
cwo+PiArICogY29tcGxldGUuIEZvciBub3csIHdlIHJlbHkgb24gdGhlIGxhdHRlciBmb3IgdHdv
IHJlYXNvbnM6Cj4+ICsgKiBhKSBUVE0gY2FuIGV2aWN0IGFuIG9iamVjdCBldmVuIHdoZW4gaXQn
cyBvbiB0aGUgZGVsYXllZCBkZXN0cm95IGxpc3QsCj4+ICsgKiB3aGljaCBpbiB0aGVvcnkgYWxs
b3dzIGZvciBjb21wbGV0ZSBldmljdGlvbi4KPj4gKyAqIGIpIFRoZXJlIGlzIHdvcmsgZ29pbmcg
b24gaW4gVFRNIHRvIGFsbG93IGZyZWVpbmcgYW4gb2JqZWN0IGV2ZW4gd2hlbgo+PiArICogaXQn
cyBub3QgaWRsZSwgYW5kIHVzaW5nIHRoZSBUVE0gZGVzdHJveWVkIGxpc3QgaGFuZGxpbmcgY291
bGQgaGVscCB1cwo+PiArICogYmVuZWZpdCBmcm9tIHRoYXQuCj4+ICsgKi8KPj4gK3N0YXRpYyB2
b2lkIGk5MTVfdHRtX2RlbGF5ZWRfZnJlZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQo+PiArewo+PiArICAgICAgIHR0bV9ib19wdXQoaTkxNV9nZW1fdG9fdHRtKG9iaikpOwo+PiAr
fQo+PiArCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5
MTVfZ2VtX3R0bV9vYmpfb3BzID0gewo+PiArICAgICAgIC5uYW1lID0gImk5MTVfZ2VtX29iamVj
dF90dG0iLAo+PiArICAgICAgIC5mbGFncyA9IEk5MTVfR0VNX09CSkVDVF9IQVNfSU9NRU0sCj4+
ICsKPj4gKyAgICAgICAuZ2V0X3BhZ2VzID0gaTkxNV90dG1fZ2V0X3BhZ2VzLAo+PiArICAgICAg
IC5wdXRfcGFnZXMgPSBpOTE1X3R0bV9wdXRfcGFnZXMsCj4+ICsgICAgICAgLnRydW5jYXRlID0g
aTkxNV90dG1fcHVyZ2UsCj4+ICsgICAgICAgLmFkanVzdF9scnUgPSBpOTE1X3R0bV9hZGp1c3Rf
bHJ1LAo+PiArICAgICAgIC5kZWxheWVkX2ZyZWUgPSBpOTE1X3R0bV9kZWxheWVkX2ZyZWUsCj4+
ICt9Owo+PiArCj4+ICt2b2lkIGk5MTVfdHRtX2JvX2Rlc3Ryb3koc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibykKPj4gK3sKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsKPj4gKwo+PiArICAgICAgIGk5MTVfZ2VtX29iamVj
dF9yZWxlYXNlX21lbW9yeV9yZWdpb24ob2JqKTsKPj4gKyAgICAgICBjYWxsX3JjdSgmb2JqLT5y
Y3UsIF9faTkxNV9nZW1fZnJlZV9vYmplY3RfcmN1KTsKPj4gK30KPj4gKwo+PiArLyoqCj4+ICsg
KiBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdCAtIEluaXRpYWxpemUgYSB0dG0tYmFja2VkIGk5
MTUgZ2VtIG9iamVjdAo+PiArICogQG1lbTogVGhlIGluaXRpYWwgbWVtb3J5IHJlZ2lvbiBmb3Ig
dGhlIG9iamVjdC4KPj4gKyAqIEBvYmo6IFRoZSBnZW0gb2JqZWN0Lgo+PiArICogQHNpemU6IE9i
amVjdCBzaXplIGluIGJ5dGVzLgo+PiArICogQGZsYWdzOiBnZW0gb2JqZWN0IGZsYWdzLgo+PiAr
ICoKPj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZh
aWx1cmUuCj4+ICsgKi8KPj4gK2ludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3Qg
aW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlc291cmNlX3NpemVfdCBzaXplLAo+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgaW50IGZsYWdzKQo+PiArewo+PiArICAgICAgIHN0YXRpYyBz
dHJ1Y3QgbG9ja19jbGFzc19rZXkgbG9ja19jbGFzczsKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IG1lbS0+aTkxNTsKPj4gKyAgICAgICBzaXplX3QgYWxpZ25tZW50
ID0gMDsKPj4gKyAgICAgICBpbnQgcmV0Owo+PiArCj4+ICsgICAgICAgLyogQWRqdXN0IGFsaWdu
bWVudCB0byBHUFUtIGFuZCBDUFUgaHVnZSBwYWdlIHNpemVzLiAqLwo+PiArCj4+ICsgICAgICAg
aWYgKG1lbS0+aXNfcmFuZ2VfbWFuYWdlcikgewo+PiArICAgICAgICAgICAgICAgaWYgKHNpemUg
Pj0gU1pfMUcpCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGFsaWdubWVudCA9IFNaXzFHID4+
IFBBR0VfU0hJRlQ7Cj4+ICsgICAgICAgICAgICAgICBlbHNlIGlmIChzaXplID49IFNaXzJNKQo+
PiArICAgICAgICAgICAgICAgICAgICAgICBhbGlnbm1lbnQgPSBTWl8yTSA+PiBQQUdFX1NISUZU
Owo+PiArICAgICAgICAgICAgICAgZWxzZSBpZiAoc2l6ZSA+PSBTWl82NEspCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGFsaWdubWVudCA9IFNaXzY0SyA+PiBQQUdFX1NISUZUOwo+PiArICAg
ICAgIH0KPj4gKwo+PiArICAgICAgIGRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+
ZHJtLCAmb2JqLT5iYXNlLCBzaXplKTsKPj4gKyAgICAgICBpOTE1X2dlbV9vYmplY3RfaW5pdChv
YmosICZpOTE1X2dlbV90dG1fb2JqX29wcywgJmxvY2tfY2xhc3MsIGZsYWdzKTsKPj4gKyAgICAg
ICBpOTE1X2dlbV9vYmplY3RfaW5pdF9tZW1vcnlfcmVnaW9uKG9iaiwgbWVtKTsKPj4gKyAgICAg
ICBpOTE1X2dlbV9vYmplY3RfbWFrZV91bnNocmlua2FibGUob2JqKTsKPj4gKyAgICAgICBvYmot
PnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0RPTUFJTl9XQyB8IEk5MTVfR0VNX0RPTUFJTl9HVFQ7
Cj4+ICsgICAgICAgaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9jb2hlcmVuY3kob2JqLCBJOTE1
X0NBQ0hFX05PTkUpOwo+PiArCj4+ICsgICAgICAgcmV0ID0gdHRtX2JvX2luaXQoJmk5MTUtPmJk
ZXYsIGk5MTVfZ2VtX3RvX3R0bShvYmopLCBzaXplLAo+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgIHR0bV9ib190eXBlX2tlcm5lbCwgJmk5MTVfc3lzX3BsYWNlbWVudCwgYWxpZ25tZW50LAo+
PiArICAgICAgICAgICAgICAgICAgICAgICAgIHRydWUsIE5VTEwsIE5VTEwsIGk5MTVfdHRtX2Jv
X2Rlc3Ryb3kpOwo+IE1vdmUgdGhpcyBmdXJ0aGVyIHVwLCBvciBhZGQgc29tZSBvbmlvbj8KTWln
aHQgbmVlZCB0byByZXZpc2l0IHRoYXQgYWdhaW4gdG8gZmlndXJlIG91dCB3aGF0IGRlc3RydWN0
b3JzIGFyZSAKY2FsbGVkIGF1dG1hdGljYWxseSBvbiBmYWlsdXJlIHRoZXJlLiBUaGluZyBpcyBv
bmNlIHR0bV9ib19pbml0IGhhcyAKc3VjY2VlZGVkLCBpdCdzIHB1Ymxpc2hlZCBvbiBMUlUgbGlz
dHMgYW5kIGF2YWlsYWJsZSBmb3IgbW1hcCwgc28gd2UnZCAKYmV0dGVyIGhhdmUgZXZlcnl0aGlu
ZyBpbml0aWFsaXplZC4KPgo+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+CgovVGhvbWFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
