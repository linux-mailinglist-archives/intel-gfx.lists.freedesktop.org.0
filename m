Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268CE336FD1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 11:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7506EB8D;
	Thu, 11 Mar 2021 10:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C086F6EB8B;
 Thu, 11 Mar 2021 10:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 720F03FF0E;
 Thu, 11 Mar 2021 11:22:11 +0100 (CET)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=C35SujMp; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lu_sCSalNfHH; Thu, 11 Mar 2021 11:22:09 +0100 (CET)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id E8FB13FF12;
 Thu, 11 Mar 2021 11:22:06 +0100 (CET)
Received: from [192.168.0.209] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 8192E360133;
 Thu, 11 Mar 2021 11:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1615458126; bh=H6sbSk73dT1wEUsKWPL3sQUoxSXyvYsSnLPwJCXn0/E=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=C35SujMpLmkJlhyicXuduJsg7CneWcEDFq5VDujHYeztDt2fMo5Len21W/TLNCI8Y
 E0OzY5cHFQDXL7ifXcET2yhS3qkE3WTm+YtdEQ+QHb5YcRQookSzAF4nJfl/cXcOmh
 cxZamhW54d65SHjuvxm4YObK6me7wl/yp1YdOBhI=
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <f43311c8-a02a-1a29-a53b-88e599c92187@shipmail.org>
 <CAKMK7uE2UrOruQPWG9KPBQ781f9Bq9xpVRNserAC9BZ2VzDutQ@mail.gmail.com>
 <b30dacb0-edea-0a3c-6163-0f329e58ba61@gmail.com>
 <YDd/hlf8uM3+lxhr@phenom.ffwll.local>
 <CAKMK7uFezcV52oTZbHeve2HFFATeCGyK6zTT6nE1KVP69QRr0A@mail.gmail.com>
 <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
 <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
 <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
 <YDyuYk8x5QeX83s6@phenom.ffwll.local>
 <be8f2503-ffcb-eb58-83be-26fa0fc1837a@shipmail.org>
 <648556e6-2d99-950d-c940-706eb5a8f6cc@amd.com>
 <CAKMK7uHOe=LacUkvGC75dyWAt9TRm7ce8vgxasXOXn-6wJTVnA@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <9d608c61-c64c-dcde-c719-59a970144404@shipmail.org>
