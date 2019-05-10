Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694001A005
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 17:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F24890B4;
	Fri, 10 May 2019 15:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D339289B55
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 15:20:27 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id s20so4780579ioj.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 08:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BrbeovF+fjWSeVPTpilNjNVE8DYyqu+aTis0l/oYkL4=;
 b=DlLQGtlRWkOVDcKWSmvfMYnlEdVjpjtNyFIIt8DQbpMJV4kmumCWtYtNKTJ6kmqjdd
 qiGPCbCnJnwB9AK4nVR7O34HI0AvPK9jkLcHJnKzx4D+MauVQxR4R4XrHbgUrHr4z8p1
 p6xDi91tK0ht4qhH1IofmmIw4CInPZHXL/DJgqjquu3BNhY0ckpP2mTbba5YTFTwoVBw
 87zkIxll6rCskfMVruLL3TbJr3U8LbMb4H1+BnTFRvW4cv1AJWzeaakeC5Q8LZ2e5dMy
 911Ry/pvfTuEHawl74Y/W09ru4eHDwWI/zkmF7+WTMB152JIFHMLMACfb3XdlGhhTdGp
 s5IA==
X-Gm-Message-State: APjAAAXA2cEHIvtw1vHglorfXokE23QydzWXyfE5UPFN37/Cd+b277Gm
 OrtcKKzN6Z59K84DNCyzyqeT76FJv4O3LVQHlmXesg==
X-Google-Smtp-Source: APXvYqyGy0QKq8RFEM2FhfJVX0s/4Ab+rOb+P2bBUoQMSnJ8RrYBJVX9LW7nbUglSVX5XIrzrc3uV91SJ4OQGoa2SJk=
X-Received: by 2002:a6b:400a:: with SMTP id k10mr8036136ioa.291.1557501627148; 
 Fri, 10 May 2019 08:20:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190509120903.28939-1-daniel.vetter@ffwll.ch>
 <20190509200633.19678-1-daniel.vetter@ffwll.ch>
 <20190510092819.elu4b7fcojzcek2q@pathway.suse.cz>
In-Reply-To: <20190510092819.elu4b7fcojzcek2q@pathway.suse.cz>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 10 May 2019 17:20:15 +0200
Message-ID: <CAKMK7uEPAH82xv8r+8Rh3eQT1mTO00A-sFTEqQMwA=zFtWmfxQ@mail.gmail.com>
To: Petr Mladek <pmladek@suse.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=BrbeovF+fjWSeVPTpilNjNVE8DYyqu+aTis0l/oYkL4=;
 b=bc5Spi54huGVHztgDsdTF8soN5Lb8gcKIzqHvBSey/7ADIFfzvhOL5QJ5yDvBjJeVc
 KAUUU71MlDw88D+naXb7K5FeXTVRxHTTgo/KsCWFU71JQfqVO52TZXz3wVmyYs+Ootx4
 7F2Up23rhUJgrLKL9ACsI64nAWHP+/0NI+XwY=
