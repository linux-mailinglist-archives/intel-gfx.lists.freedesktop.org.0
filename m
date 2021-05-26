Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFB83918EB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC286E4F9;
	Wed, 26 May 2021 13:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5EE6E4BB;
 Wed, 26 May 2021 13:32:54 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 f75-20020a1c1f4e0000b0290171001e7329so525376wmf.1; 
 Wed, 26 May 2021 06:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=YlBMJFk9IU7XFpKBGAdwLecZ23BlfUXVTyQ5htgnqds=;
 b=gHerwUijsmKZTx4DCmhcXuTnIFvyweNastBkn9ZahCah3iPkN6qssuhEnZPYikpTXk
 RX22AZNSYo0f9LnQxB+tGHPW7EicBzlz0paibGwJqll459D9GranIBqGDnHUX0cYZncx
 nZpVupWUHabYgH0UBi7gLLfMRyGCyvETRi0K2w2FEUMDDLvwMI7s21+tKrDI9eeUQ+bu
 q2ZJ+Vwea2gEB1SOlH0SoO6nRY0IUHfDLbHJpOg0chTfNAgj+6bpACfIzjyNl9xXIZ9w
 XkKPZvSXQik3WBxDBewoVhH93liltdQM/tFv8G3wAqtIEZXhH07TJdL3qZYWortdJcxX
 E2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YlBMJFk9IU7XFpKBGAdwLecZ23BlfUXVTyQ5htgnqds=;
 b=mh3+a7JahGQdJ4xiMGl4uSvsoI6yKjf93X+o1G7GbOtB0Ap0KVjEiZwHzJWdqkbZO1
 1OFJFWO/3JqJ4cI0pb9dkDECnvCXq+0Z9Ah3FR0C6TYqJlHFhT9KQgFfsbxGcL9fKqw5
 1/YyIaN3jBWnASJRL98Vsmt2LqUMNFeuM4YymvRuXbkzQEOooTeWZIgXZZGf4EjNHrT4
 ON3orr26NS7i6Hl62migD4qgTmX169uJdFaYc7Z3UQIf/Wr+lw6vskC+rxQ6KhfgpLDL
 /sZsQOWBDkoIs9cENIAg7NMG0oWTk0qbNjGwTlOo4skNSnE5Jqx0WP5JpEmvgm5wzalq
 omAw==
X-Gm-Message-State: AOAM532lTkM5UhuTC9hlHU3o3j7YLmCn+Wu6yArqhzdJk0I8Mo7TqQy8
 hyVs8aHqP2NifI9furh7fZ0=
X-Google-Smtp-Source: ABdhPJyaNjBH9aRtWN83y51VC2QaShd89a7j4j98DGf1DzeCXlHUlJkhEhO3F6fRhbwIb39lhclevg==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr3577903wmi.153.1622035972705; 
 Wed, 26 May 2021 06:32:52 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:1950:35e:cae9:5bed?
 ([2a02:908:1252:fb60:1950:35e:cae9:5bed])
 by smtp.gmail.com with ESMTPSA id x24sm6561252wmi.13.2021.05.26.06.32.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 May 2021 06:32:52 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <fe633922-53a4-2409-8697-d815650c65ac@gmail.com>
