Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E85822A2
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 18:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6936E4EA;
	Mon,  5 Aug 2019 16:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D5E6E500
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 16:41:50 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id i11so15875034edq.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Aug 2019 09:41:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=hf8FvBTAOyggpm2dvd4BtwrryCtsii7uz4O8VRrML7E=;
 b=PQKEsH0G0xL5xM9qw611e7sz99N1DMyiPHWB+8NaBlBA+mdc+hQEkk8ccKxSH3jee6
 UwDt6gjn94n9pPGJ3WhlMahaeKmkcfUYHv2vbdAH99kC3lQs1Q1qStzrnCPgmp/szLpR
 aiDNJE1Xr6cK+xZYwGTfvonTsApwWcwiXuQCom5Tn4aFJP/XHG9a5V3HBjDXeKkTDDGa
 xEw9iWi8t1tzQrg5EHlP2qLkBBib/m4Z8qsbituAfv7gvCjC7b46/lDBftbpsfdh0UIj
 rXeWBJigBlmZ/srYvEC91XWfWPKLiY42aWfFpTeEDvT9gcT+6yzZamBpxU6FX4klT7C+
 I2kQ==
X-Gm-Message-State: APjAAAWjeUUZ8IL80KgVVYTKEBgFlA3aXtIpMZQ6NiD9HTIjmI1c2xug
 JxCesLxUO57ISRMMs7lu+M8=
X-Google-Smtp-Source: APXvYqzB+kkvE6XHVSaOiar91jcBLzv+PjeK8RERQ/cfP8IvIxj7oGLsBKvncel8k1kqD4HhJ2fKEQ==
X-Received: by 2002:a17:906:c459:: with SMTP id
 ck25mr116923991ejb.32.1565023308629; 
 Mon, 05 Aug 2019 09:41:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id b15sm7448204ejj.5.2019.08.05.09.41.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 09:41:47 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:41:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190805164145.GW7444@phenom.ffwll.local>
References: <20190805154554.3476-1-christian.koenig@amd.com>
 <20190805154554.3476-5-christian.koenig@amd.com>
 <156502126144.28464.11399426968315988701@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156502126144.28464.11399426968315988701@skylake-alporthouse-com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=hf8FvBTAOyggpm2dvd4BtwrryCtsii7uz4O8VRrML7E=;
 b=Cyr53hdwUMN5whYeNI4sQtK4949Kf9XdSQAuLtcirO+KLENd/SqV8BIzUQ4PQxBGHZ
 jup80kW0eVZVml7QSMebZq7lVMVPh6I0FPLCTkSHYGUcvdOkng8Adf2FTUMEdIT3cyhb
 nPSKmvUnMUU2+CSRzh1KtfXMBeTKvZCpraqzQ=
Subject: Re: [Intel-gfx] [PATCH 5/5] dma-buf: nuke reservation_object seq
 number
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
Cc: linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDU6MDc6NDFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5pZyAoMjAxOS0wOC0wNSAxNjo0NTo1NCkKPiA+
IEBAIC0yMTQsMTYgKzIxNCwxNiBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVj
dCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQo+ID4gICAgICAgICAgICAgICAgIHJldHVy
biAwOwo+ID4gIAo+ID4gIHJldHJ5Ogo+ID4gLSAgICAgICBzZXEgPSByZWFkX3NlcWNvdW50X2Jl
Z2luKCZyZXN2LT5zZXEpOwo+ID4gICAgICAgICByY3VfcmVhZF9sb2NrKCk7Cj4gPiAgCj4gPiAr
ICAgICAgIGZlbmNlX2V4Y2wgPSByY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVuY2VfZXhjbCk7Cj4g
PiAgICAgICAgIGZvYmogPSByY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVuY2UpOwo+ID4gICAgICAg
ICBpZiAoZm9iaikKPiA+ICAgICAgICAgICAgICAgICBzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFy
ZWRfY291bnQ7Cj4gPiAgICAgICAgIGVsc2UKPiA+ICAgICAgICAgICAgICAgICBzaGFyZWRfY291
bnQgPSAwOwo+ID4gLSAgICAgICBmZW5jZV9leGNsID0gcmN1X2RlcmVmZXJlbmNlKHJlc3YtPmZl
bmNlX2V4Y2wpOwo+ID4gLSAgICAgICBpZiAocmVhZF9zZXFjb3VudF9yZXRyeSgmcmVzdi0+c2Vx
LCBzZXEpKSB7Cj4gPiArCj4gPiArICAgICAgIGlmIChyY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVu
Y2VfZXhjbCkgIT0gZmVuY2VfZXhjbCkgewo+IAo+IElmIEkgcmVtZW1iZXIgbXkgcnVsZXMgY29y
cmVjdGx5LCByY3VfZGVyZWZlcmVuY2UgaXMgYQo+IHJlYWQtZGF0YS1kZXBlbmRzLCB3aGljaCBv
bmx5IG1lYW5zIHRoYXQgYSByZWFkIHRocm91Z2ggdGhlIHBvaW50ZXIKPiByZXR1cm5lZCBieSBy
Y3VfZGVyZWZlcmVuY2UoKSBpcyBhZnRlciB0aGUgcmV0cmlldmFsIG9mIHRoYXQgcG9pbnRlci4K
PiBOb3RoaW5nIG9yZGVycyB0aGUgcmV0cmlldmFsIG9mIGZlbmNlX2V4Y2wgdnMgc2hhcmVkX2Nv
dW50IChkaWZmZXJlbnQKPiBwb2ludGVycyksIHNvIEkgdGhpbmsgdGhlIGxhc3QgbGluZSBzaG91
bGQgYmU6Cj4gCj4gc21wX3JtYigpOwo+IGlmIChyY3VfYWNjZXNzX3BvaW50ZXIocmVzdi0+ZmVu
Y2VfZXhjbCkgIT0gZmVuY2VfZXhjbCkKCkFsc28sIGJhcnJpZXJzIG11c3QgaGF2ZSBhIGNvbW1l
bnQsIHRoZSBjb21tZW50IG11c3QgYmUgb24gYm90aCBiYXJyaWVycwooaWYgeW91IGRvbid0IGhh
dmUgdHdvLCB5b3UncmUgZG9pbmcgaXQgd3JvbmcpLCBhbmQgZWFjaCBiYXJyaWVyIGNvbW1lbnQK
bXVzdCByZWZlcmVuY2UgaXRzIGNvdW50ZXJwYXJ0LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5j
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
