Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB46420CEB9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72DF89FEA;
	Mon, 29 Jun 2020 13:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D836E184
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 08:54:23 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f139so8597292wmf.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 01:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ZFSUuLotmJg2qW3Io+p4H1dKEpGNQJ6vZgKSQEuMTAI=;
 b=dct4qKXqdabntM4bdrvL2jo4wboBfYL3zXDG954ahSKdlBgDpEZxXpjlJmwq6l6F77
 /oiSg/vG7ls99J/FrQMwdqoZIFE4olPcPtK95AM7I2NKW+yd7uV1X4g7X5a5/g8KIxYb
 dWSPqPRU0M6DSBMTRR02aCpenPeI6hOQ1ScqYT60V6EbPsZZ8lNp1ohHRhSdclC3LF1f
 TElARahrg8O5fVG6g+Q/7INrYbXzahS1wNCTYwwJSgIxzhsd/bnvlQcwfyiPElbDMKTe
 BVdX8sQm9/4Nr1qLvcI+/nR0oPyytgQxVj7YIJYPshA7hw5szlUtG/un3AnAPU3AEIjg
 379Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=ZFSUuLotmJg2qW3Io+p4H1dKEpGNQJ6vZgKSQEuMTAI=;
 b=I4n7ULs22Q3Qv9+yhYdTTmta7ZP32KPqphGhFvnvOoKfG+BDo1WITchWNzmTvOwqtQ
 NFzqRADnX2mBrK1yhw/fK+Pgxm7bKJ/XJrKDgujxn1o536aDs6pCCpFu/7vFnnikk/Qz
 2P1JO0fFPIr4p82oKVWEYlFRiwqYR8iNV91lOlLeCOQlPfQfshYvSIDMTE/dXY94lPIo
 OoGYXX9vp9QhZw11Vf81rKLBbbVbBZDrG9uT3Z4EoCOkgw9l+ypqDaWQ1j/pZ9rSyNWR
 iBe2nWdia8OfGMmFG+8ykZyCnz6QhCoo4kczeaomx3LuqbA6wTk+fxNUOkWpnN4RaxnC
 I5hQ==
X-Gm-Message-State: AOAM5314lm7iisXeYv3M69Q29U7lTe5EmXUn43JYSARrL893LCgPrBLg
 T3Ijx6poIt2UkhbX2iBFswbFtspX
X-Google-Smtp-Source: ABdhPJy0CeKxOIK6fQkEy7KEu4YubwLdZpUpyX+fbqm/XTqKL82fX7ZQwxNnwzbYKkT1ZSXDdvKNHw==
X-Received: by 2002:a1c:7e49:: with SMTP id z70mr2204148wmc.24.1593161661676; 
 Fri, 26 Jun 2020 01:54:21 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id f1sm16155020wmj.12.2020.06.26.01.54.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jun 2020 01:54:20 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Dave Airlie <airlied@gmail.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <159302990055.4527.16849537545776334660@build.alporthouse.com>
 <de87a30b-3ac2-1bee-4ee0-5a05baef6146@gmail.com>
 <159308931300.4527.14536354033703689604@build.alporthouse.com>
 <6d99c4d9-7294-9ce1-471a-f81de7dc2c4f@amd.com>
 <159309140216.31486.2359580281725596670@build.alporthouse.com>
 <011fe07b-1e2c-7cc2-ade8-2c8b4df80b90@gmail.com>
 <159309782319.31486.530565133539052103@build.alporthouse.com>
 <746b10ad-7521-78dd-9a2b-2f44b6594842@amd.com>
 <159310696106.31486.9034080828697272264@build.alporthouse.com>
 <159315901171.15982.4604268132167952820@build.alporthouse.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <a5417984-202b-f252-2aa5-19e8cdaecf20@gmail.com>
