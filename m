Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997303A3087
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 18:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D266E4D4;
	Thu, 10 Jun 2021 16:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D346ED8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 16:24:45 +0000 (UTC)
Received: by mail-yb1-xb31.google.com with SMTP id c14so156109ybk.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 09:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/8AI0bIcBWdSxJkjkmsbdj7wID/6D3e7kEpH+IMVbtI=;
 b=io4G8QyQL/Bfbo0rnddOTNFMHf03xuyhlooSBU4tnxAwuijX37pYxoymqTm8lVtvJG
 ih3XtNNzytiO4EDR4ECD8YPtmj5Jd1/pV8/JLkpA1k1DR2u/cTcu05WhNPicm47oRCiT
 Oo4Bk/9KgcEAutWa/OKbVIOwsa2K6lGZAnBDcfkyx17G012WkJuga6XdAkP6An7+l7UA
 72gxogEizC4RnzYhEbrE2d2YLOzMW6L9BhkYaiyjNHE9orfG24RXJQLdmEpeAHA8+rPE
 kZgNC6U/LOfPZg4S8ouxHW1HczT/2OTMAUE1l1+WrbKIXl7g8TXfPmKkn8QBYYW60vkL
 3f5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/8AI0bIcBWdSxJkjkmsbdj7wID/6D3e7kEpH+IMVbtI=;
 b=C6knlIoQDjnGPFMJCA9kr2UpAgN5plHwPAfwkQRIVnOnZtNqw10Qp0dlKdjoRV3JqC
 CPkT1pwPn6qeA0sACbm8CCvMAEhnZrzfjEc7ASVlDFY8n1jo+F9RT3xA2yf8/BDjQdy3
 X8ly3dIa8Inp6G/NhPrHVjPskDpYpTobAcLV04EuJvkqtUfvZ9rTr8QP7pAPQZkpyW1H
 KMcCACQ5ep0LXWJ0YKz7bi9gArw3ZNkgVQOxx717XJicGl530oFNH7Y8G7Q8SBI432cx
 eaENzqVmRd4zGpwfsbARFiuRLgn9znpQgPxG0GtCwbeVvUiXr2eb0ObpINGmH/eS2rED
 Z2sQ==
X-Gm-Message-State: AOAM530CDTUYZjnV3D4VWL6UDTlu9O8RADPWEsUemYdhG24GFtIdR55a
 /IusVNorrYwvR/zq0jc3cB6KTKSO/siMAfhdCJXD+Q==
X-Google-Smtp-Source: ABdhPJyOs1+8y19NL3RSIvgD3O+3k846OdZobCzAoyrR0/LypkIL6oA8zKhBzPeiL0ae7L2CZqX96e+q+MkFYc52cvU=
X-Received: by 2002:a5b:392:: with SMTP id k18mr8984766ybp.180.1623342284416; 
 Thu, 10 Jun 2021 09:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210609212959.471209-1-jason@jlekstrand.net>
 <20210609212959.471209-6-jason@jlekstrand.net>
 <ea36431d-521a-c1c0-59e5-a196f55c28dd@amd.com>
 <CAOFGe97+JK9-HLsVrXdvm45Qk721utwpHyy8xpqR7uRCpZm5ig@mail.gmail.com>
 <CAKMK7uGsQ3BWomCQtvrSygb-nc19LpAz2RFjsBzw-E_17tq8BA@mail.gmail.com>
