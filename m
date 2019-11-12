Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BB7F97BC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 18:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277F36EB9B;
	Tue, 12 Nov 2019 17:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39CE6EB9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 17:55:11 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id 22so15628193oip.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:55:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=omKrEGDZFb9JkuSHKoCYI6tur9iVj6YVPGuH6Je6pMM=;
 b=PddeE0jXqBUnO2uEnDdgnUCga1bJXjLGrnhQC4kP0j4ONnaJDttxQq8+hQbhPaxjlQ
 kzPK8IHEPhSM9qkd6yvP0SZHhx0OFzOT7hv1M0ldawKq7LdecmjNPHMwEgfjwoMwXp/0
 pqQl3k8EJsVPyNcXFgHiM6VIOQFZkEiv5vC7xXsZFCRkBJzK7XW7HJ0uy7SVJG+ucG0y
 8PAjzNSj3oa8nuSFSM420RB16QLuCJ1ZfPuAnn4NVPwwI+xbnr3b9ETxoevfRY3dSN8v
 sFi9GQ1kbYTKMp4r/yPUuI13aEwbZiBU8o3Q58wUVIjzlCfMJlqDDl/hgOc2pqQ8noqX
 t3iA==
X-Gm-Message-State: APjAAAUaRwmQ4UKQMTJTbB47QgsbEyIUxoqqvIDl7KY5XdwM6Yqn1LIc
 GdOdYh7hZLiZk7BReZusYU5Y7R1S2DFP0t1WufHTiQ==
X-Google-Smtp-Source: APXvYqwrr+LgA7SpUpNdnjsi19PokVOEG+VFIorzdhxLbtrtWgRTN8pQW0U5VwSdG9D/0IQiukP6vXSp5PmIoROEN98=
X-Received: by 2002:aca:b805:: with SMTP id i5mr178736oif.110.1573581311070;
 Tue, 12 Nov 2019 09:55:11 -0800 (PST)
MIME-Version: 1.0
References: <20191108204932.6197-1-chris@chris-wilson.co.uk>
 <20191108204932.6197-3-chris@chris-wilson.co.uk>
 <CAKMK7uFWVJYb0X4hN788sReL7QD1XcuDWEQKZD+TV5_Yjs9kXg@mail.gmail.com>
 <157324812305.9461.4190605913259419942@skylake-alporthouse-com>
