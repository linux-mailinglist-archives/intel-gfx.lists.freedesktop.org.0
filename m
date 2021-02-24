Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC7A3238E1
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 09:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD186E8B8;
	Wed, 24 Feb 2021 08:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com
 [IPv6:2607:f8b0:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22C5B6E8B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 08:46:03 +0000 (UTC)
Received: by mail-oi1-x231.google.com with SMTP id h17so1684762oih.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 00:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UBVHQngHUZ0hFzyvhknW/+6mcD59iwnz+U3N7eapU0U=;
 b=eq2XYiTGVtDvvK55/32jVi7zpdt152ufQPW9GCdhvatN7bJq1fJqf9L8H7hLFOCrBY
 fL9M1pn2Wcd0q+Qg6BKMIWBCswKMLS7ue931ex4gf/AvyW5CYIo95u3iU2i4PeFcoSk1
 Pl7Vxbl67bfcZ55H5DkaBnxK9ATAWzVQXEoG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UBVHQngHUZ0hFzyvhknW/+6mcD59iwnz+U3N7eapU0U=;
 b=jFFt+nl0piOhiqDNmrf4Txd3fY0rTiz/LrQerD4a4OxAH3eb/U37HbXu4Q+KzBVe6E
 nz+ED0+tGw9366DuUDTjixXnwPRHq/ICTAUKfBSmvdf10fOO7pzGWgu9NvEGKEiPWpuM
 FnkNQ/MjuJjVEVpUBXJ3iKtUsczQQ1Uft2sF/ET/zkXY/6iSdX/xkiKTDEgdseelpY/Z
 qiKJ7xnFja3wn09HTdVAgOMzVQnB01PY8Ljwl0Y/4Uqthuy+eo+f4ApmCIeFBPHbtzNU
 maelYEuboFpKvm0Az4HoMyAUFvzreWSkDWrFPKUWjfxcQpQfO0J9gbVwO0QX+Lwn9JQF
 YOYA==
X-Gm-Message-State: AOAM532QxcLdeNM6FYxaErx58yfy2MMMUNRNvq5lKcGTyAASKJ+osGVp
 xY2fCht/49BdKMs/3onWbdWrXFmKkeyuJeCqVErdxw==
X-Google-Smtp-Source: ABdhPJxewnoE3OYdDmeQhWuC52aIvi5BFeizNLN4c4XvgIM4Jw2qTr5RP6gk6PNE/9VKREBJNnEYEHtedMcL+yttr5o=
X-Received: by 2002:a05:6808:4c9:: with SMTP id
 a9mr2005718oie.101.1614156362400; 
 Wed, 24 Feb 2021 00:46:02 -0800 (PST)
MIME-Version: 1.0
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
In-Reply-To: <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 24 Feb 2021 09:45:51 +0100
Message-ID: <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require
 VM_PFNMAP vma for mmap
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
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBGZWIgMjQsIDIwMjEgYXQgODo0NiBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPgo+Cj4gT24gMi8yMy8yMSAxMTo1OSBB
TSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IHRsZHI7IERNQSBidWZmZXJzIGFyZW4ndCBub3Jt
YWwgbWVtb3J5LCBleHBlY3RpbmcgdGhhdCB5b3UgY2FuIHVzZQo+ID4gdGhlbSBsaWtlIHRoYXQg
KGxpa2UgY2FsbGluZyBnZXRfdXNlcl9wYWdlcyB3b3Jrcywgb3IgdGhhdCB0aGV5J3JlCj4gPiBh
Y2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBtZW1vcnkpIGNhbm5vdCBiZSBndWFyYW50
ZWVkLgo+ID4KPiA+IFNpbmNlIHNvbWUgdXNlcnNwYWNlIG9ubHkgcnVucyBvbiBpbnRlZ3JhdGVk
IGRldmljZXMsIHdoZXJlIGFsbAo+ID4gYnVmZmVycyBhcmUgYWN0dWFsbHkgYWxsIHJlc2lkZW50
IHN5c3RlbSBtZW1vcnksIHRoZXJlJ3MgYSBodWdlCj4gPiB0ZW1wdGF0aW9uIHRvIGFzc3VtZSB0
aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKPiA+IGxpa2Ug
Zm9yIGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1hcC4gVGhpcyBoYXMgdGhlIHBvdGVudGlh
bCB0bwo+ID4gcmVzdWx0IGluIGEgdWFwaSBuaWdodG1hcmUuCj4gPgo+ID4gVG8gc3RvcCB0aGlz
IGdhcCByZXF1aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fUEZOTUFQLCB3aGljaAo+
ID4gYmxvY2tzIGdldF91c2VyX3BhZ2VzIGFuZCBhbGwgdGhlIG90aGVyIHN0cnVjdCBwYWdlIGJh
c2VkCj4gPiBpbmZyYXN0cnVjdHVyZSBmb3IgZXZlcnlvbmUuIEluIHNwaXJpdCB0aGlzIGlzIHRo
ZSB1YXBpIGNvdW50ZXJwYXJ0IHRvCj4gPiB0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFC
VUZfREVCVUcuCj4gPgo+ID4gTW90aXZhdGVkIGJ5IGEgcmVjZW50IHBhdGNoIHdoaWNoIHdhbnRl
ZCB0byBzd2ljaCB0aGUgc3lzdGVtIGRtYS1idWYKPiA+IGhlYXAgdG8gdm1faW5zZXJ0X3BhZ2Ug
aW5zdGVhZCBvZiB2bV9pbnNlcnRfcGZuLgo+ID4KPiA+IHYyOgo+ID4KPiA+IEphc29uIGJyb3Vn
aHQgdXAgdGhhdCB3ZSBhbHNvIHdhbnQgdG8gZ3VhcmFudGVlIHRoYXQgYWxsIHB0ZXMgaGF2ZSB0
aGUKPiA+IHB0ZV9zcGVjaWFsIGZsYWcgc2V0LCB0byBjYXRjaCBmYXN0IGdldF91c2VyX3BhZ2Vz
IChvbiBhcmNoaXRlY3R1cmVzCj4gPiB0aGF0IHN1cHBvcnQgdGhpcykuIEFsbG93aW5nIFZNX01J
WEVETUFQIChsaWtlIFZNX1NQRUNJQUwgZG9lcykgd291bGQKPiA+IHN0aWxsIGFsbG93IHZtX2lu
c2VydF9wYWdlLCBidXQgbGltaXRpbmcgdG8gVk1fUEZOTUFQIHdpbGwgY2F0Y2ggdGhhdC4KPiA+
Cj4gPiAgRnJvbSBhdWRpdGluZyB0aGUgdmFyaW91cyBmdW5jdGlvbnMgdG8gaW5zZXJ0IHBmbiBw
dGUgZW50aXJlcwo+ID4gKHZtX2luc2VydF9wZm5fcHJvdCwgcmVtYXBfcGZuX3JhbmdlIGFuZCBh
bGwgaXQncyBjYWxsZXJzIGxpa2UKPiA+IGRtYV9tbWFwX3djKSBpdCBsb29rcyBsaWtlIFZNX1BG
Tk1BUCBpcyBhbHJlYWR5IHJlcXVpcmVkIGFueXdheSwgc28KPiA+IHRoaXMgc2hvdWxkIGJlIHRo
ZSBjb3JyZWN0IGZsYWcgdG8gY2hlY2sgZm9yLgo+ID4KPiBJZiB3ZSByZXF1aXJlIFZNX1BGTk1B
UCwgZm9yIG9yZGluYXJ5IHBhZ2UgbWFwcGluZ3MsIHdlIGFsc28gbmVlZCB0bwo+IGRpc2FsbG93
IENPVyBtYXBwaW5ncywgc2luY2UgaXQgd2lsbCBub3Qgd29yayBvbiBhcmNoaXRlY3R1cmVzIHRo
YXQKPiBkb24ndCBoYXZlIENPTkZJR19BUkNIX0hBU19QVEVfU1BFQ0lBTCwgKHNlZSB0aGUgZG9j
cyBmb3Igdm1fbm9ybWFsX3BhZ2UoKSkuCgpIbSBJIGZpZ3VyZWQgZXZlcnlvbmUganVzdCB1c2Vz
IE1BUF9TSEFSRUQgZm9yIGJ1ZmZlciBvYmplY3RzIHNpbmNlCkNPVyByZWFsbHkgbWFrZXMgYWJz
b2x1dGVseSBubyBzZW5zZS4gSG93IHdvdWxkIHdlIGVuZm9yY2UgdGhpcz8KCj4gQWxzbyB3b3J0
aCBub3RpbmcgaXMgdGhlIGNvbW1lbnQgaW4gIHR0bV9ib19tbWFwX3ZtYV9zZXR1cCgpIHdpdGgK
PiBwb3NzaWJsZSBwZXJmb3JtYW5jZSBpbXBsaWNhdGlvbnMgd2l0aCB4ODYgKyBQQVQgKyBWTV9Q
Rk5NQVAgKyBub3JtYWwKPiBwYWdlcy4gVGhhdCdzIGEgdmVyeSBvbGQgY29tbWVudCwgdGhvdWdo
LCBhbmQgbWlnaHQgbm90IGJlIHZhbGlkIGFueW1vcmUuCgpJIHRoaW5rIHRoYXQncyB3aHkgdHRt
IGhhcyBhIHBhZ2UgY2FjaGUgZm9yIHRoZXNlLCBiZWNhdXNlIGl0IGluZGVlZApzdWNrcy4gVGhl
IFBBVCBjaGFuZ2VzIG9uIHBhZ2VzIGFyZSByYXRoZXIgZXhwZW5zaXZlLgoKVGhlcmUgaXMgc3Rp
bGwgYW4gaXNzdWUgZm9yIGlvbWVtIG1hcHBpbmdzLCBiZWNhdXNlIHRoZSBQQVQgdmFsaWRhdGlv
bgpkb2VzIGEgbGluZWFyIHdhbGsgb2YgdGhlIHJlc291cmNlIHRyZWUgKGxvbCkgZm9yIGV2ZXJ5
IHZtX2luc2VydF9wZm4uCkJ1dCBmb3IgaTkxNSBhdCBsZWFzdCB0aGlzIGlzIGZpeGVkIGJ5IHVz
aW5nIHRoZSBpb19tYXBwaW5nCmluZnJhc3RydWN0dXJlLCB3aGljaCBkb2VzIHRoZSBQQVQgcmVz
ZXJ2YXRpb24gb25seSBvbmNlIHdoZW4geW91IHNldAp1cCB0aGUgbWFwcGluZyBhcmVhIGF0IGRy
aXZlciBsb2FkLgoKQWxzbyBUVE0gdXNlcyBWTV9QRk5NQVAgcmlnaHQgbm93IGZvciBldmVyeXRo
aW5nLCBzbyBpdCBjYW4ndCBiZSBhCnByb2JsZW0gdGhhdCBodXJ0cyBtdWNoIDotKQotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
