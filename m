Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E033CF55E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 10:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11266E23D;
	Tue,  8 Oct 2019 08:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A706E23D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 08:55:12 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id h33so14891517edh.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Oct 2019 01:55:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=uM5b+NwANABX+0j1oXo/YoU7VAyL7e0mhSYx3Smgj88=;
 b=lPeVqqbKgtnVIKgRR8uZYM9/6SM3S6+cYt5EnrikIDwrhNi6cp6EpqioQcVdsnjVnE
 v3qH2I2BNJOd+pnSj82QNRkfJLWvXKF4a7mkZq9DYBe/uUs4srwROnEdHbEOe7i2kmAc
 tBm4vcZDIDKgZxul1bTse1n5Mn29UK7IdBsjxN0a1bUvJRwVhkf9F4WSXCQz/piUYnxN
 byxacPDJWyXIK2o8uM5ygF2Xu97EvPjPunwd0rbwDNVUayYtVAClQQjDj8jF3vyxpC3g
 4z1rqamzjsbZqSY7DCdj4x0J1IUqbUJPcv6n6DavY0Y4wHMNhWuxbBeyzbFQe6Ml+tiO
 Or9g==
X-Gm-Message-State: APjAAAVFz+uY3NlVPBMaDlwHJOVw5K573R1T60bbCGe0h60C67fHgs8r
 k3AWAUkxb7a2rWBSA60p9RdWGkkwOpU=
X-Google-Smtp-Source: APXvYqzZoVOuzh0gZxQhv9wv5gX3jFvRnS8M16PpejJZYdACofo5O4reSOFUpsFQ6kL3t1Jw4Tatag==
X-Received: by 2002:a50:d089:: with SMTP id v9mr33437942edd.54.1570524910776; 
 Tue, 08 Oct 2019 01:55:10 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id c1sm3753965edd.21.2019.10.08.01.55.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 01:55:09 -0700 (PDT)
Date: Tue, 8 Oct 2019 10:55:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20191008085507.GE16989@phenom.ffwll.local>
References: <20190829142917.13058-1-christian.koenig@amd.com>
 <20190829142917.13058-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829142917.13058-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=uM5b+NwANABX+0j1oXo/YoU7VAyL7e0mhSYx3Smgj88=;
 b=VLJqS9zBpMngR0KHnpc0HsbgGsCj30tfLZj8zTpbWNZTBezCGTvP4lIBCGthoWmdJP
 syVIuWk3PpkzIpNQLTEStGCZE/WoEa/C30ivlChf2G36UN6xQa134hxXUeZqBhPi3DVW
 YV2/XX3LHZLTcfAsBdKxiEJGtB+O6iWavLD/w=
