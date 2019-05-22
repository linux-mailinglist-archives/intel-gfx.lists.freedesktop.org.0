Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A131625E79
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 09:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031F9896F7;
	Wed, 22 May 2019 07:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99128977A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 07:06:06 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id l25so1112215otp.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 00:06:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hwxIkuoTg7fsTMSDb+7xMKGfYh/MEVa7VvQMtiokAr4=;
 b=NPNdurUB6I+zm1sU0rE7oOAfqsgMNbd2g6MPmZSYHqOvvg7DQZ3UYqpFRuL2mEVrFe
 H50dXU+QuzphHCth50lReqENX2/kxPbPqL6GPti3clvZNGFonYnkmb0YsEKdHytJhBQv
 qsqXGkTMpahuuMnRIMF3d7TPI6ESQ64uqQdT52YZYMC2O7NZaJaDWAENbY6cG2QB9TpO
 NPdGKopLLvstfPHg1rQFu3ep6Cg7OSabQS7/yytQqHCbwW8O70Q5ZHXgzDq+TqKn+4Dm
 iXR+Hl9XdHOj6PXWQX6n9S/rBWHKbYg/5zbn6lQORphqEb9nYy3oCanbKnPiqblU3Fd+
 j1bA==
X-Gm-Message-State: APjAAAUZ2uAIq+uEdn2JV1NT+gAoQXgTRCbBniXIkjFPJZkAhO33BaN5
 ztMx5W2Jxmxc/kHfFTqj27g1Wj1FL+NtGmDqsnguGfF8
X-Google-Smtp-Source: APXvYqzFTliKSoSWh1/OajMtcgbThIsIYY2NYY57IGoxzE+k45deSjq/Q2TnIj/Yani1WKg+R/zpdhB3uIA1vArSpwU=
X-Received: by 2002:a05:6830:1597:: with SMTP id
 i23mr113937otr.281.1558508705985; 
 Wed, 22 May 2019 00:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
 <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
 <20190521111151.GS32329@dhcp22.suse.cz>
 <765bdfea-915d-ee86-f885-59b11f4c54db@i-love.sakura.ne.jp>
 <20190521144404.GO21222@phenom.ffwll.local>
 <24951d83-9476-98a6-ee45-484d4de07a52@i-love.sakura.ne.jp>
In-Reply-To: <24951d83-9476-98a6-ee45-484d4de07a52@i-love.sakura.ne.jp>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 22 May 2019 09:04:54 +0200
Message-ID: <CAKMK7uFRo96AbzthS+9yL0XYz4UJ5F=DvhVYpDzqC7ZYBmXQjQ@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
 "Wilson, Chris" <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=hwxIkuoTg7fsTMSDb+7xMKGfYh/MEVa7VvQMtiokAr4=;
 b=A9Q98wbSp04wMQXmzzZOyirXAeJgoQxr2QIgK9DSgRgBff2OL2phL5GFMi4L+ggPfj
 vYv9XFL+uGVdu4ayzNkmEIiOFfE0jznwWQdbqlKnj2c8xagW/xVeK4CJvDBXIvPCGiYj
 JwkF+BtEjgkQsyRgTfkWt9j+cFhIcSairOu1Q=
