Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB3E3CB9B0
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 17:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B216E9B4;
	Fri, 16 Jul 2021 15:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59B06E9B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 15:23:42 +0000 (UTC)
Received: by mail-yb1-xb31.google.com with SMTP id t186so15418276ybf.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 08:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v9xm2NUuIGJhvQLJdwRo8QScJi5ZIrJjEVzynV5Skg8=;
 b=YpqswT5m2fAAtR/jsNIIHQsk+qJO7jIC45YFFHf5DxxwECZ6sJVS+jwIiZyvWTT0bP
 hAU78pz3sc5qbny+087j0UvakF0VGixqR7CGlQsXNND+WzqUWT5e8sDI8BZ/YZdSnK8v
 dO5DX4HfWrOX9an5C11KYAJWLnebgcXC1RkJYK2aLOIztSWt8EL7u4Fdt4UF+t3op7Vx
 KiBQ5KxSOcgGfkriyxJmCb0ATZuo6clvNjy3GIaPxeuZSteDY4aT4g96cNws7f3G9wg/
 txuH9Jr37jyXuPmkKqWX1D6pH5EuZrbchqb6AiG8/t4CfSnXgNVRjDFK3mqxgVpHaSlJ
 TWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v9xm2NUuIGJhvQLJdwRo8QScJi5ZIrJjEVzynV5Skg8=;
 b=gyKCUGUIJQ9FDPafPZNa0sjsBU0JXzNWhGTd5oXYI/rKeU4R1JtdMfsvSGk3FQ/fEc
 XWIycBYd/8JKptquf5wHaBANcA6TuMhe4hmAiNAHesGXoaecaKbJZSqvDpsr9QaznlAT
 nDFljlsxkdXWnmYuzya1h7Y0ERJ0XYbG7rHXZHS2904laQRBBDSNl1+ugQUzo5we3BLG
 aTIRoWIelUYsIbsnYgCUujugPDf3BQe+Tn7BjfAtjlaAb6noAHtYwUwYNvLriW3s/xHi
 jj6tWVCO0TUMCULRq6ZSkFBvUbrtxQKNJUGJ6fziAVlYpPekuMmh1yBtwbcAO/1bZR0X
 4hjQ==
X-Gm-Message-State: AOAM532TJHhowMsXP2q2phEvpPXSp6s6DWAFdDawmUI8zs6xWIaPka8d
 NrCFqELkUMnCYpiHQQc6r1rAcXjtD23XliBfet0jXQ==
X-Google-Smtp-Source: ABdhPJyXOC1CVbOwhiST5I/NeKj9WDNlPLwphV+uouIlB5OGJOItN//oXpHKi7dQ6yXOgUX7GV++eta5SanVtFJNItY=
X-Received: by 2002:a25:aa69:: with SMTP id s96mr13765799ybi.241.1626449021687; 
 Fri, 16 Jul 2021 08:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210715101536.2606307-1-matthew.auld@intel.com>
 <20210715101536.2606307-5-matthew.auld@intel.com>
 <70159117-ca97-667a-3e9b-82125bf309df@linux.intel.com>