Date: Wed, 26 May 2021 15:32:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uG-JYieYvnc0R-FXJJDrCZfypvstYw2NrLPRt+J9=oe1g@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 26 May 2021 13:33:09 +0000
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
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjUuMDUuMjEgdW0gMTc6MjMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgTWF5
IDI1LCAyMDIxIGF0IDU6MDUgUE0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxja29lbmlnLmxlaWNodHp1
bWVya2VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IEhpIERhbmllbCwKPj4KPj4gQW0gMjUuMDUuMjEg
dW0gMTU6MDUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+Pj4gSGkgQ2hyaXN0aWFuLAo+Pj4KPj4+
IE9uIFNhdCwgTWF5IDIyLCAyMDIxIGF0IDEwOjMwOjE5QU0gKzAyMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6Cj4+Pj4gQW0gMjEuMDUuMjEgdW0gMjA6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVy
Ogo+Pj4+IFRoaXMgd29ya3MgYnkgYWRkaW5nIHRoZSBmZW5jZSBvZiB0aGUgbGFzdCBldmljdGlv
biBETUEgb3BlcmF0aW9uIHRvIEJPcwo+Pj4+IHdoZW4gdGhlaXIgYmFja2luZyBzdG9yZSBpcyBu
ZXdseSBhbGxvY2F0ZWQuIFRoYXQncyB3aGF0IHRoZQo+Pj4+IHR0bV9ib19hZGRfbW92ZV9mZW5j
ZSgpIGZ1bmN0aW9uIHlvdSBzdHVtYmxlZCBvdmVyIGlzIGdvb2QgZm9yOiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92NS4xMy1yYzIvc291cmNlL2RyaXZlcnMvZ3B1L2RybS90dG0v
dHRtX2JvLmMjTDY5Mgo+Pj4+Cj4+Pj4gTm93IHRoZSBwcm9ibGVtIGlzIGl0IGlzIHBvc3NpYmxl
IHRoYXQgdGhlIGFwcGxpY2F0aW9uIGlzIHRlcm1pbmF0ZWQgYmVmb3JlCj4+Pj4gaXQgY2FuIGNv
bXBsZXRlIGl0J3MgY29tbWFuZCBzdWJtaXNzaW9uLiBCdXQgc2luY2UgcmVzb3VyY2UgbWFuYWdl
bWVudCBvbmx5Cj4+Pj4gd2FpdHMgZm9yIHRoZSBzaGFyZWQgZmVuY2VzIHdoZW4gdGhlcmUgYXJl
IHNvbWUgdGhlcmUgaXMgYSBjaGFuY2UgdGhhdCB3ZQo+Pj4+IGZyZWUgdXAgbWVtb3J5IHdoaWxl
IGl0IGlzIHN0aWxsIGluIHVzZS4KPj4+IEhtIHdoZXJlIGlzIHRoaXMgY29kZT8gV291bGQgaGVs
cCBpbiBteSBhdWRpdCB0aGF0IEkgd2FudGVkIHRvIGRvIHRoaXMKPj4+IHdlZWs/IElmIHlvdSBs
b29rIGF0IG1vc3Qgb3RoZXIgcGxhY2VzIGxpa2UKPj4+IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRk
X2ltcGxpY2l0KCkgSSBtZW50aW9uZWQgZWFybGllciwgdGhlbiB3ZSBkb24ndAo+Pj4gdHJlYXQg
dGhlIHNoYXJlZCBmZW5jZXMgc3BlY2lhbCBhbmQgYWx3YXlzIGFsc28gaW5jbHVkZSB0aGUgZXhj
bHVzaXZlIG9uZS4KPj4gU2VlIGFtZGdwdV9nZW1fb2JqZWN0X2Nsb3NlKCk6Cj4+Cj4+IC4uLgo+
PiAgICAgICAgICAgZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbChiby0+dGJvLmJhc2UucmVzdik7
Cj4+ICAgICAgICAgICBpZiAoZmVuY2UpIHsKPj4gICAgICAgICAgICAgICAgICAgYW1kZ3B1X2Jv
X2ZlbmNlKGJvLCBmZW5jZSwgdHJ1ZSk7Cj4+ICAgICAgICAgICAgICAgICAgIGZlbmNlID0gTlVM
TDsKPj4gICAgICAgICAgIH0KPj4gLi4uCj4+Cj4+IFdlIGV4cGxpY2l0bHkgYWRkZWQgdGhhdCBi
ZWNhdXNlIHJlc291cmNlIG1hbmFnZW1lbnQgb2Ygc29tZSBvdGhlcgo+PiBkcml2ZXIgd2FzIGdv
aW5nIHRvdGFsbHkgYmFuYW5hcyB3aXRob3V0IHRoYXQuCj4+Cj4+IEJ1dCBJJ20gbm90IHN1cmUg
d2hpY2ggb25lIHRoYXQgd2FzLiBNYXliZSBkaWcgYSBiaXQgaW4gdGhlIGdpdCBhbmQKPj4gbWFp
bGluZyBoaXN0b3J5IG9mIHRoYXQuCj4gSG0gSSBsb29rZWQgYW5kIGl0J3MKPgo+IGNvbW1pdCA4
MmM0MTZiMTNjYjdkMjJiOTZlYzA4ODhiMjk2YTQ4ZGZmOGEwOWViCj4gQXV0aG9yOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gRGF0ZTogICBUaHUgTWFyIDEy
IDEyOjAzOjM0IDIwMjAgKzAxMDAKPgo+ICAgICBkcm0vYW1kZ3B1OiBmaXggYW5kIGNsZWFudXAg
YW1kZ3B1X2dlbV9vYmplY3RfY2xvc2UgdjQKPgo+IFRoYXQgc291bmRlZCBtb3JlIGxpa2UgYW1k
Z3B1IGl0c2VsZiBuZWVkaW5nIHRoaXMsIG5vdCBhbm90aGVyIGRyaXZlcj8KCk5vLCB0aGF0IHBh
dGNoIHdhcyBqdXN0IGEgZm9sbG93IHVwIG1vdmluZyB0aGUgZnVuY3Rpb25hbGl0eSBhcm91bmQu
Cgo+IEJ1dCBsb29raW5nIGF0IGFtZGdwdV92bV9ib191cGRhdGVfbWFwcGluZygpIGl0IHNlZW1z
IHRvIHBpY2sgdGhlCj4gcmlnaHQgZmVuY2luZyBtb2RlIGZvciBncHUgcHRlIGNsZWFyaW5nLCBz
byBJJ20gcmVhbGx5IG5vdCBzdXJlIHdoYXQKPiB0aGUgYnVnIHdhcyB0aGF0IHlvdSB3b3JrZWQg
YXJvdW5kIGhlcmU/VGhlIGltcGxlbWVudGF0aW9uIGJvaWxzIGRvd24KPiB0byBhbWRncHVfc3lu
Y19yZXN2KCkgd2hpY2ggc3luY3MgZm9yIHRoZSBleGNsdXNpdmUgZmVuY2UsIGFsd2F5cy4gQW5k
Cj4gdGhlcmUncyBub3RoaW5nIGVsc2UgdGhhdCBJIGNvdWxkIGZpbmQgaW4gcHVibGljIGhpc3Rv
cnkgYXQgbGVhc3QsIG5vCj4gcmVmZXJlbmNlcyB0byBidWcgcmVwb3J0cyBvciBhbnl0aGluZy4g
SSB0aGluayB5b3UgbmVlZCB0byBkaWcKPiBpbnRlcm5hbGx5LCBiZWNhdXNlIGFzLWlzIEknbSBu
b3Qgc2VlaW5nIHRoZSBwcm9ibGVtIGhlcmUuCj4KPiBPciBhbSBJIG1pc3Npbmcgc29tZXRoaW5n
IGhlcmU/CgpTZWUgdGhlIGNvZGUgaGVyZSBmb3IgZXhhbXBsZTogCmh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9mZW5jZS5jI0wzNjEKCk5vdXZlYXUgYXNzdW1lcyB0aGF0IHdoZW4gYSBzaGFyZWQgZmVu
Y2UgaXMgcHJlc2VudCBpdCBkb2Vzbid0IG5lZWQgdG8gCndhaXQgZm9yIHRoZSBleGNsdXNpdmUg
b25lIGJlY2F1c2UgdGhlIHNoYXJlZCBhcmUgYWx3YXlzIHN1cHBvc2VkIHRvIApmaW5pc2ggYWZ0
ZXIgdGhlIGV4Y2x1c2l2ZSBvbmUuCgpCdXQgZm9yIHBhZ2UgdGFibGUgdW5tYXAgZmVuY2VzIHRo
YXQgaXNuJ3QgdHJ1ZSBhbmQgd2UgcmFuIGludG8gYSByZWFsbHkgCm5hc3R5IGFuZCBoYXJkIHRv
IHJlcHJvZHVjZSBidWcgYmVjYXVzZSBvZiB0aGlzLgoKSSB0aGluayBpdCB3b3VsZCBiZSBtdWNo
IG1vcmUgZGVmZW5zaXZlIGlmIHdlIGNvdWxkIHNheSB0aGF0IHdlIGFsd2F5cyAKd2FpdCBmb3Ig
dGhlIGV4Y2x1c2l2ZSBmZW5jZSBhbmQgZml4IHRoZSB1c2UgY2FzZSBpbiBub3V2ZWF1IGFuZCBk
b3VibGUgCmNoZWNrIGlmIHNvbWVib2R5IGVsc2UgZG9lcyBzdHVmZiBsaWtlIHRoYXQgYXMgd2Vs
bC4KCkNocmlzdGlhbi4KCj4gLURhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
