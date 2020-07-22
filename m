Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3762299CA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 16:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA356E820;
	Wed, 22 Jul 2020 14:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B436E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 14:07:51 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id e4so1989673oib.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 07:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yAHV/rpaUbGt0q99VF6bHWxElygJ/Z2JZXz353VfAMQ=;
 b=SITU1kgFHOpxrGfAvN/xsy6y/SqUaSONdNDH3tOAGvk0gA4uhHJweALhI0Dxw7n0Y/
 w0T54rjK6YJq44cbIqPDTyG7Y3ioXKYTGAPQ+Af2WyK7pWiq7s4i7JHD2KwgwimcxbZb
 ra+ouxUIDC6ClGXL8ZIqULwe0ZZzNG8n+cYmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yAHV/rpaUbGt0q99VF6bHWxElygJ/Z2JZXz353VfAMQ=;
 b=dBlUj3TjJhrZCu59bvUePMxZNH2Qug8HXWrDQN0ik+qdaxHTjti6Y7APKI08Ww4pA9
 8o47LSBOFTsHYkbMHuIZY3lJZJ2832XYuUEcIrLtZKNhaQx8VSFPpm/oWMbhM0IqCFwP
 XaW0kqmbUwuIUl8gow9BQUlDvgzqNDWUaXZOY1xAOwdSYaIDmGgqVTYJZfMMtviU5Zx1
 IlOBRySrU8NLC+PHEWW8H0xmqjoDENumyqpmMTpMndRG1LBZoIGOvd284WT47W/FvbqN
 /9YOMet+eH4OjyVhyNjAfDoB7zw78RnmO0orhk2qO0XHh+JG/WwoUYFlepP84TRMqd6k
 eNsQ==
X-Gm-Message-State: AOAM531GTcvYxE7CiBslQ1qVt0ZvUhfMH9nebYfYyYSJkUfcA9vxlO+V
 pCBJcxVFXafMfePL+rJrQE+JnqAff5s8txP6AC7osw==
X-Google-Smtp-Source: ABdhPJxsmP01VwUh+xqO5FIOiyXHA61FZ3yhIgmjFOUSqLR+0KcXAPEhRCCAl08pk9WqF5Dcre5YesNtfI3JuxHSNWo=
X-Received: by 2002:aca:cc8e:: with SMTP id c136mr7273449oig.128.1595426870693; 
 Wed, 22 Jul 2020 07:07:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <CAPM=9twUWeenf-26GEvkuKo3wHgS3BCyrva=sNaWo6+=A5qdoQ@mail.gmail.com>
 <805c49b7-f0b3-45dc-5fe3-b352f0971527@shipmail.org>
 <CAKMK7uHhhxBC2MvnNnU9FjxJaWkEcP3m5m7AN3yzfw=wxFsckA@mail.gmail.com>
 <92393d26-d863-aac6-6d27-53cad6854e13@shipmail.org>
 <CAKMK7uF8jpyuCF8uUbEeJUedErxqRGa8JY+RuURg7H1XXWXzkw@mail.gmail.com>
 <8fd999f2-cbf6-813c-6ad4-131948fb5cc5@shipmail.org>
 <CAKMK7uH0rcyepP2hDpNB-yuvNyjee1tPmxWUyefS5j7i-N6Pfw@mail.gmail.com>
 <df5414f5-ac5c-d212-500c-b05c7c78ce84@shipmail.org>
 <CAKMK7uF27SifuvMatuP2kJPTf+LVmVbG098cE2cqorYYo7UHkw@mail.gmail.com>
 <697d1b5e-5d1c-1655-23f8-7a3f652606f3@shipmail.org>