In-Reply-To: <CAKMK7uGsQ3BWomCQtvrSygb-nc19LpAz2RFjsBzw-E_17tq8BA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 10 Jun 2021 11:24:33 -0500
Message-ID: <CAOFGe947JR3tBLb-4istEX2XNU7pp4+sjgpGYGSXLWEuCcR27g@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 5/5] DONOTMERGE: dma-buf: Get rid of
 dma_fence_get_rcu_safe
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTAsIDIwMjEgYXQgMTA6MTMgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBPbiBUaHUsIEp1biAxMCwgMjAyMSBhdCAzOjU5IFBN
IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4gd3JvdGU6Cj4gPgo+ID4gT24g
VGh1LCBKdW4gMTAsIDIwMjEgYXQgMTo1MSBBTSBDaHJpc3RpYW4gS8O2bmlnCj4gPiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gQW0gMDkuMDYuMjEgdW0gMjM6
Mjkgc2NocmllYiBKYXNvbiBFa3N0cmFuZDoKPiA+ID4gPiBUaGlzIGhlbHBlciBleGlzdGVkIHRv
IGhhbmRsZSB0aGUgd2VpcmQgY29ybmVyLWNhc2VzIGNhdXNlZCBieSB1c2luZwo+ID4gPiA+IFNM
QUJfVFlQRVNBRkVfQllfUkNVIGZvciBiYWNraW5nIGRtYV9mZW5jZS4gIE5vdyB0aGF0IG5vIG9u
ZSBpcyB1c2luZwo+ID4gPiA+IHRoYXQgYW55bW9yZSAoaTkxNSB3YXMgdGhlIG9ubHkgcmVhbCB1
c2VyKSwgZG1hX2ZlbmNlX2dldF9yY3UgaXMKPiA+ID4gPiBzdWZmaWNpZW50LiAgVGhlIG9uZSBz
bGlnaHRseSBhbm5veWluZyB0aGluZyB3ZSBoYXZlIHRvIGRlYWwgd2l0aCBoZXJlCj4gPiA+ID4g
aXMgdGhhdCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIGRpZCBhbiByY3VfZGVyZWZlcmVuY2UgYXMg
d2VsbCBhcyBhCj4gPiA+ID4gU0xBQl9UWVBFU0FGRV9CWV9SQ1Utc2FmZSBkbWFfZmVuY2VfZ2V0
X3JjdS4gIFRoaXMgbWVhbnMgZWFjaCBjYWxsIHNpdGUKPiA+ID4gPiBlbmRzIHVwIGJlaW5nIDMg
bGluZXMgaW5zdGVhZCBvZiAxLgo+ID4gPgo+ID4gPiBUaGF0J3MgYW4gb3V0cmlnaHQgTkFLLgo+
ID4gPgo+ID4gPiBUaGUgbG9vcCBpbiBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIGlzIG5lY2Vzc2Fy
eSBiZWNhdXNlIHRoZSB1bmRlcmx5aW5nCj4gPiA+IGZlbmNlIG9iamVjdCBjYW4gYmUgcmVwbGFj
ZWQgd2hpbGUgdGFraW5nIHRoZSByZWZlcmVuY2UuCj4gPgo+ID4gUmlnaHQuICBJIGhhZCBtaXNz
ZWQgYSBiaXQgb2YgdGhhdCB3aGVuIEkgZmlyc3QgcmVhZCB0aHJvdWdoIGl0LiAgSQo+ID4gc2Vl
IHRoZSBuZWVkIGZvciB0aGUgbG9vcCBub3cuICBCdXQgdGhlcmUgYXJlIHNvbWUgb3RoZXIgdHJp
Y2t5IGJpdHMKPiA+IGluIHRoZXJlIGJlc2lkZXMganVzdCB0aGUgbG9vcC4KPgo+IEkgdGhvdWdo
dCB0aGF0J3Mgd2hhdCB0aGUga3JlZl9nZXRfdW5sZXNzX3plcm8gd2FzIGZvciBpbgo+IGRtYV9m
ZW5jZV9nZXRfcmN1PyBPdGhlcndpc2UgSSBndWVzcyBJJ20gbm90IHNlZWluZyB3aHkgc3RpbGwg
aGF2ZQo+IGRtYV9mZW5jZV9nZXRfcmN1IGFyb3VuZCwgc2luY2UgdGhhdCBzaG91bGQgZWl0aGVy
IGJlIGEga3JlZl9nZXQgb3IKPiBpdCdzIGp1c3QgdW5zYWZlIHRvIGNhbGwgaXQgLi4uCgpBRkFJ
Q1QsIGRtYV9mZW5jZV9nZXRfcmN1IGlzIHVuc2FmZSB1bmxlc3MgeW91IHNvbWVob3cga25vdyB0
aGF0IGl0J3MKeW91ciBmZW5jZSBhbmQgaXQncyBuZXZlciByZWN5Y2xlZC4KCldoZXJlIHRoZSBs
b29wIGNvbWVzIGluIGlzIGlmIHlvdSBoYXZlIHNvbWVvbmUgY29tZSBhbG9uZywgdW5kZXIgdGhl
ClJDVSB3cml0ZSBsb2NrIG9yIG5vdCwgYW5kIHN3YXAgb3V0IHRoZSBwb2ludGVyIGFuZCB1bnJl
ZiBpdCB3aGlsZQp5b3UncmUgdHJ5aW5nIHRvIGZldGNoIGl0LiAgSW4gdGhpcyBjYXNlLCBpZiB5
b3UganVzdCB3cml0ZSB0aGUgdGhyZWUKbGluZXMgSSBkdXBsaWNhdGVkIHRocm91Z2hvdXQgdGhp
cyBwYXRjaCwgeW91J2xsIGVuZCB1cCB3aXRoIE5VTEwgaWYKeW91IChwYXJ0aWFsbHkpIGxvc2Ug
dGhlIHJhY2UuICBUaGUgbG9vcCBleGlzdHMgdG8gZW5zdXJlIHRoYXQgeW91IGdldAplaXRoZXIg
dGhlIG9sZCBwb2ludGVyIG9yIHRoZSBuZXcgcG9pbnRlciBhbmQgeW91IG9ubHkgZXZlciBnZXQg
TlVMTAppZiBzb21ld2hlcmUgZHVyaW5nIHRoZSBtZXNzLCB0aGUgcG9pbnRlciBhY3R1YWxseSBn
ZXRzIHNldCB0byBOVUxMLgoKSSBhZ3JlZSB3aXRoIENocmlzdGlhbiB0aGF0IHRoYXQgcGFydCBv
ZiBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlIG5lZWRzCnRvIHN0YXkuICBJIHdhcyBtaXNzaW5nIHRo
YXQgdW50aWwgSSBkaWQgbXkgZ2lhbnQgImxldCdzIHdhbGsgdGhyb3VnaAp0aGUgY29kZSIgZS1t
YWlsLgoKLS1KYXNvbgoKPiA+ID4gVGhpcyBpcyBjb21wbGV0ZWx5IHVucmVsYXRlZCB0byBTTEFC
X1RZUEVTQUZFX0JZX1JDVS4gU2VlIHRoZQo+ID4gPiBkbWFfZmVuY2VfY2hhaW4gdXNhZ2UgZm9y
IHJlZmVyZW5jZS4KPiA+ID4KPiA+ID4gV2hhdCB5b3UgY2FuIHJlbW92ZSBpcyB0aGUgc2VxdWVu
Y2UgbnVtYmVyIGhhbmRsaW5nIGluIGRtYS1idWYuIFRoYXQKPiA+ID4gc2hvdWxkIG1ha2UgYWRk
aW5nIGZlbmNlcyBxdWl0ZSBhIGJpdCBxdWlja2VyLgo+ID4KPiA+IEknbGwgbG9vayBhdCB0aGF0
IGFuZCB0cnkgdG8gdW5kZXJzdGFuZCB3aGF0J3MgZ29pbmcgb24gdGhlcmUuCj4KPiBIbSBJIHRo
b3VnaHQgdGhlIHNlcWxvY2sgd2FzIHRvIG1ha2Ugc3VyZSB3ZSBoYXZlIGEgY29uc2lzdGVudCBz
ZXQgb2YKPiBmZW5jZXMgYWNyb3NzIGV4Y2x1c2l2ZSBhbmQgYWxsIHNoYXJlZCBzbG90LiBOb3Qg
dG8gcHJvdGVjdCBhZ2FpbnN0Cj4gdGhlIGZlbmNlIGRpc2FwcGVhcmluZyBkdWUgdG8gdHlwZXNh
ZmVfYnlfcmN1Lgo+IC1EYW5pZWwKPgo+ID4gLS1KYXNvbgo+ID4KPiA+ID4gUmVnYXJkcywKPiA+
ID4gQ2hyaXN0aWFuLgo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSmFzb24g
RWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+ID4gPiA+IENjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+ID4gPiA+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiA+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KPiA+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyAgICAgICAgIHwgIDggKystLQo+ID4gPiA+ICAgZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAgICAgICAgICAgfCAgNCArLQo+ID4gPiA+ICAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMgfCAgNCArLQo+ID4gPiA+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCAgICAgICAgfCAgNCArLQo+ID4g
PiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyAgICAgICAgICAgfCAgNCArLQo+
ID4gPiA+ICAgaW5jbHVkZS9kcm0vZHJtX3N5bmNvYmouaCAgICAgICAgICAgICAgICAgfCAgNCAr
LQo+ID4gPiA+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgICAgICAgICAgICAgICAgfCA1
MCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gPiA+ICAgaW5jbHVkZS9saW51eC9kbWEtcmVz
di5oICAgICAgICAgICAgICAgICAgfCAgNCArLQo+ID4gPiA+ICAgOCBmaWxlcyBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspLCA1OSBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLWNoYWluLmMKPiA+ID4gPiBpbmRleCA3ZDEyOWU2OGFjNzAxLi40NmRmYzdkOTRk
OGVkIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4u
Ywo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYwo+ID4gPiA+
IEBAIC0xNSwxNSArMTUsMTcgQEAgc3RhdGljIGJvb2wgZG1hX2ZlbmNlX2NoYWluX2VuYWJsZV9z
aWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpOwo+ID4gPiA+ICAgICogZG1hX2ZlbmNl
X2NoYWluX2dldF9wcmV2IC0gdXNlIFJDVSB0byBnZXQgYSByZWZlcmVuY2UgdG8gdGhlIHByZXZp
b3VzIGZlbmNlCj4gPiA+ID4gICAgKiBAY2hhaW46IGNoYWluIG5vZGUgdG8gZ2V0IHRoZSBwcmV2
aW91cyBub2RlIGZyb20KPiA+ID4gPiAgICAqCj4gPiA+ID4gLSAqIFVzZSBkbWFfZmVuY2VfZ2V0
X3JjdV9zYWZlIHRvIGdldCBhIHJlZmVyZW5jZSB0byB0aGUgcHJldmlvdXMgZmVuY2Ugb2YgdGhl
Cj4gPiA+ID4gLSAqIGNoYWluIG5vZGUuCj4gPiA+ID4gKyAqIFVzZSByY3VfZGVyZWZlcmVuY2Ug
YW5kIGRtYV9mZW5jZV9nZXRfcmN1IHRvIGdldCBhIHJlZmVyZW5jZSB0byB0aGUKPiA+ID4gPiAr
ICogcHJldmlvdXMgZmVuY2Ugb2YgdGhlIGNoYWluIG5vZGUuCj4gPiA+ID4gICAgKi8KPiA+ID4g
PiAgIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfY2hhaW5fZ2V0X3ByZXYoc3Ry
dWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4pCj4gPiA+ID4gICB7Cj4gPiA+ID4gICAgICAgc3Ry
dWN0IGRtYV9mZW5jZSAqcHJldjsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIHJjdV9yZWFkX2xvY2so
KTsKPiA+ID4gPiAtICAgICBwcmV2ID0gZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZSgmY2hhaW4tPnBy
ZXYpOwo+ID4gPiA+ICsgICAgIHByZXYgPSByY3VfZGVyZWZlcmVuY2UoY2hhaW4tPnByZXYpOwo+
ID4gPiA+ICsgICAgIGlmIChwcmV2KQo+ID4gPiA+ICsgICAgICAgICAgICAgcHJldiA9IGRtYV9m
ZW5jZV9nZXRfcmN1KHByZXYpOwo+ID4gPiA+ICAgICAgIHJjdV9yZWFkX3VubG9jaygpOwo+ID4g
PiA+ICAgICAgIHJldHVybiBwcmV2Owo+ID4gPiA+ICAgfQo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4g
PiA+ID4gaW5kZXggZjI2YzcxNzQ3ZDQzYS4uY2ZlMGRiM2NjYTI5MiAxMDA2NDQKPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jCj4gPiA+ID4gQEAgLTM3Niw3ICszNzYsOSBAQCBpbnQgZG1hX3Jlc3Zf
Y29weV9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpkc3QsIHN0cnVjdCBkbWFfcmVzdiAqc3JjKQo+
ID4gPiA+ICAgICAgICAgICAgICAgZHN0X2xpc3QgPSBOVUxMOwo+ID4gPiA+ICAgICAgIH0KPiA+
ID4gPgo+ID4gPiA+IC0gICAgIG5ldyA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoJnNyYy0+ZmVu
Y2VfZXhjbCk7Cj4gPiA+ID4gKyAgICAgbmV3ID0gcmN1X2RlcmVmZXJlbmNlKHNyYy0+ZmVuY2Vf
ZXhjbCk7Cj4gPiA+ID4gKyAgICAgaWYgKG5ldykKPiA+ID4gPiArICAgICAgICAgICAgIG5ldyA9
IGRtYV9mZW5jZV9nZXRfcmN1KG5ldyk7Cj4gPiA+ID4gICAgICAgcmN1X3JlYWRfdW5sb2NrKCk7
Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KGRz
dCk7Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMKPiA+
ID4gPiBpbmRleCA3MmQ5YjkyYjE3NTQ3Li4wYWViNjExN2YzODkzIDEwMDY0NAo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMKPiA+ID4gPiBAQCAt
MTYxLDcgKzE2MSw5IEBAIGludCBhbWRncHVfZmVuY2VfZW1pdChzdHJ1Y3QgYW1kZ3B1X3Jpbmcg
KnJpbmcsIHN0cnVjdCBkbWFfZmVuY2UgKipmLAo+ID4gPiA+ICAgICAgICAgICAgICAgc3RydWN0
IGRtYV9mZW5jZSAqb2xkOwo+ID4gPiA+Cj4gPiA+ID4gICAgICAgICAgICAgICByY3VfcmVhZF9s
b2NrKCk7Cj4gPiA+ID4gLSAgICAgICAgICAgICBvbGQgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZl
KHB0cik7Cj4gPiA+ID4gKyAgICAgICAgICAgICBvbGQgPSByY3VfZGVyZWZlcmVuY2UoKnB0cik7
Cj4gPiA+ID4gKyAgICAgICAgICAgICBpZiAob2xkKQo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBvbGQgPSBkbWFfZmVuY2VfZ2V0X3JjdShvbGQpOwo+ID4gPiA+ICAgICAgICAgICAgICAg
cmN1X3JlYWRfdW5sb2NrKCk7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICAgICAgICAgIGlmIChvbGQp
IHsKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKPiA+ID4gPiBpbmRleCBkMGZl
ZGE2OGI4NzRmLi5iZDg5Y2ZjODA2Y2E1IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZS5oCj4gPiA+ID4gQEAgLTEwMyw3ICsxMDMsOSBAQCBpOTE1X2FjdGl2ZV9m
ZW5jZV9nZXQoc3RydWN0IGk5MTVfYWN0aXZlX2ZlbmNlICphY3RpdmUpCj4gPiA+ID4gICAgICAg
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICByY3VfcmVhZF9s
b2NrKCk7Cj4gPiA+ID4gLSAgICAgZmVuY2UgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCZhY3Rp
dmUtPmZlbmNlKTsKPiA+ID4gPiArICAgICBmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZShhY3RpdmUt
PmZlbmNlKTsKPiA+ID4gPiArICAgICBpZiAoZmVuY2UpCj4gPiA+ID4gKyAgICAgICAgICAgICBm
ZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKTsKPiA+ID4gPiAgICAgICByY3VfcmVhZF91
bmxvY2soKTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIHJldHVybiBmZW5jZTsKPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmMKPiA+ID4gPiBpbmRleCAwZjIyN2YyOGIyODAyLi5lZDAzODhkOTkx
OTdlIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMK
PiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4gPiA+ID4gQEAg
LTM1MSw3ICszNTEsOSBAQCBpbnQgaTkxNV92bWFfd2FpdF9mb3JfYmluZChzdHJ1Y3QgaTkxNV92
bWEgKnZtYSkKPiA+ID4gPiAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+
ID4gPiA+Cj4gPiA+ID4gICAgICAgICAgICAgICByY3VfcmVhZF9sb2NrKCk7Cj4gPiA+ID4gLSAg
ICAgICAgICAgICBmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoJnZtYS0+YWN0aXZlLmV4
Y2wuZmVuY2UpOwo+ID4gPiA+ICsgICAgICAgICAgICAgZmVuY2UgPSByY3VfZGVyZWZlcmVuY2Uo
dm1hLT5hY3RpdmUuZXhjbC5mZW5jZSk7Cj4gPiA+ID4gKyAgICAgICAgICAgICBpZiAoZmVuY2Up
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3Uo
ZmVuY2UpOwo+ID4gPiA+ICAgICAgICAgICAgICAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gPiA+ID4g
ICAgICAgICAgICAgICBpZiAoZmVuY2UpIHsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ZXJyID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3N5bmNvYmouaCBiL2luY2x1ZGUvZHJtL2Ry
bV9zeW5jb2JqLmgKPiA+ID4gPiBpbmRleCA2Y2Y3MjQzYTFkYzVlLi42YzQ1ZDUyOTg4YmNjIDEw
MDY0NAo+ID4gPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9zeW5jb2JqLmgKPiA+ID4gPiArKysg
Yi9pbmNsdWRlL2RybS9kcm1fc3luY29iai5oCj4gPiA+ID4gQEAgLTEwNSw3ICsxMDUsOSBAQCBk
cm1fc3luY29ial9mZW5jZV9nZXQoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqKQo+ID4gPiA+
ICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+ID4gPiA+Cj4gPiA+ID4gICAgICAgcmN1
X3JlYWRfbG9jaygpOwo+ID4gPiA+IC0gICAgIGZlbmNlID0gZG1hX2ZlbmNlX2dldF9yY3Vfc2Fm
ZSgmc3luY29iai0+ZmVuY2UpOwo+ID4gPiA+ICsgICAgIGZlbmNlID0gcmN1X2RlcmVmZXJlbmNl
KHN5bmNvYmotPmZlbmNlKTsKPiA+ID4gPiArICAgICBpZiAoZmVuY2UpCj4gPiA+ID4gKyAgICAg
ICAgICAgICBmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KHN5bmNvYmotPmZlbmNlKTsKPiA+ID4g
PiAgICAgICByY3VfcmVhZF91bmxvY2soKTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIHJldHVybiBm
ZW5jZTsKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPiA+ID4gPiBpbmRleCA2ZmZiNGIyYzYzNzE1Li5mNGEy
YWIyYjFhZTQ2IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgK
PiA+ID4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gPiA+ID4gQEAgLTMwNyw1
NiArMzA3LDYgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0
X3JjdShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKPiA+ID4gPiAgICAgICAgICAgICAgIHJldHVy
biBOVUxMOwo+ID4gPiA+ICAgfQo+ID4gPiA+Cj4gPiA+ID4gLS8qKgo+ID4gPiA+IC0gKiBkbWFf
ZmVuY2VfZ2V0X3JjdV9zYWZlICAtIGFjcXVpcmUgYSByZWZlcmVuY2UgdG8gYW4gUkNVIHRyYWNr
ZWQgZmVuY2UKPiA+ID4gPiAtICogQGZlbmNlcDogcG9pbnRlciB0byBmZW5jZSB0byBpbmNyZWFz
ZSByZWZjb3VudCBvZgo+ID4gPiA+IC0gKgo+ID4gPiA+IC0gKiBGdW5jdGlvbiByZXR1cm5zIE5V
TEwgaWYgbm8gcmVmY291bnQgY291bGQgYmUgb2J0YWluZWQsIG9yIHRoZSBmZW5jZS4KPiA+ID4g
PiAtICogVGhpcyBmdW5jdGlvbiBoYW5kbGVzIGFjcXVpcmluZyBhIHJlZmVyZW5jZSB0byBhIGZl
bmNlIHRoYXQgbWF5IGJlCj4gPiA+ID4gLSAqIHJlYWxsb2NhdGVkIHdpdGhpbiB0aGUgUkNVIGdy
YWNlIHBlcmlvZCAoc3VjaCBhcyB3aXRoIFNMQUJfVFlQRVNBRkVfQllfUkNVKSwKPiA+ID4gPiAt
ICogc28gbG9uZyBhcyB0aGUgY2FsbGVyIGlzIHVzaW5nIFJDVSBvbiB0aGUgcG9pbnRlciB0byB0
aGUgZmVuY2UuCj4gPiA+ID4gLSAqCj4gPiA+ID4gLSAqIEFuIGFsdGVybmF0aXZlIG1lY2hhbmlz
bSBpcyB0byBlbXBsb3kgYSBzZXFsb2NrIHRvIHByb3RlY3QgYSBidW5jaCBvZgo+ID4gPiA+IC0g
KiBmZW5jZXMsIHN1Y2ggYXMgdXNlZCBieSBzdHJ1Y3QgZG1hX3Jlc3YuIFdoZW4gdXNpbmcgYSBz
ZXFsb2NrLAo+ID4gPiA+IC0gKiB0aGUgc2VxbG9jayBtdXN0IGJlIHRha2VuIGJlZm9yZSBhbmQg
Y2hlY2tlZCBhZnRlciBhIHJlZmVyZW5jZSB0byB0aGUKPiA+ID4gPiAtICogZmVuY2UgaXMgYWNx
dWlyZWQgKGFzIHNob3duIGhlcmUpLgo+ID4gPiA+IC0gKgo+ID4gPiA+IC0gKiBUaGUgY2FsbGVy
IGlzIHJlcXVpcmVkIHRvIGhvbGQgdGhlIFJDVSByZWFkIGxvY2suCj4gPiA+ID4gLSAqLwo+ID4g
PiA+IC1zdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfZmVuY2UgKgo+ID4gPiA+IC1kbWFfZmVuY2Vf
Z2V0X3JjdV9zYWZlKHN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKipmZW5jZXApCj4gPiA+ID4gLXsK
PiA+ID4gPiAtICAgICBkbyB7Cj4gPiA+ID4gLSAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKPiA+ID4gPiAtCj4gPiA+ID4gLSAgICAgICAgICAgICBmZW5jZSA9IHJjdV9kZXJl
ZmVyZW5jZSgqZmVuY2VwKTsKPiA+ID4gPiAtICAgICAgICAgICAgIGlmICghZmVuY2UpCj4gPiA+
ID4gLSAgICAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gPiA+IC0KPiA+ID4gPiAt
ICAgICAgICAgICAgIGlmICghZG1hX2ZlbmNlX2dldF9yY3UoZmVuY2UpKQo+ID4gPiA+IC0gICAg
ICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ID4gPiAtCj4gPiA+ID4gLSAgICAgICAgICAg
ICAvKiBUaGUgYXRvbWljX2luY19ub3RfemVybygpIGluc2lkZSBkbWFfZmVuY2VfZ2V0X3JjdSgp
Cj4gPiA+ID4gLSAgICAgICAgICAgICAgKiBwcm92aWRlcyBhIGZ1bGwgbWVtb3J5IGJhcnJpZXIg
dXBvbiBzdWNjZXNzIChzdWNoIGFzIG5vdykuCj4gPiA+ID4gLSAgICAgICAgICAgICAgKiBUaGlz
IGlzIHBhaXJlZCB3aXRoIHRoZSB3cml0ZSBiYXJyaWVyIGZyb20gYXNzaWduaW5nCj4gPiA+ID4g
LSAgICAgICAgICAgICAgKiB0byB0aGUgX19yY3UgcHJvdGVjdGVkIGZlbmNlIHBvaW50ZXIgc28g
dGhhdCBpZiB0aGF0Cj4gPiA+ID4gLSAgICAgICAgICAgICAgKiBwb2ludGVyIHN0aWxsIG1hdGNo
ZXMgdGhlIGN1cnJlbnQgZmVuY2UsIHdlIGtub3cgd2UKPiA+ID4gPiAtICAgICAgICAgICAgICAq
IGhhdmUgc3VjY2Vzc2Z1bGx5IGFjcXVpcmUgYSByZWZlcmVuY2UgdG8gaXQuIElmIGl0IG5vCj4g
PiA+ID4gLSAgICAgICAgICAgICAgKiBsb25nZXIgbWF0Y2hlcywgd2UgYXJlIGhvbGRpbmcgYSBy
ZWZlcmVuY2UgdG8gc29tZSBvdGhlcgo+ID4gPiA+IC0gICAgICAgICAgICAgICogcmVhbGxvY2F0
ZWQgcG9pbnRlci4gVGhpcyBpcyBwb3NzaWJsZSBpZiB0aGUgYWxsb2NhdG9yCj4gPiA+ID4gLSAg
ICAgICAgICAgICAgKiBpcyB1c2luZyBhIGZyZWVsaXN0IGxpa2UgU0xBQl9UWVBFU0FGRV9CWV9S
Q1Ugd2hlcmUgdGhlCj4gPiA+ID4gLSAgICAgICAgICAgICAgKiBmZW5jZSByZW1haW5zIHZhbGlk
IGZvciB0aGUgUkNVIGdyYWNlIHBlcmlvZCwgYnV0IGl0Cj4gPiA+ID4gLSAgICAgICAgICAgICAg
KiBtYXkgYmUgcmVhbGxvY2F0ZWQuIFdoZW4gdXNpbmcgc3VjaCBhbGxvY2F0b3JzLCB3ZSBhcmUK
PiA+ID4gPiAtICAgICAgICAgICAgICAqIHJlc3BvbnNpYmxlIGZvciBlbnN1cmluZyB0aGUgcmVm
ZXJlbmNlIHdlIGdldCBpcyB0bwo+ID4gPiA+IC0gICAgICAgICAgICAgICogdGhlIHJpZ2h0IGZl
bmNlLCBhcyBiZWxvdy4KPiA+ID4gPiAtICAgICAgICAgICAgICAqLwo+ID4gPiA+IC0gICAgICAg
ICAgICAgaWYgKGZlbmNlID09IHJjdV9hY2Nlc3NfcG9pbnRlcigqZmVuY2VwKSkKPiA+ID4gPiAt
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJjdV9wb2ludGVyX2hhbmRvZmYoZmVuY2UpOwo+
ID4gPiA+IC0KPiA+ID4gPiAtICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+ID4g
PiA+IC0gICAgIH0gd2hpbGUgKDEpOwo+ID4gPiA+IC19Cj4gPiA+ID4gLQo+ID4gPiA+ICAgI2lm
ZGVmIENPTkZJR19MT0NLREVQCj4gPiA+ID4gICBib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxs
aW5nKHZvaWQpOwo+ID4gPiA+ICAgdm9pZCBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoYm9vbCBj
b29raWUpOwo+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiA+ID4gPiBpbmRleCA1NjJiODg1Y2Y5YzNkLi5hMzhj
MDIxZjM3OWFmIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAo+
ID4gPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaAo+ID4gPiA+IEBAIC0yNDgsNyAr
MjQ4LDkgQEAgZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQoc3RydWN0IGRtYV9yZXN2ICpvYmop
Cj4gPiA+ID4gICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPgo+ID4gPiA+ICAgICAg
IHJjdV9yZWFkX2xvY2soKTsKPiA+ID4gPiAtICAgICBmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1
X3NhZmUoJm9iai0+ZmVuY2VfZXhjbCk7Cj4gPiA+ID4gKyAgICAgZmVuY2UgPSByY3VfZGVyZWZl
cmVuY2Uob2JqLT5mZW5jZV9leGNsKTsKPiA+ID4gPiArICAgICBpZiAoZmVuY2UpCj4gPiA+ID4g
KyAgICAgICAgICAgICBmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKTsKPiA+ID4gPiAg
ICAgICByY3VfcmVhZF91bmxvY2soKTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIHJldHVybiBmZW5j
ZTsKPiA+ID4KPgo+Cj4KPiAtLQo+IERhbmllbCBWZXR0ZXIKPiBTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KPiBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