In-Reply-To: <70159117-ca97-667a-3e9b-82125bf309df@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 16 Jul 2021 10:23:30 -0500
Message-ID: <CAOFGe94jGACo_1iiHcdLodTWoj0Z-e+2nVGJJbeybuMmOd827A@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/uapi: reject set_domain for
 discrete
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
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTYsIDIwMjEgYXQgOTo1MiBBTSBUdnJ0a28gVXJzdWxpbgo8dHZydGtvLnVy
c3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+Cj4gT24gMTUvMDcvMjAyMSAxMToxNSwg
TWF0dGhldyBBdWxkIHdyb3RlOgo+ID4gVGhlIENQVSBkb21haW4gc2hvdWxkIGJlIHN0YXRpYyBm
b3IgZGlzY3JldGUsIGFuZCBvbiBERzEgd2UgZG9uJ3QgbmVlZAo+ID4gYW55IGZsdXNoaW5nIHNp
bmNlIGV2ZXJ5dGhpbmcgaXMgYWxyZWFkeSBjb2hlcmVudCwgc28gcmVhbGx5IGFsbCB0aGlzCj4g
PiBkb2VzIGlzIGFuIG9iamVjdCB3YWl0LCBmb3Igd2hpY2ggd2UgaGF2ZSBhbiBpb2N0bC4gTG9u
Z2VyIHRlcm0gdGhlCj4gPiBkZXNpcmVkIGNhY2hpbmcgc2hvdWxkIGJlIGFuIGltbXV0YWJsZSBj
cmVhdGlvbiB0aW1lIHByb3BlcnR5IGZvciB0aGUKPiA+IEJPLCB3aGljaCBjYW4gYmUgc2V0IHdp
dGggc29tZXRoaW5nIGxpa2UgZ2VtX2NyZWF0ZV9leHQuCj4gPgo+ID4gT25lIG90aGVyIHVzZXIg
aXMgaXJpcyArIHVzZXJwdHIsIHdoaWNoIHVzZXMgdGhlIHNldF9kb21haW4gdG8gcHJvYmUgYWxs
Cj4gPiB0aGUgcGFnZXMgdG8gY2hlY2sgaWYgdGhlIEdVUCBzdWNjZWVkcywgaG93ZXZlciB3ZSBu
b3cgaGF2ZSBhIFBST0JFCj4gPiBmbGFnIGZvciB0aGlzIHB1cnBvc2UuCj4gPgo+ID4gdjI6IGFk
ZCBzb21lIG1vcmUga2VybmVsIGRvYywgYWxzbyBhZGQgdGhlIGltcGxpY2l0IHJ1bGVzIHdpdGgg
Y2FjaGluZwo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPgo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwu
Y29tPgo+ID4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51
eC5pbnRlbC5jb20+Cj4gPiBDYzogSm9yZGFuIEp1c3RlbiA8am9yZGFuLmwuanVzdGVuQGludGVs
LmNvbT4KPiA+IENjOiBLZW5uZXRoIEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4KPiA+
IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gPiBDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IENjOiBSYW1hbGluZ2FtIEMgPHJh
bWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogUmFtYWxpbmdhbSBDIDxyYW1h
bGluZ2FtLmNAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9kb21haW4uYyB8ICAzICsrKwo+ID4gICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggICAgICAgICAgICAgICAgfCAxOSArKysrKysrKysrKysrKysrKysrCj4gPiAgIDIgZmls
ZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKPiA+IGluZGV4IDQzMDA0YmVmNTVjYi4uYjY4NGE2MmJm
M2IwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rv
bWFpbi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWlu
LmMKPiA+IEBAIC00OTAsNiArNDkwLDkgQEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4gICAgICAgdTMyIHdyaXRlX2RvbWFp
biA9IGFyZ3MtPndyaXRlX2RvbWFpbjsKPiA+ICAgICAgIGludCBlcnI7Cj4gPgo+ID4gKyAgICAg
aWYgKElTX0RHRlgodG9faTkxNShkZXYpKSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FTk9E
RVY7Cj4gPiArCj4gPiAgICAgICAvKiBPbmx5IGhhbmRsZSBzZXR0aW5nIGRvbWFpbnMgdG8gdHlw
ZXMgdXNlZCBieSB0aGUgQ1BVLiAqLwo+ID4gICAgICAgaWYgKCh3cml0ZV9kb21haW4gfCByZWFk
X2RvbWFpbnMpICYgSTkxNV9HRU1fR1BVX0RPTUFJTlMpCj4gPiAgICAgICAgICAgICAgIHJldHVy
biAtRUlOVkFMOwo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBi
L2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+ID4gaW5kZXggMmU0MTEyYmY0ZDM4Li4wNGNl
MzEwZTdlZTYgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiA+
ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+ID4gQEAgLTkwMSw2ICs5MDEsMjUg
QEAgc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCB7Cj4gPiAgICAqICAtIEk5MTVfR0VN
X0RPTUFJTl9HVFQ6IE1hcHBhYmxlIGFwZXJ0dXJlIGRvbWFpbgo+ID4gICAgKgo+ID4gICAgKiBB
bGwgb3RoZXIgZG9tYWlucyBhcmUgcmVqZWN0ZWQuCj4gPiArICoKPiA+ICsgKiBOb3RlIHRoYXQg
Zm9yIGRpc2NyZXRlLCBzdGFydGluZyBmcm9tIERHMSwgdGhpcyBpcyBubyBsb25nZXIgc3VwcG9y
dGVkLCBhbmQKPiA+ICsgKiBpcyBpbnN0ZWFkIHJlamVjdGVkLiBPbiBzdWNoIHBsYXRmb3JtcyB0
aGUgQ1BVIGRvbWFpbiBpcyBlZmZlY3RpdmVseSBzdGF0aWMsCj4gPiArICogd2hlcmUgd2UgYWxz
byBvbmx5IHN1cHBvcnQgYSBzaW5nbGUgJmRybV9pOTE1X2dlbV9tbWFwX29mZnNldCBjYWNoZSBt
b2RlLAo+ID4gKyAqIHdoaWNoIGNhbid0IGJlIHNldCBleHBsaWNpdGx5IGFuZCBpbnN0ZWFkIGRl
cGVuZHMgb24gdGhlIG9iamVjdCBwbGFjZW1lbnRzLAo+ID4gKyAqIGFzIHBlciB0aGUgYmVsb3cu
Cj4gPiArICoKPiA+ICsgKiBJbXBsaWNpdCBjYWNoaW5nIHJ1bGVzLCBzdGFydGluZyBmcm9tIERH
MToKPiA+ICsgKgo+ID4gKyAqICAgLSBJZiBhbnkgb2YgdGhlIG9iamVjdCBwbGFjZW1lbnRzIChz
ZWUgJmRybV9pOTE1X2dlbV9jcmVhdGVfZXh0X21lbW9yeV9yZWdpb25zKQo+ID4gKyAqICAgICBj
b250YWluIEk5MTVfTUVNT1JZX0NMQVNTX0RFVklDRSB0aGVuIHRoZSBvYmplY3Qgd2lsbCBiZSBh
bGxvY2F0ZWQgYW5kCj4gPiArICogICAgIG1hcHBlZCBhcyB3cml0ZS1jb21iaW5lZCBvbmx5LgoK
SXMgdGhpcyBhY2N1cmF0ZT8gIEkgdGhvdWdodCB0aGV5IGdvdCBXQiB3aGVuIGxpdmluZyBpbiBT
TUVNIGFuZCBXQwp3aGVuIG9uIHRoZSBkZXZpY2UuICBCdXQsIHNpbmNlIGJvdGggYXJlIGNvaGVy
ZW50LCBpdCdzIHNhZmUgdG8gbGllIHRvCnVzZXJzcGFjZSBhbmQgc2F5IGl0J3MgYWxsIFdDLiAg
SXMgdGhhdCBjb3JyZWN0IG9yIGFtIEkgbWlzc2luZwpzb21ldGhpbmc/Cgo+IEEgbm90ZSBhYm91
dCB3cml0ZS1jb21iaW5lIGJ1ZmZlcj8gSSBndWVzcyBzYXlpbmcgaXQgaXMgdXNlcnNwYWNlCj4g
cmVzcG9uc2liaWxpdHkgdG8gZG8gaXQgYW5kIGhvdy4KCldoYXQgZXhhY3RseSBhcmUgeW91IHRo
aW5raW5nIGlzIHVzZXJzcGFjZSdzIHJlc3BvbnNpYmlsaXR5PwoKPiA+ICsgKgo+ID4gKyAqICAg
LSBFdmVyeXRoaW5nIGVsc2UgaXMgYWx3YXlzIGFsbG9jYXRlZCBhbmQgbWFwcGVkIGFzIHdyaXRl
LWJhY2ssIHdpdGggdGhlCj4gPiArICogICAgIGd1YXJhbnRlZSB0aGF0IGV2ZXJ5dGhpbmcgaXMg
YWxzbyBjb2hlcmVudCB3aXRoIHRoZSBHUFUuCj4KPiBIYXZlbid0IGJlZW4gZm9sbG93aW5nIHRo
aXMgc28ganVzdCBhIHF1ZXN0aW9uIG9uIHRoaXMgb25lIC0gaXQgaXMgbm90Cj4gY29uc2lkZXJl
ZCBpbnRlcmVzdGluZyB0byBvZmZlciBub24tY29oZXJlbnQgbW9kZXMsIG9yIGV2ZW4gd3JpdGUK
PiBjb21iaW5lLCB3aXRoIHN5c3RlbSBtZW1vcnkgYnVmZmVycywgZm9yIGEgc3BlY2lmaWMgcmVh
c29uPwoKV2Ugb25seSBjYXJlIGFib3V0IG5vbi1jb2hlcmVudCBtb2RlcyBvbiBpbnRlZ3JhdGVk
IGxpdHRsZS1jb3JlLgpUaGVyZSwgd2Ugc2hhcmUgbWVtb3J5IGJldHdlZW4gQ1BVIGFuZCBHUFUg
YnV0IHNub29waW5nIGZyb20gdGhlIEdQVQppcyBvcHRpb25hbC4gIERlcGVuZGluZyBvbiBhY2Nl
c3MgcGF0dGVybnMsIHdlIG1pZ2h0IHdhbnQgV0Igd2l0aCBHUFUKc25vb3Bpbmcgb3Igd2UgbWln
aHQgd2FudCBXQy4gIEkgZG9uJ3QgdGhpbmsgd2UgY2FyZSBhYm91dCBXQyBmb3IgU01FTQphbGxv
Y2F0aW9ucyBvbiBkaXNjcmV0ZS4gIEZvciB0aGF0IG1hdHRlciwgSSdtIG5vdCBzdXJlIHlvdSBj
YW4KYWN0dWFsbHkgc2h1dCBzbm9vcGluZyBvZmYgd2hlbiBnb2luZyBhY3Jvc3MgYSAicmVhbCIg
UENJZSBidXMuICBBdApsZWFzdCBub3Qgd2l0aCBERzEuCgotLUphc29uCgo+IFJlZ2FyZHMsCj4K
PiBUdnJ0a28KPgo+ID4gKyAqCj4gPiArICogTm90ZSB0aGF0IHRoaXMgaXMgbGlrZWx5IHRvIGNo
YW5nZSBpbiB0aGUgZnV0dXJlIGFnYWluLCB3aGVyZSB3ZSBtaWdodCBuZWVkCj4gPiArICogbW9y
ZSBmbGV4aWJpbGl0eSBvbiBmdXR1cmUgZGV2aWNlcywgc28gbWFraW5nIHRoaXMgYWxsIGV4cGxp
Y2l0IGFzIHBhcnQgb2YgYQo+ID4gKyAqIG5ldyAmZHJtX2k5MTVfZ2VtX2NyZWF0ZV9leHQgZXh0
ZW5zaW9uIGlzIHByb2JhYmxlLgo+ID4gICAgKi8KPiA+ICAgc3RydWN0IGRybV9pOTE1X2dlbV9z
ZXRfZG9tYWluIHsKPiA+ICAgICAgIC8qKiBAaGFuZGxlOiBIYW5kbGUgZm9yIHRoZSBvYmplY3Qu
ICovCj4gPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