In-Reply-To: <157324812305.9461.4190605913259419942@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 12 Nov 2019 18:55:00 +0100
Message-ID: <CAKMK7uF1OjgmsE-m4uoesxwWitWrgVo5vu295gxFDy6_w8ae5A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=omKrEGDZFb9JkuSHKoCYI6tur9iVj6YVPGuH6Je6pMM=;
 b=M8X+E06SJo8Mem81Qtoo85vV51bqrj6PSpkettmEQ5OGaKn+3JrEH8VXuZmcr25aPf
 0fnD8G5hgusGAkwEYylXlnMmW1g8qpqClpWciQd8GZQzqT7/r4rWSu98IfVnUUgxcsdI
 EDdsMeyqTXDQXgV7KR5YbJ+8NOemGlRNMqeoI=
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/3]
 i915/gem_exec_scheduler: Exercise priority inversion from resource
 contention
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 IGT development <igt-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgOCwgMjAxOSBhdCAxMDoyMiBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIERhbmllbCBWZXR0ZXIgKDIwMTktMTEt
MDggMjE6MTM6MTMpCj4gPiBPbiBGcmksIE5vdiA4LCAyMDE5IGF0IDk6NDkgUE0gQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbmUgb2Yg
dGhlIGhhcmRlc3QgcHJpb3JpdHkgaW52ZXJzaW9uIHRhc2tzIHRvIGJvdGggaGFuZGxlIGFuZCB0
bwo+ID4gPiBzaW11bGF0ZSBpbiB0ZXN0aW5nIGlzIGludmVyc2lvbiBkdWUgdG8gcmVzb3VyY2Ug
Y29udGVudGlvbi4gVGhlCj4gPiA+IGNoYWxsZW5nZSBpcyB0aGF0IGEgaGlnaCBwcmlvcml0eSBj
b250ZXh0IHNob3VsZCBuZXZlciBiZSBibG9ja2VkIGJ5IGEKPiA+ID4gbG93IHByaW9yaXR5IGNv
bnRleHQsIGV2ZW4gaWYgYm90aCBhcmUgc3RhcnZpbmcgZm9yIHJlc291cmNlcyAtLQo+ID4gPiBp
ZGVhbGx5LCBhdCBsZWFzdCBmb3Igc29tZSBSVCBPU2VzLCB0aGUgaGlnaGVyIHByaW9yaXR5IGNv
bnRleHQgaGFzCj4gPiA+IGZpcnN0IHBpY2sgb2YgdGhlIG1lYWdyZSByZXNvdXJjZXMgc28gdGhh
dCBpdCBjYW4gYmUgZXhlY3V0ZWQgd2l0aAo+ID4gPiBtaW5pbXVtIGxhdGVuY3kuCj4gPiA+Cj4g
PiA+IHVzZXJmYXVsdGZkIGFsbG93cyB1cyB0byBoYW5kbGUgYSBwYWdlIGZhdWx0IGluIHVzZXJz
cGFjZSwgYW5kIHNvCj4gPiA+IGFyYml0cmFyeSBpbXBvc2UgYSBkZWxheSBvbiB0aGUgZmF1bHQg
aGFuZGxlciwgY3JlYXRpbmcgYSBzaXR1YXRpb24KPiA+ID4gd2hlcmUgYSBsb3cgcHJpb3JpdHkg
Y29udGV4dCBpcyBibG9ja2VkIHdhaXRpbmcgZm9yIHRoZSBmYXVsdC4gVGhpcwo+ID4gPiBibG9j
a2VkIGNvbnRleHQgc2hvdWxkIG5vdCBwcmV2ZW50IGEgaGlnaCBwcmlvcml0eSBjb250ZXh0IGZy
b20gYmVpbmcKPiA+ID4gZXhlY3V0ZWQuIFdoaWxlIHRoZSB1c2VyZmF1bHQgdHJpZXMgdG8gZW11
bGF0ZSBhIHNsb3cgZmF1bHQgKGUuZy4gZnJvbSBhCj4gPiA+IGZhaWxpbmcgc3dhcCBkZXZpY2Up
LCBpdCBpcyB1bmZvcnR1bmF0ZWx5IGxpbWl0ZWQgdG8gYSBzaW5nbGUgb2JqZWN0Cj4gPiA+IHR5
cGU6IHRoZSB1c2VycHRyLiBIb3BlZnVsbHksIHdlIHdpbGwgZmluZCBvdGhlciB3YXlzIHRvIGlt
cG9zZSBvdGhlcgo+ID4gPiBzdGFydmF0aW9uIGNvbmRpdGlvbnMgb24gZ2xvYmFsIHJlc291cmNl
cy4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgo+ID4KPiA+IFNvIHJ0LXd3X211dGV4ZXM/Cj4gPgo+ID4gSSBkb24ndCB0aGlu
ayB3ZSB3YW50L3Nob3VsZCBkbyB0aGF0IG9uIHRoZSBmaXJzdCByb3VuZCBvZiByb2xsaW5nIG91
dAo+ID4gd3dfbXV0ZXggaW4gaTkxNS4KPgo+IEl0IHdvcmtzIHRvZGF5LiBBbmQgd2lsbCBjb250
aW51ZSB3b3JraW5nIGFjcm9zcyBhbnkgY29udmVyc2lvbi4KCklzbid0IHRoYXQganVzdCBhbiBh
cnRpZmFjdCBvZiBob3cgd2UgcmV0cnkgdXNlcnB0ciBwYWdlLWluPyBJIHRoaW5rCmlmIHdlJ2Qg
ZG8gdGhpcyBjaGVjayB3aXRoIG90aGVyIG9iamVjdHMsIHRoZW4gaXQnbGwgZmFsbCBhcGFydCAu
Li4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
