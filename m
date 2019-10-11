Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EF5D4871
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 21:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4B06E439;
	Fri, 11 Oct 2019 19:30:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4C56E439
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 19:30:26 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id q7so3866704ywe.10
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sZZ8RUs6qrONnw1dpz3p2oTxVLwpDe9ZYCDLUU9FI2A=;
 b=DTZFV4gBvQW4HhCx2Ds3/ttokDjkq8lp1QQGtGwWtA/GbG9xmYfFQUdZA4DkOcPriy
 5oH3B+WnEcU7H3yXA7zDa7+rNxayK0m4BKuZLD58za08FtQDKHoIg8BYExHjX48DSD/6
 r32DwuQMUSRmQol36py6sSUPDz2k9LXNymbQjXpSjnxi/xp/iioO6hacq3EvuOx/8Hdz
 ASwFFao1XhYXWXCgWSOE6h9N2nhI+2NZzXaOTsHwGYqg4O4qYaGZBvdy0X11Epo2kD74
 dRH5SpPy5CFaxR8gWzpmswuMARg1BdRtL2tDVI4Ip+/XEoZLlfq74H6dLWYdZSOfNDdn
 qCgg==
X-Gm-Message-State: APjAAAWLKu94Ezf6o/1e3gUVsxy9QeFkAPNRaMPL3NwjoRO0S4LHga3Z
 nHab6YnKgmDe7ymtxh7ONlEhOg==
X-Google-Smtp-Source: APXvYqwThXFFkdv1sQXfJcLGCIjvihMLfqfJwBbPF7EWK8g3aR22FoFm4QfYJN2YNO+km7Dl+OnOjw==
X-Received: by 2002:a81:7092:: with SMTP id l140mr3885015ywc.483.1570822225179; 
 Fri, 11 Oct 2019 12:30:25 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id h20sm2490619ywa.24.2019.10.11.12.30.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 12:30:24 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:30:23 -0400
From: Sean Paul <sean@poorly.run>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191011193023.GV85762@art_vandelay>
References: <6669486b-fd2d-276a-645f-ae374bf2578a@redhat.com>
 <878spshgeb.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878spshgeb.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sZZ8RUs6qrONnw1dpz3p2oTxVLwpDe9ZYCDLUU9FI2A=;
 b=LzuHW2Z+YMpN1lY5cpSPEKwrgP0DEQGlWKrYXMQG4wokTLxwc403U0OQ5kcypXOWN5
 USxg6Nu6iaLY5vwCd09rM2ld4GywNNbgy72b3gmp8nZFT866eR3lZPmmeD4besGuYh33
 2jbtQO6+m3KHd8HMZDfzOBv14eqGiwGTrOgw1mFAif+k9sPBCh41XjZBO2hEHhqip3y5
 MIgLW5pS3EIb/cGLr/K4xJIdJqpd3upPorcdV5QroQ2J9jABHjWWssxwTbanH5t4kCP9
 //LBHgHLylr8isDR6NvR7dKn1euQ4GcWEajTsZi4KFsrZ/wTiVQeulf5/vkDn1UMaBOp
 /ZaQ==
