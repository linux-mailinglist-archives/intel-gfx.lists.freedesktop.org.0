Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68102199FF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 09:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E876E9B9;
	Thu,  9 Jul 2020 07:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D426E9B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 07:32:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id q5so1215098wru.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 00:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Jud8gvQk5riwJAQJGuwXf/WPCVvJ3Rgrb7LcC+OGLek=;
 b=zLm4SSk5z97AJg6wYQWGtiXRJWSitYdo31xqKn0gBxQYkDc/O8TNqgmdajvWHTc0Kq
 rGwaApXSclxBjqko2/Imk9PsR/5u4P/dFPZ9vnPTcqas0kKsEXgqhgF3t0RafiX5Slpt
 JeQpVI0kr0Ku8fqaHq0LjC1TI8jp96YL96hlw5mEdqcM3BGaUheuStZw9Zp7Ip4b+qMo
 G8ZaPEuNqWQyW5xojChELdclmASsdPKtzfHhPpgkGLUC1m/SFhDwvbCu0ULyt2e6O4l4
 gmydb794XLx3M6/yeu4lieZBx/uX1mX0dOMcySh4xW9eVoMMSL0MVJyZib2fBoxie8xs
 axQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jud8gvQk5riwJAQJGuwXf/WPCVvJ3Rgrb7LcC+OGLek=;
 b=ZnQdweNjb3pbpvjZxyDKPc0APJhKOPzIx7TLYqKrSXzWNjleH5UctLPlqicP5W96Vq
 sej4XEHe1fMHXT6dG8noFGQZrwmEtveDyLJK4bx89iO+3ixsb3Dv3We6FNK+itJICI0u
 I+EG4U4mU3M9bywiI+yv1bY72tWv+8ePlhc9S2SiVVFp4UIy+WhCBkMy0dyGpMWhWNUF
 VzAxAEVE377eyNaFduwVC6G1g/1lgNMljRcZJX19MknGclFMjxciBjgXKWSmqv08M2az
 7sQMzwGjTnKkXA/P9ub5RnJaJyxTgnxxWiqVdxOK1hkF5nI5dU6XM/HrtfmS52bmDOUY
 Z25A==
X-Gm-Message-State: AOAM531JPOp5y70iNWVeSzLTXEPGwox287j3T7pjdYqO0NCSkYWjKpEE
 /8U2LnCSZSj7KUjZmpUb1p9hm1RecvbulEbTW10Gtw==
X-Google-Smtp-Source: ABdhPJwgsWk0Cll+yWUxQEOGAdwXBKFxNE0yBvBai49LXxv7MVRksA8PL+EvQ8au/BG5aRKV6xpbDv9YTf7SNQSV164=
X-Received: by 2002:a5d:66ca:: with SMTP id k10mr50931091wrw.244.1594279971984; 
 Thu, 09 Jul 2020 00:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-2-daniel.vetter@ffwll.ch>
 <20c0a95b-8367-4f26-d058-1cb265255283@amd.com>
 <CAKMK7uFe7Pz4=UUkkunBms8vUrzwEpWJmScOMLO4KdADM43vnw@mail.gmail.com>
