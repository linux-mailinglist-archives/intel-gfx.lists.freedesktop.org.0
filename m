Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E713D0A1E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 09:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FF36E911;
	Wed, 21 Jul 2021 07:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61316E911
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 07:56:43 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id c197so1977199oib.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 00:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=p9HUH5JR5xeWkXu4Klt3Lds5W2AVOzLjiChVWDl8JgY=;
 b=GxRnQ0qwNWZ2EXKSUzHivR5/x41FiOgU/cqpkHxMEzwfaQO22G0nvJNhV4XdCE0H0F
 vNXGBMpL6NKcncYMoQNXl5V0R4aJt4hIMOqQmsJD9+NMNsBa10CLgpad7G/eSB6ggYdH
 4H+j0b1B6Vuz33uiLhXu4p1fbCPCkYFNItYdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=p9HUH5JR5xeWkXu4Klt3Lds5W2AVOzLjiChVWDl8JgY=;
 b=udPbX20VaLNCTzpuBC1wT0GL3fqpILCMHwp613Url3oIedJCfn6OKX1PTdPSMJrdC9
 ybzc+3Jnd1ssh/5TF6JOjfe3qV/ZfuRw4+Iz4kIqE8PPg/zB6JjT3idIs3DL1A8jg3aN
 wucOxkvUN4a0fX5S+EQY0zOY+AKIYWHu57x/tdSEZtWtXcI2RfRqxZK9QIqFz5vx1COO
 4Aiwmf0FRDcKd6I4OqXRsfDQfQr2GoQSUgNizuiyqfxEqHnlshoLJ6oG5KkZVPYLHFJF
 OR2SkOXipAjibYmlTcEptW+1ezIggCN9QvKQ+wzcYgAQbhQStz+hHR7chPGPpzKDoRsp
 zqsA==
X-Gm-Message-State: AOAM531v7NOkAPSGH4wYAF2AcoXwzr8YZauvScqdK4E0mBGZ8dEplJvG
 C0N1JUOHeujknhdd3mCawEucXPSqTTXRDAjLqLKQrw==
X-Google-Smtp-Source: ABdhPJxnV4cLsNAump1G9PWsqVCqO6rV5yfCO8zFECZHLkRFi3aze1+8qPLRy/AGqnfcTgrF5jrUmckCJnMxrPfjtkk=
X-Received: by 2002:aca:3085:: with SMTP id w127mr1693399oiw.101.1626854202977; 
 Wed, 21 Jul 2021 00:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210104205654.238928-1-jose.souza@intel.com>
 <20210104205654.238928-2-jose.souza@intel.com>
 <CAKMK7uF19u+D2LhEpaKSSJT9Gb3-3TSSSHGGG14x=8X8QXXJtw@mail.gmail.com>
 <CAKMK7uFGg5FmeXG7s0SL3zDK_R+k5vfmOeOOWHkPLQV5yTV4Xg@mail.gmail.com>
 <CAKMK7uG9+XAxDspa2EUagnLVfC51Ryi94bZU_ES4uy4QQ6qm0A@mail.gmail.com>
 <db99aae54af048e33a8ac4cd5e13ecb5c23b5afe.camel@intel.com>
 <CAKMK7uG3B2-EVp6hkeaeRuZfOQZFAE4yYRFS7FzVHQw8p5ssxg@mail.gmail.com>