Subject: Re: [Intel-gfx] [PATCH] kernel.h: Add non_block_start/end()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Michal Hocko <mhocko@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMTE6MDYgUE0gVGV0c3VvIEhhbmRhCjxwZW5ndWluLWtl
cm5lbEBpLWxvdmUuc2FrdXJhLm5lLmpwPiB3cm90ZToKPgo+IE9uIDIwMTkvMDUvMjEgMjM6NDQs
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPj4+PiBPT00gbm90aWZpZXJzIHNob3VsZCBub3QgZGVw
ZW5kIG9uIGFueSBsb2NrcyBvciBzbGVlcGFibGUgY29uZGl0aW9uYWxzLgo+ID4+Pj4gSWYgc29t
ZSBsb2NrIGRpcmVjdGx5IG9yIGluZGlyZWN0bHkgZGVwZW5kZWQgb24gX19HRlBfRElSRUNUX1JF
Q0xBSU0sCj4gPj4+PiBpdCB3aWxsIGRlYWRsb2NrLiBUaHVzLCBkZXNwaXRlIGJsb2NraW5nIEFQ
SSwgdGhpcyBzaG91bGQgZWZmZWN0aXZlbHkgYmUKPiA+Pj4+IG5vbi1ibG9ja2luZy4gQWxsIE9P
TSBub3RpZmllciB1c2VycyBleGNlcHQgaTkxNSBzZWVtcyB0byBiZSBhdG9taWMsIGJ1dAo+ID4+
Pj4gSSBjYW4ndCBldmFsdWF0ZSBpOTE1IHBhcnQuLi4KPiA+Pj4KPiA+Pj4gUmVhZCBhZ2FpbiB3
aGF0IEkndmUgd3JpdHRlbiwgcGxlYXNlCj4gPj4+Cj4gPj4KPiA+PiBRdWVzdGlvbiB0byBEYW5p
ZWw6IElzIGk5MTUncyBvb21fbm90aWZpZXIgZnVuY3Rpb24gYXRvbWljPwo+ID4KPiA+IEl0J3Mg
c3VwcG9zZWQgdG8gbm90IGJsb2NrIHRvbyBtdWNoIGF0IGxlYXN0LCBJIGRvbid0IHRoaW5rIGl0
J3MgZW50aXJlbHkKPiA+IGF0b21pYy4gV2FraW5nIHVwIHRoZSBkZXZpY2UgKHdoaWNoIHdlIG5l
ZWQgdG8gd3JpdGUgc29tZSBvZiB0aGUgcHRlcykKPiA+IHdpbGwgdGFrZSBzb21lIHRpbWUgYW5k
IEkgdGhpbmsgYWNxdWlyZXMgYSBmZXcgbXV0ZXhlcywgYnV0IG5vdCAxMDAlIHN1cmUuCj4gPgo+
ID4gSWYgeW91IHdhbnQgdG8gc2VlLCBzZW5kIGEgcGF0Y2ggdG8gaW50ZWwtZ2Z4IG0tbCBhbmQg
Q0kgd2lsbCBwaWNrIGl0IHVwCj4gPiBhbmQgdGVzdCB3aXRoIG91ciBmYXJtIG9mIG1hY2hpbmVz
Lgo+Cj4gQXMgc29vbiBhcyBhIG11dGV4IGlzIGhlbGQsIHdlIGNhbid0IGV4cGVjdCBpdCBpcyBh
dG9taWMuIFdlIG5lZWQgdG8KPiBtYW51YWxseSBpbnNwZWN0IHdoZXRoZXIgdGhlcmUgaXMgX19H
RlBfRElSRUNUX1JFQ0xBSU0gZGVwZW5kZW5jeS4uLgo+Cj4gU2luY2UgT09NIG5vdGlmaWVyIHdp
bGwgYmUgY2FsbGVkIGFmdGVyIHNocmlua2VycyBhcmUgYXR0ZW1wdGVkLAo+IGNhbiBpOTE1IG1v
dmUgZnJvbSBPT00gbm90aWZpZXIgdG8gc2hyaW5rZXI/CgpXZSBhbHNvIGhhdmUgYSBzaHJpbmtl
ci4gVGhlIHRyb3VibGUgaXMgYSBiaXQgdGhhdCBsb2NraW5nIGRlc2lnbiBpbgppOTE1IGlzIHN0
aWxsIG5vdCBncmVhdCAoaXQncyBhIGxvdCBiZXR0ZXIgdGhhbiBpdCdzIGJpdCksIGFuZCBpaXJj
CnRoYXQncyB3aHkgd2UgaGFkIHRoZSBvb20gZmFsbGJhY2suIEl0IHVuY29uZGl0aW9uYWxseSB0
aHJvd3Mgb3V0IGEKYnVuY2ggb2YgdGhpbmdzIHdlIGNhbiBkbyB3aXRoIGxlc3MgbG9ja2luZy4g
TWF5YmUgd2UgY291bGQgc3R1ZmYgdGhhdAppbnRvIHRoZSBzaHJpbmtlciBub3cuIEFkZGluZyBD
aHJpcy4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
