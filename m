Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E703C2060
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 10:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8843C6E9D4;
	Fri,  9 Jul 2021 08:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com
 [IPv6:2607:f8b0:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1520A6E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 08:00:26 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id l21so11260395oig.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 01:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4Tm6rbhq6rt9ho8Bl6eVvSWWbDirLBWL3poqengHkQM=;
 b=cWUbVFQufEddmU6NXf5u7WC6fcnvndpqVjZeZXeZCcSYX2cktBcUxUBwg089EwCYHi
 /Uu4s/ipVTMHCBSYXYMZrL+YnRvU8Mhf4EaJefC3korjw2voNxEbQstCk/sxVQ2slul0
 A5/rfvrOaX7XI91SNvVtG903grhYSoWEDhMyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4Tm6rbhq6rt9ho8Bl6eVvSWWbDirLBWL3poqengHkQM=;
 b=dW26d5b5x3KKVHdVjPIo+EktBQpsv9sWRiZCDeEn35qjSf2EjL0eVbmInyuTWSyJU6
 UnLHYHU5MueanscQWOadjR7eLaXk62yGZn9gqDP8QyERusPe06Z4zdQhZwxPNyRrjXqf
 87W11yZ+3iGXjyLngufa4nEPCW+INnFMSs7BGQT407SZWj7dy7lAXv5zXoJ1iuBDpOsG
 jL/9K3Eynxx8eWbdtxPmNEBctTGjw5X3Hv2qkOAGnAHKTZVSPthEtk58IqQRbxl38G0e
 ItvjjAv/7am02FJbUUmAcHDECib5VALmn5ub/ZutVCeuIsnEA6vANDAPSqq8QtkP7oUb
 fwdg==
X-Gm-Message-State: AOAM530IbMBF3zAZpmMS1cJ7vZImqZJn7Lx3s+4+wVQp1mREAm5Cad3+
 HAuuLaghLAHa046LCUVsHoPS8TxZdFGk/jw8EknWgg==
X-Google-Smtp-Source: ABdhPJwpYZhP/rk5oEw1WXb6I1u345ELPS2Mya0mKaMsr52a+aV56mu3CTUMBnYv6GhYXipU5gPS4xgH0qXe9Ie58LQ=
X-Received: by 2002:aca:f491:: with SMTP id
 s139mr21163595oih.128.1625817625401; 
 Fri, 09 Jul 2021 01:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210708173754.3877540-1-daniel.vetter@ffwll.ch>
 <20210708173754.3877540-2-daniel.vetter@ffwll.ch>
 <5588d1c3-833b-bd95-69e6-a103f2e8affa@amd.com>
 <CAKMK7uFuqXdbvqDCerXHW5kiT=LUZEoyrjFMgHjkUQdS1eidDw@mail.gmail.com>
 <871a4619-8a17-134f-9d9c-40a522473946@amd.com>
In-Reply-To: <871a4619-8a17-134f-9d9c-40a522473946@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 9 Jul 2021 10:00:14 +0200
Message-ID: <CAKMK7uG8ODwoPz8ztBfn=iBn8iWUOfrMxPkauuAHc=XktoCeGA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH v3 01/20] drm/sched: entity->rq selection
 cannot fail
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgOSwgMjAyMSBhdCA5OjIzIEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gQW0gMDkuMDcuMjEgdW0gMDk6MTQgc2NocmllYiBE
YW5pZWwgVmV0dGVyOgo+ID4gT24gRnJpLCBKdWwgOSwgMjAyMSBhdCA4OjUzIEFNIENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4gPj4gQW0gMDguMDcu
MjEgdW0gMTk6Mzcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4+PiBJZiBpdCBkb2VzLCBzb21l
b25lIG1hbmFnZWQgdG8gc2V0IHVwIGEgc2NoZWRfZW50aXR5IHdpdGhvdXQKPiA+Pj4gc2NoZWR1
bGVycywgd2hpY2ggaXMganVzdCBhIGRyaXZlciBidWcuCj4gPj4gTkFLLCBpdCBpcyBwZXJmZWN0
bHkgdmFsaWQgZm9yIHJxIHNlbGVjdGlvbiB0byBmYWlsLgo+ID4gVGhlcmUgaXNuJ3QgYSBiZXR0
ZXIgd2F5IHRvIGV4cGxhaW4gc3R1ZmYgdG8gc29tZW9uZSB3aG8ncyBuZXcgdG8gdGhlCj4gPiBj
b2RlIGFuZCB0cmllcyB0byBpbXByb3ZlIGl0IHdpdGggZG9jcyB0aGFuIHRvIE5BSyBzdHVmZiB3
aXRoCj4gPiBpbmNvbXBsZXRlIGV4cGxhbmF0aW9ucz8KPgo+IFdlbGwgYXMgZmFyIGFzIEkgdW5k
ZXJzdGFuZCBpdCBhIE5BSyBtZWFucyB0aGF0IHRoZSBhdXRob3IgaGFzIG1pc3NlZAo+IHNvbWV0
aGluZyBpbXBvcnRhbnQgYW5kIG5lZWRzIHRvIHJlLWl0ZXJhdGUuCgpJdCBjb21lcyBhcm91bmQg
YXMgdmVyeSBzY3JlYW1pbmcgYXQgbGVhc3QgdG8gbWUgKGFsbCB1cHBlcmNhc2UgYW5kCmFsbCB0
aGF0KSBhbmQgcGVyc29uYWxseSBJIG9ubHkgYXNzb2NpYXRlIGl0IHdpdGggdW5jaGVja2VkIGFu
Z3J5Cmtlcm5lbCBtYWludGFpbmVycyBvbiBsa21sIGNlbGVicmF0aW5nIHRoZWlyIHN0YXR1cyBh
bmQgcHV0dGluZyBkb3duCnNvbWUgbm9vYnMgZm9yIHNoaXRzIGFuZCBnaWdnbGVzLiBJIHRoaW5r
IGhlcmUgb24gZHJpLWRldmVsIHlvdSdyZSB0aGUKb25seSBvbmUgZG9pbmcgaXQgcmVndWxhcmx5
LgoKPiBJdCdzIGp1c3QgdG8gc2F5IHRoYXQgd2UgYWJzb2x1dGVseSBjYW4ndCBtZXJnZSBhIHBh
dGNoIG9yIHNvbWV0aGluZwo+IHdpbGwgYnJlYWsuCgpXZWxsIHllYWggSSBrbm93IHRoYXQgd2hl
biBhIHBhdGNoIGJyZWFrcyBzb21ldGhpbmcgSSBjYW4ndCBtZXJnZSBpdC4KRm9yIGRybS1pbnRl
bCB3ZSBhbHNvIGRvY3VtZW50ZWQgdGhhdCBjbGVhcmx5LCBidXQgZm9yIGRybS1taXNjIGl0J3MK
bm90IHNwZWxsZWQgb3V0LiBJJ2xsIGZpeCB0aGF0LgoKPiA+PiBTZWUgZHJtX3NjaGVkX3BpY2tf
YmVzdCgpOgo+ID4+Cj4gPj4gICAgICAgICAgICAgICAgICAgaWYgKCFzY2hlZC0+cmVhZHkpIHsK
PiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9XQVJOKCJzY2hlZHVsZXIgJXMgaXMg
bm90IHJlYWR5LCBza2lwcGluZyIsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzY2hlZC0+bmFtZSk7Cj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51
ZTsKPiA+PiAgICAgICAgICAgICAgICAgICB9Cj4gPj4KPiA+PiBUaGlzIGNhbiBoYXBwZW4gd2hl
biBhIGRldmljZSByZXNldCBmYWlscyBmb3Igc29tZSBlbmdpbmUuCj4gPiBXZWxsIHllYWggSSBk
aWRuJ3QgZXhwZWN0IGFtZGdwdSB0byBqdXN0IGNoYW5nZSB0aGlzIGRpcmVjdGx5LCBzbyBJCj4g
PiBkaWRuJ3QgZmluZCBpdC4gR2V0dGluZyBhbiBFTk9FTlQgb24gYSBodyBmYWlsdXJlIGluc3Rl
YWQgb2YgYW4gRUlPIGlzCj4gPiBhIGJpdCBpbnRlcmVzdGluZyBzZW1hbnRpY3MgSSBndWVzcywg
YWxzbyB3aGF0IGhhcHBlbnMgd2l0aCB0aGUgam9icwo+ID4gd2hpY2ggcmFjZWQgYWdhaW5zdCB0
aGUgc2NoZWR1bGVyIG5vdCBiZWluZyByZWFkeT8gSSdtIG5vdCBzZWVpbmcgYW55Cj4gPiBjaGVj
a3MgZm9yIHJlYWR5IGluIHRoZSBtYWluIHNjaGVkdWxlciBsb2dpYyBzbyB0aGlzIGF0IGxlYXN0
IGxvb2tzCj4gPiBzb21ld2hhdCBhY2NpZGVudGFsIGFzIGEgc2lkZSBlZmZlY3QsIGFsc28gbm8g
b3RoZXIgZHJpdmVyIHRoYW4gYW1kZ3B1Cj4gPiBjb21tdW5pdGNhdGVzIHRoYXQgcmVzZXQgZmFp
bGVkIGJhY2sgdG8gZHJtL3NjaGVkIGxpa2UgdGhpcy4gVGhleSBzZWVtCj4gPiB0byBqdXN0IG5v
dCwgYW5kIEkgZ3Vlc3MgdGltZW91dCBvbiB0aGUgbmV4dCByZXF1ZXN0IHdpbGwgZ2V0IHVzIGlu
dG8KPiA+IGFuIGVuZGxlc3MgcmVzZXQgbG9vcD8KPgo+IENvcnJlY3QuIEtleSBwb2ludCBpcyB0
aGF0IHRoZXJlIGFyZW4ndCBhbnkgam9icyB3aGljaCBhcmUgY3VycmVudGx5Cj4gc2NoZWR1bGVk
Lgo+Cj4gV2hlbiB0aGUgcmVhZHkgZmxhZyBpcyBjaGFuZ2VkIHRoZSBzY2hlZHVsZXIgaXMgcGF1
c2VkLCBlLmcuIHRoZSBtYWluCj4gdGhyZWFkIGlzIG5vdCBydW5uaW5nIGFueSBtb3JlLgo+Cj4g
SSdtIHByZXR0eSBzdXJlIHRoYXQgYWxsIG9mIHRoaXMgaXMgaG9ycmlibGUgcmFjeSwgYnV0IG5v
Ym9keSByZWFsbHkKPiBsb29rZWQgaW50byB0aGUgZGVzaWduIGZyb20gYSBoaWdoZXIgbGV2ZWwg
YXMgZmFyIGFzIEkga25vdy4KClllYWggdGhlIHNjaGVkdWxlciB0aHJlYWQgaXMgZmluZSBiZWNh
dXNlIGl0J3Mgc3RvcHBlZCwgYnV0IGl0IGFsc28KZG9lc24ndCBsb29rIGF0IHNjaGVkLT5yZWFk
eSwgc28gaXQgY2FuJ3QgcmFjZS4gV2hhdCBkb2VzIHJhY2UgaXMgbmV3CnN1Ym1pc3Npb25zLCBh
bmQgaWYgdGhleSBzdHVmZiBzb21ldGhpbmcgaW50byB0aGUgcXVldWUgdGhlbiBJJ20Kd29uZGVy
aW5nIHdoYXQgaGFwcGVucyB0byB0aGF0LiBBbHNvIHdoYXQgaGFwcGVucyB0byB0aGUgcmVxdWVz
dHMKYWxyZWFkeSBpbiB0aGUgcXVldWUuCgpFdmVudHVhbGx5IEkgZ3Vlc3MgdXNlcnNwYWNlIG5v
dGljZXMgdGhlIEVOT0VOVCwgdGVhcnMgZG93biB0aGUKY29udGV4dCwgYW5kIHRoZSBrZXJuZWwg
dGhlbiBhbHNvIHRlYXJzIGRvd24gdGhlIGNvbnRleHQgYW5kIGNsZWFucyB1cAp0aGUgbWVzcy4g
QnV0IGl0J3MgcmF0aGVyIGluZ2xvcmlvdXMgdW50aWwgaXQgY29sbGFwc2VzIGRvd24gdG8gYQpj
b2hlcmVudCBzdGF0ZSBhZ2FpbiBJIHRoaW5rLgoKT3IgaXMgdGhlcmUgc29tZXRoaW5nIHdpdGgg
dGhlIHNjaGVkdWxlciByZXN0YXJ0IGZsb3cgd2hpY2ggaXMKZ3VhcmFudGVlZCB0byBjYXRjaCB0
aGVzZSwgYW5kIHdlJ3JlIG1heWJlIGp1c3QgbWlzc2luZyBhIGJ1bmNoIG9mCmJhcnJpZXJzPwoK
RWl0aGVyIHdheSBJIHRoaW5rIGEgcHJvcGVyIGludGVyZmFjZSB0byB0ZXJtaW5hbGx5IHdlZGdl
IGEgc2NoZWQKd291bGQgYmUgZ29vZCwgc28gdGhhdCBhdCBsZWFzdCB3ZSBjYW4gcGFzcyBiYWNr
IHNvbWV0aGluZyBtZWFuaW5nZnVsCmxpa2UgLUVJTy4gQW5kIGFsc28gdGVsbCAidGhlIGdwdSBk
aWVkIiBhcGFydCBmcm9tICJ0aGUgZHJpdmVyIGF1dGhvcgp0b3JlIGRvd24gdGhlIHNjaGVkdWxl
ciB3aGlsZSBpdCB3YXMgc3RpbGwgaW4gdXNlIiwgd2hpY2ggSSB0aGluayB3ZQpyZWFsbHkgc2hv
dWxkIGNhdGNoIHdpdGggc29tZSBXQVJOX09OLgoKQW55d2F5IGZvciB0aGUgaW1tZWRpYXRlIGlz
c3VlIG9mICJkb24ndCBicmVhayBhbWRncHUiIEkgdGhpbmsgSSdsbApyZXNodWZmbGUgdGhlIHNw
bGl0IGJldHdlZW4gam9iX2luaXQgYW5kIGpvYl9hcm0gYWdhaW4sIGFuZCBhZGQgYSBiaWcKY29t
bWVudCB0byBqb2JfaW5pdCB0aGF0IGl0IGNhbiBmYWlsIHdpdGggRU5PRU5ULCBhbmQgd2h5LCBh
bmQgd2hhdApraW5kIG9mIGludGVyZmFjZSB3b3VsZCBiZSBtb3JlIHByb3Blci4gaTkxNSB3aWxs
IG5lZWQgdGhlIHRlcm1pbmFsbHkKd2VkZ2VkIGZsb3cgdG9vIHNvIEknbGwgcHJvYmFibHkgaGF2
ZSB0byBsb29rIGludG8gdGhpcywgYnV0IHRoYXQgd2lsbApuZWVkIHNvbWUgcHJvcGVyIHRob3Vn
aHQuCgpDaGVlcnMsIERhbmllbAoKCj4KPiBDaHJpc3RpYW4uCj4KPgo+Cj4gPiAtRGFuaWVsCj4g
Pgo+ID4KPiA+PiBSZWdhcmRzLAo+ID4+IENocmlzdGlhbi4KPiA+Pgo+ID4+PiBXZSBCVUdfT04o
KSBoZXJlIGJlY2F1c2UgaW4gdGhlIG5leHQgcGF0Y2ggZHJtX3NjaGVkX2pvYl9pbml0KCkgd2ls
bAo+ID4+PiBiZSBzcGxpdCB1cCwgd2l0aCBkcm1fc2NoZWRfam9iX2FybSgpIG5ldmVyIGZhaWxp
bmcuIEFuZCB0aGF0J3MgdGhlCj4gPj4+IHBhcnQgd2hlcmUgdGhlIHJxIHNlbGVjdGlvbiB3aWxs
IGVuZCB1cCBpbi4KPiA+Pj4KPiA+Pj4gTm90ZSB0aGF0IGlmIGhhdmluZyBhbiBlbXB0eSBzY2hl
ZF9saXN0IHNldCBvbiBhbiBlbnRpdHkgaXMgaW5kZWVkIGEKPiA+Pj4gdmFsaWQgdXNlLWNhc2Us
IHdlIGNhbiBrZWVwIHRoYXQgY2hlY2sgaW4gam9iX2luaXQgZXZlbiBhZnRlciB0aGUgc3BsaXQK
PiA+Pj4gaW50byBqb2JfaW5pdC9hcm0uCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4+PiBDYzogIkNocmlzdGlhbiBL
w7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPj4+IENjOiBMdWJlbiBUdWlrb3Yg
PGx1YmVuLnR1aWtvdkBhbWQuY29tPgo+ID4+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4KPiA+Pj4gQ2M6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5j
b20+Cj4gPj4+IENjOiBBbmRyZXkgR3JvZHpvdnNreSA8YW5kcmV5Lmdyb2R6b3Zza3lAYW1kLmNv
bT4KPiA+Pj4gQ2M6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5j
b20+Cj4gPj4+IENjOiBKYWNrIFpoYW5nIDxKYWNrLlpoYW5nMUBhbWQuY29tPgo+ID4+PiAtLS0K
PiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYyB8IDIgKy0K
PiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgICB8IDMgKy0t
Cj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hl
ZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiA+
Pj4gaW5kZXggNzk1NTRhYTRkYmIxLi42ZmMxMTZlZTczMDIgMTAwNjQ0Cj4gPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMKPiA+Pj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYwo+ID4+PiBAQCAtNDUsNyArNDUsNyBA
QAo+ID4+PiAgICAgKiBAZ3VpbHR5OiBhdG9taWNfdCBzZXQgdG8gMSB3aGVuIGEgam9iIG9uIHRo
aXMgcXVldWUKPiA+Pj4gICAgICogICAgICAgICAgaXMgZm91bmQgdG8gYmUgZ3VpbHR5IGNhdXNp
bmcgYSB0aW1lb3V0Cj4gPj4+ICAgICAqCj4gPj4+IC0gKiBOb3RlOiB0aGUgc2NoZWRfbGlzdCBz
aG91bGQgaGF2ZSBhdCBsZWFzdCBvbmUgZWxlbWVudCB0byBzY2hlZHVsZQo+ID4+PiArICogTm90
ZTogdGhlIHNjaGVkX2xpc3QgbXVzdCBoYXZlIGF0IGxlYXN0IG9uZSBlbGVtZW50IHRvIHNjaGVk
dWxlCj4gPj4+ICAgICAqICAgICAgIHRoZSBlbnRpdHkKPiA+Pj4gICAgICoKPiA+Pj4gICAgICog
UmV0dXJucyAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUu
Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
YyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jCj4gPj4+IGluZGV4IDMz
YzQxNGQ1NWZhYi4uMDFkZDQ3MTU0MTgxIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwo+ID4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYwo+ID4+PiBAQCAtNTg2LDggKzU4Niw3IEBAIGludCBkcm1fc2No
ZWRfam9iX2luaXQoc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwKPiA+Pj4gICAgICAgIHN0cnVj
dCBkcm1fZ3B1X3NjaGVkdWxlciAqc2NoZWQ7Cj4gPj4+Cj4gPj4+ICAgICAgICBkcm1fc2NoZWRf
ZW50aXR5X3NlbGVjdF9ycShlbnRpdHkpOwo+ID4+PiAtICAgICBpZiAoIWVudGl0eS0+cnEpCj4g
Pj4+IC0gICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4gPj4+ICsgICAgIEJVR19PTighZW50
aXR5LT5ycSk7Cj4gPj4+Cj4gPj4+ICAgICAgICBzY2hlZCA9IGVudGl0eS0+cnEtPnNjaGVkOwo+
ID4+Pgo+ID4KPgoKCi0tCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
