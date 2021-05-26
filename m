Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0C6391936
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB5B6ECE9;
	Wed, 26 May 2021 13:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C876E500
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 13:51:57 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 u25-20020a0568302319b02902ac3d54c25eso1074316ote.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 06:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NQQ2QlKG8USraZgLg7Z7CLDTbkvH3Ja6tLYSMEaPvoE=;
 b=cCraq7xvMjGG//smEDF3crqdU4HWsYQchD8qCi2BqMEfFuW1sGYQI0dgAxXIx/Ie4M
 qFLXn09zsV4A7bWzmhslzvMwlVm++gaBpU5jmtv6lBphC3GrunX5x3rUQttT4iWQdbEN
 q0NTxpxz8XnUY41hdMRL+Dnb0npyp1q8FAiTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NQQ2QlKG8USraZgLg7Z7CLDTbkvH3Ja6tLYSMEaPvoE=;
 b=EkYsZ9HNc00s02hIGgaEsqGp5Uxim9mB+UHzEnwJdC+IW6ssaWgX0Z97tt3azmY/p/
 tFwYC4twkq5SAnI+HgnYdq5jsb+G0FrsC8AeV1bmEJ6OP1Fz7mKFVDbrLi5oqTjsj1Dg
 vTsVPVDbY5njZuSRMvVCJ6CBbbsZHmp1yiPkOPRiB9SAShMcFScvL6WlNfObHrEaFy/Q
 WeTYFlHzeuyvJA63cULlqKuaJ7zjtDh3zz2W+wgbfwVl465ge8hEGFylZWWfZwhsbqxV
 Q9dZxCx3wbDksyyu0kgEtyTKTMjb0Iz0MxSvsTcGup7p2Y382iKnclAQdcePwkcOPxvL
 lOjA==
X-Gm-Message-State: AOAM533CPMQnIv3q+sM16Qy2X1Mq+Ko2jJ4BThMmueZIILxWxNtWVpdt
 KT4qzJ/ypUSwRwoZEjpCJo8Jg+quTj/YQGL+/Ta3nQ==
X-Google-Smtp-Source: ABdhPJw/zQ1FWrTEAmLzxtyN95lNd7ehO2fL/e4d75AeL/xc+dw8P3f31yEV6YEbV6cEvXkyTvF1e7adV89JJh1vh7g=
X-Received: by 2002:a05:6830:1155:: with SMTP id
 x21mr2405346otq.303.1622037116909; 
 Wed, 26 May 2021 06:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <CAP+8YyEhRwgz2hCri3K7Kv1OusVa_LGEuKZqQEx5jv+NiDKZrA@mail.gmail.com>
 <YKfFqrlLrikGMn4K@phenom.ffwll.local>
 <CAP+8YyG0o58dQt_tvnJ2ESbeqo02xxvFdifpMwnhz2VYNk8HUw@mail.gmail.com>
 <YKfOymXrB7O4cYVb@phenom.ffwll.local>
 <31467363-e936-879b-8b0d-5a2a92644221@gmail.com>
 <CAKMK7uFswfc96hS40uc0Lug=doYAcf-yC-eu96iWqNJnM65MJQ@mail.gmail.com>
 <ae13093e-c364-7b90-1f91-39de42594cd6@amd.com>
 <YKz2KVppVoYMxB5u@phenom.ffwll.local>
 <312b183f-8eb2-d9e2-24ad-b429b74c886c@gmail.com>
 <CAKMK7uG-JYieYvnc0R-FXJJDrCZfypvstYw2NrLPRt+J9=oe1g@mail.gmail.com>
 <fe633922-53a4-2409-8697-d815650c65ac@gmail.com>
In-Reply-To: <fe633922-53a4-2409-8697-d815650c65ac@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 26 May 2021 15:51:45 +0200
Message-ID: <CAKMK7uFQczzpkdSLB1H-dVySGTiap2ONETZCaz5ErE1sca8YWQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [Intel-gfx] [Mesa-dev] [PATCH 01/11] drm/amdgpu: Comply with
 implicit fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjYsIDIwMjEgYXQgMzozMiBQTSBDaHJpc3RpYW4gS8O2bmlnCjxja29lbmln
LmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBbSAyNS4wNS4yMSB1bSAxNzoy
MyBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBPbiBUdWUsIE1heSAyNSwgMjAyMSBhdCA1OjA1
IFBNIENocmlzdGlhbiBLw7ZuaWcKPiA+IDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPj4gSGkgRGFuaWVsLAo+ID4+Cj4gPj4gQW0gMjUuMDUuMjEgdW0gMTU6MDUg
c2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4+PiBIaSBDaHJpc3RpYW4sCj4gPj4+Cj4gPj4+IE9u
IFNhdCwgTWF5IDIyLCAyMDIxIGF0IDEwOjMwOjE5QU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6Cj4gPj4+PiBBbSAyMS4wNS4yMSB1bSAyMDozMSBzY2hyaWViIERhbmllbCBWZXR0ZXI6
Cj4gPj4+PiBUaGlzIHdvcmtzIGJ5IGFkZGluZyB0aGUgZmVuY2Ugb2YgdGhlIGxhc3QgZXZpY3Rp
b24gRE1BIG9wZXJhdGlvbiB0byBCT3MKPiA+Pj4+IHdoZW4gdGhlaXIgYmFja2luZyBzdG9yZSBp
cyBuZXdseSBhbGxvY2F0ZWQuIFRoYXQncyB3aGF0IHRoZQo+ID4+Pj4gdHRtX2JvX2FkZF9tb3Zl
X2ZlbmNlKCkgZnVuY3Rpb24geW91IHN0dW1ibGVkIG92ZXIgaXMgZ29vZCBmb3I6IGh0dHBzOi8v
ZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEzLXJjMi9zb3VyY2UvZHJpdmVycy9ncHUvZHJt
L3R0bS90dG1fYm8uYyNMNjkyCj4gPj4+Pgo+ID4+Pj4gTm93IHRoZSBwcm9ibGVtIGlzIGl0IGlz
IHBvc3NpYmxlIHRoYXQgdGhlIGFwcGxpY2F0aW9uIGlzIHRlcm1pbmF0ZWQgYmVmb3JlCj4gPj4+
PiBpdCBjYW4gY29tcGxldGUgaXQncyBjb21tYW5kIHN1Ym1pc3Npb24uIEJ1dCBzaW5jZSByZXNv
dXJjZSBtYW5hZ2VtZW50IG9ubHkKPiA+Pj4+IHdhaXRzIGZvciB0aGUgc2hhcmVkIGZlbmNlcyB3
aGVuIHRoZXJlIGFyZSBzb21lIHRoZXJlIGlzIGEgY2hhbmNlIHRoYXQgd2UKPiA+Pj4+IGZyZWUg
dXAgbWVtb3J5IHdoaWxlIGl0IGlzIHN0aWxsIGluIHVzZS4KPiA+Pj4gSG0gd2hlcmUgaXMgdGhp
cyBjb2RlPyBXb3VsZCBoZWxwIGluIG15IGF1ZGl0IHRoYXQgSSB3YW50ZWQgdG8gZG8gdGhpcwo+
ID4+PiB3ZWVrPyBJZiB5b3UgbG9vayBhdCBtb3N0IG90aGVyIHBsYWNlcyBsaWtlCj4gPj4+IGRy
bV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KCkgSSBtZW50aW9uZWQgZWFybGllciwgdGhl
biB3ZSBkb24ndAo+ID4+PiB0cmVhdCB0aGUgc2hhcmVkIGZlbmNlcyBzcGVjaWFsIGFuZCBhbHdh
eXMgYWxzbyBpbmNsdWRlIHRoZSBleGNsdXNpdmUgb25lLgo+ID4+IFNlZSBhbWRncHVfZ2VtX29i
amVjdF9jbG9zZSgpOgo+ID4+Cj4gPj4gLi4uCj4gPj4gICAgICAgICAgIGZlbmNlID0gZG1hX3Jl
c3ZfZ2V0X2V4Y2woYm8tPnRiby5iYXNlLnJlc3YpOwo+ID4+ICAgICAgICAgICBpZiAoZmVuY2Up
IHsKPiA+PiAgICAgICAgICAgICAgICAgICBhbWRncHVfYm9fZmVuY2UoYm8sIGZlbmNlLCB0cnVl
KTsKPiA+PiAgICAgICAgICAgICAgICAgICBmZW5jZSA9IE5VTEw7Cj4gPj4gICAgICAgICAgIH0K
PiA+PiAuLi4KPiA+Pgo+ID4+IFdlIGV4cGxpY2l0bHkgYWRkZWQgdGhhdCBiZWNhdXNlIHJlc291
cmNlIG1hbmFnZW1lbnQgb2Ygc29tZSBvdGhlcgo+ID4+IGRyaXZlciB3YXMgZ29pbmcgdG90YWxs
eSBiYW5hbmFzIHdpdGhvdXQgdGhhdC4KPiA+Pgo+ID4+IEJ1dCBJJ20gbm90IHN1cmUgd2hpY2gg
b25lIHRoYXQgd2FzLiBNYXliZSBkaWcgYSBiaXQgaW4gdGhlIGdpdCBhbmQKPiA+PiBtYWlsaW5n
IGhpc3Rvcnkgb2YgdGhhdC4KPiA+IEhtIEkgbG9va2VkIGFuZCBpdCdzCj4gPgo+ID4gY29tbWl0
IDgyYzQxNmIxM2NiN2QyMmI5NmVjMDg4OGIyOTZhNDhkZmY4YTA5ZWIKPiA+IEF1dGhvcjogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gRGF0ZTogICBUaHUg
TWFyIDEyIDEyOjAzOjM0IDIwMjAgKzAxMDAKPiA+Cj4gPiAgICAgZHJtL2FtZGdwdTogZml4IGFu
ZCBjbGVhbnVwIGFtZGdwdV9nZW1fb2JqZWN0X2Nsb3NlIHY0Cj4gPgo+ID4gVGhhdCBzb3VuZGVk
IG1vcmUgbGlrZSBhbWRncHUgaXRzZWxmIG5lZWRpbmcgdGhpcywgbm90IGFub3RoZXIgZHJpdmVy
Pwo+Cj4gTm8sIHRoYXQgcGF0Y2ggd2FzIGp1c3QgYSBmb2xsb3cgdXAgbW92aW5nIHRoZSBmdW5j
dGlvbmFsaXR5IGFyb3VuZC4KClRoYXQgcGF0Y2ggYWRkZWQgdGhlICJhZGQgZXhjbHVzaXZlIGZl
bmNlIHRvIHNoYXJlZCBzbG90cyBiZWZvcmUKYW1kZ3B1X3ZtX2NsZWFyX2ZyZWVkKCkgY2FsbCIs
IHdoaWNoIEkgdGhvdWdodCB3YXMgYXQgbGVhc3QgcGFydCBvZgp5b3VyIGZpeC4KCj4gPiBCdXQg
bG9va2luZyBhdCBhbWRncHVfdm1fYm9fdXBkYXRlX21hcHBpbmcoKSBpdCBzZWVtcyB0byBwaWNr
IHRoZQo+ID4gcmlnaHQgZmVuY2luZyBtb2RlIGZvciBncHUgcHRlIGNsZWFyaW5nLCBzbyBJJ20g
cmVhbGx5IG5vdCBzdXJlIHdoYXQKPiA+IHRoZSBidWcgd2FzIHRoYXQgeW91IHdvcmtlZCBhcm91
bmQgaGVyZT9UaGUgaW1wbGVtZW50YXRpb24gYm9pbHMgZG93bgo+ID4gdG8gYW1kZ3B1X3N5bmNf
cmVzdigpIHdoaWNoIHN5bmNzIGZvciB0aGUgZXhjbHVzaXZlIGZlbmNlLCBhbHdheXMuIEFuZAo+
ID4gdGhlcmUncyBub3RoaW5nIGVsc2UgdGhhdCBJIGNvdWxkIGZpbmQgaW4gcHVibGljIGhpc3Rv
cnkgYXQgbGVhc3QsIG5vCj4gPiByZWZlcmVuY2VzIHRvIGJ1ZyByZXBvcnRzIG9yIGFueXRoaW5n
LiBJIHRoaW5rIHlvdSBuZWVkIHRvIGRpZwo+ID4gaW50ZXJuYWxseSwgYmVjYXVzZSBhcy1pcyBJ
J20gbm90IHNlZWluZyB0aGUgcHJvYmxlbSBoZXJlLgo+ID4KPiA+IE9yIGFtIEkgbWlzc2luZyBz
b21ldGhpbmcgaGVyZT8KPgo+IFNlZSB0aGUgY29kZSBoZXJlIGZvciBleGFtcGxlOgo+IGh0dHBz
Oi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9mZW5jZS5jI0wzNjEKPgo+IE5vdXZlYXUgYXNzdW1lcyB0aGF0IHdo
ZW4gYSBzaGFyZWQgZmVuY2UgaXMgcHJlc2VudCBpdCBkb2Vzbid0IG5lZWQgdG8KPiB3YWl0IGZv
ciB0aGUgZXhjbHVzaXZlIG9uZSBiZWNhdXNlIHRoZSBzaGFyZWQgYXJlIGFsd2F5cyBzdXBwb3Nl
ZCB0bwo+IGZpbmlzaCBhZnRlciB0aGUgZXhjbHVzaXZlIG9uZS4KPgo+IEJ1dCBmb3IgcGFnZSB0
YWJsZSB1bm1hcCBmZW5jZXMgdGhhdCBpc24ndCB0cnVlIGFuZCB3ZSByYW4gaW50byBhIHJlYWxs
eQo+IG5hc3R5IGFuZCBoYXJkIHRvIHJlcHJvZHVjZSBidWcgYmVjYXVzZSBvZiB0aGlzLgo+Cj4g
SSB0aGluayBpdCB3b3VsZCBiZSBtdWNoIG1vcmUgZGVmZW5zaXZlIGlmIHdlIGNvdWxkIHNheSB0
aGF0IHdlIGFsd2F5cwo+IHdhaXQgZm9yIHRoZSBleGNsdXNpdmUgZmVuY2UgYW5kIGZpeCB0aGUg
dXNlIGNhc2UgaW4gbm91dmVhdSBhbmQgZG91YmxlCj4gY2hlY2sgaWYgc29tZWJvZHkgZWxzZSBk
b2VzIHN0dWZmIGxpa2UgdGhhdCBhcyB3ZWxsLgoKWWVhaCBtb3N0IG90aGVyIGRyaXZlcnMgZG8g
dGhlIGRlZmVuc2l2ZSB0aGluZyBoZXJlLiBJIHRoaW5rIGl0IHdvdWxkCmJlIGdvb2QgdG8gc3Rh
bmRhcmRpemUgb24gdGhhdC4gSSdsbCBhZGQgdGhhdCB0byBteSBsaXN0IGFuZCBkbyBtb3JlCmF1
ZGl0aW5nLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