In-Reply-To: <CAKMK7uG3B2-EVp6hkeaeRuZfOQZFAE4yYRFS7FzVHQw8p5ssxg@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 21 Jul 2021 09:56:32 +0200
Message-ID: <CAKMK7uHHKXVWhtX7Guguir6QuiPT9L_Pgd7+qjocEFnp+y5z-w@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>, 
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
Subject: Re: [Intel-gfx] [PATCH CI 2/4] drm/i915/display/psr: Use plane
 damage clips to calculate damaged area
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMjEsIDIwMjEgYXQgOTo1MCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+IE9uIFR1ZSwgSnVsIDIwLCAyMDIxIGF0IDY6NTUgUE0gU291emEsIEpv
c2UgPGpvc2Uuc291emFAaW50ZWwuY29tPiB3cm90ZToKPiA+IE9uIFR1ZSwgMjAyMS0wNy0yMCBh
dCAxNzozMSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gT24gVHVlLCBKdWwgMjAs
IDIwMjEgYXQgNToxNiBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+
ID4gPiA+IE9uIFR1ZSwgSnVsIDIwLCAyMDIxIGF0IDU6MDkgUE0gRGFuaWVsIFZldHRlciA8ZGFu
aWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+ID4gPiA+IE9uIE1vbiwgSmFuIDQsIDIwMjEgYXQgOTo1
NiBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCj4gPiA+ID4gPiA8am9zZS5zb3V6YUBpbnRlbC5j
b20+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBOb3cgdXNpbmcgcGxhbmUgZGFtYWdl
IGNsaXBzIHByb3BlcnR5IHRvIGNhbGN1YWx0ZSB0aGUgZGFtYWdlZCBhcmVhLgo+ID4gPiA+ID4g
PiBTZWxlY3RpdmUgZmV0Y2ggb25seSBzdXBwb3J0cyBvbmUgcmVnaW9uIHRvIGJlIGZldGNoZWQg
c28gc29mdHdhcmUKPiA+ID4gPiA+ID4gbmVlZHMgdG8gY2FsY3VsYXRlIGEgYm91bmRpbmcgYm94
IGFyb3VuZCBhbGwgZGFtYWdlIGNsaXBzLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBOb3cgdGhh
dCB3ZSBhcmUgbm90IGNvbXBsZXRlIGZldGNoaW5nIGVhY2ggcGxhbmUsIHRoZXJlIGlzIGFub3Ro
ZXIKPiA+ID4gPiA+ID4gbG9vcCBuZWVkZWQgYXMgYWxsIHRoZSBwbGFuZSBhcmVhcyB0aGF0IGlu
dGVyc2VjdCB3aXRoIHRoZSBwaXBlCj4gPiA+ID4gPiA+IGRhbWFnZWQgYXJlYSBuZWVkcyB0byBi
ZSBmZXRjaGVkIGZyb20gbWVtb3J5IHNvIHRoZSBjb21wbGV0ZSBibGVuZGluZwo+ID4gPiA+ID4g
PiBvZiBhbGwgcGxhbmVzIGNhbiBoYXBwZW4uCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IHYyOgo+
ID4gPiA+ID4gPiAtIGRvIG5vdCBzaGlmdGluZyBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0IG9u
bHkgc3JjIGlzIGluIDE2LjE2IGZvcm1hdAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiB2NDoKPiA+
ID4gPiA+ID4gLSBzZXR0aW5nIHBsYW5lIHNlbGVjdGl2ZSBmZXRjaCBhcmVhIHVzaW5nIHRoZSB3
aG9sZSBwaXBlIGRhbWFnZSBhcmVhCj4gPiA+ID4gPiA+IC0gbWFyayB0aGUgd2hvbGUgcGxhbmUg
YXJlYSBkYW1hZ2VkIGlmIHBsYW5lIHZpc2liaWxpdHkgb3IgYWxwaGEKPiA+ID4gPiA+ID4gY2hh
bmdlZAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiB2NToKPiA+ID4gPiA+ID4gLSB0YWtpbmcgaW4g
Y29uc2lkZXJhdGlvbiBzcmMueTEgaW4gdGhlIGRhbWFnZSBjb29yZGluYXRlcwo+ID4gPiA+ID4g
PiAtIGFkZGluZyB0byB0aGUgcGlwZSBkYW1hZ2VkIGFyZWEgcGxhbmVzIHRoYXQgd2VyZSB2aXNp
YmxlIGJ1dCBhcmUKPiA+ID4gPiA+ID4gaW52aXNpYmxlIGluIHRoZSBuZXcgc3RhdGUKPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gdjY6Cj4gPiA+ID4gPiA+IC0gY29uc2lkZXIgb2xkIHN0YXRlIHBs
YW5lIGNvb3JkaW5hdGVzIHdoZW4gdmlzaWJpbGl0eSBjaGFuZ2VzIG9yIGl0Cj4gPiA+ID4gPiA+
IG1vdmVkIHRvIGNhbGN1bGF0ZSBkYW1hZ2VkIGFyZWEKPiA+ID4gPiA+ID4gLSByZW1vdmUgZnJv
bSBkYW1hZ2VkIGFyZWEgdGhlIHBvcnRpb24gbm90IGluIHNyYyBjbGlwCj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+IHY3Ogo+ID4gPiA+ID4gPiAtIGludGVyc2VjIGV2ZXJ5IGRhbWFnZSBjbGlwIHdp
dGggc3JjIHRvIG1pbmltaXplIGRhbWFnZWQgYXJlYQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiB2
ODoKPiA+ID4gPiA+ID4gLSBhZGp1c3QgcGlwZV9kYW1hZ2VkIGFyZWEgdG8gNCBsaW5lcyBncm91
cGluZwo+ID4gPiA+ID4gPiAtIGFkanVzdCBjYWxjdWxhdGlvbiBub3cgdGhhdCBpcyB1bmRlcnN0
b29kIHRoYXQgdWFwaS5zcmMgaXMgdGhlCj4gPiA+ID4gPiA+IGZyYW1lYnVmZmVyIGNvb3JkaW5h
dGVzIHRoYXQgcGxhbmUgd2lsbCBzdGFydCB0byBmZXRjaCBmcm9tCj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IHY5Ogo+ID4gPiA+ID4gPiAtIE9ubHkgYWRkIHBsYW5lIGRzdCBvciBzcmMgdG8gZGFt
YWdlZF9hcmVhIGlmIHZpc2libGUKPiA+ID4gPiA+ID4gLSBFYXJseSBza2lwIHBsYW5lIGRhbWFn
ZSBjYWxjdWxhdGlvbiBpZiBpdCB3YXMgbm90IHZpc2libGUgaW4gb2xkIGFuZAo+ID4gPiA+ID4g
PiBuZXcgc3RhdGUKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gPiA+IENjOiBHd2FuLWd5ZW9u
ZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+IFJldmlld2VkLWJ5
OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+ID4gPiA+ID4KPiA+ID4gPiA+IFdoeSBpcyB0aGlzIG5vdCB1c2luZyBkcm1fYXRvbWlj
X2hlbHBlcl9kYW1hZ2VfbWVyZ2VkPyBJIGp1c3Qgc3R1bWJsZWQKPiA+ID4gPiA+IG92ZXIgdGhp
cywgYW5kIHRoaXMgaXMgb25lIG9mIHRoZSBvbmx5IHR3byBkcml2ZXJzIHRoYXQgZGlyZWN0bHkg
ZGlncwo+ID4gPiA+ID4gYXJvdW5kIGluIHRoZSBkYW1hZ2UgYXJlYSwgYW5kIHNlZW1zIHRvIHJl
aW52ZW50IGEgYnVuY2ggb2YgdGhlIHN0dWZmCj4gPiA+ID4gPiBoZXJlLgo+ID4KPiA+IFdlIGNh
biB1c2UgZHJtX2F0b21pY19oZWxwZXJfZGFtYWdlX21lcmdlZCgpIGJ1dCBpdCB3b3VsZCBvbmx5
IHNhdmUgdXMgb25lIGZvciBsb29wLgo+Cj4gWWVzIHBsZWFzZS4gVGhlIHRyb3VibGUgd2l0aCBy
b2xsaW5nIG91ciBvd24gY29waWVzIGZvciBldmVyeXRoaW5nIGlzCj4gdGhhdCBpdCBkb2VzIGFk
ZCB1cC4KPgo+ID4gPiA+IEFsc28sIGRpZCB3ZSBtZXJnZSB0aGUgaWd0cyBmb3IgdGhpcyBzdHVm
Zj8gVGhleSB1bmZvcnR1bmF0ZWx5IG5ldmVyCj4gPiA+ID4gbGFuZGVkLCB3aGVuIHZtd2dmeCB0
ZWFtIGRpZCBhbGwgdGhpcyB3b3JrLCBidXQgZm9yIGk5MTUgd2UgcmVhbGx5Cj4gPiA+ID4gc2hv
dWxkbid0IGV2ZW4gbGFuZCBuZXcgc3VwcG9ydCB3aXRob3V0IHRlc3RzLgo+ID4gPgo+ID4gPiBM
byBhbmQgYmVob2xkLCB3ZSBtZXJnZSB0aGUgdWFwaSBlbmFibGluZyB3YXkgZWFybGllciB0aGFu
IHRoaXMgcGF0Y2ggaGVyZToKPiA+ID4KPiA+ID4gY29tbWl0IDA5M2EzYTMwMDAwOTI2YjhiZGE5
ZWVmNzczZTRlZDUwNzkwNTMzNTAKPiA+ID4gQXV0aG9yOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4gRGF0ZTogICBUaHUgSnVuIDI1IDE4OjAxOjQ3
IDIwMjAgLTA3MDAKPiA+ID4KPiA+ID4gICAgZHJtL2k5MTU6IEFkZCBwbGFuZSBkYW1hZ2UgY2xp
cHMgcHJvcGVydHkKPiA+ID4KPiA+ID4gQW5kIHRoZSBpZ3RzIGFyZSBub3doZXJlIG5lYXIgdG8g
YmUgc2VlbiwgYXQgbGVhc3QgdGhlIHN0dWZmIGZyb20KPiA+ID4gdm13Z2Z4IGRpZG4ndCBsYW5k
LiBQbGVhc2UgZmlsZSBhIEpJUkEgaW50ZXJuYWxseSBhbmQgcGluZyBtZSBvbiB0aGF0Cj4gPiA+
IHNvIHRoaXMgZ2V0cyBzb3J0ZWQgb3V0IGFzYXAuCj4gPgo+ID4gSGVyZSB0aGUgSUdUOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMvLS9ibG9iL21hc3Rl
ci90ZXN0cy9rbXNfcHNyMl9zZi5jCj4KPiBUaGVyZSB3YXMgc29tZSBpZ3RzIHRoYXQgd2VyZSBj
cm9zcy1kcml2ZXIsIG5vdCBpbnRlbCBzcGVjaWZpYy4gVGhlCj4gdGhpbmcgaGVyZSBpcyBzdXBw
b3NlZCB0byBiZSBhIGNyb3NzLXZlbmRvciBpbnRlcmZhY2UsIHNvIHdvdWxkIGJlCj4gcmVhbGx5
IGdvb2QgaWYgeW91IHJlc3VycmVjdCB0aG9zZSBmcm9tIHZtd2dmeCBmb2xrcyBhbmQgbGFuZCB0
aGVtCj4gdG9vOgo+Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81
MTA4Ny8KCkFsc28gZnJvbSBhIHZlcnkgcXVpY2sgbG9vayBhdCB0aGUga21zX3BzcjJfc2YgdGVz
dHMgdGhlcmUncyByZWFsbHkKbm90IGEgd2hvbGUgbG90IHNwZWNpZmljIGFib3V0IG91ciBwc3Iy
IGltcGxlbWVudGF0aW9uIGluIHRoZXJlLiBUaGUKdGVzdCBzaG91bGQgd29yayBvbiBhbnkgcGxh
bmUgd2l0aCBhIEZCX0RBTUFHRV9DTElQUyByZWN0IGF2YWlsYWJsZSwKc28gdGhlcmUncyBubyBy
ZWFzb24gdG8gbWFrZSB0aGlzIHNwZWNpZmljIHRvIGludGVsLCBtdWNoIGxlc3MgdG8KcHNyMi4g
SSB0aGluayB3ZSBuZWVkIHRvOgotIG1ha2UgdGhpcyBhIGdlbmVyaWMga21zIHRlc3QsIGl0IHNo
b3VsZCB3b3JrCi0gbWVyZ2Ugd2l0aCB0aGUgdGVzdGNhc2VzIGZyb20gdGhlIGZvbGtzIHdobyBt
ZXJnZWQgRkJfREFNQUdFX0NMSVBTCm9yaWdpbmFsbHkgdG8gbWFrZSBzdXJlIGFsbCBkcml2ZXJz
IGZvbGxvdyB0aGUgc2FtZSBjb250cmFjdC4KCktNUyBwcm9wZXJ0aWVzIGFyZSBnZW5lcmljLCBp
bnRlbC1zcGVjaWZpYyB0ZXN0cyBmb3Igd2hlbiB0aGVyZSdzCm5vdGhpbmcgaW50ZWwtc3BlY2lm
aWMgaXNuJ3QgZ29vZC4gQWxzbyBhZGRpbmcgUGFua2FqLgoKQ2hlZXJzLCBEYW5pZWwKCj4gPgo+
ID4gPgo+ID4gPiBUaGFua3MsIERhbmllbAo+ID4gPgo+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMTMgKysrKysr
KysrKysrKysrKysrKystLS0KPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5OSBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiA+ID4gPiA+IGluZGV4IGQ5YTM5NWM0
ODZkMy4uZjViOTUxOWIzNzU2IDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+ID4gPiA+ID4gQEAgLTEyNDIsOSArMTI0
MiwxMSBAQCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPiA+ID4gPiA+ICAgICAgICAgaWYgKGNsaXAtPnkxID09
IC0xKQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgZ290byBleGl0Owo+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiArICAgICAgIGRybV9XQVJOX09OKGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2
LCBjbGlwLT55MSAlIDQgfHwgY2xpcC0+eTIgJSA0KTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiAgICAgICAgIHZhbCB8PSBQU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVfVVBEQVRF
Owo+ID4gPiA+ID4gPiAgICAgICAgIHZhbCB8PSBQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9T
VEFSVF9BRERSKGNsaXAtPnkxIC8gNCArIDEpOwo+ID4gPiA+ID4gPiAtICAgICAgIHZhbCB8PSBQ
U1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUihESVZfUk9VTkRfVVAoY2xpcC0+eTIs
IDQpICsgMSk7Cj4gPiA+ID4gPiA+ICsgICAgICAgdmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU1Vf
UkVHSU9OX0VORF9BRERSKGNsaXAtPnkyIC8gNCArIDEpOwo+ID4gPiA+ID4gPiAgZXhpdDoKPiA+
ID4gPiA+ID4gICAgICAgICBjcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwgPSB2YWw7Cj4g
PiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiA+IEBAIC0xMjY5LDggKzEyNzEsOCBAQCBpbnQgaW50ZWxf
cHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+
ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQo+ID4gPiA+ID4gPiAgewo+ID4gPiA+ID4gPiAgICAgICAgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0
ZShzdGF0ZSwgY3J0Yyk7Cj4gPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IGRybV9yZWN0IHBpcGVf
Y2xpcCA9IHsgLngxID0gMCwgLnkxID0gLTEsIC54MiA9IElOVF9NQVgsIC55MiA9IC0xIH07Cj4g
PiA+ID4gPiA+ICAgICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3Rh
dGUsICpvbGRfcGxhbmVfc3RhdGU7Cj4gPiA+ID4gPiA+IC0gICAgICAgc3RydWN0IGRybV9yZWN0
IHBpcGVfY2xpcCA9IHsgLnkxID0gLTEgfTsKPiA+ID4gPiA+ID4gICAgICAgICBzdHJ1Y3QgaW50
ZWxfcGxhbmUgKnBsYW5lOwo+ID4gPiA+ID4gPiAgICAgICAgIGJvb2wgZnVsbF91cGRhdGUgPSBm
YWxzZTsKPiA+ID4gPiA+ID4gICAgICAgICBpbnQgaSwgcmV0Owo+ID4gPiA+ID4gPiBAQCAtMTI4
MiwxMyArMTI4NCwyNSBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPiA+ID4gPiAgICAgICAgIGlmIChyZXQpCj4g
PiA+ID4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiArICAgICAgIC8qCj4gPiA+ID4gPiA+ICsgICAgICAgICogQ2FsY3VsYXRlIG1pbmltYWwg
c2VsZWN0aXZlIGZldGNoIGFyZWEgb2YgZWFjaCBwbGFuZSBhbmQgY2FsY3VsYXRlCj4gPiA+ID4g
PiA+ICsgICAgICAgICogdGhlIHBpcGUgZGFtYWdlZCBhcmVhLgo+ID4gPiA+ID4gPiArICAgICAg
ICAqIEluIHRoZSBuZXh0IGxvb3AgdGhlIHBsYW5lIHNlbGVjdGl2ZSBmZXRjaCBhcmVhIHdpbGwg
YWN0dWFsbHkgYmUgc2V0Cj4gPiA+ID4gPiA+ICsgICAgICAgICogdXNpbmcgd2hvbGUgcGlwZSBk
YW1hZ2VkIGFyZWEuCj4gPiA+ID4gPiA+ICsgICAgICAgICovCj4gPiA+ID4gPiA+ICAgICAgICAg
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwgb2xkX3Bs
YW5lX3N0YXRlLAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsKPiA+ID4gPiA+ID4gLSAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1fcmVjdCAqc2VsX2ZldGNoX2FyZWEsIHRlbXA7Cj4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3JlY3Qgc3JjLCBkYW1hZ2VkX2FyZWEgPSB7IC55MSA9
IC0xIH07Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX21vZGVfcmVjdCAq
ZGFtYWdlZF9jbGlwczsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHUzMiBudW1fY2xpcHMs
IGo7Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICBpZiAobmV3X3BsYW5l
X3N0YXRlLT51YXBpLmNydGMgIT0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKQo+ID4gPiA+ID4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
KyAgICAgICAgICAgICAgIGlmICghbmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUgJiYKPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAhb2xkX3BsYW5lX3N0YXRlLT51YXBpLnZpc2li
bGUpCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gPiA+
ID4gPiArCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAvKgo+ID4gPiA+ID4gPiAgICAgICAg
ICAgICAgICAgICogVE9ETzogTm90IGNsZWFyIGhvdyB0byBoYW5kbGUgcGxhbmVzIHdpdGggbmVn
YXRpdmUgcG9zaXRpb24sCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgKiBhbHNvIHBsYW5l
cyBhcmUgbm90IHVwZGF0ZWQgaWYgdGhleSBoYXZlIGEgbmVnYXRpdmUgWAo+ID4gPiA+ID4gPiBA
QCAtMTMwMCwyMyArMTMxNCw5NCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICBicmVhazsKPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgIH0KPiA+ID4gPiA+
ID4KPiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgIGlmICghbmV3X3BsYW5lX3N0YXRlLT51YXBp
LnZpc2libGUpCj4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgbnVtX2NsaXBzID0gZHJtX3BsYW5lX2dldF9kYW1h
Z2VfY2xpcHNfY291bnQoJm5ld19wbGFuZV9zdGF0ZS0+dWFwaSk7Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ICAgICAgICAgICAgICAgICAvKgo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgICog
Rm9yIG5vdyBkb2luZyBhIHNlbGVjdGl2ZSBmZXRjaCBpbiB0aGUgd2hvbGUgcGxhbmUgYXJlYSwK
PiA+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAqIG9wdGltaXphdGlvbnMgd2lsbCBjb21lIGlu
IHRoZSBmdXR1cmUuCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgKiBJZiB2aXNpYmlsaXR5
IG9yIHBsYW5lIG1vdmVkLCBtYXJrIHRoZSB3aG9sZSBwbGFuZSBhcmVhIGFzCj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgKiBkYW1hZ2VkIGFzIGl0IG5lZWRzIHRvIGJlIGNvbXBsZXRlIHJl
ZHJhdyBpbiB0aGUgbmV3IGFuZCBvbGQKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAqIHBv
c2l0aW9uLgo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICovCj4gPiA+ID4gPiA+IC0gICAg
ICAgICAgICAgICBzZWxfZmV0Y2hfYXJlYSA9ICZuZXdfcGxhbmVfc3RhdGUtPnBzcjJfc2VsX2Zl
dGNoX2FyZWE7Cj4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICBzZWxfZmV0Y2hfYXJlYS0+eTEg
PSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+IDE2Owo+ID4gPiA+ID4gPiAtICAgICAg
ICAgICAgICAgc2VsX2ZldGNoX2FyZWEtPnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55
MiA+PiAxNjsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChuZXdfcGxhbmVfc3RhdGUt
PnVhcGkudmlzaWJsZSAhPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSB8fAo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICFkcm1fcmVjdF9lcXVhbHMoJm5ld19wbGFuZV9zdGF0
ZS0+dWFwaS5kc3QsCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAmb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdCkpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaWYgKG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKSB7Cj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGFtYWdlZF9hcmVhLnkxID0g
b2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkYW1hZ2VkX2FyZWEueTIgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGku
ZHN0LnkyOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsaXBf
YXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7Cj4gPiA+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgIH0KPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsKPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkYW1hZ2VkX2FyZWEueTEgPSBu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRhbWFnZWRfYXJlYS55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5k
c3QueTI7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xpcF9h
cmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsKPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgfQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIH0gZWxzZSBpZiAobmV3X3BsYW5l
X3N0YXRlLT51YXBpLmFscGhhICE9IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5hbHBoYSB8fAo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAoIW51bV9jbGlwcyAmJgo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmZi
ICE9IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5mYikpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgLyoKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICogSWYg
dGhlIHBsYW5lIGRvbid0IGhhdmUgZGFtYWdlZCBhcmVhcyBidXQgdGhlCj4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAqIGZyYW1lYnVmZmVyIGNoYW5nZWQgb3IgYWxwaGEgY2hh
bmdlZCwgbWFyayB0aGUgd2hvbGUKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICogcGxhbmUgYXJlYSBhcyBkYW1hZ2VkLgo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgKi8KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZGFtYWdlZF9hcmVh
LnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsKPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRz
dC55MjsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xpcF9hcmVhX3VwZGF0
ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgY29udGludWU7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICB9Cj4gPiA+ID4g
PiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGRybV9yZWN0X2ZwX3RvX2ludCgmc3Jj
LCAmbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYyk7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICBkYW1hZ2VkX2NsaXBzID0gZHJtX3BsYW5lX2dldF9kYW1hZ2VfY2xpcHMoJm5ld19wbGFuZV9z
dGF0ZS0+dWFwaSk7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGZv
ciAoaiA9IDA7IGogPCBudW1fY2xpcHM7IGorKykgewo+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgZHJtX3JlY3QgY2xpcDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICBjbGlwLngxID0gZGFtYWdlZF9jbGlwc1tqXS54MTsK
PiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY2xpcC55MSA9IGRhbWFnZWRfY2xp
cHNbal0ueTE7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsaXAueDIgPSBk
YW1hZ2VkX2NsaXBzW2pdLngyOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBj
bGlwLnkyID0gZGFtYWdlZF9jbGlwc1tqXS55MjsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgaWYgKGRybV9yZWN0X2ludGVyc2VjdCgmY2xpcCwgJnNyYykpCj4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xpcF9hcmVhX3VwZGF0ZSgmZGFtYWdl
ZF9hcmVhLCAmY2xpcCk7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICB9Cj4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICB0ZW1wID0gKnNlbF9mZXRjaF9hcmVhOwo+ID4g
PiA+ID4gPiAtICAgICAgICAgICAgICAgdGVtcC55MSArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGku
ZHN0LnkxOwo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgdGVtcC55MiArPSBuZXdfcGxhbmVf
c3RhdGUtPnVhcGkuZHN0LnkyOwo+ID4gPiA+ID4gPiAtICAgICAgICAgICAgICAgY2xpcF9hcmVh
X3VwZGF0ZSgmcGlwZV9jbGlwLCAmdGVtcCk7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBp
ZiAoZGFtYWdlZF9hcmVhLnkxID09IC0xKQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ZGFtYWdlZF9hcmVhLnkxICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgLSBzcmMueTE7
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBkYW1hZ2VkX2FyZWEueTIgKz0gbmV3X3BsYW5l
X3N0YXRlLT51YXBpLmRzdC55MSAtIHNyYy55MTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
IGNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7Cj4gPiA+ID4gPiA+
ICsgICAgICAgfQo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgaWYgKGZ1bGxfdXBk
YXRlKQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgZ290byBza2lwX3NlbF9mZXRjaF9zZXRf
bG9vcDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIC8qIEl0IG11c3QgYmUgYWxp
Z25lZCB0byA0IGxpbmVzICovCj4gPiA+ID4gPiA+ICsgICAgICAgcGlwZV9jbGlwLnkxIC09IHBp
cGVfY2xpcC55MSAlIDQ7Cj4gPiA+ID4gPiA+ICsgICAgICAgaWYgKHBpcGVfY2xpcC55MiAlIDQp
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBwaXBlX2NsaXAueTIgPSAoKHBpcGVfY2xpcC55
MiAvIDQpICsgMSkgKiA0Owo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgLyoKPiA+
ID4gPiA+ID4gKyAgICAgICAgKiBOb3cgdGhhdCB3ZSBoYXZlIHRoZSBwaXBlIGRhbWFnZWQgYXJl
YSBjaGVjayBpZiBpdCBpbnRlcnNlY3Qgd2l0aAo+ID4gPiA+ID4gPiArICAgICAgICAqIGV2ZXJ5
IHBsYW5lLCBpZiBpdCBkb2VzIHNldCB0aGUgcGxhbmUgc2VsZWN0aXZlIGZldGNoIGFyZWEuCj4g
PiA+ID4gPiA+ICsgICAgICAgICovCj4gPiA+ID4gPiA+ICsgICAgICAgZm9yX2VhY2hfb2xkbmV3
X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwgb2xkX3BsYW5lX3N0YXRlLAo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdf
cGxhbmVfc3RhdGUsIGkpIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkcm1f
cmVjdCAqc2VsX2ZldGNoX2FyZWEsIGludGVyOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICBpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLmNydGMgIT0gY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjIHx8Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgIW5ld19wbGFu
ZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICBjb250aW51ZTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgaW50
ZXIgPSBwaXBlX2NsaXA7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBpZiAoIWRybV9yZWN0
X2ludGVyc2VjdCgmaW50ZXIsICZuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0KSkKPiA+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICAgIHNlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+
cHNyMl9zZWxfZmV0Y2hfYXJlYTsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHNlbF9mZXRj
aF9hcmVhLT55MSA9IGludGVyLnkxIC0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsKPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHNlbF9mZXRjaF9hcmVhLT55MiA9IGludGVyLnkyIC0g
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsKPiA+ID4gPiA+ID4gICAgICAgICB9Cj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ICtza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDoKPiA+ID4gPiA+ID4g
ICAgICAgICBwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0ZSwgJnBpcGVfY2xpcCwgZnVs
bF91cGRhdGUpOwo+ID4gPiA+ID4gPiAgICAgICAgIHJldHVybiAwOwo+ID4gPiA+ID4gPiAgfQo+
ID4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gPiAyLjMwLjAKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiA+
ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiA+ID4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+Cj4g
PiA+ID4gPiAtLQo+ID4gPiA+ID4gRGFuaWVsIFZldHRlcgo+ID4gPiA+ID4gU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gPiA+ID4gPiBodHRwOi8vYmxvZy5mZndsbC5jaAo+
ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IC0tCj4gPiA+ID4gRGFuaWVsIFZldHRlcgo+
ID4gPiA+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+ID4gPiA+IGh0dHA6
Ly9ibG9nLmZmd2xsLmNoCj4gPiA+Cj4gPiA+Cj4gPiA+Cj4gPgo+Cj4KPiAtLQo+IERhbmllbCBW
ZXR0ZXIKPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KPiBodHRwOi8vYmxv
Zy5mZndsbC5jaAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
