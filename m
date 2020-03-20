Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EBE18CF20
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967B96EB35;
	Fri, 20 Mar 2020 13:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1356E119
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 06:28:21 +0000 (UTC)
Received: by mail-il1-x141.google.com with SMTP id m9so4559396ilq.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 23:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iNXs70iQMmbCeWom+A/Tg16i/IbQyXAZI0Q/ppb6028=;
 b=mlwq4CYA+23qP9sIb47R10WlCGq2DIeqg0u1nZRI7nIlEwzdaBM16J0diAb1hlohhx
 6DmTCrAETojeuHxXASGkurUqmDfwjHRaPO4za7UkVii+FhFKjU1p/Uh7mi3KFwpjPhsb
 iUmifGiws8WLlb2N+d2f8DAIA3I+MwtdSl7QMUdRy6dZmidqOFzKWaoRrSqr4hGVvYFe
 lxvu2QhZ23+aceqTRPs5AhP4qiprkvMy5v6UfWHtbzwVFjivSqy8raQEj8IKp649aRSz
 OzRNio30MUjHUatFuFBVrSm+4Q22qFcnN1y399wmFgi4y40WUSo1BlDO9PO4lb7z5YMG
 C1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iNXs70iQMmbCeWom+A/Tg16i/IbQyXAZI0Q/ppb6028=;
 b=WfUQ2KyEcMIeH6k7q2z7VU5JscUO61chfpZAlIX0R2ErhljlBRux5pFULhmXlTGGYv
 8Rs9teUYzHABRKoNGaCUk2AsO5J6U5aFZzFJUxQktjSR2Aj61lRnt2NYHyAHIEd/UkRs
 SeFsyhXn2QMbyFRDweLjJyuWNMtI+95vNmOonTZhAAIvfYlNzSjzB7IxQ1gy7cbqoEvi
 roJ6sp2aaFjTdP370FrS5g5neE+p9dyCkoUNW5SL4XRd7T2vs48swBnS5wTew1eL1Jez
 GsYFh69JZ7LcYgzwv90P2rc7UontQHUuwfTlTGFXKD35hG2pOUgZIRSSUtFH/iYxy/+Q
 AOQg==
X-Gm-Message-State: ANhLgQ0ihwJFBi2JKx8IcE7UU4D6sq32r1Og4QoQvRUG0UQyUp9uSlXY
 pbu0uJvMZpGktXqQqLDRAxAw9jStixODx5Ye6vpn4g==
X-Google-Smtp-Source: ADFU+vu5z05Ntsthh3MN1VmTHwq3rO5otoJoIS27t3cZsZdixT+HOBtJfxy3n0Krurf+ZkaYNXqDSZk62sBvXeLV7BQ=
X-Received: by 2002:a92:41c7:: with SMTP id o190mr6554977ila.11.1584685701013; 
 Thu, 19 Mar 2020 23:28:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191221150402.13868-1-murphyt7@tcd.ie> <87blrzwcn8.fsf@intel.com>
 <432d306c-fe9f-75b2-f0f7-27698f1467ad@arm.com> <87o8vzuv4i.fsf@intel.com>