Subject: Re: [Intel-gfx] [PATCH 1/4] dma-buf: change DMA-buf locking
 convention
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDQ6Mjk6MTRQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBUaGlzIHBhdGNoIGlzIGEgc3RyaXBwZWQgZG93biB2ZXJzaW9uIG9mIHRoZSBs
b2NraW5nIGNoYW5nZXMKPiBuZWNlc3NhcnkgdG8gc3VwcG9ydCBkeW5hbWljIERNQS1idWYgaGFu
ZGxpbmcuCj4gCj4gRm9yIGNvbXBhdGliaWxpdHkgd2UgY2FjaGUgdGhlIERNQS1idWYgbWFwcGlu
ZyBhcyBzb29uIGFzCj4gZXhwb3J0ZXIvaW1wb3J0ZXIgZGlzYWdyZWUgb24gdGhlIGR5bmFtaWMg
aGFuZGxpbmcuCgoKTmVlZHMgaHVnZSBzdW1tYXJ5IG9mIGFsbCB0aGUgZGlzY3Vzc2lvbnMgYW5k
IG9wdGlvbnMgd2UndmUgY29uc2lkZXJlZApoZXJlLiBDb3B5cGFzdGEgdG90YWxseSBmaW5lIHdp
dGggbWUgaWYgeW91IGRvbid0IGZlZWwgbGlrZSB0eXBpbmcgdXAgdGhlCmVudGlyZSBzYWdlIGFu
ZXcsIGJ1dCBpbW8gcmVhbGx5IHRoZSBtb3JlIHRoZSBiZXR0ZXIuIElpcmMgd2UndmUgaGFkIDMt
NApkZWFkLWVuZHMgd2l0aCBkaWZmZXJlbnQgYXR0ZW1wdHMgYXQgY2FjaGluZyBvciBsb2NraW5n
IHJ1bGVzLgogCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgOTAgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4gIGluY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oICAgfCA1MSArKysrKysrKysrKysrKysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTMzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gaW5kZXgg
NDMzZDkxZDcxMGU0Li42NTA1MmQ1MjYwMmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBAQCAtNTI1LDYg
KzUyNSwxMCBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRt
YV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQo+ICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwp
Owo+ICAJfQo+ICAKPiArCWlmIChXQVJOX09OKGV4cF9pbmZvLT5vcHMtPmNhY2hlX3NndF9tYXBw
aW5nICYmCj4gKwkJICAgIGV4cF9pbmZvLT5vcHMtPmR5bmFtaWNfbWFwcGluZykpCj4gKwkJcmV0
dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gKwo+ICAJaWYgKCF0cnlfbW9kdWxlX2dldChleHBfaW5m
by0+b3duZXIpKQo+ICAJCXJldHVybiBFUlJfUFRSKC1FTk9FTlQpOwo+ICAKPiBAQCAtNjQ1LDEw
ICs2NDksMTEgQEAgdm9pZCBkbWFfYnVmX3B1dChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQo+ICBF
WFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7Cj4gIAo+ICAvKioKPiAtICogZG1hX2J1Zl9h
dHRhY2ggLSBBZGQgdGhlIGRldmljZSB0byBkbWFfYnVmJ3MgYXR0YWNobWVudHMgbGlzdDsgb3B0
aW9uYWxseSwKPiArICogZG1hX2J1Zl9keW5hbWljX2F0dGFjaCAtIEFkZCB0aGUgZGV2aWNlIHRv
IGRtYV9idWYncyBhdHRhY2htZW50cyBsaXN0OyBvcHRpb25hbGx5LAo+ICAgKiBjYWxscyBhdHRh
Y2goKSBvZiBkbWFfYnVmX29wcyB0byBhbGxvdyBkZXZpY2Utc3BlY2lmaWMgYXR0YWNoIGZ1bmN0
aW9uYWxpdHkKPiAtICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gYXR0YWNoIGRldmljZSB0by4K
PiAtICogQGRldjoJW2luXQlkZXZpY2UgdG8gYmUgYXR0YWNoZWQuCj4gKyAqIEBkbWFidWY6CQlb
aW5dCWJ1ZmZlciB0byBhdHRhY2ggZGV2aWNlIHRvLgo+ICsgKiBAZGV2OgkJW2luXQlkZXZpY2Ug
dG8gYmUgYXR0YWNoZWQuCj4gKyAqIEBkeW5hbWljX21hcHBpbmc6CVtpbl0JY2FsbGluZyBjb252
ZW50aW9uIGZvciBtYXAvdW5tYXAKPiAgICoKPiAgICogUmV0dXJucyBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50IHBvaW50ZXIgZm9yIHRoaXMgYXR0YWNobWVudC4gQXR0YWNobWVudHMKPiAgICog
bXVzdCBiZSBjbGVhbmVkIHVwIGJ5IGNhbGxpbmcgZG1hX2J1Zl9kZXRhY2goKS4KPiBAQCAtNjYy
LDggKzY2Nyw5IEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcHV0KTsKPiAgICogYWNjZXNz
aWJsZSB0byBAZGV2LCBhbmQgY2Fubm90IGJlIG1vdmVkIHRvIGEgbW9yZSBzdWl0YWJsZSBwbGFj
ZS4gVGhpcyBpcwo+ICAgKiBpbmRpY2F0ZWQgd2l0aCB0aGUgZXJyb3IgY29kZSAtRUJVU1kuCj4g
ICAqLwo+IC1zdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICpkbWFfYnVmX2F0dGFjaChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmLAo+IC0JCQkJCSAgc3RydWN0IGRldmljZSAqZGV2KQo+ICtzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2htZW50ICoKPiArZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gKwkJICAgICAgIGJvb2wgZHluYW1p
Y19tYXBwaW5nKQo+ICB7Cj4gIAlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2g7Cj4g
IAlpbnQgcmV0Owo+IEBAIC02NzcsNiArNjgzLDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKPiAgCj4gIAlhdHRhY2gt
PmRldiA9IGRldjsKPiAgCWF0dGFjaC0+ZG1hYnVmID0gZG1hYnVmOwo+ICsJYXR0YWNoLT5keW5h
bWljX21hcHBpbmcgPSBkeW5hbWljX21hcHBpbmc7Cj4gIAo+ICAJbXV0ZXhfbG9jaygmZG1hYnVm
LT5sb2NrKTsKPiAgCj4gQEAgLTY4NSwxNiArNjkyLDY0IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmRtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCj4gIAkJaWYgKHJl
dCkKPiAgCQkJZ290byBlcnJfYXR0YWNoOwo+ICAJfQo+ICsJZG1hX3Jlc3ZfbG9jayhkbWFidWYt
PnJlc3YsIE5VTEwpOwo+ICAJbGlzdF9hZGQoJmF0dGFjaC0+bm9kZSwgJmRtYWJ1Zi0+YXR0YWNo
bWVudHMpOwo+ICsJZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7CgpTdGlsbCBpbmNvbnNp
c3RlbnQgbG9ja2luZyBoZXJlIHdpdGggZG1hX3Jlc3ZfbG9jayB2cy4gZG1hX2J1Zi0+bG9jay4g
SSdkCmNvbXBsZXRlbHkgc3dpdGNoIG92ZXIgZG1hYnVmLT5hdHRhY2htZW50cyB0byBkbWFfcmVz
dl9sb2NrIGFuZCByZW1vdmUKZG1hYnVmLT5sb2NrIGZvciB0aGF0IHVzZSBjYXNlIChhbmQganVz
dCBrZWVwIGl0IGZvciB0aGUgdm1hcCBjb3VudGVyLCBhdApsZWFzdCBmb3Igbm93LCBidXQgdGhh
dCBzaG91bGQgYmUgbW92ZWQgb3ZlciB0b28gaW1vIGluIGEgbGF0ZXIgcGF0Y2gKcGVyaGFwcyku
CgpNaWdodCBhbHNvIGJlIGEgcGF0Y2ggY29sbGlzaW9uLCBidXQgc2V0X25hbWUgaXMgbm90IHN3
aXRjaGVkIG92ZXIuCgpBbHNvIHBsZWFzZSB1cGRhdGUgdGhlIGtlcm5lbGRvYyBmb3IgLT5hdHRh
Y2htZW50cyBhbmQgLT5ub2RlIHRvIG1lbnRpb24Kd2hpY2ggbG9jayBwcm90ZWN0cyB0aGVtLgoK
PiAgCj4gIAltdXRleF91bmxvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gIAo+ICsJLyogV2hlbiBlaXRo
ZXIgdGhlIGltcG9ydGVyIG9yIHRoZSBleHBvcnRlciBjYW4ndCBoYW5kbGUgZHluYW1pYwo+ICsJ
ICogbWFwcGluZ3Mgd2UgY2FjaGUgdGhlIG1hcHBpbmcgaGVyZSB0byBhdm9pZCBpc3N1ZXMgd2l0
aCB0aGUKPiArCSAqIHJlc2VydmF0aW9uIG9iamVjdCBsb2NrLgo+ICsJICovCj4gKwlpZiAoZG1h
X2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSAhPQo+ICsJICAgIGRtYV9idWZfaXNf
ZHluYW1pYyhkbWFidWYpKSB7Cj4gKwkJc3RydWN0IHNnX3RhYmxlICpzZ3Q7Cj4gKwo+ICsJCWlm
IChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQo+ICsJCQlkbWFfcmVzdl9sb2Nr
KGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsKPiArCj4gKwkJc2d0ID0gZG1hYnVmLT5vcHMt
Pm1hcF9kbWFfYnVmKGF0dGFjaCwgRE1BX0JJRElSRUNUSU9OQUwpOwo+ICsJCWlmICghc2d0KQo+
ICsJCQlzZ3QgPSBFUlJfUFRSKC1FTk9NRU0pOwo+ICsJCWlmIChJU19FUlIoc2d0KSkgewo+ICsJ
CQlyZXQgPSBQVFJfRVJSKHNndCk7Cj4gKwkJCWdvdG8gZXJyX3VubG9jazsKPiArCQl9Cj4gKwkJ
aWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCj4gKwkJCWRtYV9yZXN2X3Vu
bG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Cj4gKwkJYXR0YWNoLT5zZ3QgPSBzZ3Q7Cj4gKwkJ
YXR0YWNoLT5kaXIgPSBETUFfQklESVJFQ1RJT05BTDsKPiArCX0KPiArCj4gIAlyZXR1cm4gYXR0
YWNoOwo+ICAKPiAgZXJyX2F0dGFjaDoKPiAgCWtmcmVlKGF0dGFjaCk7Cj4gIAltdXRleF91bmxv
Y2soJmRtYWJ1Zi0+bG9jayk7Cj4gIAlyZXR1cm4gRVJSX1BUUihyZXQpOwo+ICsKPiArZXJyX3Vu
bG9jazoKPiArCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQo+ICsJCWRt
YV9yZXN2X3VubG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Cj4gKwo+ICsJZG1hX2J1Zl9kZXRh
Y2goZG1hYnVmLCBhdHRhY2gpOwo+ICsJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiArfQo+ICtFWFBP
UlRfU1lNQk9MX0dQTChkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKTsKPiArCj4gKy8qKgo+ICsgKiBk
bWFfYnVmX2F0dGFjaCAtIFdyYXBwZXIgZm9yIGRtYV9idWZfZHluYW1pY19hdHRhY2gKPiArICog
QGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gYXR0YWNoIGRldmljZSB0by4KPiArICogQGRldjoJW2lu
XQlkZXZpY2UgdG8gYmUgYXR0YWNoZWQuCj4gKyAqCj4gKyAqIFdyYXBwZXIgdG8gY2FsbCBkbWFf
YnVmX2R5bmFtaWNfYXR0YWNoKCkgZm9yIGRyaXZlcnMgd2hpY2ggc3RpbGwgdXNlIGEgc3RhdGlj
Cj4gKyAqIG1hcHBpbmcuCj4gKyAqLwo+ICtzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICpkbWFf
YnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAo+ICsJCQkJCSAgc3RydWN0IGRldmlj
ZSAqZGV2KQo+ICt7Cj4gKwlyZXR1cm4gZG1hX2J1Zl9keW5hbWljX2F0dGFjaChkbWFidWYsIGRl
diwgZmFsc2UpOwo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfYXR0YWNoKTsKPiAg
Cj4gQEAgLTcxMSwxMSArNzY2LDIwIEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRtYV9i
dWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQo+ICAJaWYgKFdB
Uk5fT04oIWRtYWJ1ZiB8fCAhYXR0YWNoKSkKPiAgCQlyZXR1cm47Cj4gIAo+IC0JaWYgKGF0dGFj
aC0+c2d0KQo+ICsJaWYgKGF0dGFjaC0+c2d0KSB7Cj4gKwkJaWYgKGRtYV9idWZfaXNfZHluYW1p
YyhhdHRhY2gtPmRtYWJ1ZikpCj4gKwkJCWRtYV9yZXN2X2xvY2soYXR0YWNoLT5kbWFidWYtPnJl
c3YsIE5VTEwpOwo+ICsKPiAgCQlkbWFidWYtPm9wcy0+dW5tYXBfZG1hX2J1ZihhdHRhY2gsIGF0
dGFjaC0+c2d0LCBhdHRhY2gtPmRpcik7Cj4gIAo+ICsJCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMo
YXR0YWNoLT5kbWFidWYpKQo+ICsJCQlkbWFfcmVzdl91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJl
c3YpOwo+ICsJfQo+ICsKPiAgCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7Cj4gKwlkbWFfcmVz
dl9sb2NrKGRtYWJ1Zi0+cmVzdiwgTlVMTCk7Cj4gIAlsaXN0X2RlbCgmYXR0YWNoLT5ub2RlKTsK
PiArCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOwo+ICAJaWYgKGRtYWJ1Zi0+b3BzLT5k
ZXRhY2gpCj4gIAkJZG1hYnVmLT5vcHMtPmRldGFjaChkbWFidWYsIGF0dGFjaCk7Cj4gIAo+IEBA
IC03NDksNiArODEzLDkgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKPiAgCWlmIChXQVJOX09OKCFhdHRh
Y2ggfHwgIWF0dGFjaC0+ZG1hYnVmKSkKPiAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiAg
Cj4gKwlpZiAoZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSkKPiArCQlkbWFf
cmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Cj4gKwo+ICAJaWYgKGF0dGFj
aC0+c2d0KSB7Cj4gIAkJLyoKPiAgCQkgKiBUd28gbWFwcGluZ3Mgd2l0aCBkaWZmZXJlbnQgZGly
ZWN0aW9ucyBmb3IgdGhlIHNhbWUKPiBAQCAtNzYxLDYgKzgyOCw5IEBAIHN0cnVjdCBzZ190YWJs
ZSAqZG1hX2J1Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRh
Y2gsCj4gIAkJcmV0dXJuIGF0dGFjaC0+c2d0Owo+ICAJfQo+ICAKPiArCWlmIChkbWFfYnVmX2lz
X2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQo+ICsJCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFj
aC0+ZG1hYnVmLT5yZXN2KTsKPiArCj4gIAlzZ190YWJsZSA9IGF0dGFjaC0+ZG1hYnVmLT5vcHMt
Pm1hcF9kbWFfYnVmKGF0dGFjaCwgZGlyZWN0aW9uKTsKPiAgCWlmICghc2dfdGFibGUpCj4gIAkJ
c2dfdGFibGUgPSBFUlJfUFRSKC1FTk9NRU0pOwo+IEBAIC03OTMsOSArODYzLDE1IEBAIHZvaWQg
ZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCwKPiAgCWlmIChXQVJOX09OKCFhdHRhY2ggfHwgIWF0dGFjaC0+ZG1hYnVmIHx8ICFzZ190YWJs
ZSkpCj4gIAkJcmV0dXJuOwo+ICAKPiArCWlmIChkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1p
YyhhdHRhY2gpKQo+ICsJCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2
KTsKPiArCj4gIAlpZiAoYXR0YWNoLT5zZ3QgPT0gc2dfdGFibGUpCj4gIAkJcmV0dXJuOwo+ICAK
PiArCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKQo+ICsJCWRtYV9yZXN2
X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKPiArCj4gIAlhdHRhY2gtPmRtYWJ1
Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlvbik7Cj4gIH0K
PiAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KTsKPiBAQCAtMTIx
OSwxMCArMTI5NSwxMiBAQCBzdGF0aWMgaW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkKPiAgCQlzZXFfcHV0cyhzLCAiXHRBdHRhY2hlZCBEZXZp
Y2VzOlxuIik7Cj4gIAkJYXR0YWNoX2NvdW50ID0gMDsKPiAgCj4gKwkJZG1hX3Jlc3ZfbG9jayhi
dWZfb2JqLT5yZXN2LCBOVUxMKTsKPiAgCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaF9vYmos
ICZidWZfb2JqLT5hdHRhY2htZW50cywgbm9kZSkgewo+ICAJCQlzZXFfcHJpbnRmKHMsICJcdCVz
XG4iLCBkZXZfbmFtZShhdHRhY2hfb2JqLT5kZXYpKTsKPiAgCQkJYXR0YWNoX2NvdW50Kys7Cj4g
IAkJfQo+ICsJCWRtYV9yZXN2X3VubG9jayhidWZfb2JqLT5yZXN2KTsKPiAgCj4gIAkJc2VxX3By
aW50ZihzLCAiVG90YWwgJWQgZGV2aWNlcyBhdHRhY2hlZFxuXG4iLAo+ICAJCQkJYXR0YWNoX2Nv
dW50KTsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1idWYuaAo+IGluZGV4IGVjMjEyY2IyN2ZkYy4uYThmOGIyYjgxMmZkIDEwMDY0NAo+
IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmgKPiBAQCAtNDIsNiArNDIsMTcgQEAgc3RydWN0IGRtYV9idWZfb3BzIHsKPiAgCSAgKi8K
PiAgCWJvb2wgY2FjaGVfc2d0X21hcHBpbmc7Cj4gIAo+ICsJLyoqCj4gKwkgKiBAZHluYW1pY19t
YXBwaW5nOgo+ICsJICoKPiArCSAqIElmIHRydWUgdGhlIGZyYW1ld29yayBtYWtlcyBzdXJlIHRo
YXQgdGhlIG1hcC91bm1hcF9kbWFfYnVmCj4gKwkgKiBjYWxsYmFja3MgYXJlIGFsd2F5cyBjYWxs
ZWQgd2l0aCB0aGUgZG1hX3Jlc3Ygb2JqZWN0IGxvY2tlZC4KPiArCSAqCj4gKwkgKiBJZiBmYWxz
ZSB0aGUgZnJhbWV3b3JrIG1ha2VzIHVyZSB0aGF0IHRoZSBtYXAvdW5tYXBfZG1hX2J1Zgo+ICsJ
ICogY2FsbGJhY2tzIGFyZSBhbHdheXMgY2FsbGVkIHdpdGhvdXQgdGhlIGRtYV9yZXN2IG9iamVj
dCBsb2NrZWQuCj4gKwkgKi8KClBsZWFzZSBhZGQgYSBub3RlIHRoYXQgdGhpcyBpcyBhbiBjYWNo
ZV9zZ3RfbWFwcGluZyBhcmUgZXhsdXNpdmUuCgo+ICsJYm9vbCBkeW5hbWljX21hcHBpbmc7Cj4g
Kwo+ICAJLyoqCj4gIAkgKiBAYXR0YWNoOgo+ICAJICoKPiBAQCAtMTA5LDYgKzEyMCw5IEBAIHN0
cnVjdCBkbWFfYnVmX29wcyB7Cj4gIAkgKiBhbnkgb3RoZXIga2luZCBvZiBzaGFyaW5nIHRoYXQg
dGhlIGV4cG9ydGVyIG1pZ2h0IHdpc2ggdG8gbWFrZQo+ICAJICogYXZhaWxhYmxlIHRvIGJ1ZmZl
ci11c2Vycy4KPiAgCSAqCj4gKwkgKiBUaGlzIGlzIGFsd2F5cyBjYWxsZWQgd2l0aCB0aGUgZG1h
YnVmLT5yZXN2IG9iamVjdCBsb2NrZWQgd2hlbgo+ICsJICogdGhlIGR5bmFtaWNfbWFwcGluZyBm
bGFnIGlzIHRydWUuCj4gKwkgKgo+ICAJICogUmV0dXJuczoKPiAgCSAqCj4gIAkgKiBBICZzZ190
YWJsZSBzY2F0dGVyIGxpc3Qgb2Ygb3IgdGhlIGJhY2tpbmcgc3RvcmFnZSBvZiB0aGUgRE1BIGJ1
ZmZlciwKPiBAQCAtMzI3LDYgKzM0MSw4IEBAIHN0cnVjdCBkbWFfYnVmIHsKPiAgICogQHNndDog
Y2FjaGVkIG1hcHBpbmcuCj4gICAqIEBkaXI6IGRpcmVjdGlvbiBvZiBjYWNoZWQgbWFwcGluZy4K
PiAgICogQHByaXY6IGV4cG9ydGVyIHNwZWNpZmljIGF0dGFjaG1lbnQgZGF0YS4KPiArICogQGR5
bmFtaWNfbWFwcGluZzogdHJ1ZSBpZiBkbWFfYnVmX21hcC91bm1hcF9hdHRhY2htZW50KCkgaXMg
Y2FsbGVkIHdpdGggdGhlCj4gKyAqIGRtYV9yZXN2IGxvY2sgaGVsZC4KPiAgICoKPiAgICogVGhp
cyBzdHJ1Y3R1cmUgaG9sZHMgdGhlIGF0dGFjaG1lbnQgaW5mb3JtYXRpb24gYmV0d2VlbiB0aGUg
ZG1hX2J1ZiBidWZmZXIKPiAgICogYW5kIGl0cyB1c2VyIGRldmljZShzKS4gVGhlIGxpc3QgY29u
dGFpbnMgb25lIGF0dGFjaG1lbnQgc3RydWN0IHBlciBkZXZpY2UKPiBAQCAtMzQzLDYgKzM1OSw3
IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgewo+ICAJc3RydWN0IGxpc3RfaGVhZCBub2Rl
Owo+ICAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7Cj4gIAllbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBk
aXI7Cj4gKwlib29sIGR5bmFtaWNfbWFwcGluZzsKPiAgCXZvaWQgKnByaXY7Cj4gIH07Cj4gIAo+
IEBAIC0zOTQsMTAgKzQxMSwzOSBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZ2V0X2RtYV9idWYoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZikKPiAgCWdldF9maWxlKGRtYWJ1Zi0+ZmlsZSk7Cj4gIH0KPiAg
Cj4gKy8qKgo+ICsgKiBkbWFfYnVmX2lzX2R5bmFtaWMgLSBjaGVjayBpZiBhIERNQS1idWYgdXNl
cyBkeW5hbWljIG1hcHBpbmdzLgo+ICsgKiBAZG1hYnVmOiB0aGUgRE1BLWJ1ZiB0byBjaGVjawo+
ICsgKgo+ICsgKiBSZXR1cm5zIHRydWUgaWYgYSBETUEtYnVmIGV4cG9ydGVyIHdhbnRzIHRvIGJl
IGNhbGxlZCB3aXRoIHRoZSBkbWFfcmVzdgo+ICsgKiBsb2NrZWQsIGZhbHNlIGlmIGl0IGRvZXNu
J3Qgd2FudHMgdG8gYmUgY2FsbGVkIHdpdGggdGhlIGxvY2sgaGVsZC4KPiArICovCj4gK3N0YXRp
YyBpbmxpbmUgYm9vbCBkbWFfYnVmX2lzX2R5bmFtaWMoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikK
PiArewo+ICsJcmV0dXJuIGRtYWJ1Zi0+b3BzLT5keW5hbWljX21hcHBpbmc7Cj4gK30KPiArCj4g
Ky8qKgo+ICsgKiBkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyAtIGNoZWNrIGlmIGEgRE1B
LWJ1ZiBhdHRhY2htZW50IHVzZXMgZHluYW1pYwo+ICsgKiBtYXBwaW5zZwo+ICsgKiBAYXR0YWNo
OiB0aGUgRE1BLWJ1ZiBhdHRhY2htZW50IHRvIGNoZWNrCj4gKyAqCj4gKyAqIFJldHVybnMgdHJ1
ZSBpZiBhIERNQS1idWYgaW1wb3J0ZXIgd2FudHMgdG8gY2FsbCB0aGUgbWFwL3VubWFwIGZ1bmN0
aW9ucyB3aXRoCj4gKyAqIHRoZSBkbWFfcmVzdiBsb2NrIGhlbGQuCj4gKyAqLwo+ICtzdGF0aWMg
aW5saW5lIGJvb2wKPiArZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoKQo+ICt7Cj4gKwlyZXR1cm4gYXR0YWNoLT5keW5hbWljX21h
cHBpbmc7Cj4gK30KPiArCj4gIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmRtYV9idWZfYXR0
YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCj4gLQkJCQkJCQlzdHJ1Y3QgZGV2aWNlICpkZXYp
Owo+ICsJCQkJCSAgc3RydWN0IGRldmljZSAqZGV2KTsKPiArc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqCj4gK2RtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IGRldmljZSAqZGV2LAo+ICsJCSAgICAgICBib29sIGR5bmFtaWNfbWFwcGluZyk7Cj4g
IHZvaWQgZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKPiAtCQkJCXN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmRtYWJ1Zl9hdHRhY2gpOwo+ICsJCSAgICBzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2htZW50ICphdHRhY2gpOwo+ICAKPiAgc3RydWN0IGRtYV9idWYgKmRtYV9idWZf
ZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbyk7Cj4gIAo+
IEBAIC00MDksNiArNDU1LDcgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2ht
ZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKiwKPiAgCQkJCQllbnVtIGRtYV9kYXRhX2Rp
cmVjdGlvbik7Cj4gIHZvaWQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKiwgc3RydWN0IHNnX3RhYmxlICosCj4gIAkJCQllbnVtIGRtYV9kYXRhX2Rp
cmVjdGlvbik7Cj4gK3ZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1ZiAqZG1h
X2J1Zik7Cj4gIGludCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRt
YV9idWYsCj4gIAkJCSAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKTsKPiAgaW50IGRt
YV9idWZfZW5kX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCgpBc2lkZSBmcm9t
IHRoZSBuaXRzIGhlcmUgSSB0aGluayB0aGlzIGlzIG9rLCBjb3VudCBtZSBjb252aW5jZWQgb24K
cHJpbmNpcGxlLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJ
bnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