Subject: Re: [Intel-gfx] [PATCH] kernel/locking/semaphore: use wake_q in up()
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
Cc: John Ogness <john.ogness@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgMTE6MjggQU0gUGV0ciBNbGFkZWsgPHBtbGFkZWtAc3Vz
ZS5jb20+IHdyb3RlOgo+Cj4gT24gVGh1IDIwMTktMDUtMDkgMjI6MDY6MzMsIERhbmllbCBWZXR0
ZXIgd3JvdGU6Cj4gPiBjb25zb2xlX3RyeWxvY2ssIGNhbGxlZCBmcm9tIHdpdGhpbiBwcmludGss
IGNhbiBiZSBjYWxsZWQgZnJvbSBwcmV0dHkKPiA+IG11Y2ggYW55d2hlcmUuIEluY2x1ZGluZyB0
cnlfdG9fd2FrZV91cC4gTm90ZSB0aGF0IHRoaXMgaXNuJ3QgY29tbW9uLAo+ID4gdXN1YWxseSB0
aGUgYm94IGlzIGluIHByZXR0eSBiYWQgc2hhcGUgYXQgdGhhdCBwb2ludCBhbHJlYWR5LiBCdXQg
aXQKPiA+IHJlYWxseSBkb2Vzbid0IGhlbHAgd2hlbiB0aGVuIGxvY2tkZXAganVtcHMgaW4gYW5k
IHNwYW1zIHRoZSBsb2dzLAo+ID4gcG90ZW50aWFsbHkgb2JzY3VyaW5nIHRoZSByZWFsIGJhY2t0
cmFjZSB3ZSdyZSByZWFsbHkgaW50ZXJlc3RlZCBpbi4KPiA+IE9uZSBjYXNlIEkndmUgc2VlbiAo
c2xpZ2h0bHkgc2ltcGxpZmllZCBiYWNrdHJhY2UpOgo+ID4KPiA+IEZpeCB0aGlzIHNwZWNpZmlj
IGxvY2tpbmcgcmVjdXJzaW9uIGJ5IG1vdmluZyB0aGUgd2FrZV91cF9wcm9jZXNzIG91dAo+ID4g
ZnJvbSB1bmRlciB0aGUgc2VtYXBob3JlLmxvY2sgc3BpbmxvY2ssIHVzaW5nIHdha2VfcSBhcyBy
ZWNvbW1lbmRlZCBieQo+ID4gUGV0ZXIgWmlqbHN0cmEuCj4KPiBJdCBtaWdodCBtYWtlIHNlbnNl
IHRvIG1lbnRpb24gYWxzbyB0aGUgb3B0aW1pemF0aW9uIGVmZmVjdCBtZW50aW9uZWQKPiBieSBQ
ZXRlci4KPgo+ID4gZGlmZiAtLWdpdCBhL2tlcm5lbC9sb2NraW5nL3NlbWFwaG9yZS5jIGIva2Vy
bmVsL2xvY2tpbmcvc2VtYXBob3JlLmMKPiA+IGluZGV4IDU2MWFjZGQzOTk2MC4uN2E2ZjMzNzE1
Njg4IDEwMDY0NAo+ID4gLS0tIGEva2VybmVsL2xvY2tpbmcvc2VtYXBob3JlLmMKPiA+ICsrKyBi
L2tlcm5lbC9sb2NraW5nL3NlbWFwaG9yZS5jCj4gPiBAQCAtMTY5LDYgKzE2OSwxNCBAQCBpbnQg
ZG93bl90aW1lb3V0KHN0cnVjdCBzZW1hcGhvcmUgKnNlbSwgbG9uZyB0aW1lb3V0KQo+ID4gIH0K
PiA+ICBFWFBPUlRfU1lNQk9MKGRvd25fdGltZW91dCk7Cj4gPgo+ID4gKy8qIEZ1bmN0aW9ucyBm
b3IgdGhlIGNvbnRlbmRlZCBjYXNlICovCj4gPiArCj4gPiArc3RydWN0IHNlbWFwaG9yZV93YWl0
ZXIgewo+ID4gKyAgICAgc3RydWN0IGxpc3RfaGVhZCBsaXN0Owo+ID4gKyAgICAgc3RydWN0IHRh
c2tfc3RydWN0ICp0YXNrOwo+ID4gKyAgICAgYm9vbCB1cDsKPiA+ICt9Owo+ID4gKwo+ID4gIC8q
Kgo+ID4gICAqIHVwIC0gcmVsZWFzZSB0aGUgc2VtYXBob3JlCj4gPiAgICogQHNlbTogdGhlIHNl
bWFwaG9yZSB0byByZWxlYXNlCj4gPiBAQCAtMTc5LDI0ICsxODcsMjUgQEAgRVhQT1JUX1NZTUJP
TChkb3duX3RpbWVvdXQpOwo+ID4gIHZvaWQgdXAoc3RydWN0IHNlbWFwaG9yZSAqc2VtKQo+ID4g
IHsKPiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiArICAgICBzdHJ1Y3Qgc2VtYXBo
b3JlX3dhaXRlciAqd2FpdGVyOwo+ID4gKyAgICAgREVGSU5FX1dBS0VfUSh3YWtlX3EpOwo+Cj4g
V2UgbmVlZCB0byBjYWxsIHdha2VfcV9pbml0KCZ3YWtlX3EpIHRvIG1ha2Ugc3VyZSB0aGF0Cj4g
aXQgaXMgZW1wdHkuCgpERUZJTkVfV0FLRV9RIGRvZXMgdGhhdCBhbHJlYWR5LCBhbmQgaWYgaXQg
ZGlkbid0LCBJJ2Qgd29uZGVyIGhvdyBJCm1hbmFnZWQgdG8gYm9vdCB3aXRoIHRoaXMgcGF0Y2gu
IGNvbnNvbGVfbG9jayBpcyB1c2FsbHkgdGVycmlibHkKY29udGVudGVkIGJlY2F1c2UgdGhhbmtz
IHRvIGZiY29uIHdlIG11c3QgZG8gYSBmdWxsIGRpc3BsYXkgbW9kZXNldAp3aGlsZSBob2xkaW5n
IGl0LCB3aGljaCB0YWtlcyBmb3JldmVyLiBBcyBsb25nIGFzIGFueW9uZSBwcmludGtzCm1lYW53
aGlsZSAoZ3VhcmFudGVlZCB3aGlsZSBsb2FkaW5nIGRyaXZlcnMgcmVhbGx5KSB5b3UgaGF2ZQpj
b250ZW50aW9uLgotRGFuaWVsCgoKPiBCZXN0IFJlZ2FyZHMsCj4gUGV0cgo+Cj4gPiAgICAgICBy
YXdfc3Bpbl9sb2NrX2lycXNhdmUoJnNlbS0+bG9jaywgZmxhZ3MpOwo+ID4gLSAgICAgaWYgKGxp
a2VseShsaXN0X2VtcHR5KCZzZW0tPndhaXRfbGlzdCkpKQo+ID4gKyAgICAgaWYgKGxpa2VseShs
aXN0X2VtcHR5KCZzZW0tPndhaXRfbGlzdCkpKSB7Cj4gPiAgICAgICAgICAgICAgIHNlbS0+Y291
bnQrKzsKPiA+IC0gICAgIGVsc2UKPiA+IC0gICAgICAgICAgICAgX191cChzZW0pOwo+ID4gKyAg
ICAgfSBlbHNlIHsKPiA+ICsgICAgICAgICAgICAgd2FpdGVyID0gIGxpc3RfZmlyc3RfZW50cnko
JnNlbS0+d2FpdF9saXN0LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3Qgc2VtYXBob3JlX3dhaXRlciwgbGlzdCk7Cj4gPiArICAgICAgICAgICAgIGxp
c3RfZGVsKCZ3YWl0ZXItPmxpc3QpOwo+ID4gKyAgICAgICAgICAgICB3YWl0ZXItPnVwID0gdHJ1
ZTsKPiA+ICsgICAgICAgICAgICAgd2FrZV9xX2FkZCgmd2FrZV9xLCB3YWl0ZXItPnRhc2spOwo+
ID4gKyAgICAgfQo+ID4gICAgICAgcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnNlbS0+bG9j
aywgZmxhZ3MpOwo+ID4gKwo+ID4gKyAgICAgd2FrZV91cF9xKCZ3YWtlX3EpOwo+ID4gIH0KPiA+
ICBFWFBPUlRfU1lNQk9MKHVwKTsKPiA+Cj4gPiAtLyogRnVuY3Rpb25zIGZvciB0aGUgY29udGVu
ZGVkIGNhc2UgKi8KPiA+IC0KPiA+IC1zdHJ1Y3Qgc2VtYXBob3JlX3dhaXRlciB7Cj4gPiAtICAg
ICBzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7Cj4gPiAtICAgICBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRh
c2s7Cj4gPiAtICAgICBib29sIHVwOwo+ID4gLX07Cj4gPiAtCj4gPiAgLyoKPiA+ICAgKiBCZWNh
dXNlIHRoaXMgZnVuY3Rpb24gaXMgaW5saW5lZCwgdGhlICdzdGF0ZScgcGFyYW1ldGVyIHdpbGwg
YmUKPiA+ICAgKiBjb25zdGFudCwgYW5kIHRodXMgb3B0aW1pc2VkIGF3YXkgYnkgdGhlIGNvbXBp
bGVyLiAgTGlrZXdpc2UgdGhlCgoKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVy
LCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
