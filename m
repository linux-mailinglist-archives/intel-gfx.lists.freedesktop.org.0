Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E6511046A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 19:45:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EE16E084;
	Tue,  3 Dec 2019 18:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com
 [IPv6:2607:f8b0:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179AE6E084
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 18:45:34 +0000 (UTC)
Received: by mail-pl1-x641.google.com with SMTP id ay6so2047176plb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 10:45:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bG8Nt6cVodf34zynBURXT0B9txwe3S1q7fxCr2Als+4=;
 b=MunEgC9cMDpXMeDx87PY+nz2kd071/43xaoXWdEWWOsCQCwG+govthz1WbfdxM7Wnj
 FJCHdxrUQY66K9YEmwen4u4muqwDPjmhnEX42EY1+zHs8Cv5aZDeuQIgwiwE5ezq0iqK
 KBt8AfBwyZOxXL7bV+dNX7NTKrM+G6BfqGgdmtD/n3GxsmC4kcm5ySi1AvdkS59ymb3P
 PoBEZGl9ZZ1vrY12m+u2PBdouLulQgnE8IAsiSwUXjj2B0W51/pZ4xzdDCFmuGf3RIxy
 PkCNkwBhEOllWQwGAbyWQowCkilrTlqfWjlAqA4hcbk/dJRnGJiHDKyyMx7fV9TZ+3hO
 YWEQ==
X-Gm-Message-State: APjAAAXgRPZ6N6SQw5a19o3BXO5+RCEYRXNJWkKRxDxLehNj05REmf2z
 tbZQ8a0rInG0fCGqEC1TKlu13c0r0ngQw6ULz35ZcQ==
X-Google-Smtp-Source: APXvYqyJSYetniu+3O10Y+swpRRlYVv6h/vvB7BpZkKQn3U4GNGfYC5OL6WuMn+ci7f92JAk5XdjkjrWgC9nKuqHGD0=
X-Received: by 2002:a17:902:8ec8:: with SMTP id
 x8mr6052422plo.119.1575398733219; 
 Tue, 03 Dec 2019 10:45:33 -0800 (PST)
MIME-Version: 1.0
References: <20191123195321.41305-1-natechancellor@gmail.com>
 <157453950786.2524.16955749910067219709@skylake-alporthouse-com>
 <CAKwvOdniXqn3xt3-W0Pqi-X1nWjJ2vUVofjCm1O-UPXZ7_4rXw@mail.gmail.com>
 <157538056769.7230.15356495786856166580@skylake-alporthouse-com>
In-Reply-To: <157538056769.7230.15356495786856166580@skylake-alporthouse-com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 3 Dec 2019 10:45:22 -0800
Message-ID: <CAKwvOd=ov789Lixdq8QE+MVXeYyh=W_sODSuj++4T8uF-hpVMw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=bG8Nt6cVodf34zynBURXT0B9txwe3S1q7fxCr2Als+4=;
 b=XNFVfbfC7D0GHt+6f17UiXwk5O1VQiJ9OqACo8IuzMrbOpSouHNZB4OUQfjJ34Xjc7
 ijHp49f03VSRiLfBb6wCJS6WGBk0M+hgYqwBskCc0JbS8dxIy+TnmyPfKu+aTUSflR9G
 mHmeGQzJZZPgeOgdEIMR72fk0f199IwgQ9rlHrtEkKOVdnoiPC82tvtLNzTc7POPrOQ/
 DA5TI2WvOiHU7ExYS7VixDjB/pZ2HnpjLFGnydGmakwQ/RbVUIEEcx10+D9Oq6DgUO6o
 ySTQVf9t6dyl83TCX+3hhU4djYIBm58Pabp+js0rioH8HgwUy5ehHAskL7fHOT/wGHnJ
 SeVg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove tautological compare in
 eb_relocate_vma
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
Cc: Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBEZWMgMywgMjAxOSBhdCA1OjQyIEFNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPgo+IFF1b3RpbmcgTmljayBEZXNhdWxuaWVycyAoMjAxOS0x
Mi0wMiAxOToxODoyMCkKPiA+IE9uIFNhdCwgTm92IDIzLCAyMDE5IGF0IDEyOjA1IFBNIENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4KPiA+ID4gUXVv
dGluZyBOYXRoYW4gQ2hhbmNlbGxvciAoMjAxOS0xMS0yMyAxOTo1MzoyMikKPiA+ID4gPiAtV3Rh
dXRvbG9naWNhbC1jb21wYXJlIHdhcyByZWNlbnRseSBhZGRlZCB0byAtV2FsbCBpbiBMTFZNLCB3
aGljaAo+ID4gPiA+IGV4cG9zZWQgYW4gaWYgc3RhdGVtZW50IGluIGk5MTUgdGhhdCBpcyBhbHdh
eXMgZmFsc2U6Cj4gPiA+ID4KPiA+ID4gPiAuLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jOjE0ODU6MjI6IHdhcm5pbmc6Cj4gPiA+ID4gcmVzdWx0IG9mIGNv
bXBhcmlzb24gb2YgY29uc3RhbnQgNTc2NDYwNzUyMzAzNDIzNDg3IHdpdGggZXhwcmVzc2lvbiBv
Zgo+ID4gPiA+IHR5cGUgJ3Vuc2lnbmVkIGludCcgaXMgYWx3YXlzIGZhbHNlCj4gPiA+ID4gWy1X
dGF1dG9sb2dpY2FsLWNvbnN0YW50LW91dC1vZi1yYW5nZS1jb21wYXJlXQo+ID4gPiA+ICAgICAg
ICAgaWYgKHVubGlrZWx5KHJlbWFpbiA+IE5fUkVMT0MoVUxPTkdfTUFYKSkpCj4gPiA+ID4gICAg
ICAgICAgICAgfn5+fn5+fn5+fn5+fn5+fl5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gPiA+Cj4g
PiA+ID4gU2luY2UgcmVtYWluIGlzIGFuIHVuc2lnbmVkIGludCwgaXQgY2FuIG5ldmVyIGJlIGxh
cmdlciB0aGFuIFVJTlRfTUFYLAo+ID4gPiA+IHdoaWNoIGlzIGxlc3MgdGhhbiBVTE9OR19NQVgg
LyBzaXplb2Yoc3RydWN0IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5KS4KPiA+ID4gPiBS
ZW1vdmUgdGhpcyBzdGF0ZW1lbnQgdG8gZml4IHRoZSB3YXJuaW5nLgo+ID4gPgo+ID4gPiBUaGUg
Y2hlY2sgc2hvdWxkIHJlbWFpbiBhcyB3ZSBkbyB3YW50IHRvIGRvY3VtZW50IHRoZSBvdmVyZmxv
dwo+ID4gPiBjYWxjdWxhdGlvbiwgYW5kIGl0IHNob3VsZCByZXByZXNlbnQgdGhlIHR5cGVzIHVz
ZWQgLS0gaXQncyBtdWNoIGVhc2llcgo+ID4KPiA+IFdoYXQgZG8geW91IG1lYW4gInJlcHJlc2Vu
dCB0aGUgdHlwZXMgdXNlZD8iICBBcmUgeW91IGNvbmNlcm5lZCB0aGF0Cj4gPiB0aGUgdHlwZSBv
ZiBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyLT5yZWxvY2F0aW9uX2NvdW50IG1pZ2h0IGNoYW5n
ZQo+ID4gaW4gdGhlIGZ1dHVyZT8KPgo+IFdlIG1heSB3YW50IHRvIGNoYW5nZSB0aGUgcmVzdHJp
Y3Rpb24sIHllcy4KPgo+ID4gPiB0byByZXZpZXcgYSBzdHViIHRoYW4gdHJ5aW5nIHRvIGZpbmQg
YSBtaXNzaW5nIG92ZXJmbG93IGNoZWNrLiBJZiB0aGUKPiA+ID4gb3ZlcmZsb3cgY2Fubm90IGhh
cHBlbiBhcyB0aGUgdHlwZXMgYXJlIHdpZGUgZW5vdWdoLCBubyBwcm9ibGVtLCB0aGUKPiA+ID4g
Y29tcGlsZXIgY2FuIHJlbW92ZSB0aGUga25vd24gZmFsc2UgYnJhbmNoLgo+ID4KPiA+IFdoYXQg
b3ZlcmZsb3cgYXJlIHlvdSB0cnlpbmcgdG8gcHJvdGVjdCBhZ2FpbnN0IGhlcmU/Cj4KPiBUaGVz
ZSB2YWx1ZXMgYXJlIHVuZGVyIHVzZXIgY29udHJvbCwgb3VyIHZhbGlkYXRpb24gc3RlcHMgc2hv
dWxkIGJlCj4gY2xlYXIgYW5kIGVhc3kgdG8gY2hlY2suIElmIHdlIGhhdmUgdGhlIHR5cGVzIHdy
b25nLCBpZiB0aGUgY2hlY2tzIGFyZQo+IHdyb25nLCB3ZSBuZWVkIHRvIGZpeCB0aGVtLiBJZiB0
aGUgY29kZSBpcyByZW1vdmVkIGJlY2F1c2UgaXQgY2FuIGJlCj4gZXZhbHVhdGVkIGJ5IHRoZSBj
b21waWxlciB0byBiZSByZWR1bmRhbnQsIGl0IGlzIG11Y2ggaGFyZGVyIGZvciB1cyB0bwo+IHZl
cmlmeSB0aGF0IHdlIGhhdmUgdHJpZWQgdG8gdmFsaWRhdGUgdXNlciBpbnB1dC4KPgo+ID4gPiBU
YXV0b2xvZ3kgaGVyZSBoYXMgYSBwdXJwb3NlIGZvciBjb252ZXlpbmcgaW5mb3JtYXRpb24gdG8g
dGhlIHJlYWRlci4KPiA+Cj4gPiBXZWxsIGxlYXZpbmcgYSB3YXJuaW5nIHVuYWRkcmVzc2VkIGlz
IGFsc28gbm90IGEgc29sdXRpb24uICBFaXRoZXIKPiA+IHJlcGxhY2UgaXQgd2l0aCBhIGNvbW1l
bnQgb3IgdHVybiBvZmYgdGhlIHdhcm5pbmcgZm9yIHlvdXIgc3ViZGlyLgo+Cj4gTXkgcGVyc29u
YWwgcHJlZmVyZW5jZSB3b3VsZCBiZSB0byB1c2UgYSBidW5jaCBvZiBjZW50cmFsIG1hY3JvcyBm
b3IgdGhlCj4gdmFyaW91cyB0eXBlL2ttYWxsb2Mgb3ZlcmZsb3dzLCBhbmQgaGF2ZSB0aGUgd2Fy
bmluZ3Mgc3VwcHJlc3NlZCB0aGVyZQo+IHNpbmNlIHRoZXkgYXJlIHZlcnkgbXVjaCBhYm91dCBk
b2N1bWVudGluZyB1c2VyIGlucHV0IHZhbGlkYXRpb24uCj4gLUNocmlzCgpJcyBrbWFsbG9jX2Fy
cmF5IHdoYXQgeW91J3JlIGxvb2tpbmcgZm9yPyAgTG9va3MgbGlrZSBpdCBoYXMgdGhlCmBjaGVj
a19tdWxfb3ZlcmZsb3dgIGNhbGwgaW4gaXQuCgotLSAKVGhhbmtzLAp+TmljayBEZXNhdWxuaWVy
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