In-Reply-To: <CAKMK7uFe7Pz4=UUkkunBms8vUrzwEpWJmScOMLO4KdADM43vnw@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 9 Jul 2020 08:32:41 +0100
Message-ID: <CAPj87rNXneE+Vry4aSV11=Qv2mbUsFjCLmNzRmx-Oeqj=u9dyw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 01/25] dma-fence: basic lockdep annotations
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBXZWQsIDggSnVsIDIwMjAgYXQgMTY6MTMsIERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+IE9uIFdlZCwgSnVsIDgsIDIwMjAgYXQgNDo1NyBQTSBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+ID4gQ291
bGQgd2UgbWVyZ2UgdGhpcyBjb250cm9sbGVkIGJ5IGEgc2VwYXJhdGUgY29uZmlnIG9wdGlvbj8K
PiA+Cj4gPiBUaGlzIHdheSB3ZSBjb3VsZCBoYXZlIHRoZSBjaGVja3MgdXBzdHJlYW0gd2l0aG91
dCBoYXZpbmcgdG8gZml4IGFsbCB0aGUKPiA+IHN0dWZmIGJlZm9yZSB3ZSBkbyB0aGlzPwo+Cj4g
U2luY2UgaXQncyBmdWxseSBvcHQtaW4gYW5ub3RhdGlvbnMgbm90aGluZyBibG93cyB1cCBpZiB3
ZSBkb24ndCBtZXJnZQo+IGFueSBhbm5vdGF0aW9ucy4gU28gd2UgY291bGQgc3RhcnQgbWVyZ2lu
ZyB0aGUgZmlyc3QgMyBwYXRjaGVzLiBBZnRlcgo+IHRoYXQgdGhlIGZ1biBzdGFydHMgLi4uCj4K
PiBNeSByb3VnaCBpZGVhIHdhcyB0aGF0IGZpcnN0IEknZCB0cnkgdG8gdGFja2xlIGRpc3BsYXks
IHRodXMgZmFyCj4gdGhlcmUncyAyIGFjdHVhbCBpc3N1ZXMgaW4gZHJpdmVyczoKPiAtIGFtZGdw
dSBoYXMgc29tZSBkbWFfcmVzdl9sb2NrIGluIGNvbW1pdF90YWlsLCBwbHVzIGEga21hbGxvYy4g
SQo+IHRoaW5rIHRob3NlIHNob3VsZCBiZSBmYWlybHkgZWFzeSB0byBmaXggKEknZCB0cnkgYSBz
dGFiIGF0IHRoZW0gZXZlbikKPiAtIHZtd2dmeCBoYXMgYSBmdWxsIG9uIGxvY2tpbmcgaW52ZXJz
aW9uIHdpdGggZG1hX3Jlc3ZfbG9jayBpbgo+IGNvbW1pdF90YWlsLCBhbmQgdGhhdCBvbmUgaXMg
ZnVuY3Rpb25hbC4gTm90IGp1c3QgcmVhZGluZyBzb21ldGhpbmcKPiB3aGljaCB3ZSBjYW4gc2Fm
ZWx5IGFzc3VtZSB0byBiZSBpbnZhcmlhbnQgYW55d2F5IChsaWtlIHRoZSB0bXogZmxhZwo+IGZv
ciBhbWRncHUsIG9yIHdoYXRldmVyIGl0IHdhcykuCj4KPiBJJ3ZlIGRvbmUgYSBwaWxlIG1vcmUg
YW5ub3RhdGlvbnMgcGF0Y2hlcyBmb3Igb3RoZXIgYXRvbWljIGRyaXZlcnMKPiBub3csIHNvIGhv
cGVmdWxseSB0aGF0IGZsdXNoZXMgb3V0IGFueSByZW1haW5pbmcgb2ZmZW5kZXJzIGhlcmUuIFNp
bmNlCj4gc29tZSBvZiB0aGUgYW5ub3RhdGlvbnMgYXJlIGluIGhlbHBlciBjb2RlIHdvcnN0IGNh
c2Ugd2UgbWlnaHQgbmVlZCBhCj4gZGV2LT5tb2RlX2NvbmZpZy5icm9rZW5fYXRvbWljX2NvbW1p
dCBmbGFnIHRvIGRpc2FibGUgdGhlbS4gQXQgbGVhc3QKPiBmb3Igbm93IEkgaGF2ZSAwIHBsYW5z
IHRvIG1lcmdlIGFueSBvZiB0aGVzZSB3aGlsZSB0aGVyZSdzIGtub3duCj4gdW5zb2x2ZWQgaXNz
dWVzLiBNYXliZSBpZiBzb21lIGRyaXZlcnMgdGFrZSBmb3JldmVyIHRvIGdldCBmaXhlZCB3ZQo+
IGNhbiB0aGVuIGFwcGx5IHNvbWUgZHVjdC10YXBlIGZvciB0aGUgYXRvbWljIGhlbHBlciBhbm5v
dGF0aW9uIHBhdGNoLgo+IEluc3RlYWQgb2YgYSBmbGFnIHdlIGNhbiBhbHNvIGNvcHlwYXN0YSB0
aGUgYXRvbWljX2NvbW1pdF90YWlsIGhvb2ssCj4gbGVhdmluZyB0aGUgYW5ub3RhdGlvbnMgb3V0
IGFuZCBhZGRpbmcgYSBodWdlIHdhcm5pbmcgYWJvdXQgdGhhdC4KCkhvdyBhYm91dCBhbiBvcHQt
aW4gZHJtX2RyaXZlciBEUklWRVJfREVBRExPQ0tfSEFQUFkgZmxhZz8gQXQgZmlyc3QKdGhpcyBj
b3VsZCBqdXN0IGRpc2FibGUgdGhlIGFubm90YXRpb25zIGFuZCBub3RoaW5nIGVsc2UsIGJ1dCBh
cyB3ZQpzZWUgdGhlIGFubm90YXRpb25zIGdhaW5pbmcgcmVhbC13b3JsZCB0ZXN0aW5nIGFuZCBt
YXR1cml0eSwgd2UgY291bGQKZXZlbnR1YWxseSBtYWtlIGl0IHRhaW50IHRoZSBrZXJuZWwuCgpD
aGVlcnMsCkRhbmllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