Date: Thu, 11 Mar 2021 11:22:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHOe=LacUkvGC75dyWAt9TRm7ce8vgxasXOXn-6wJTVnA@mail.gmail.com>
Content-Language: en-US
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
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDMvMS8yMSAzOjA5IFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9uIE1vbiwgTWFyIDEs
IDIwMjEgYXQgMTE6MTcgQU0gQ2hyaXN0aWFuIEvDtm5pZwo+IDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+IHdyb3RlOgo+Pgo+Pgo+PiBBbSAwMS4wMy4yMSB1bSAxMDoyMSBzY2hyaWViIFRob21h
cyBIZWxsc3Ryw7ZtIChJbnRlbCk6Cj4+PiBPbiAzLzEvMjEgMTA6MDUgQU0sIERhbmllbCBWZXR0
ZXIgd3JvdGU6Cj4+Pj4gT24gTW9uLCBNYXIgMDEsIDIwMjEgYXQgMDk6Mzk6NTNBTSArMDEwMCwg
VGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKQo+Pj4+IHdyb3RlOgo+Pj4+PiBIaSwKPj4+Pj4KPj4+
Pj4gT24gMy8xLzIxIDk6MjggQU0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+PiBPbiBTYXQs
IEZlYiAyNywgMjAyMSBhdCA5OjA2IEFNIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkKPj4+Pj4+
IDx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPj4+Pj4+PiBPbiAyLzI2LzIxIDI6Mjgg
UE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+Pj4+IFNvIEkgdGhpbmsgaXQgc3RvcHMgZ3Vw
LiBCdXQgSSBoYXZlbid0IHZlcmlmaWVkIGF0IGFsbC4gV291bGQgYmUKPj4+Pj4+Pj4gZ29vZAo+
Pj4+Pj4+PiBpZiBDaHJpc3RpYW4gY2FuIGNoZWNrIHRoaXMgd2l0aCBzb21lIGRpcmVjdCBpbyB0
byBhIGJ1ZmZlciBpbgo+Pj4+Pj4+PiBzeXN0ZW0KPj4+Pj4+Pj4gbWVtb3J5Lgo+Pj4+Pj4+IEht
bSwKPj4+Pj4+Pgo+Pj4+Pj4+IERvY3MgKGFnYWluIHZtX25vcm1hbF9wYWdlKCkgc2F5KQo+Pj4+
Pj4+Cj4+Pj4+Pj4gICAgICAqIFZNX01JWEVETUFQIG1hcHBpbmdzIGNhbiBsaWtld2lzZSBjb250
YWluIG1lbW9yeSB3aXRoIG9yCj4+Pj4+Pj4gd2l0aG91dCAic3RydWN0Cj4+Pj4+Pj4gICAgICAq
IHBhZ2UiIGJhY2tpbmcsIGhvd2V2ZXIgdGhlIGRpZmZlcmVuY2UgaXMgdGhhdCBfYWxsXyBwYWdl
cwo+Pj4+Pj4+IHdpdGggYSBzdHJ1Y3QKPj4+Pj4+PiAgICAgICogcGFnZSAodGhhdCBpcywgdGhv
c2Ugd2hlcmUgcGZuX3ZhbGlkIGlzIHRydWUpIGFyZSByZWZjb3VudGVkCj4+Pj4+Pj4gYW5kCj4+
Pj4+Pj4gY29uc2lkZXJlZAo+Pj4+Pj4+ICAgICAgKiBub3JtYWwgcGFnZXMgYnkgdGhlIFZNLiBU
aGUgZGlzYWR2YW50YWdlIGlzIHRoYXQgcGFnZXMgYXJlCj4+Pj4+Pj4gcmVmY291bnRlZAo+Pj4+
Pj4+ICAgICAgKiAod2hpY2ggY2FuIGJlIHNsb3dlciBhbmQgc2ltcGx5IG5vdCBhbiBvcHRpb24g
Zm9yIHNvbWUgUEZOTUFQCj4+Pj4+Pj4gdXNlcnMpLiBUaGUKPj4+Pj4+PiAgICAgICogYWR2YW50
YWdlIGlzIHRoYXQgd2UgZG9uJ3QgaGF2ZSB0byBmb2xsb3cgdGhlIHN0cmljdAo+Pj4+Pj4+IGxp
bmVhcml0eSBydWxlIG9mCj4+Pj4+Pj4gICAgICAqIFBGTk1BUCBtYXBwaW5ncyBpbiBvcmRlciB0
byBzdXBwb3J0IENPV2FibGUgbWFwcGluZ3MuCj4+Pj4+Pj4KPj4+Pj4+PiBidXQgaXQncyB0cnVl
IF9fdm1faW5zZXJ0X21peGVkKCkgZW5kcyB1cCBpbiB0aGUgaW5zZXJ0X3BmbigpCj4+Pj4+Pj4g
cGF0aCwgc28KPj4+Pj4+PiB0aGUgYWJvdmUgaXNuJ3QgcmVhbGx5IHRydWUsIHdoaWNoIG1ha2Vz
IG1lIHdvbmRlciBpZiBhbmQgaW4gdGhhdAo+Pj4+Pj4+IGNhc2UKPj4+Pj4+PiB3aHkgdGhlcmUg
Y291bGQgYW55IGxvbmdlciBldmVyIGJlIGEgc2lnbmlmaWNhbnQgcGVyZm9ybWFuY2UKPj4+Pj4+
PiBkaWZmZXJlbmNlCj4+Pj4+Pj4gYmV0d2VlbiBNSVhFRE1BUCBhbmQgUEZOTUFQLgo+Pj4+Pj4g
WWVhaCBpdCdzIGRlZmluaXRlbHkgY29uZnVzaW5nLiBJIGd1ZXNzIEknbGwgaGFjayB1cCBhIHBh
dGNoIGFuZCBzZWUKPj4+Pj4+IHdoYXQgc3RpY2tzLgo+Pj4+Pj4KPj4+Pj4+PiBCVFcgcmVnYXJk
aW5nIHRoZSBUVE0gaHVnZXB0ZXMsIEkgZG9uJ3QgdGhpbmsgd2UgZXZlciBsYW5kZWQgdGhhdAo+
Pj4+Pj4+IGRldm1hcAo+Pj4+Pj4+IGhhY2ssIHNvIHRoZXkgYXJlIChmb3IgdGhlIG5vbi1ndXAg
Y2FzZSkgcmVseWluZyBvbgo+Pj4+Pj4+IHZtYV9pc19zcGVjaWFsX2h1Z2UoKS4gRm9yIHRoZSBn
dXAgY2FzZSwgSSB0aGluayB0aGUgYnVnIGlzIHN0aWxsCj4+Pj4+Pj4gdGhlcmUuCj4+Pj4+PiBN
YXliZSB0aGVyZSdzIGFub3RoZXIgZGV2bWFwIGhhY2ssIGJ1dCB0aGUgdHRtX3ZtX2luc2VydCBm
dW5jdGlvbnMgZG8KPj4+Pj4+IHVzZSBQRk5fREVWIGFuZCBhbGwgdGhhdC4gQW5kIEkgdGhpbmsg
dGhhdCBzdG9wcyBndXBfZmFzdCBmcm9tIHRyeWluZwo+Pj4+Pj4gdG8gZmluZCB0aGUgdW5kZXJs
eWluZyBwYWdlLgo+Pj4+Pj4gLURhbmllbAo+Pj4+PiBIbW0gcGVyaGFwcyBpdCBtaWdodCwgYnV0
IEkgZG9uJ3QgdGhpbmsgc28uIFRoZSBmaXggSSB0cmllZCBvdXQgd2FzCj4+Pj4+IHRvIHNldAo+
Pj4+Pgo+Pj4+PiBQRk5fREVWIHwgUEZOX01BUCBmb3IgaHVnZSBQVEVzIHdoaWNoIGNhdXNlcyBw
Zm5fZGV2bWFwKCkgdG8gYmUKPj4+Pj4gdHJ1ZSwgYW5kCj4+Pj4+IHRoZW4KPj4+Pj4KPj4+Pj4g
Zm9sbG93X2Rldm1hcF9wbWQoKS0+Z2V0X2Rldl9wYWdlbWFwKCkgd2hpY2ggcmV0dXJucyBOVUxM
IGFuZAo+Pj4+PiBndXBfZmFzdCgpCj4+Pj4+IGJhY2tzIG9mZiwKPj4+Pj4KPj4+Pj4gaW4gdGhl
IGVuZCB0aGF0IHdvdWxkIG1lYW4gc2V0dGluZyBpbiBzdG9uZSB0aGF0ICJpZiB0aGVyZSBpcyBh
IGh1Z2UKPj4+Pj4gZGV2bWFwCj4+Pj4+IHBhZ2UgdGFibGUgZW50cnkgZm9yIHdoaWNoIHdlIGhh
dmVuJ3QgcmVnaXN0ZXJlZCBhbnkgZGV2bWFwIHN0cnVjdAo+Pj4+PiBwYWdlcwo+Pj4+PiAoZ2V0
X2Rldl9wYWdlbWFwIHJldHVybnMgTlVMTCksIHdlIHNob3VsZCB0cmVhdCB0aGF0IGFzIGEgInNw
ZWNpYWwiCj4+Pj4+IGh1Z2UKPj4+Pj4gcGFnZSB0YWJsZSBlbnRyeSIuCj4+Pj4+Cj4+Pj4+ICAg
RnJvbSB3aGF0IEkgY2FuIHRlbGwsIGFsbCBjb2RlIGNhbGxpbmcgZ2V0X2Rldl9wYWdlbWFwKCkg
YWxyZWFkeQo+Pj4+PiBkb2VzIHRoYXQsCj4+Pj4+IGl0J3MganVzdCBhIHF1ZXN0aW9uIG9mIGdl
dHRpbmcgaXQgYWNjZXB0ZWQgYW5kIGZvcm1hbGl6aW5nIGl0Lgo+Pj4+IE9oIEkgdGhvdWdodCB0
aGF0J3MgYWxyZWFkeSBob3cgaXQgd29ya3MsIHNpbmNlIEkgZGlkbid0IHNwb3QgYW55dGhpbmcK
Pj4+PiBlbHNlIHRoYXQgd291bGQgYmxvY2sgZ3VwX2Zhc3QgZnJvbSBmYWxsaW5nIG92ZXIuIEkg
Z3Vlc3MgcmVhbGx5IHdvdWxkCj4+Pj4gbmVlZCBzb21lIHRlc3RjYXNlcyB0byBtYWtlIHN1cmUg
ZGlyZWN0IGkvbyAodGhhdCdzIHRoZSBlYXNpZXN0IHRvIHRlc3QpCj4+Pj4gZmFpbHMgbGlrZSB3
ZSBleHBlY3QuCj4+PiBZZWFoLCBJSVJDIHRoZSAifCBQRk5fTUFQIiBpcyB0aGUgbWlzc2luZyBw
aWVjZSBmb3IgVFRNIGh1Z2UgcHRlcy4KPj4+IE90aGVyd2lzZSBwbWRfZGV2bWFwKCkgd2lsbCBu
b3QgcmV0dXJuIHRydWUgYW5kIHNpbmNlIHRoZXJlIGlzIG5vCj4+PiBwbWRfc3BlY2lhbCgpIHRo
aW5ncyBicmVhay4KPj4gSXMgdGhhdCBtYXliZSB0aGUgaXNzdWUgd2UgaGF2ZSBzZWVuIHdpdGgg
YW1kZ3B1IGFuZCBodWdlIHBhZ2VzPwo+IFllYWgsIGVzc2VudGlhbGx5IHdoZW4geW91IGhhdmUg
YSBodWdlcHRlIGluc2VydGVkIGJ5IHR0bSwgYW5kIGl0Cj4gaGFwcGVucyB0byBwb2ludCBhdCBz
eXN0ZW0gbWVtb3J5LCB0aGVuIGd1cCB3aWxsIHdvcmsgb24gdGhhdC4gQW5kCj4gY3JlYXRlIGFs
bCBraW5kcyBvZiBoYXZvYy4KPgo+PiBBcGFydCBmcm9tIHRoYXQgSSdtIGxvc3QgZ3V5cywgdGhh
dCBkZXZtYXAgYW5kIGd1cCBzdHVmZiBpcyBub3QKPj4gc29tZXRoaW5nIEkgaGF2ZSBhIGdvb2Qg
a25vd2xlZGdlIG9mIGFwYXJ0IGZyb20gYSBvbmUgbWlsZSBoaWdoIHZpZXcuCj4gSSdtIG5vdCBy
ZWFsbHkgYmV0dGVyLCBoZW5jZSB3b3VsZCBiZSBnb29kIHRvIGRvIGEgdGVzdGNhc2UgYW5kIHNl
ZS4KPiBUaGlzIHNob3VsZCBwcm92b2tlIGl0Ogo+IC0gYWxsb2NhdGUgbmljZWx5IGFsaWduZWQg
Ym8gaW4gc3lzdGVtIG1lbW9yeQo+IC0gbW1hcCwgYWdhaW4gbmljZWx5IGFsaWduZWQgdG8gMk0K
PiAtIGRvIHNvbWUgZGlyZWN0IGlvIGZyb20gYSBmaWxlc3lzdGVtIGludG8gdGhhdCBtbWFwLCB0
aGF0IHNob3VsZCB0cmlnZ2VyIGd1cAo+IC0gYmVmb3JlIHRoZSBndXAgY29tcGxldGVzIGZyZWUg
dGhlIG1tYXAgYW5kIGJvIHNvIHRoYXQgdHRtIHJlY3ljbGVzCj4gdGhlIHBhZ2VzLCB3aGljaCBz
aG91bGQgdHJpcCB1cCBvbiB0aGUgZWxldmF0ZWQgcmVmY291bnQuIElmIHlvdSB3YWl0Cj4gdW50
aWwgdGhlIGRpcmVjdCBpbyBpcyBjb21wbGV0ZWx5LCB0aGVuIEkgdGhpbmsgbm90aGluZyBiYWQg
Y2FuIGJlCj4gb2JzZXJ2ZWQuCj4KPiBPZmMgaWYgeW91ciBhbWRncHUraHVnZXB0ZSBpc3N1ZSBp
cyBzb21ldGhpbmcgZWxzZSwgdGhlbiBtYXliZSB3ZSBoYXZlCj4gYW5vdGhlciBpc3N1ZS4KPgo+
IEFsc28gdXN1YWwgY2F2ZWF0OiBJJ20gbm90IGFuIG1tIGhhY2tlciBlaXRoZXIsIHNvIG1pZ2h0
IGJlIGNvbXBsZXRlbHkgd3JvbmcuCj4gLURhbmllbAoKU28gSSBkaWQgdGhlIGZvbGxvd2luZyBx
dWljayBleHBlcmltZW50IG9uIHZtd2dmeCwgYW5kIGl0IHR1cm5zIG91dCB0aGF0IAp3aXRoIGl0
LApmYXN0IGd1cCBuZXZlciBzdWNjZWVkcy4gV2l0aG91dCB0aGUgInwgUEZOX01BUCIsIGl0IHR5
cGljYWxseSBzdWNjZWVkcwoKSSBzaG91bGQgcHJvYmFibHkgY3JhZnQgYW4gUkZDIGZvcm1hbGl6
aW5nIHRoaXMuCgovVGhvbWFzCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdm0uYyAKYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jCmluZGV4IDZkYzk2Y2Y2
Njc0NC4uNzJiNmZiMTdjOTg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
b192bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKQEAgLTE5NSw2ICsx
OTUsNyBAQCBzdGF0aWMgdm1fZmF1bHRfdCB0dG1fYm9fdm1faW5zZXJ0X2h1Z2Uoc3RydWN0IAp2
bV9mYXVsdCAqdm1mLAogwqDCoMKgwqDCoMKgwqAgcGZuX3QgcGZudDsKIMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCB0dG1fdHQgKnR0bSA9IGJvLT50dG07CiDCoMKgwqDCoMKgwqDCoCBib29sIHdyaXRl
ID0gdm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdfV1JJVEU7CivCoMKgwqDCoMKgwqAgc3RydWN0IGRl
dl9wYWdlbWFwICpwYWdlbWFwOwoKIMKgwqDCoMKgwqDCoMKgIC8qIEZhdWx0IHNob3VsZCBub3Qg
Y3Jvc3MgYm8gYm91bmRhcnkuICovCiDCoMKgwqDCoMKgwqDCoCBwYWdlX29mZnNldCAmPSB+KGZh
dWx0X3BhZ2Vfc2l6ZSAtIDEpOwpAQCAtMjEwLDYgKzIxMSwxNyBAQCBzdGF0aWMgdm1fZmF1bHRf
dCB0dG1fYm9fdm1faW5zZXJ0X2h1Z2Uoc3RydWN0IAp2bV9mYXVsdCAqdm1mLAogwqDCoMKgwqDC
oMKgwqAgaWYgKChwZm4gJiAoZmF1bHRfcGFnZV9zaXplIC0gMSkpICE9IDApCiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfZmFsbGJhY2s7CgorwqDCoMKgwqDCoMKgIC8q
CivCoMKgwqDCoMKgwqDCoCAqIEh1Z2UgZW50cmllcyBtdXN0IGJlIHNwZWNpYWwsIHRoYXQgaXMg
bWFya2luZyB0aGVtIGFzIGRldm1hcAorwqDCoMKgwqDCoMKgwqAgKiB3aXRoIG5vIGJhY2tpbmcg
ZGV2aWNlIG1hcCByYW5nZS4gSWYgdGhlcmUgaXMgYSBiYWNraW5nCivCoMKgwqDCoMKgwqDCoCAq
IHJhbmdlLCBEb24ndCBpbnNlcnQgYSBodWdlIGVudHJ5LgorwqDCoMKgwqDCoMKgwqAgKi8KK8Kg
wqDCoMKgwqDCoCBwYWdlbWFwID0gZ2V0X2Rldl9wYWdlbWFwKHBmbiwgTlVMTCk7CivCoMKgwqDC
oMKgwqAgaWYgKHBhZ2VtYXApIHsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHV0X2Rl
dl9wYWdlbWFwKHBhZ2VtYXApOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91
dF9mYWxsYmFjazsKK8KgwqDCoMKgwqDCoCB9CisKIMKgwqDCoMKgwqDCoMKgIC8qIENoZWNrIHRo
YXQgbWVtb3J5IGlzIGNvbnRpZ3VvdXMuICovCiDCoMKgwqDCoMKgwqDCoCBpZiAoIWJvLT5tZW0u
YnVzLmlzX2lvbWVtKSB7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZm9yIChpID0g
MTsgaSA8IGZhdWx0X3BhZ2Vfc2l6ZTsgKytpKSB7CkBAIC0yMjMsNyArMjM1LDcgQEAgc3RhdGlj
IHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2luc2VydF9odWdlKHN0cnVjdCAKdm1fZmF1bHQgKnZtZiwK
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9CiDCoMKgwqDCoMKgwqDCoCB9CgotwqDC
oMKgwqDCoMKgIHBmbnQgPSBfX3Bmbl90b19wZm5fdChwZm4sIFBGTl9ERVYpOworwqDCoMKgwqDC
oMKgIHBmbnQgPSBfX3Bmbl90b19wZm5fdChwZm4sIFBGTl9ERVYgfCBQRk5fTUFQKTsKIMKgwqDC
oMKgwqDCoMKgIGlmIChmYXVsdF9wYWdlX3NpemUgPT0gKEhQQUdFX1BNRF9TSVpFID4+IFBBR0Vf
U0hJRlQpKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IHZtZl9pbnNlcnRf
cGZuX3BtZF9wcm90KHZtZiwgcGZudCwgcGdwcm90LCB3cml0ZSk7CiDCoCNpZmRlZiBDT05GSUdf
SEFWRV9BUkNIX1RSQU5TUEFSRU5UX0hVR0VQQUdFX1BVRApAQCAtMjM2LDYgKzI0OCwyMSBAQCBz
dGF0aWMgdm1fZmF1bHRfdCB0dG1fYm9fdm1faW5zZXJ0X2h1Z2Uoc3RydWN0IAp2bV9mYXVsdCAq
dm1mLAogwqDCoMKgwqDCoMKgwqAgaWYgKHJldCAhPSBWTV9GQVVMVF9OT1BBR0UpCiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfZmFsbGJhY2s7CgorI2lmIDEKK8KgwqDC
oMKgwqDCoCB7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBucGFnZXM7CivCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBwYWdlICpwYWdlOworCivCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG5wYWdlcyA9IGdldF91c2VyX3BhZ2VzX2Zhc3Rfb25seSh2bWYt
PmFkZHJlc3MsIDEsIDAsIAomcGFnZSk7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChucGFnZXMgPT0gMSkgeworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgRFJNX1dBUk4oIkZhc3QgZ3VwIHN1Y2NlZWRlZC4gQmFkLlxuIik7CivCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwdXRfcGFnZShwYWdlKTsKK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfSBlbHNlIHsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIERSTV9JTkZPKCJGYXN0IGd1cCBmYWlsZWQuIEdvb2QuXG4i
KTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQorwqDCoMKgwqDCoMKgIH0KKyNlbmRp
ZgorCiDCoMKgwqDCoMKgwqDCoCByZXR1cm4gVk1fRkFVTFRfTk9QQUdFOwogwqBvdXRfZmFsbGJh
Y2s6CiDCoMKgwqDCoMKgwqDCoCBjb3VudF92bV9ldmVudChUSFBfRkFVTFRfRkFMTEJBQ0spOwoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
