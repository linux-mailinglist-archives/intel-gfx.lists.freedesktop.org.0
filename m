Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B3C99682
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:27:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5DD89FCE;
	Thu, 22 Aug 2019 14:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293E86E4E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:27:31 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id f17so5631082otq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 07:27:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HxSEtX2z/ZJV/B0XcD4BCr1O2HbvzOrzKNcLT4JypFY=;
 b=AkKXT2dTaUs5FtV6YCBiOkr62Kd8fwIJbEC/J5DHCsvh0zsvObAzDs+VPqeFGjMK86
 jpRczAAoyg90WBrv0E7zITsOrkVL7MnThlA8w0IB9GavfudsHI+VQWXB3qB9snrZv4nE
 XhIarXbeSh+d+TgcEVgqBM4HWa6aeXaVuqqrZ13wVAZdseNiMmncC/HJ8wb8WRR4ks78
 JgF20WPWGcd50lxrUwOQBcFKJ7xWsiZRHd/ES4jnJIO/dXMlHXKeuJhv8mN/t+9rKfYm
 Xq6ndVfvMDBEO0HyJOPbuokuljx7HVnwmCeHfnzDKWvaA2cuWPm/BvtWawle/OFUxThX
 024g==
X-Gm-Message-State: APjAAAVNySRlECPDCbQM4q1/AMy/pno6WP2c3u3bcTIcF5e/NpMF5xgR
 M4/uZKkVlHY6e6em70nOyvIgzjvXULVRDpbvpaVnAQ==
X-Google-Smtp-Source: APXvYqzrWuV30uDAlQUdwtvK/fFSj1j/bZ180iv5Fx+HFnPaAc75KsLZP2Z8mNCZI4plTUPZzv1Ihu5g4y0wy4zzZSI=
X-Received: by 2002:a9d:7087:: with SMTP id l7mr1213445otj.281.1566484050304; 
 Thu, 22 Aug 2019 07:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
 <20190820081902.24815-5-daniel.vetter@ffwll.ch>
 <20190820133418.GG29246@ziepe.ca>
 <20190820151810.GG11147@phenom.ffwll.local>
 <20190821154151.GK11147@phenom.ffwll.local>
 <20190821161635.GC8653@ziepe.ca>
 <CAKMK7uERsmgFqDVHMCWs=4s_3fHM0eRr7MV6A8Mdv7xVouyxJw@mail.gmail.com>
 <20190822142410.GB8339@ziepe.ca>
In-Reply-To: <20190822142410.GB8339@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 22 Aug 2019 16:27:18 +0200
Message-ID: <CAKMK7uF5CMSUrG2jTYJ9M7tDK_Saxmxk6yLs62tfc-Ozj3p2BQ@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=HxSEtX2z/ZJV/B0XcD4BCr1O2HbvzOrzKNcLT4JypFY=;
 b=bThEovQjDRPbGQci1oGNwl98knwGtDbVI9tycUtNpAD5WH/u71hGUtM2xhNVyI5R1f
 fOd+c1dN12ruUyXlb/wEqY3WTmbAJQU4afNsp98FtxyMr/7sUppyEdf1DRZ18OTqR0+C
 AIRU6Cjy4Kh+FYM1N/+/DUewnmCrWcZwia6BI=
