Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F4720B176
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 14:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE2B6EC84;
	Fri, 26 Jun 2020 12:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC236EC85
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 12:40:09 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id n6so8491243otl.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 05:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wsRMNzqQAogsv0pevi50cDI53GBxgNTKwge/Nh8W6GE=;
 b=Dggh23Is0snRtKobf9W0ztzxAwVwfZ+r64AEJJzS0VnlicUN9DzuEji+VmjT413HAn
 1kT0cnd3MXdbYRZTAQggyDr4qIMQhaKDYHFmN/nikATqTx4RCx3qAj947x9dUSt7PP8X
 HwM6YbHkFNC4o2y+8vXtiMlabk0mtbysSXlbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wsRMNzqQAogsv0pevi50cDI53GBxgNTKwge/Nh8W6GE=;
 b=mhTTEmeeTrLz4yFRg6JhnQSXEYR52AVImhJmb6Wo7dkMjH9e24SCJgamkJWfggyRPu
 x90Xq8RT40/019iutb5T+tD8TnWsNrEStbwNu9YZJ5c2umuMwJtYIEOLcOB9ZQ18IgaY
 4WWN01/wCiGxPIZGRNwBfcftPiPuEVimewZhDd5W+6actu0yH+hRyUsJ9acIpdvlfyI8
 0hZqhmiZkql5YHfp5mifxw7RkVWH3aE4O2R1g3RLTJLas6pPUB+KfyFHFw8F7ks+gQAX
 E1PLaAoQ8WPUCxy3BbKaTIYzFp5KC6RrbvdBl+wHVlx+XvhdlsASl8dbqYmmu/ZW0WCO
 hrSg==
X-Gm-Message-State: AOAM532c/xTe8s7SkIbpAcmKmD7x54ZU2QKqmDT1Yn9tGnNn5Ti+ESyR
 WpV/p5p7pQMiJuIixz2XaKgI92DVbGA7VMejrOXRaA==
X-Google-Smtp-Source: ABdhPJxZW0AVl+/VjtveIBx4u8wLIsPt2VutPcOuolANFlSrV2/K6rvrQ356eGQGgZ0JTljtoJpBz8T2/TcYbQE+YDk=
X-Received: by 2002:a9d:d55:: with SMTP id 79mr987058oti.281.1593175208686;
 Fri, 26 Jun 2020 05:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200625123443.19680-1-lionel.g.landwerlin@intel.com>
 <51e00eed-c8f1-aabf-ec2c-07be0453ab3b@amd.com>
 <CAPM=9txhX5TVUdWibRFc1C+ip5a8-c07jZawds=k5T5pBTPASA@mail.gmail.com>
 <874kqzndxj.fsf@intel.com>
 <CAKMK7uErpxoFrT_K==7-PMGyg_eqF07T50eYfh5BFQLzra7TbQ@mail.gmail.com>
 <CAO_48GEa2ZgMph-1ZdsMcOdomZc4zNuRcNn_DoBZS3sNZa-LTg@mail.gmail.com>
 <b7b1eb80-aa98-2d54-2344-dbc2e4bc0492@amd.com>