In-Reply-To: <87o8vzuv4i.fsf@intel.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Thu, 19 Mar 2020 23:28:09 -0700
Message-ID: <CALQxJuujCe7TsqkbfusPnzef2SApDBNPa7wj=U4ozDJWCoBHOg@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
X-Mailman-Approved-At: Fri, 20 Mar 2020 13:40:00 +0000
Subject: Re: [Intel-gfx] [PATCH 0/8] Convert the intel iommu driver to the
 dma-iommu api
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Eric Auger <eric.auger@redhat.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW55IG5ld3Mgb24gdGhpcz8gSXMgdGhlcmUgYW55b25lIHdobyB3YW50cyB0byB0cnkgYW5kIGZp
eCB0aGlzIHBvc3NpYmxlIGJ1Zz8KCk9uIE1vbiwgMjMgRGVjIDIwMTkgYXQgMDM6NDEsIEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAy
MyBEZWMgMjAxOSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4g
PiBPbiAyMDE5LTEyLTIzIDEwOjM3IGFtLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+PiBPbiBTYXQs
IDIxIERlYyAyMDE5LCBUb20gTXVycGh5IDxtdXJwaHl0N0B0Y2QuaWU+IHdyb3RlOgo+ID4+PiBU
aGlzIHBhdGNoc2V0IGNvbnZlcnRzIHRoZSBpbnRlbCBpb21tdSBkcml2ZXIgdG8gdGhlIGRtYS1p
b21tdSBhcGkuCj4gPj4+Cj4gPj4+IFdoaWxlIGNvbnZlcnRpbmcgdGhlIGRyaXZlciBJIGV4cG9z
ZWQgYSBidWcgaW4gdGhlIGludGVsIGk5MTUgZHJpdmVyCj4gPj4+IHdoaWNoIGNhdXNlcyBhIGh1
Z2UgYW1vdW50IG9mIGFydGlmYWN0cyBvbiB0aGUgc2NyZWVuIG9mIG15Cj4gPj4+IGxhcHRvcC4g
WW91IGNhbiBzZWUgYSBwaWN0dXJlIG9mIGl0IGhlcmU6Cj4gPj4+IGh0dHBzOi8vZ2l0aHViLmNv
bS9waXBweTM2MC9rZXJuZWxQYXRjaGVzL2Jsb2IvbWFzdGVyL0lNR18yMDE5MTIxOV8yMjU5MjIu
anBnCj4gPj4+Cj4gPj4+IFRoaXMgaXNzdWUgaXMgbW9zdCBsaWtlbHkgaW4gdGhlIGk5MTUgZHJp
dmVyIGFuZCBpcyBtb3N0IGxpa2VseSBjYXVzZWQKPiA+Pj4gYnkgdGhlIGRyaXZlciBub3QgcmVz
cGVjdGluZyB0aGUgcmV0dXJuIHZhbHVlIG9mIHRoZQo+ID4+PiBkbWFfbWFwX29wczo6bWFwX3Nn
IGZ1bmN0aW9uLiBZb3UgY2FuIHNlZSB0aGUgZHJpdmVyIGlnbm9yaW5nIHRoZQo+ID4+PiByZXR1
cm4gdmFsdWUgaGVyZToKPiA+Pj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Js
b2IvN2UwMTY1YjJmMWE5MTJhMDZlMzgxZTkxZjBmNGU0OTVmNGFjMzczNi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMjTDUxCj4gPj4+Cj4gPj4+IFByZXZpb3VzbHkg
dGhpcyBkaWRu4oCZdCBjYXVzZSBpc3N1ZXMgYmVjYXVzZSB0aGUgaW50ZWwgbWFwX3NnIGFsd2F5
cwo+ID4+PiByZXR1cm5lZCB0aGUgc2FtZSBudW1iZXIgb2YgZWxlbWVudHMgYXMgdGhlIGlucHV0
IHNjYXR0ZXIgZ2F0aGVyIGxpc3QKPiA+Pj4gYnV0IHdpdGggdGhlIGNoYW5nZSB0byB0aGlzIGRt
YS1pb21tdSBhcGkgdGhpcyBpcyBubyBsb25nZXIgdGhlCj4gPj4+IGNhc2UuIEkgd2FzbuKAmXQg
YWJsZSB0byB0cmFjayB0aGUgYnVnIGRvd24gdG8gYSBzcGVjaWZpYyBsaW5lIG9mIGNvZGUKPiA+
Pj4gdW5mb3J0dW5hdGVseS4KPiA+Pj4KPiA+Pj4gQ291bGQgc29tZW9uZSBmcm9tIHRoZSBpbnRl
bCB0ZWFtIGxvb2sgYXQgdGhpcz8KPiA+Pgo+ID4+IExldCBtZSBnZXQgdGhpcyBzdHJhaWdodC4g
VGhlcmUgaXMgY3VycmVudCBBUEkgdGhhdCBvbiBzdWNjZXNzIGFsd2F5cwo+ID4+IHJldHVybnMg
dGhlIHNhbWUgbnVtYmVyIG9mIGVsZW1lbnRzIGFzIHRoZSBpbnB1dCBzY2F0dGVyIGdhdGhlcgo+
ID4+IGxpc3QuIFlvdSBwcm9wb3NlIHRvIGNoYW5nZSB0aGUgQVBJIHNvIHRoYXQgdGhpcyBpcyBu
byBsb25nZXIgdGhlIGNhc2U/Cj4gPgo+ID4gTm8sIHRoZSBBUEkgZm9yIGRtYV9tYXBfc2coKSBo
YXMgYWx3YXlzIGJlZW4gdGhhdCBpdCBtYXkgcmV0dXJuIGZld2VyCj4gPiBETUEgc2VnbWVudHMg
dGhhbiBuZW50cyAtIHNlZSBEb2N1bWVudGF0aW9uL0RNQS1BUEkudHh0IChhbmQgb3RoZXJ3aXNl
LAo+ID4gdGhlIHJldHVybiB2YWx1ZSB3b3VsZCBzdXJlbHkgYmUgYSBzaW1wbGUgc3VjY2Vzcy9m
YWlsIGNvbmRpdGlvbikuCj4gPiBSZWx5aW5nIG9uIGEgcGFydGljdWxhciBpbXBsZW1lbnRhdGlv
biBiZWhhdmlvdXIgaGFzIG5ldmVyIGJlZW4gc3RyaWN0bHkKPiA+IGNvcnJlY3QsIGV2ZW4gaWYg
aXQgZG9lcyBoYXBwZW4gdG8gYmUgYSB2ZXJ5IGNvbW1vbiBiZWhhdmlvdXIuCj4gPgo+ID4+IEEg
cXVpY2sgY2hlY2sgb2YgdmFyaW91cyBkbWFfbWFwX3NnKCkgY2FsbHMgaW4gdGhlIGtlcm5lbCBz
ZWVtcyB0bwo+ID4+IGluZGljYXRlIGNoZWNraW5nIGZvciAwIGZvciBlcnJvcnMgYW5kIHRoZW4g
aWdub3JpbmcgdGhlIG5vbi16ZXJvIHJldHVybgo+ID4+IGlzIGEgY29tbW9uIHBhdHRlcm4uIEFy
ZSB5b3Ugc3VyZSBpdCdzIG9rYXkgdG8gbWFrZSB0aGUgY2hhbmdlIHlvdSdyZQo+ID4+IHByb3Bv
c2luZz8KPiA+Cj4gPiBWYXJpb3VzIGNvZGUgdXNlcyB0cmlja3MgbGlrZSBqdXN0IGl0ZXJhdGlu
ZyB0aGUgbWFwcGVkIGxpc3QgdW50aWwgdGhlCj4gPiBmaXJzdCBzZWdtZW50IHdpdGggemVybyBz
Z19kbWFfbGVuKCkuIE90aGVycyBtYXkgd2VsbCBzaW1wbHkgaGF2ZSBidWdzLgo+Cj4gVGhhbmtz
IGZvciB0aGUgY2xhcmlmaWNhdGlvbi4KPgo+IEJSLAo+IEphbmkuCj4KPiA+Cj4gPiBSb2Jpbi4K
PiA+Cj4gPj4gQW55d2F5LCBkdWUgdG8gdGhlIHRpbWUgb2YgeWVhciBhbmQgYWxsLCBJJ2QgbGlr
ZSB0byBhc2sgeW91IHRvIGZpbGUgYQo+ID4+IGJ1ZyBhZ2FpbnN0IGk5MTUgYXQgWzFdIHNvIHRo
aXMgaXMgbm90IGZvcmdvdHRlbiwgYW5kIHBsZWFzZSBsZXQncyBub3QKPiA+PiBtZXJnZSB0aGUg
Y2hhbmdlcyBiZWZvcmUgdGhpcyBpcyByZXNvbHZlZC4KPiA+Pgo+ID4+Cj4gPj4gVGhhbmtzLAo+
ID4+IEphbmkuCj4gPj4KPiA+Pgo+ID4+IFsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy9uZXcKPiA+Pgo+ID4+Cj4KPiAtLQo+IEphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