Subject: Re: [Intel-gfx] [PATCH 4/4] mm,
 notifier: Catch sleeping/blocking for !blockable
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
Cc: Michal Hocko <mhocko@suse.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNDoyNCBQTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVw
ZS5jYT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAxMDo0MjozOUFNICswMjAw
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Cj4gPiA+IFJETUEgaGFzIGEgbXV0ZXg6Cj4gPiA+Cj4g
PiA+IGliX3VtZW1fbm90aWZpZXJfaW52YWxpZGF0ZV9yYW5nZV9lbmQKPiA+ID4gICByYnRfaWJf
dW1lbV9mb3JfZWFjaF9pbl9yYW5nZQo+ID4gPiAgICBpbnZhbGlkYXRlX3JhbmdlX3N0YXJ0X3Ry
YW1wb2xpbmUKPiA+ID4gICAgIGliX3VtZW1fbm90aWZpZXJfZW5kX2FjY291bnQKPiA+ID4gICAg
ICAgbXV0ZXhfbG9jaygmdW1lbV9vZHAtPnVtZW1fbXV0ZXgpOwo+ID4gPgo+ID4gPiBJJ20gd29y
a2luZyB0byBkZWxldGUgdGhpcyBwYXRoIHRob3VnaCEKPiA+ID4KPiA+ID4gbm9uYmxvY2tpbmcg
b3Igbm90IGZvbGxvd3MgdGhlIHN0YXJ0LCB0aGUgc2FtZSBmbGFnIGdldHMgcGxhY2VkIGludG8K
PiA+ID4gdGhlIG1tdV9ub3RpZmllcl9yYW5nZSBzdHJ1Y3QgcGFzc2VkIHRvIGVuZC4KPiA+Cj4g
PiBPaywgbWFrZXMgc2Vuc2UuCj4gPgo+ID4gSSBndWVzcyB0aGF0IGFsc28gbWVhbnMgdGhlIG1p
Z2h0X3NsZWVwIChJIHN0YXJ0ZWQgb24gdGhhdCkgaW4KPiA+IGludmFsaWRhdGVfcmFuZ2VfZW5k
IGFsc28gbmVlZHMgdG8gYmUgY29uZGl0aW9uYWw/IE9yIG5vdCBib3RoZXIgd2l0aAo+ID4gYSBt
aWdodF9zbGVlcCBpbiBpbnZhbGlkYXRlX3JhbmdlX2VuZCBzaW5jZSB5b3UncmUgd29ya2luZyBv
biByZW1vdmluZwo+ID4gdGhlIGxhc3Qgc2xlZXAgaW4gdGhlcmU/Cj4KPiBJIG1pZ2h0IHN1Z2dl
c3QgdGhlIHNhbWUgcGF0dGVybiBhcyB1c2VkIGZvciBsb2NrZWQsIHRoZSBtaWdodF9zbGVlcAo+
IHVuY29uZGl0aW9uYWxseSBvbiB0aGUgc3RhcnQsIGFuZCBhIDJuZCBtaWdodCBzbGVlcCBhZnRl
ciB0aGUgSUYgaW4KPiBfX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX2VuZCgpCj4KPiBP
YnNlcnZpbmcgdGhhdCBieSBhdWRpdCBhbGwgdGhlIGNhbGxlcnMgYWxyZWFkeSBoYXZlIHRoZSBz
YW1lIGxvY2tpbmcKPiBjb250ZXh0IGZvciBzdGFydC9lbmQKCk15IHF1ZXN0aW9uIHdhcyBtb3Jl
IGFib3V0IGVuZm9yY2luZyB0aGF0IGdvaW5nIGZvcndhcmQsIHNpbmNlIHlvdSdyZQp3b3JraW5n
IHRvIHJlbW92ZSBhbGwgdGhlIHNsZWVwcyBmcm9tIGludmFsaWRhdGVfcmFuZ2VfZW5kLiBJIGRv
bid0CndhbnQgdG8gYWRkIGRlYnVnIGFubm90YXRpb25zIHdoaWNoIGFyZSBzdHJpY3RlciB0aGFu
IHdoYXQgdGhlIG90aGVyCnNpZGUgYWN0dWFsbHkgZXhwZWN0cy4gQnV0IHNpbmNlIGN1cnJlbnRs
eSB0aGVyZSBpcyBzdGlsbCBzbGVlcGluZwpsb2NrcyBpbiBpbnZhbGlkYXRlX3JhbmdlX2VuZCBJ
IHRoaW5rIEknbGwganVzdCBzdGljayB0aGVtIGluIGJvdGgKcGxhY2VzLiBZb3UgY2FuIHRoZW4g
KHJlKW1vdmUgaXQgd2hlbiB0aGUgY2xlYW51cCBsYW5kcy4KLURhbmllbAotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUg
NTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