In-Reply-To: <b7b1eb80-aa98-2d54-2344-dbc2e4bc0492@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 26 Jun 2020 14:39:57 +0200
Message-ID: <CAKMK7uE--1E59fOhQPZ3ib4a3bSK1Nf5ikLB_GHf2wRsFTvXhw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "dma-buf: Report signaled links
 inside dma-fence-chain"
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMjYsIDIwMjAgYXQgOTowMyBBTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4gQW0gMjYuMDYuMjAgdW0gMDY6NDMgc2Nocmll
YiBTdW1pdCBTZW13YWw6Cj4gPiBPbiBGcmksIDI2IEp1biAyMDIwIGF0IDAxOjI0LCBEYW5pZWwg
VmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4+IElnbm9yaW5nIGV2ZXJ5dGhpbmcg
ZWxzZSAuLi4KPiA+Pgo+ID4+IE9uIFRodSwgSnVuIDI1LCAyMDIwIGF0IDk6MjggUE0gSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPj4+IEFzIGEgc2lk
ZSBub3RlLCB0aGVyZSBzZWVtIHRvIGJlIGV4dHJhIGNoZWNrcyBpbiBwbGFjZSBmb3IgYWNrcyB3
aGVuCj4gPj4+IGFwcGx5aW5nIG5vbi1pOTE1IHBhdGNoZXMgdG8gZHJtLWludGVsOyB0aGVyZSBh
cmUgbm8gc3VjaCBjaGVja3MgZm9yCj4gPj4+IGRybS1taXNjLgo+ID4+IE9uZSBvcHRpb24gdG8g
Z2VuZXJhbGl6ZSB0aGF0IHRoYXQgSSBwb25kZXJlZCBpcyB0byBjb25zdWx0Cj4gPj4gZ2V0X21h
aW50YWluZXJzLnBsIGFza2luZyBmb3IgZ2l0IHJlcG8gbGluaywgYW5kIGlmIHRoYXQgcmV0dXJu
cwo+ID4+IHNvbWV0aGluZyBlbHNlLCB0aGVuIGluc2lzdCB0aGF0IHRoZXJlJ3MgYW4gYWNrIGZy
b20gYSByZWxldmFudAo+ID4+IG1haW50YWluZXIuIEl0J3MgYSBiaXQgb2YgdHlwaW5nLCBidXQg
SSB0aGluayB0aGUgYmlnZ2VyIHByb2JsZW0gaXMKPiA+PiB0aGF0IHRoZXJlJ3MgYSB0b24gb2Yg
ZmFsc2UgcG9zaXRpdmVzLgo+ID4gUmlnaHQ7IGZvciB0aGUgcGFydGljdWxhciBwYXRjaCwgSSB3
YXNuJ3QgZXZlbiBpbiB0aGUgdG86IG9yIGNjOiBmaWVsZAo+ID4gYW5kIHRoYXQgbWFkZSBpdCBz
bGlwIGZyb20gbXkgcmFkYXIuIEkgd291bGQgZGVmaW5pdGVseSBhc2sgYW55IG9uZQo+ID4gc2Vu
ZGluZyBwYXRjaGVzIGZvciBkbWEtYnVmIGRpcmVjdG9yeSB0byBmb2xsb3cgdGhlIGdldF9tYWlu
dGFpbmVycy5wbAo+ID4gcmVsaWdpb3VzbHkuCj4gPj4gQnV0IG1heWJlIHRoYXQncyBhIGdvb2Qg
dGhpbmcsIHdvdWxkIGdpdmUgc29tZSBtb3RpdmF0aW9uIHRvIGtlZXAKPiA+PiBNQUlOVEFJTkVS
UyB1cGRhdGVkLgo+Cj4gU2hvdWxkIEkgbWF5YmUgYWRkIG15c2VsZiBhcyBtYWludGFpbmVyIGFz
IHdlbGw/IEkndmUgd3JpdHRlbiBlbm91Z2gKPiBzdHVmZiBpbiB0aGVyZSB0byBrbm93IHRoZSBj
b2RlIHF1aXRlIGEgYml0LgoKSSB0aGluayB0aGF0IG1ha2VzIGxvdHMgb2Ygc2Vuc2UsIHNpbmNl
IGRlZmFjdG8geW91IGFscmVhZHkgYXJlIDotKQoKSWYgeW91IGZlZWwgbGlrZSBiaWtlc2hlZCwg
Z2V0X21haW50YWluZXJzLnBsIGFsc28gc3VwcG9ydHMgUjogZm9yCnJldmlld2VyLCBidXQgZ2l2
ZW4gdGhhdCB5b3UgYWxzbyBwdXNoIHBhdGNoZXMgdG8gZHJtLW1pc2MgTTogZm9yCm1haW50YWlu
ZXIgZmVlbHMgbW9yZSBhY2N1cmF0ZS4KLURhbmllbAoKCj4KPiBDaHJpc3RpYW4uCj4KPiA+Pgo+
ID4+IFRoZSBvdGhlciBpc3N1ZSBpcyB0aG91Z2ggdGhhdCBkcm0tbWlzYyBpcyBwbGVudHkgdXNl
ZCB0byBtZXJnZQo+ID4+IHBhdGNoZXMgZXZlbiB3aGVuIHRoZSByZXNwZWN0aXZlIG1haW50YWlu
ZXJzIGFyZSBhYnNlbnQgZm9yIHdlZWtzLCBvcgo+ID4+IHVucmVzcG9uc2l2ZS4gSWYgd2UganVz
dCBibGluZGx5IGltcGxlbWVudCB0aGF0IHJ1bGUsIHRoZW4gdGhlIG9ubHkKPiA+PiBwb3NzaWJs
ZSBBY2sgZm9yIHRoZXNlIHdvdWxkIGJlIERhdmUmbWUgYXMgc3Vic3lzdGVtIG1haW50YWluZXJz
LCBhbmQKPiA+PiBJIGRvbid0IHdhbnQgdG8gYmUgaW4gdGhlIGJ1c2luZXNzIG9mIHN0YW1waW5n
IGFwcHJvdmFscyBmb3IgYWxsIHRoaXMKPiA+PiBzdHVmZi4gTXVjaCBiZXR0ZXIgaWYgcGVvcGxl
IGp1c3QgY29sbGFib3JhdGUuCj4gPj4KPiA+PiBTbyBJIHRoaW5rIGFuIGFjayBjaGVjayB3b3Vs
ZCBiZSBuaWNlLCBidXQgcHJvYmFibHkgbm90IHByYWN0aWNhbC4KPiA+Pgo+ID4+IFBsdXMgaW4g
dGhpcyBzaXR1YXRpb24gaGVyZSBkcm0tbWlzYy5naXQgYWN0dWFsbHkgaXMgdGhlIG1haW4gcmVw
bywKPiA+PiBhbmQgd2Ugd29udCBldmVyIGJlIGFibGUgdG8gdGVhY2ggYSBzY3JpcHQgdG8gbWFr
ZSBhIGp1ZGdlbWVudCBjYWxsIG9mCj4gPj4gd2hldGhlciB0aGF0IHBhdGNoIGhhcyB0aGUgcmln
aHQgYW1vdW50IG9mIHJldmlldyBvbiBpdC4KPiA+PiAtRGFuaWVsCj4gPiBCZXN0LAo+ID4gU3Vt
aXQuCj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