Subject: Re: [Intel-gfx] Does the i915 VBT tell us if a panel is an OLED
 panel?
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
Cc: Christian Kellner <ckellner@redhat.com>, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDQ6MzU6NTZQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVGh1LCAxMCBPY3QgMjAxOSwgSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gPiBIaSBKYW5pLAo+ID4KPiA+IER1cmluZyBwbHVtYmVycyBJIGhhZCBz
b21lIGRpc2N1c3Npb25zIHdpdGggRGFuaWVsIGFib3V0IHN1cHBvcnRpbmcKPiA+IE9MRUQgc2Ny
ZWVucy4gVXNlcnNwYWNlIG1heSBuZWVkIHRvIGtub3cgdGhhdCBhIHBhbmVsIGlzIE9MRUQgZm9y
IDIKPiA+IHJlYXNvbnM6Cj4gPgo+ID4gMSkgVG8gYXZvaWQgc2NyZWVuIGJ1cm4taW4KPiA+IDIp
IE9MRUQgc2NyZWVucyBkbyBub3QgaGF2ZSBhIGNsYXNzaWMgYmFja2xpZ2h0LCBzbyBpbiBzb21l
IGNhc2VzCj4gPiBzb21lIHNvcnQgb2YgYnJpZ2h0bmVzcy9jb250cmFzdCBlbXVsYXRpb24gdGhy
b3VnaCBnYW1tYSB0YWJsZXMgbWF5Cj4gPiBiZSBuZWNlc3NhcnkgdG8gc3RpbGwgYWxsb3cgdGhl
IHVzZXIgdG8gY29udHJvbCB0aGUgYnJpZ2h0bmVzcy4KPiAKPiBJJ2QgdGhpbmsgbW9zdCBPTEVE
IGRpc3BsYXlzIGhhdmUgYSBuYXRpdmUgd2F5IHRvIGNvbnRyb2wKPiBicmlnaHRuZXNzLiBTb21l
IGVEUCBwYW5lbHMgY2FuIHVzZSB0aGUgZURQIFBXTSBwaW4gdG8gY29udHJvbAo+IGJyaWdodG5l
c3MsIGFsdGhvdWdoIGl0IGRvZXMgbm90IGRpcmVjdGx5IGRyaXZlIGFuIGFjdHVhbCBiYWNrbGln
aHQsIGFuZAo+IHNvbWUgb3RoZXJzIHVzZSB0aGUgZURQIHN0YW5kYXJkIERQQ0QgYnJpZ2h0bmVz
cyBjb250cm9sCj4gbWV0aG9kcy4gU2ltaWxhcmx5LCBPTEVEIERTSSBkaXNwbGF5cyBoYXZlIERD
UyBjb21tYW5kcyBmb3IgdGhpcy4KPiAKPiBPZnRlbiBJJ3ZlIHNlZW4gdmFyaW91cyBjb250ZW50
IGFkYXB0aXZlIGJyaWdodG5lc3Mgc2V0dGluZ3MgY29tYmluZWQKPiB3aXRoIHRoZSBPTEVEIGJy
aWdodG5lc3MgY29udHJvbCwgc28gaXQgY2FuIGJlIG1vcmUgcG93ZXIgZWZmaWNpZW50IHRoYW4K
PiB1c2luZyBnYW1tYS4KPiAKPiA+IFRoZSBpZGVhIHdlJ3ZlIGRpc2N1c3NlZCBpcyB0byBhZGQg
YSBwcm9wZXJ0eSBvbiB0aGUgZHJtX2Nvbm5lY3Rvcgo+ID4gKGRldGFpbHMgdG8gYmUgZmlsbGVk
IGluKSB3aGljaCBpbmRpY2F0ZXMgdGhhdCB0aGUgcGFuZWwgaXMgYW4gT0xFRAo+ID4gcGFuZWwu
Cj4gPgo+ID4gVGhpcyBoYXMgbGVhZCB0byB0aGUgcXVlc3Rpb246ICJob3cgZG8gd2Uga25vdyB0
aGUgcGFuZWwgaXMgT0xFRCI/Cj4gPgo+ID4gRG8geW91IGtub3cgaWYgdGhpcyBpbmZvIGlzIGNv
ZGVkIGludG8gdGhlIFZCVCBzb21ld2hlcmU/Cj4gCj4gTm90IEFGQUlDVC4gQnV0IHRoZXJlIGlz
IHRoZSBpbmRpY2F0aW9uIG9mIHRoZSBicmlnaHRuZXNzIGNvbnRyb2wKPiBtZXRob2QsIGFuZCBv
bmUgb3B0aW9uIGlzIHRoZSBlRFAgQVVYIGludGVyZmFjZS4gSSBmYXRob20gaXQncyBlbnRpcmVs
eQo+IHBvc3NpYmxlIGZvciBwYW5lbHMgdG8gdXNlIHRoZSBlRFAgQVVYIGludGVyZmFjZSBmb3Ig
Y29udHJvbGxpbmcgYW4gTENECj4gYmFja2xpZ2h0LCBzbyB0aGlzIGRvZXMgbm90IGRpcmVjdGx5
IHRyYW5zbGF0ZSB0byBPTEVELgo+IAo+IEhvd2V2ZXIsIHRoZSBEaXNwbGF5SUQgc3BlYyBoYXMg
RGlzcGxheSBEZXZpY2UgRGF0YSBibG9jayAoMHgwYykgdGhhdAo+IGNvbnRhaW5zIERpc3BsYXkg
RGV2aWNlIFRlY2hub2xvZ3kgYnl0ZSwgaW5jbHVkaW5nIGEgdmFsdWUgZm9yIE9yZ2FuaWMKPiBM
RUQvT0VMLiBJIGhhdmVuJ3QgYWN0dWFsbHkgY2hlY2tlZCBhbnkgT0xFRCBkaXNwbGF5cyBpZiB0
aGV5IGhhdmUgdGhpcwo+IG9yIG5vdCwgYW5kIHdlIGRvbid0IGN1cnJlbnRseSBwYXJzZSBpdCBp
biBkcm0sIGJ1dCB0aGlzIHNlZW1zIGxpa2UgYQo+IGJldHRlciBvcHRpb24gdGhhbiBWQlQuIE1v
cmVvdmVyLCB0aGlzIGlzIHVzYWJsZSBhbHNvIGZvciByZWd1bGFyIERQLAo+IHdoaWNoIHNob3Vs
ZCBiZSBhcyBpbXBvcnRhbnQgYXMgZURQIGZvciB0aGUgYnVybi1pbiBhdm9pZGFuY2UuCgpPbmUg
ZGF0YXBvaW50OiBJIGhhdmUgYW4gZURQIE9MRUQgcGFuZWwgYW5kIGl0IGRvZXMgbm90IHNlZW0g
dG8gaGF2ZQpEaXNwbGF5SUQgZXh0ZW5zaW9ucy4KClNlYW4KCj4gCj4gQlIsCj4gSmFuaS4KPiAK
PiAKPiAtLSAKPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
CgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
