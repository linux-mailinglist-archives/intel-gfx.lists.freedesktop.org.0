Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E6F18E4F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 18:43:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7C689DFE;
	Thu,  9 May 2019 16:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com
 [IPv6:2607:f8b0:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6F989DFF
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 16:43:25 +0000 (UTC)
Received: by mail-it1-x144.google.com with SMTP id m141so3297595ita.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 May 2019 09:43:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ri3CpftuIpT9d0s+IVfuoxut7FIO9KJuWpxsKIznmbU=;
 b=Dcoi3ciVzXYjKudJRHCzmU/l8u6kNz7VfCN453/XdSRFcJOIGBeEIJGGI9jjNdhjRI
 jSOTFgq6yH42liFcTlpNYPBqAJcFoCwlZJXV6HEipTL7fBdWekqez4ViFPcLAClDDmGK
 KEjRet1ZSJFkXSC0pMUIfrQ/J+nhqvoxVe3wIY0EtvqtCmLRDNP1Q3CwgIW6cDbllJfF
 6YPW4j1kFWaJlZpvcRFlF6bgUYxHmsanDfoqA51y/GWjfzCQOhlB+MoX8tWWHLjbM5rr
 U0FcgMDzmhuwLLul7NAd8v+z3cktxQ6/nU8nCBC8iHRLPstBhduDVD00CybqLnLu0Nii
 LU0A==
X-Gm-Message-State: APjAAAXJWnNnSx7M4A7kT07+HMakxrkCVOPzaY9zV6UAV74WPf90cMl2
 WDOw0gm6CfRYc+yfjuZKm8hjm/IL9NTvLEPquKC/TQ==
X-Google-Smtp-Source: APXvYqzWDnGMynWy3va8bT/rHKkJudfLzib87wLjGrfcxNr6pxPcPCAai2WR2EI/XFW0Fo6VtG3+2XlryAQjvA9Beww=
X-Received: by 2002:a05:660c:4d0:: with SMTP id
 v16mr3974611itk.62.1557420205267; 
 Thu, 09 May 2019 09:43:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190509120903.28939-1-daniel.vetter@ffwll.ch>
 <20190509145620.2pjqko7copbxuzth@pathway.suse.cz>
In-Reply-To: <20190509145620.2pjqko7copbxuzth@pathway.suse.cz>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 9 May 2019 18:43:12 +0200
Message-ID: <CAKMK7uFTsr1F8nFExTvC7nWFQMcZ7ejh+k_X6E8EcMUaP3e29A@mail.gmail.com>
To: Petr Mladek <pmladek@suse.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Ri3CpftuIpT9d0s+IVfuoxut7FIO9KJuWpxsKIznmbU=;
 b=KHEHVvclKxX3b4VEd9rqQSKIfc/VB1DG46AiuqoQO6MmdzqKPChzqIjaWeLi8WZuSN
 qg3vWPQpJh8P12dR1aDpy55Qfcft4l5n6tx87xVhtWFaRWgJ0e6J78POHm0EgkWmRDZy
 cpd6tWNs2OYEAKfYsXj+ATze0Cs/+Vxv485d4=
Subject: Re: [Intel-gfx] [PATCH] RFC: console: hack up console_lock more v3
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

T24gVGh1LCBNYXkgOSwgMjAxOSBhdCA0OjU2IFBNIFBldHIgTWxhZGVrIDxwbWxhZGVrQHN1c2Uu
Y29tPiB3cm90ZToKPgo+IE9uIFRodSAyMDE5LTA1LTA5IDE0OjA5OjAzLCBEYW5pZWwgVmV0dGVy
IHdyb3RlOgo+ID4gY29uc29sZV90cnlsb2NrLCBjYWxsZWQgZnJvbSB3aXRoaW4gcHJpbnRrLCBj
YW4gYmUgY2FsbGVkIGZyb20gcHJldHR5Cj4gPiBtdWNoIGFueXdoZXJlLiBJbmNsdWRpbmcgdHJ5
X3RvX3dha2VfdXAuIE5vdGUgdGhhdCB0aGlzIGlzbid0IGNvbW1vbiwKPiA+IHVzdWFsbHkgdGhl
IGJveCBpcyBpbiBwcmV0dHkgYmFkIHNoYXBlIGF0IHRoYXQgcG9pbnQgYWxyZWFkeS4gQnV0IGl0
Cj4gPiByZWFsbHkgZG9lc24ndCBoZWxwIHdoZW4gdGhlbiBsb2NrZGVwIGp1bXBzIGluIGFuZCBz
cGFtcyB0aGUgbG9ncywKPiA+IHBvdGVudGlhbGx5IG9ic2N1cmluZyB0aGUgcmVhbCBiYWNrdHJh
Y2Ugd2UncmUgcmVhbGx5IGludGVyZXN0ZWQgaW4uCj4gPiBPbmUgY2FzZSBJJ3ZlIHNlZW4gKHNs
aWdodGx5IHNpbXBsaWZpZWQgYmFja3RyYWNlKToKPiA+Cj4gPiAgQ2FsbCBUcmFjZToKPiA+ICAg
PElSUT4KPiA+ICAgY29uc29sZV90cnlsb2NrKzB4ZS8weDYwCj4gPiAgIHZwcmludGtfZW1pdCsw
eGYxLzB4MzIwCj4gPiAgIHByaW50aysweDRkLzB4NjkKPiA+ICAgX193YXJuX3ByaW50aysweDQ2
LzB4OTAKPiA+ICAgbmF0aXZlX3NtcF9zZW5kX3Jlc2NoZWR1bGUrMHgyZi8weDQwCj4gPiAgIGNo
ZWNrX3ByZWVtcHRfY3VycisweDgxLzB4YTAKPiA+ICAgdHR3dV9kb193YWtldXArMHgxNC8weDIy
MAo+ID4gICB0cnlfdG9fd2FrZV91cCsweDIxOC8weDVmMAo+ID4gICBwb2xsd2FrZSsweDZmLzB4
OTAKPiA+ICAgY3JlZGl0X2VudHJvcHlfYml0cysweDIwNC8weDMxMAo+ID4gICBhZGRfaW50ZXJy
dXB0X3JhbmRvbW5lc3MrMHgxOGYvMHgyMTAKPiA+ICAgaGFuZGxlX2lycSsweDY3LzB4MTYwCj4g
PiAgIGRvX0lSUSsweDVlLzB4MTMwCj4gPiAgIGNvbW1vbl9pbnRlcnJ1cHQrMHhmLzB4Zgo+ID4g
ICA8L0lSUT4KPiA+Cj4gPiBUaGlzIGFsb25lIGlzbid0IGEgcHJvYmxlbSwgYnV0IHRoZSBzcGlu
bG9jayBpbiB0aGUgc2VtYXBob3JlIGlzIGFsc28KPiA+IHN0aWxsIGhlbGQgd2hpbGUgd2FraW5n
IHVwIHdhaXRlcnMgKHVwKCkgLT4gX191cCgpIC0+IHRyeV90b193YWtlX3VwKCkKPiA+IGNhbGxj
aGFpbiksIHdoaWNoIHRoZW4gY2xvc2VzIHRoZSBydW5xdWV1ZSB2cy4gc2VtYXBob3JlLmxvY2sg
bG9vcCwKPiA+IGFuZCB1cHNldHMgbG9ja2RlcCwgd2hpY2ggaXNzdWVzIGEgY2lyY3VsYXIgbG9j
a2luZyBzcGxhdCB0byBkbWVzZy4KPiA+IFdvcnNlIGl0IHVwc2V0cyBkZXZlbG9wZXJzLCBzaW5j
ZSB3ZSBkb24ndCB3YW50IHRvIHNwYW0gZG1lc2cgd2l0aAo+ID4gY2x1dHRlciB3aGVuIHRoZSBt
YWNoaW5lIGlzIGR5aW5nIGFscmVhZHkuCj4gPgo+ID4gRml4IHRoaXMgYnkgY3JlYXRpbmcgYSBw
cmlua3Rfc2FmZV91cCgpIHdoaWNoIGNhbGxzIHdha2VfdXBfcHJvY2Vzcwo+ID4gb3V0c2lkZSBv
ZiB0aGUgc3BpbmxvY2suIFRoaXMgaXNuJ3QgY29ycmVjdCBpbiBmdWxsIGdlbmVyYWxpdHksIGJ1
dAo+ID4gZ29vZCBlbm91Z2ggZm9yIGNvbnNvbGVfbG9jazoKPiA+Cj4gPiAtIGNvbnNvbGVfbG9j
ayBkb2Vzbid0IHVzZSBpbnRlcnJ1cHRpYmxlIG9yIGtpbGxhYmxlIG9yIHRpbWVvdXQgZG93bigp
Cj4gPiAgIGNhbGxzLCBoZW5jZSBhbiB1cCgpIGlzIHRoZSBvbmx5IHRoaW5nIHRoYXQgY2FuIHdh
a2UgdXAgYSBwcm9jZXNzLgo+ID4gICBIZW5jZSB0aGUgcHJvY2VzcyBjYW4ndCBnZXQgd29rZW4g
YW5kIGtpbGxlZCBhbmQgcmVhcGVkIHdoaWxlIHdlIHRyeQo+ID4gICB0byB3YWtlIGl0IHVwIHRv
by4KPiA+Cj4gPiAtIHNlbWFwaG9yZS5jIGFsd2F5cyB1cGRhdGVzIHRoZSB3YWl0ZXIgbGlzdCB3
aGlsZSB1bmRlciB0aGUgc3BpbmxvY2ssCj4gPiAgIHNvIHRoZXJlJ3Mgbm8gb3RoZXIgcmFjZXMu
IFNwZWNpZmljYWxseSBhbm90aGVyIHByb2Nlc3MgdGhhdCByYWNlcwo+ID4gICB3aXRoIGEgcXVp
Y2sgY29uc29sZV9sb2NrL3VubG9jayB3aGlsZSB3ZSd2ZSBkcm9wcGVkIHRoZSBzcGlubG9jawo+
ID4gICBhbHJlYWR5IHdvbid0IHNlZSBvdXIgb3duIHdhaXRlci4KPiA+Cj4gPiBOb3RlIHRoYXQg
d2Ugb25seSBoYXZlIHRvIGJyZWFrIHRoZSByZWN1cnNpb24gZm9yIHRoZSBzZW1hcGhvcmUubG9j
awo+ID4gc3BpbmxvY2sgb2YgdGhlIGNvbnNvbGVfbG9jay4gUmVjdXJzaW9uIHdpdGhpbiB2YXJp
b3VzIHNjaGVkdWxlcgo+ID4gcmVsYXRlZCBsb2NrcyBpcyBhbHJlYWR5IHByZXZlbnRlZCBieSB0
aGUgcHJpbnRrX3NhZmVfZW50ZXIvZXhpdCBwYWlyCj4gPiBpbiBfX3VwX2NvbnNvbGVfc2VtKCku
Cj4KPiBUaGlzIGlzIG5vdCBmdWxseSB0cnVlLiBwcmludGtfc2FmZSgpIGhlbHBzIG9ubHkgd2hl
bgo+IHRoZSBmaXJzdCB0cnlfdG9fd2FrZV91cCgpIGlzIGNhbGxlZCBmcm9tIHByaW50a19zYWZl
KCkgY29udGV4dC4KPgo+ID4gLS0tIGEva2VybmVsL2xvY2tpbmcvc2VtYXBob3JlLmMKPiA+ICsr
KyBiL2tlcm5lbC9sb2NraW5nL3NlbWFwaG9yZS5jCj4gPiBAQCAtMTk3LDYgKzE5NywzNyBAQCBz
dHJ1Y3Qgc2VtYXBob3JlX3dhaXRlciB7Cj4gPiAgICAgICBib29sIHVwOwo+ID4gIH07Cj4gPgo+
ID4gKy8qKgo+ID4gKyAqIHByaW50a19zYWZlX3VwIC0gcmVsZWFzZSB0aGUgc2VtYXBob3JlIGlu
IGNvbnNvbGVfdW5sb2NrCj4gPiArICogQHNlbTogdGhlIHNlbWFwaG9yZSB0byByZWxlYXNlCj4g
PiArICoKPiA+ICsgKiBSZWxlYXNlIHRoZSBzZW1hcGhvcmUuICBVbmxpa2UgbXV0ZXhlcywgdXAo
KSBtYXkgYmUgY2FsbGVkIGZyb20gYW55Cj4gPiArICogY29udGV4dCBhbmQgZXZlbiBieSB0YXNr
cyB3aGljaCBoYXZlIG5ldmVyIGNhbGxlZCBkb3duKCkuCj4gPiArICoKPiA+ICsgKiBOT1RFOiBU
aGlzIGlzIGEgc3BlY2lhbCB2ZXJzaW9uIG9mIHVwKCkgZm9yIGNvbnNvbGVfdW5sb2NrIG9ubHku
IEl0IGlzIG9ubHkKPiA+ICsgKiBzYWZlIGlmIHRoZXJlIGFyZSBubyBraWxsYWJsZSwgaW50ZXJy
dXB0aWJsZSBvciB0aW1pbmcgb3V0IGRvd24oKSBjYWxscy4KPiA+ICsgKi8KPiA+ICt2b2lkIHBy
aW50a19zYWZlX3VwKHN0cnVjdCBzZW1hcGhvcmUgKnNlbSkKPiA+ICt7Cj4gPiArICAgICB1bnNp
Z25lZCBsb25nIGZsYWdzOwo+ID4gKyAgICAgc3RydWN0IHNlbWFwaG9yZV93YWl0ZXIgKndhaXRl
ciA9IE5VTEw7Cj4gPiArCj4gPiArICAgICByYXdfc3Bpbl9sb2NrX2lycXNhdmUoJnNlbS0+bG9j
aywgZmxhZ3MpOwo+ID4gKyAgICAgaWYgKGxpa2VseShsaXN0X2VtcHR5KCZzZW0tPndhaXRfbGlz
dCkpKSB7Cj4gPiArICAgICAgICAgICAgIHNlbS0+Y291bnQrKzsKPiA+ICsgICAgIH0gZWxzZSB7
Cj4gPiArICAgICAgICAgICAgIHdhaXRlciA9IGxpc3RfZmlyc3RfZW50cnkoJnNlbS0+d2FpdF9s
aXN0LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBz
ZW1hcGhvcmVfd2FpdGVyLCBsaXN0KTsKPiA+ICsgICAgICAgICAgICAgbGlzdF9kZWwoJndhaXRl
ci0+bGlzdCk7Cj4gPiArICAgICAgICAgICAgIHdhaXRlci0+dXAgPSB0cnVlOwo+ID4gKyAgICAg
fQo+ID4gKyAgICAgcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnNlbS0+bG9jaywgZmxhZ3Mp
Owo+ID4gKwo+ID4gKyAgICAgaWYgKHdhaXRlcikgLyogcHJvdGVjdGVkIGJ5IGJlaW5nIHNvbGUg
d2FrZSBzb3VyY2UgKi8KPiA+ICsgICAgICAgICAgICAgd2FrZV91cF9wcm9jZXNzKHdhaXRlci0+
dGFzayk7Cj4KPiBJIHN0aWxsIGRvIG5vdCBzZWUgaG93IHRoaXMgY291bGQgaGVscC4gTGV0J3Mg
dGFrZSB0aGUgYWJvdmUKPiBiYWNrdHJhY2UgYXMgZXhhbXBsZToKPgo+ICAgIDxJUlE+Cj4gICAg
Y29uc29sZV90cnlsb2NrKzB4ZS8weDYwCj4gICAgdnByaW50a19lbWl0KzB4ZjEvMHgzMjAKPiAg
ICBwcmludGsrMHg0ZC8weDY5Cj4gICAgX193YXJuX3ByaW50aysweDQ2LzB4OTAKPiAgICBuYXRp
dmVfc21wX3NlbmRfcmVzY2hlZHVsZSArMHgyZi8weDQwCj4gICAgY2hlY2tfcHJlZW1wdF9jdXJy
KzB4ODEvMHhhMAo+ICAgIHR0d3VfZG9fd2FrZXVwKzB4MTQvMHgyMjAKPiAgICB0cnlfdG9fd2Fr
ZV91cCsweDIxOC8weDVmMAo+ICAgIHBvbGx3YWtlKzB4NmYvMHg5MAo+ICAgIGNyZWRpdF9lbnRy
b3B5X2JpdHMrMHgyMDQvMHgzMTAKPiAgICBhZGRfaW50ZXJydXB0X3JhbmRvbW5lc3MrMHgxOGYv
MHgyMTAKPiAgICBoYW5kbGVfaXJxKzB4NjcvMHgxNjAKPiAgICBkb19JUlErMHg1ZS8weDEzMAo+
ICAgIGNvbW1vbl9pbnRlcnJ1cHQrMHhmLzB4Zgo+ICAgIDwvSVJRPgo+Cj4gV2UgaGF2ZSB0aGUg
Zm9sbG93aW5nIGNoYWluIG9mIGNhbGxzOgo+Cj4gICArIGRvX0lSUSgpCj4gICAgIC4uLgo+ICAg
ICAgICsgdHJ5X3RvX3dha2VfdXAoKSAgICAjIHRha2VzIHAtPnBpX2xvY2sKPiAgICAgICAgICsg
dHR3dV9yZW1vdGUoKSAgICAgIyB0YWtlcyBycSBsb2NrCj4gICAgICAgICAgICsgdHR3dV9kb193
YWtldXAoKQo+ICAgICAgICAgICAgICsgY2hlY2tfcHJlZW1wdF9jdXJyKCkKPiAgICAgICAgICAg
ICAgICsgbmF0aXZlX3NtcF9zZW5kX3Jlc2NoZWR1bGUoKQo+ICAgICAgICAgICAgICAgICArIF9f
d2Fybl9wcmludGsoKQo+ICAgICAgICAgICAgICAgICAgICsgcHJpbnRrKCkKPiAgICAgICAgICAg
ICAgICAgICAgICsgdnByaW50a19lbWl0KCkKPiAgICAgICAgICAgICAgICAgICAgICAgKyBjb25z
b2xlX3RyeWxvY2soKSAjIHN1Y2Nlc3MKPiAgICAgICAgICAgICAgICAgICAgICAgKyBjb25zb2xl
X3VubG9jaygpCj4gICAgICAgICAgICAgICAgICAgICAgICAgKyB1cF9jb25zb2xlX3NlbSgpCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICArIHVwKCkgIyB3YWl0IGxpc3QgaW4gbm90IGVtcHR5
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICsgX191cCgpCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgKyB3YWtlX3VwX3Byb2Nlc3MoKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgKyB0cnlfdG9fd2FrZV91cCgpCj4KPiAhQkFORyEgRGVhZGxvY2sgb24gcC0+
cGlfbG9jay4KCkhtIHJpZ2h0IC4uLiBJIG9ubHkgbG9va2VkIGF0IHRoaXMgc3RhcnRpbmcgd2l0
aCBjb25zb2xlX3VubG9jay4KCj4gSXQgZG9lcyBub3QgbWF0dGVyIGlmIHRoZSBuZXN0ZWQgdHJ5
X3RvX3dha2VfdXAoKSB3YXMgY2FsbGVkCj4gdW5kZXIgc2VtLT5sb2NrIG9yIG91dHNpZGUuCj4K
PiBCeSBvdGhlciB3b3Jkcy4gVGhlIHBhdGNoIHJlbW92ZWQgb25lIGxvY2tkZXAgd2FybmluZy4g
QnV0IGl0IGp1c3QKPiBqdXN0IGRlbGF5ZWQgdGhlIGRlYWRsb2NrLiBJdCB3aWxsIG5vdCBoYXBw
ZW4gb24gc2VtLT5sb2NrIGJ1dAo+IGxhdGVyIG9uIHAtPnBpX2xvY2suCj4KPiBJIGFtIHJlcGVh
dGluZyBteXNlbGYuIEJ1dCBJTUhPLCB0aGUgb25seSBzb2x1dGlvbiBpcyB0byBpbnRyb2R1Y2UK
PiBwcmludGsgZGVmZXJyZWQgY29udGV4dCBhbmQgdXNlIGl0IGluIFdBUk5fREVGRVJSRUQoKS4K
Ck9uZSB0aGluZyB0byBrZWVwIGluIG1pbmQgaXMgdGhhdCB0aGUga2VybmVsIGlzIGFscmVhZHkg
ZHlpbmcsIGFuZAp0aGluZ3Mgd2lsbCBjb21lIGNyYXNoaW5nIGRvd24gbGF0ZXIgb24gKEkndmUg
c2VlbiB0aGlzIG9ubHkgaW4gZG1lc2cKdGFpbHMgY2FwdHVyZSBpbiBwc3RvcmUgaW4gb3VyIENJ
LCBpLmUuIHRoZSBib3ggZGllZCBmb3IgZ29vZCkuIEkganVzdAp3YW50IHRvIG1ha2Ugc3VyZSB0
aGF0IHRoZSB1c2VmdWwgaW5mb3JtYXRpb24gaXNuJ3Qgb3ZlcndyaXR0ZW4gYnkKbW9yZSBkbWVz
ZyBzcGxhdHMgdGhhdCBoYXBwZW4gYXMgYSBjb25zZXF1ZW5jZSBvZiB1cyBzb21laG93IHRyeWlu
ZyB0bwpydW4gdGhpbmdzIG9uIGFuIG9mZmxpbmUgY3B1LiBPbmNlIGNvbnNvbGVfdW5sb2NrIGhh
cyBjb21wbGV0ZWQgaW4KeW91ciBhYm92ZSBiYWNrdHJhY2UgYW5kIHRoZSBpbXBvcnRhbnQgc3R1
ZmYgaGFzIGdvbmUgb3V0IEknbSB0b3RhbGx5CmZpbmUgd2l0aCB0aGUga2VybmVsIGp1c3QgZHlp
bmcuIFB1bGxpbmcgdGhlIHdha2VfdXBfcHJvY2VzcyBvdXQgZnJvbQp1bmRlciB0aGUgc2VtYXBo
b3JlLmxvY2sgaXMgZW5vdWdoIHRvIHByZXZlbnQgbG9ja2RlcCBmcm9tIGR1bXBpbmcKbW9yZSBz
dHVmZiB3aGlsZSB3ZSdyZSB0cnlpbmcgdG8gcHJpbnQgdGhlIGltcG9ydGFudCB0aGluZ3MsIGFu
ZCBJCnRoaW5rIHRoZSB1bnRhbmdsaW5nIG9mIHRoZSBsb2NraW5nIGhpYXJhcmNoeSBpcyB1c2Vm
dWwgaXJyZXNwZWN0aXZlCm9mIHRoaXMgbG9ja2RlcCBzcGxhdC4gUGx1cyBQZXRlciBkb2Vzbid0
IHNvdW5kIGxpa2UgaGUgbGlrZXMgdG8gcm9sbApvdXQgbW9yZSBwcmludGtfZGVmZXJyZWQga2lu
ZCBvZiB0aGluZ3MuCgpCdXQgaWYgeW91IHRoaW5rIEkgc2hvdWxkIGRvIHRoZSBwcmludGtfZGVm
ZXJyZWQgdGhpbmcgdG9vIEkgY2FuIGxvb2sKaW50byB0aGF0LiBKdXN0IG5vdCBxdWl0ZSBzdXJl
IHdoYXQgdGhhdCdzIHN1cHBvc2VkIHRvIGxvb2sgbGlrZSBub3cuCi1EYW5pZWwKCgoKCgotLQpE
YW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDAp
IDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
