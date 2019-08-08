Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 456E4869E8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 21:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46546E8B1;
	Thu,  8 Aug 2019 19:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54566E16D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 19:11:59 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id i11so28534604edq.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 12:11:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=BLRoS5f8NgJJUE0MtU7xiel4uK1EcvzJB7l06wUpXMY=;
 b=MysXuvT5XbaBCs0S23ONLrxrSbPnt0PcQPRASJs2UR4SEELkXqdXfLrwTmWR30+iJg
 WOHXjpl/fAUztS0fDEGRkGxOrE3GXhdOax+8SrsTdxG+PhAhsvnpfQkyvcxSoGRtIVq2
 9YL9oP2Hi9xNIf8JU+EqYjONsNDIZgG9tt7QQeLLaNfZmscoXn4PdJmE7tGSOO8dKbwW
 2YayNt3eIsczEMKXC1qnNSN8oMAoVg5PZfZhKj0hANOr3iSXdzGYCa3xpMtFDVfytMGq
 Zu0BLPdkeLrTgtQpLtWys2QkONIVkzrpnRMNAs5AoByr+g3sSvb/VaJr3omtnCkjhFiK
 Zjvg==
X-Gm-Message-State: APjAAAVp6GVlelx6hkK/UibzAfelMCcgXRfERmPkP+9T/z8lhN0ZnDjm
 81ipJub5nAv54WoeNUoCXViwTw==
X-Google-Smtp-Source: APXvYqy1vSRL26cQECD0T9XqVIoFTLFPS7XkR34mKjByAPOurOO3ksm/WDw8fMVUN2UsXq2wkuIgOg==
X-Received: by 2002:a17:906:e95:: with SMTP id
 p21mr14618582ejf.205.1565291518286; 
 Thu, 08 Aug 2019 12:11:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id z2sm15474654ejp.73.2019.08.08.12.11.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 12:11:57 -0700 (PDT)
Date: Thu, 8 Aug 2019 21:11:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20190808191154.GP7444@phenom.ffwll.local>
References: <20190808132243.23632-1-christian.koenig@amd.com>
 <4e32c47b-454c-f811-67cc-6757b48918de@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e32c47b-454c-f811-67cc-6757b48918de@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=BLRoS5f8NgJJUE0MtU7xiel4uK1EcvzJB7l06wUpXMY=;
 b=dTeq/Dp9W7nZIBS/sVqJMc4wFKdVlzXeV1I3cQndkobqJ6KTwQm8rj5ulBhvxkg7rl
 UaBXRlp2ELLVYTAt9ZTrPkRvdw0ALKJaerstNWrGDGuNtvrN4nbCFuZ1KIEBZxAHrtje
 /PhykhULfmjJu5R872OjbYt5/lv4zPmH9ZTow=
Subject: Re: [Intel-gfx] [PATCH] dma-buf: make dma_fence structure a bit
 smaller v2
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMDQ6NDE6MzlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBEYW5pZWwgYW55IG1vcmUgY29tbWVudHMgb24gdGhpcyBvbmU/CgpJdCdzIG5v
dCBrZXJuZWxkb2MsIGJ1dCB0aGVuIGFsbCB0aGUgZG1hLSogZG9jcyBuZWVkIHNvbWUgc2VyaW91
cyBsb3ZlCmFueXdheSwgc28gYWxsIGdvb2Qgd2l0aCBtZS4KLURhbmllbAoKPiAKPiBJZiBub3Qg
SSdtIGdvaW5nIHRvIHB1c2ggaXQuCj4gCj4gQ2hyaXN0aWFuLgo+IAo+IEFtIDA4LjA4LjE5IHVt
IDE1OjIyIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoKPiA+IFdlIGNsZWFyIHRoZSBjYWxsYmFj
ayBsaXN0IG9uIGtyZWZfcHV0IHNvIHRoYXQgYnkgdGhlIHRpbWUgd2UKPiA+IHJlbGVhc2UgdGhl
IGZlbmNlIGl0IGlzIHVudXNlZC4gTm8gb25lIHNob3VsZCBiZSBhZGRpbmcgdG8gdGhlIGNiX2xp
c3QKPiA+IHRoYXQgdGhleSBkb24ndCB0aGVtc2VsdmVzIGhvbGQgYSByZWZlcmVuY2UgZm9yLgo+
ID4gCj4gPiBUaGlzIHNtYWxsIGNoYW5nZSBpcyBhY3R1YWxseSBtYWtpbmcgdGhlIHN0cnVjdHVy
ZSAxNiUgc21hbGxlci4KPiA+IAo+ID4gdjI6IGFkZCB0aGUgY29tbWVudCB0byB0aGUgY29kZSBh
cyB3ZWxsLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCB8IDEwICsrKysrKysrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCj4gPiBpbmRleCAwNWQyOWRiYzdlNjIu
LmJlYTFkMDVjZjUxZSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgK
PiA+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKPiA+IEBAIC02NSw4ICs2NSwxNCBA
QCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiOwo+ID4gICBzdHJ1Y3QgZG1hX2ZlbmNlIHsKPiA+ICAgCXN0
cnVjdCBrcmVmIHJlZmNvdW50Owo+ID4gICAJY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9w
czsKPiA+IC0Jc3RydWN0IHJjdV9oZWFkIHJjdTsKPiA+IC0Jc3RydWN0IGxpc3RfaGVhZCBjYl9s
aXN0Owo+ID4gKwkvKiBXZSBjbGVhciB0aGUgY2FsbGJhY2sgbGlzdCBvbiBrcmVmX3B1dCBzbyB0
aGF0IGJ5IHRoZSB0aW1lIHdlCj4gPiArCSAqIHJlbGVhc2UgdGhlIGZlbmNlIGl0IGlzIHVudXNl
ZC4gTm8gb25lIHNob3VsZCBiZSBhZGRpbmcgdG8gdGhlIGNiX2xpc3QKPiA+ICsJICogdGhhdCB0
aGV5IGRvbid0IHRoZW1zZWx2ZXMgaG9sZCBhIHJlZmVyZW5jZSBmb3IuCj4gPiArCSAqLwo+ID4g
Kwl1bmlvbiB7Cj4gPiArCQlzdHJ1Y3QgcmN1X2hlYWQgcmN1Owo+ID4gKwkJc3RydWN0IGxpc3Rf
aGVhZCBjYl9saXN0Owo+ID4gKwl9Owo+ID4gICAJc3BpbmxvY2tfdCAqbG9jazsKPiA+ICAgCXU2
NCBjb250ZXh0Owo+ID4gICAJdTY0IHNlcW5vOwo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
