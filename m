Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CB15A236
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 19:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0277E6E1CF;
	Fri, 28 Jun 2019 17:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D876E1CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 17:24:26 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id n11so7132259qtl.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 10:24:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PcgPUd7R+Va80PqsyJSarZ2H7xXUyEvQA4tVOlWloU0=;
 b=SQMEBh6zhtD8US8ZwDbAsFNs9U4U1hSGWBwJzwDUnSaz9iIqBdblBRer0IHRM/Sw/c
 f5SY+1WgW6z6xLQx6t+noARREzBKi1I87IV0mulOWFrX9IWhw6KMoInDMAfIpIcEDxjV
 vyZsXJrcSX6FaM6XHrdB0F28vzHqwJx2+kzNHr4yatAdc9qzrqYdEQxBTjausy2ieEWt
 hGBJKKTnUtNxZYaGiTRd0TvNXs0kr3AKkmI5J7uFFOIUZlrk60FzppoilhHZQuDiaN2Q
 gMs2toGbc8gUl+pkPVgo3hesJmmO9ZWDHgXHKWSzDF+5tBXr5oHBIjzGAHFViID1cmPO
 f6FA==
X-Gm-Message-State: APjAAAXwPKcZxcpr0Q4FUMj7UaLJpGiCEIfeyvwK1O0TLq2l3oFXswfx
 G5f2bQT0OuuULRGcEUDy9qdnjg==
X-Google-Smtp-Source: APXvYqyAlnGe1c4Icsjd5B6kRTkH4jcpkMBfEc34+dBcfMK3XcbfYQoqhcbvhnOY/6K/IKY03LAsTQ==
X-Received: by 2002:ac8:7349:: with SMTP id q9mr9242227qtp.151.1561742665828; 
 Fri, 28 Jun 2019 10:24:25 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id c23sm1294229qke.111.2019.06.28.10.24.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 10:24:25 -0700 (PDT)
Date: Fri, 28 Jun 2019 13:24:24 -0400
From: Sean Paul <sean@poorly.run>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20190628172424.GK25413@art_vandelay>
References: <20190614061723.1173-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614061723.1173-1-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PcgPUd7R+Va80PqsyJSarZ2H7xXUyEvQA4tVOlWloU0=;
 b=NUXTgVFBfIgWPMVx+Or0iLmCR/sibm57TTHQqTg2t+ZkLoaThZzwT7XmR3vPLMxr7v
 ACob+y++kIek+YrFdgr0YSnqMFp+fuqaNZsAc87sA1dgOI4fhSGyXZRELIw+zVCokyCp
 /XhB9pu44luZEqokHaAiPwu2zQdLDSkhn7c54cwxfZD/+dcMdVGrg8iNWErub5Dw4uaZ
 zZLmYLYD2ibKg3rMwV9TKcmNnwfnlexlS6XRHFyaFtXtrTeFlQUdD3ZUF/lt+wctLpg8
 xorkdOYZqn6xv8+XqZX0znqAictnVWSxvu9AIrLFeE1FHiaaifi9mvN6Sgla2HDUn9UV
 x22A==