In-Reply-To: <697d1b5e-5d1c-1655-23f8-7a3f652606f3@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 22 Jul 2020 16:07:39 +0200
Message-ID: <CAKMK7uGSkgdJyyvGe8SF_vWfgyaCWn5p0GvZZdLvkxmrS6tYbQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document
 why indefinite fences are a bad idea
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
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Stone <daniels@collabora.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMjIsIDIwMjAgYXQgMzoxMiBQTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPiBPbiAyMDIwLTA3LTIyIDE0OjQxLCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gQWggSSB0aGluayBJIG1pc3VuZGVyc3Rvb2Qgd2hpY2gg
b3B0aW9ucyB5b3Ugd2FudCB0byBjb21wYXJlIGhlcmUuIEknbQo+ID4gbm90IHN1cmUgaG93IG11
Y2ggcGFpbiBmaXhpbmcgdXAgImRtYS1mZW5jZSBhcyBtZW1vcnkgZmVuY2UiIHJlYWxseQo+ID4g
aXMuIFRoYXQncyBraW5kYSB3aHkgSSB3YW50IGEgbG90IG1vcmUgdGVzdGluZyBvbiBteSBhbm5v
dGF0aW9uCj4gPiBwYXRjaGVzLCB0byBmaWd1cmUgdGhhdCBvdXQuIE5vdCBtdWNoIGZlZWRiYWNr
IGFzaWRlIGZyb20gYW1kZ3B1IGFuZAo+ID4gaW50ZWwsIGFuZCB0aG9zZSB0d28gZHJpdmVycyBw
cmV0dHkgbXVjaCBuZWVkIHRvIHNvcnQgb3V0IHRoZWlyIG1lbW9yeQo+ID4gZmVuY2UgaXNzdWVz
IGFueXdheSAoYmVjYXVzZSBvZiB1c2VycHRyIGFuZCBzdHVmZiBsaWtlIHRoYXQpLgo+ID4KPiA+
IFRoZSBvbmx5IG90aGVyIGlzc3VlcyBvdXRzaWRlIG9mIHRoZXNlIHR3byBkcml2ZXJzIEknbSBh
d2FyZSBvZjoKPiA+IC0gdmFyaW91cyBzY2hlZHVsZXIgZHJpdmVycyBkb2luZyBhbGxvY2F0aW9u
cyBpbiB0aGUgZHJtL3NjaGVkdWxlcgo+ID4gY3JpdGljYWwgc2VjdGlvbi4gU2luY2UgYWxsIGFy
bS1zb2MgZHJpdmVycyBoYXZlIGEgbWlsZGx5IHNob2RkeQo+ID4gbWVtb3J5IG1vZGVsIG9mICJ3
ZSBqdXN0IHBpbiBldmVyeXRoaW5nIiB0aGV5IGRvbid0IHJlYWxseSBoYXZlIHRvCj4gPiBkZWFs
IHdpdGggdGhpcy4gU28gd2UgbWlnaHQganVzdCBkZWNsYXJlIGFybSBhcyBhIHBsYXRmb3JtIGJy
b2tlbiBhbmQKPiA+IG5vdCB0YWludCB0aGUgZG1hLWZlbmNlIGNyaXRpY2FsIHNlY3Rpb25zIHdp
dGggZnNfcmVjbGFpbS4gT3RvaCB3ZQo+ID4gbmVlZCB0byBmaXggdGhpcyBmb3IgZHJtL3NjaGVk
dWxlciBhbnl3YXksIEkgdGhpbmsgYmVzdCBvcHRpb24gd291bGQKPiA+IGJlIHRvIGhhdmUgYSBt
ZW1wb29sIGZvciBodyBmZW5jZXMgaW4gdGhlIHNjaGVkdWxlciBpdHNlbGYsIGFuZCBhdAo+ID4g
dGhhdCBwb2ludCBmaXhpbmcgdGhlIG90aGVyIGRyaXZlcnMgc2hvdWxkbid0IGJlIHRvbyBvbmVy
b3VzLgo+ID4KPiA+IC0gdm13Z2Z4IGRvaW5nIGEgZG1hX3Jlc3YgaW4gdGhlIGF0b21pYyBjb21t
aXQgdGFpbC4gRW50aXJlbHkKPiA+IG9ydGhvZ29uYWwgdG8gdGhlIGVudGlyZSBtZW1vcnkgZmVu
Y2UgZGlzY3Vzc2lvbi4KPgo+IFdpdGggdm13Z2Z4IHRoZXJlIGlzIGFub3RoZXIgaXNzdWUgdGhh
dCBpcyBoaXQgd2hlbiB0aGUgZ3B1IHNpZ25hbHMgYW4KPiBlcnJvci4gQXQgdGhhdCBwb2ludCB0
aGUgYmF0Y2ggbWlnaHQgYmUgcmVzdGFydGVkIHdpdGggYSBuZXcgbWV0YQo+IGNvbW1hbmQgYnVm
ZmVyIHRoYXQgbmVlZHMgdG8gYmUgYWxsb2NhdGVkIG91dCBvZiBhIGRtYSBwb29sLiBpbiB0aGUK
PiBmZW5jZSBjcml0aWNhbCBzZWN0aW9uLiBUaGF0J3MgcHJvYmFibHkgYSBiaXQgbmFzdHkgdG8g
Zml4LCBidXQgbm90Cj4gaW1wb3NzaWJsZS4KClllYWggcmVzZXQgaXMgZnVuLiBGcm9tIHdoYXQg
SSd2ZSBzZWVuIHRoaXMgaXNuJ3QgYW55IHdvcnNlIHRoYW4gdGhlCmh3IGFsbG9jYXRpb24gaXNz
dWUgZm9yIGRybS9zY2hlZHVsZXIgZHJpdmVycywgdGhleSBqdXN0IGFsbG9jYXRlCmFub3RoZXIg
aHcgZmVuY2Ugd2l0aCBhbGwgdGhhdCBkcmFncyBhbG9uZy4gU28gdGhlIHNhbWUgbWVtcG9vbCBz
aG91bGQKYmUgc3VmZmljaWVudC4KClRoZSByZWFsbHkgbmFzdHkgdGhpbmcgYXJvdW5kIHJlc2V0
IGlzIGRpc3BsYXkgaW50ZXJhY3Rpb25zLCBiZWNhdXNlCnlvdSBqdXN0IGNhbid0IHRha2UgZHJt
X21vZGVzZXRfbG9jay4gYW1kZ3B1IGZpeGVkIHRoYXQgbm93IChhdCBsZWFzdAp0aGUgbW9kZXNl
dF9sb2NrIHNpZGUsIG5vdCB5ZXQgdGhlIG1lbW9yeSBhbGxvY2F0aW9ucyB0aGF0IGJyaW5ncwph
bG9uZykuIGk5MTUgaGFzIHRoZSBzYW1lIHByb2JsZW0gZm9yIGdlbjIvMyAoc28gcmVhbGx5IG9s
ZCBzdHVmZiksCmFuZCB3ZSd2ZSBzb2x2ZWQgdGhhdCBieSBicmVha2luZyZyZXN0YXJ0aW5nIGFs
bCBpOTE1IGZlbmNlIHdhaXRzLCBidXQKdGhhdCBwcmVkYXRlcyBtdWx0aS1ncHUgYW5kIHdvbnQg
d29yayBmb3Igc2hhcmVkIGZlbmNlcyBvZmMuIEJ1dCBpdCdzCnNvIG9sZCBhbmQgcHJlZGF0ZXMg
YWxsIG11bHRpLWdwdSBsYXB0b3BzIHRoYXQgSSB0aGluayB3b250Zml4IGlzIHRoZQpyaWdodCB0
YWtlLgoKT3RoZXIgZHJtL3NjaGVkdWxlciBkcml2ZXJzIGRvbid0IGhhdmUgdGhhdCBwcm9ibGVt
IHNpbmNlIHRoZXkncmUgYWxsCnJlbmRlci1vbmx5LCBzbyBubyBkaXNwbGF5IGRyaXZlciBpbnRl
cmFjdGlvbi4KCj4gPiBJJ20gcHJldHR5IHN1cmUgdGhlcmUncyBtb3JlIGJ1Z3MsIEkganVzdCBo
YXZlbid0IGhlYXJkIGZyb20gdGhlbSB5ZXQuCj4gPiBBbHNvIGR1ZSB0byB0aGUgb3B0LWluIG5h
dHVyZSBvZiBkbWEtZmVuY2Ugd2UgY2FuIGxpbWl0IHRoZSBzY29wZSBvZgo+ID4gd2hhdCB3ZSBm
aXggZmFpcmx5IG5hdHVyYWxseSwganVzdCBkb24ndCBwdXQgdGhlbSB3aGVyZSBubyBvbmUgY2Fy
ZXMKPiA+IDotKSBPZiBjb3Vyc2UgdGhhdCBhbHNvIGhpZGVzIGdlbmVyYWwgbG9ja2luZyBpc3N1
ZXMgaW4gZG1hX2ZlbmNlCj4gPiBzaWduYWxsaW5nIGNvZGUsIGJ1dCB3ZWxsICpzaHJ1ZyouCj4g
SG1tLCB5ZXMuIEFub3RoZXIgcG90ZW50aWFsIGJpZyBwcm9ibGVtIHdvdWxkIGJlIGRyaXZlcnMg
dGhhdCB3YW50IHRvCj4gdXNlIGdwdSBwYWdlIGZhdWx0cyBpbiB0aGUgZG1hLWZlbmNlIGNyaXRp
Y2FsIHNlY3Rpb25zIHdpdGggdGhlCj4gYmF0Y2gtYmFzZWQgcHJvZ3JhbW1pbmcgbW9kZWwuCgpZ
ZWFoIHRoYXQncyBhIG1hc3NpdmUgY2FuIG9mIHdvcm1zLiBCdXQgbHVja2lseSB0aGVyZSdzIG5v
IHN1Y2ggZHJpdmVyCm1lcmdlZCBpbiB1cHN0cmVhbSwgc28gaG9wZWZ1bGx5IHdlIGNhbiB0aGlu
ayBhYm91dCBhbGwgdGhlCmNvbnN0cmFpbnRzIGFuZCBob3cgdG8gYmVzdCBhbm5vdGF0ZSZlbmZv
cmNlIHRoaXMgYmVmb3JlIHdlIGxhbmQgYW55CmNvZGUgYW5kIGhhdmUgYmlnIHJlZ3JldHMuCi1E
YW5pZWwKCgoKLS0KRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