Date: Fri, 26 Jun 2020 10:54:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <159315901171.15982.4604268132167952820@build.alporthouse.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 29 Jun 2020 13:14:32 +0000
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Reply-To: christian.koenig@amd.com
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjYuMDYuMjAgdW0gMTA6MTAgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMjAtMDYtMjUgMTg6NDI6NDEpCj4+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5p
ZyAoMjAyMC0wNi0yNSAxNjo0NzowOSkKPj4+IEFtIDI1LjA2LjIwIHVtIDE3OjEwIHNjaHJpZWIg
Q2hyaXMgV2lsc29uOgo+Pj4+IFdlIGhhdmUgdGhlIERBRyBvZiBmZW5jZXMsIHdlIGNhbiB1c2Ug
dGhhdCBpbmZvcm1hdGlvbiB0byBhdm9pZCBhZGRpbmcKPj4+PiBhbiBpbXBsaWNpdCBjb3VwbGlu
ZyBiZXR3ZWVuIGV4ZWN1dGlvbiBjb250ZXh0cy4KPj4+IE5vLCB3ZSBjYW4ndC4gQW5kIGl0IHNv
dW5kcyBsaWtlIHlvdSBzdGlsbCBoYXZlIG5vdCB1bmRlcnN0b29kIHRoZQo+Pj4gdW5kZXJseWlu
ZyBwcm9ibGVtLgo+Pj4KPj4+IFNlZSB0aGlzIGhhcyBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGZl
bmNlcyBpdHNlbGYgb3IgdGhlaXIgREFHLgo+Pj4KPj4+IFdoZW4geW91IGRlcGVuZCBvbiB1c2Vy
c3BhY2UgdG8gZG8gYW5vdGhlciBzdWJtaXNzaW9uIHNvIHlvdXIgZmVuY2UgY2FuCj4+PiBzdGFy
dCBwcm9jZXNzaW5nIHlvdSBlbmQgdXAgZGVwZW5kaW5nIG9uIHdoYXRldmVyIHVzZXJzcGFjZSBk
b2VzLgo+PiBIVyBkZXBlbmRlbmN5IG9uIHVzZXJzcGFjZSBpcyBleHBsaWNpdCBpbiB0aGUgQUJJ
IGFuZCBjbGllbnQgQVBJcywgYW5kCj4+IHRoZSBkaXJlY3QgY29udHJvbCB1c2Vyc3BhY2UgaGFz
IG92ZXIgdGhlIEhXLgo+Pgo+Pj4gVGhpcyBpbiB0dXJuIG1lYW5zIHdoZW4gdXNlcnNwYWNlIGNh
bGxzIGEgc3lzdGVtIGNhbGwgKG9yIGRvZXMgcGFnZQo+Pj4gZmF1bHQpIGl0IGlzIHBvc3NpYmxl
IHRoYXQgdGhpcyBlbmRzIHVwIGluIHRoZSByZWNsYWltIGNvZGUgcGF0aC4KPj4gV2UgaGF2ZSBi
b3RoIHNhaWQgdGhlIHZlcnkgc2FtZSB0aGluZy4KClRoZW4gSSdtIHJlYWxseSB3b25kZXJpbmcg
d2h5IHlvdSBkb24ndCBjb21lIHRvIHRoZSBzYW1lIGNvbmNsdXNpb24gOikKCj4+ICAgCj4+PiBB
bmQgd2hpbGUgd2Ugd2FudCB0byBhdm9pZCBpdCBib3RoIERhbmllbCBhbmQgSSBhbHJlYWR5IGRp
c2N1c3NlZCB0aGlzCj4+PiBtdWx0aXBsZSB0aW1lcyBhbmQgd2UgYWdyZWUgaXQgaXMgc3RpbGwg
YSBtdXN0IGhhdmUgdG8gYmUgYWJsZSB0byBkbwo+Pj4gZmVuY2Ugd2FpdHMgaW4gdGhlIHJlY2xh
aW0gY29kZSBwYXRoLgo+PiBCdXQgY2FtZSB0byB0aGUgb3Bwb3NpdGUgY29uY2x1c2lvbi4gRm9y
IGRvaW5nIHRoYXQgd2FpdCBoYXJtcyB0aGUKPj4gdW5yZWxhdGVkIGNhbGxlciBhbmQgdGhlIHJl
Y2xhaW0gaXMgb3Bwb3J0dW5pc3RpYy4gVGhlcmUgaXMgbm8gbmVlZCBmb3IKPj4gdGhhdCBjYWxs
ZXIgdG8gcmVjbGFpbSB0aGF0IHBhZ2UsIHdoZW4gaXQgY2FuIGhhdmUgYW55IG90aGVyLiBXaHkg
ZGlkIHlvdQo+PiBldmVuIGNob29zZSB0aGF0IHBhZ2UgdG8gcmVjbGFpbT8gSW5kdWNpbmcgbGF0
ZW5jeSBpbiB0aGUgY2FsbGVyIGlzIGEgYnVnLAo+PiBoYXMgYmVlbiByZXBvcnRlZCBwcmV2aW91
c2x5IGFzIGEgYnVnLCBhbmQgc3RpbGwgY29uc2lkZXJlZCBhIGJ1Zy4gW0J1dCBhdAo+PiB0aGUg
ZW5kIG9mIHRoZSBkYXksIGlmIHRoZSBzeXN0ZW0gaXMgb3V0IG9mIG1lbW9yeSwgdGhlbiB5b3Ug
aGF2ZSB0byBwaWNrCj4+IGEgdmljdGltLl0KCkNvcnJlY3QuIEJ1dCB0aGlzIGlzIGFsc28gbm90
IGxpbWl0ZWQgdG8gdGhlIHJlY2xhaW0gcGF0aCBhcyBhbnkga2VybmVsIApzeXN0ZW0gY2FsbCBh
bmQgcGFnZSBmYXVsdCBjYW4gY2F1c2UgYSBwcm9ibGVtIGFzIHdlbGwuCgpJbiBvdGhlciB3b3Jk
cyAiZmVuY2UgLT4gdXNlcnNwYWNlIC0+IHBhZ2UgZmF1bHQgLT4gZmVuY2UiIG9yICJmZW5jZSAt
PiAKdXNlcnNwYWNlIC0+IHN5c3RlbSBjYWxsIC0+IGZlbmNlIiBjYW4gZWFzaWx5IGNhdXNlIHRo
ZSBzYW1lIHByb2JsZW0gYW5kIAp0aGF0IGlzIG5vdCBhdm9pZGFibGUuCgo+IEFuIGV4YW1wbGUK
Pgo+IFRocmVhZCBBCQkJCVRocmVhZCBCCj4KPiAJc3VibWl0KFZrQ21kV2FpdEV2ZW50cykKPiAJ
cmVjdmZyb20oVGhyZWFkQikJLi4uCXNlbmR0byhUaHJlYWRCKQo+IAkJCQkJXC0gYWxsb2NfcGFn
ZQo+IAkJCQkJIFwtIGRpcmVjdCByZWNsYWltCj4gCQkJCQkgIFwtIGRtYV9mZW5jZV93YWl0KEEp
Cj4gCVZrU2V0RXZlbnQoKQo+Cj4gUmVnYXJkbGVzcyBvZiB0aGF0IGFjdHVhbCBkZWFkbG9jaywg
d2FpdGluZyBvbiBhbiBhcmJpdHJhcnkgZmVuY2UgaW5jdXJzCj4gYW4gdW5ib3VuZGVkIGxhdGVu
Y3kgd2hpY2ggaXMgdW5hY2NlcHRhYmxlIGZvciBkaXJlY3QgcmVjbGFpbS4KPgo+IE9ubGluZSBk
ZWJ1Z2dpbmcgY2FuIGluZGVmaW5pdGVseSBzdXNwZW5kIGZlbmNlIHNpZ25hbGluZywgYW5kIHRo
ZSBvbmx5Cj4gZ3VhcmFudGVlIHdlIG1ha2Ugb2YgZm9yd2FyZCBwcm9ncmVzcywgaW4gc29tZSBj
YXNlcywgaXMgcHJvY2Vzcwo+IHRlcm1pbmF0aW9uLgoKQW5kIGV4YWN0bHkgdGhhdCBpcyB3aGF0
IGRvZXNuJ3Qgd29yay4gWW91IGRvbid0IGhhdmUgYW55IGZvcndhcmQgCnByb2dyZXNzIGFueSBt
b3JlIGJlY2F1c2UgeW91IHJhbiBpbnRvIGEgc29mdHdhcmUgZGVhZGxvY2suCgpJbiBvdGhlciB3
b3JkcyB0aGUgc2lnbmFsaW5nIG9mIGEgZmVuY2UgZGVwZW5kcyBvbiB0aGUgd2VsZmFyZSBvZiAK
dXNlcnNwYWNlLiBZb3UgY2FuIHRyeSB0byBraWxsIHVzZXJzcGFjZSwgYnV0IHRoaXMgY2FuIHdh
aXQgZm9yIHRoZSAKZmVuY2UgeW91IHRyeSB0byBzaWduYWwgaW4gdGhlIGZpcnN0IHBsYWNlLgoK
U2VlIHRoZSBkaWZmZXJlbmNlIHRvIGEgZGVhZGxvY2sgb24gdGhlIEdQVSBpcyB0aGF0IHlvdSBj
YW4gY2FuIGFsd2F5cyAKa2lsbCBhIHJ1bm5pbmcgam9iIG9yIHByb2Nlc3MgZXZlbiBpZiBpdCBp
cyBzdHVjayB3aXRoIHNvbWV0aGluZyBlbHNlLiAKQnV0IGlmIHRoZSBrZXJuZWwgaXMgZGVhZGxv
Y2tlZCB3aXRoIGl0c2VsZiB5b3UgY2FuJ3Qga2lsbCB0aGUgcHJvY2VzcyAKYW55IG1vcmUsIHRo
ZSBvbmx5IG9wdGlvbiBsZWZ0IHRvIGdldCBjbGVhbmx5IG91dCBvZiB0aGlzIGlzIHRvIHJlYm9v
dCAKdGhlIGtlcm5lbC4KClRoZSBvbmx5IHdheSB0byBhdm9pZCB0aGlzIHdvdWxkIGJlIHRvIG5l
dmVyIGV2ZXIgd2FpdCBmb3IgdGhlIGZlbmNlIGluIAp0aGUga2VybmVsIGFuZCB0aGVuIHlvdXIg
d2hvbGUgY29uc3RydWN0IGlzIG5vdCB1c2VmdWwgYW55IG1vcmUuCgpJJ20gcnVubmluZyBvdXQg
b2YgaWRlYXMgaG93IHRvIGV4cGxhaW4gd2hhdCB0aGUgcHJvYmxlbSBpcyBoZXJlLi4uLgoKUmVn
YXJkcywKQ2hyaXN0aWFuLgoKPiAtQ2hyaXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