Subject: Re: [Intel-gfx] [PATCH] drm/kms: Catch mode_object lifetime errors
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDg6MTc6MjNBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbmx5IGR5bmFtaWMgbW9kZSBvYmplY3RzLCBpLmUuIHRob3NlIHdoaWNoIGFyZSBy
ZWZjb3VudGVkIGFuZCBoYXZlIGEgZnJlZQo+IGNhbGxiYWNrLCBjYW4gYmUgYWRkZWQgd2hpbGUg
dGhlIG92ZXJhbGwgZHJtX2RldmljZSBpcyB2aXNpYmxlIHRvCj4gdXNlcnNwYWNlLiBBbGwgb3Ro
ZXJzIG11c3QgYmUgYWRkZWQgYmVmb3JlIGRybV9kZXZfcmVnaXN0ZXIgYW5kCj4gcmVtb3ZlZCBh
ZnRlciBkcm1fZGV2X3VucmVnaXN0ZXIuCj4gCj4gU21hbGwgaXNzdWUgYXJvdW5kIGRyaXZlcnMg
c3RpbGwgdXNpbmcgdGhlIGxvYWQvdW5sb2FkIGNhbGxiYWNrcywgd2UKPiBuZWVkIHRvIG1ha2Ug
c3VyZSB3ZSBzZXQgZGV2LT5yZWdpc3RlcmVkIHNvIHRoYXQgbG9hZC91bmxvYWQgY29kZSBpbgo+
IHRoZXNlIGNhbGxiYWNrcyBkb2Vzbid0IHRyaWdnZXIgZmFsc2Ugd2FybmluZ3MuIE9ubHkgYSBz
bWFsbAo+IGFkanVzdGVtZW50IGluIGRybV9kZXZfcmVnaXN0ZXIgd2FzIG5lZWRlZC4KPiAKPiBN
b3RpdmF0ZWQgYnkgc29tZSBpcmMgZGlzY3Vzc2lvbnMgYWJvdXQgb2JqZWN0IGlkcyBvZiBkeW5h
bWljIG9iamVjdHMKPiBsaWtlIGJsb2JzIGJlY29tZSBpbnZhbGlkLCBhbmQgbWUgZ29pbmcgb24g
YSBiaXQgYW4gYXVkaXQgc3ByZWUuCj4gCgpTZWVtcyBsaWtlIGEgdmVyeSB3b3J0aHdoaWxlIGNo
YW5nZSwgYW55IGlkZWEgaG93IG1hbnkgZHJpdmVycyBhcmUgZ29pbmcKdG8gYmUgc2FkIGFmdGVy
IHRoaXMgY2hhbmdlPwoKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyAgICAgICAg
IHwgNCArKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9vYmplY3QuYyB8IDQgKysrKwo+
ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZHJ2LmMKPiBpbmRleCBjYjZmMDI0NWRlN2MuLjQ4Yzg0ZTNlMTkzMSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9k
cnYuYwo+IEBAIC05OTcsMTQgKzk5NywxNCBAQCBpbnQgZHJtX2Rldl9yZWdpc3RlcihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBsb25nIGZsYWdzKQo+ICAJaWYgKHJldCkKPiAgCQln
b3RvIGVycl9taW5vcnM7Cj4gIAo+IC0JZGV2LT5yZWdpc3RlcmVkID0gdHJ1ZTsKPiAtCj4gIAlp
ZiAoZGV2LT5kcml2ZXItPmxvYWQpIHsKPiAgCQlyZXQgPSBkZXYtPmRyaXZlci0+bG9hZChkZXYs
IGZsYWdzKTsKPiAgCQlpZiAocmV0KQo+ICAJCQlnb3RvIGVycl9taW5vcnM7Cj4gIAl9Cj4gIAo+
ICsJZGV2LT5yZWdpc3RlcmVkID0gdHJ1ZTsKPiArCj4gIAlpZiAoZHJtX2NvcmVfY2hlY2tfZmVh
dHVyZShkZXYsIERSSVZFUl9NT0RFU0VUKSkKPiAgCQlkcm1fbW9kZXNldF9yZWdpc3Rlcl9hbGwo
ZGV2KTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9vYmplY3Qu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9vYmplY3QuYwo+IGluZGV4IDFjNmU1MTEzNTk2
Mi4uYzM1NWJhOGU2ZDVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9v
YmplY3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9vYmplY3QuYwo+IEBAIC00
Miw2ICs0Miw4IEBAIGludCBfX2RybV9tb2RlX29iamVjdF9hZGQoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgc3RydWN0IGRybV9tb2RlX29iamVjdCAqb2JqLAo+ICB7Cj4gIAlpbnQgcmV0Owo+ICAK
PiArCVdBUk5fT04oZGV2LT5yZWdpc3RlcmVkICYmICFvYmpfZnJlZV9jYik7CgpUaGVzZSBzaG91
bGQgcHJvYmFibHkgaGF2ZSBhIGNvbW1lbnQgYWJvdmUgdGhlbSBnaXZpbmcgc29tZSBndWlkYW5j
ZSB0byB0aGUKZHJpdmVyIGRldmVsb3Blci4KCldpdGggc29tZSBjb21tZW50cywgdGhpcyBpczoK
ClJldmlld2VkLWJ5OiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KCgo+ICsKPiAgCW11dGV4
X2xvY2soJmRldi0+bW9kZV9jb25maWcuaWRyX211dGV4KTsKPiAgCXJldCA9IGlkcl9hbGxvYygm
ZGV2LT5tb2RlX2NvbmZpZy5vYmplY3RfaWRyLCByZWdpc3Rlcl9vYmogPyBvYmogOiBOVUxMLAo+
ICAJCQkxLCAwLCBHRlBfS0VSTkVMKTsKPiBAQCAtMTAyLDYgKzEwNCw4IEBAIHZvaWQgZHJtX21v
ZGVfb2JqZWN0X3JlZ2lzdGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIHZvaWQgZHJtX21v
ZGVfb2JqZWN0X3VucmVnaXN0ZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCQkJCXN0cnVj
dCBkcm1fbW9kZV9vYmplY3QgKm9iamVjdCkKPiAgewo+ICsJV0FSTl9PTihkZXYtPnJlZ2lzdGVy
ZWQgJiYgIW9iamVjdC0+ZnJlZV9jYik7Cj4gKwo+ICAJbXV0ZXhfbG9jaygmZGV2LT5tb2RlX2Nv
bmZpZy5pZHJfbXV0ZXgpOwo+ICAJaWYgKG9iamVjdC0+aWQpIHsKPiAgCQlpZHJfcmVtb3ZlKCZk
ZXYtPm1vZGVfY29uZmlnLm9iamVjdF9pZHIsIG9iamVjdC0+aWQpOwo+IC0tIAo+IDIuMjAuMQo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoK
LS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
