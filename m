Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D4391891
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC216E4D7;
	Wed, 26 May 2021 13:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F116E4D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 13:12:25 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id j14so1087971wrq.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 06:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+NH+U5vO/IFNZscOsXAWCP+NPUo3uYF1MTfXKjnDIYw=;
 b=iwUPN+Ew24Jf5bPzMRakaULMn6YXc84KAOR+tGfXxr4aqqOACrhBPUFvpvtWllnlSQ
 cvEJLFy6p9CSlS+f0cXuUUxRfV9zXWs2JZpRKTzMaGbqcIbTAYSvoSGyEK7LnBU1rQh3
 74IljsYACyafuK/gnmfZUhiad6UiPblLjvgdoUbW60MQIhCgtN4oA5oc5bmR86MV0QA4
 t/ZoMMqYGRHEG2uBbKtDM508jzZ0fvsjxtg1NHaiaO3aafbcAEmt/cnYTGgYvfkXR8zP
 WCBGyhdKlwSMYYWi/pM4s6MkmExwrAi3kBdTfS/M+WtkuDgpU+PRAPjP+0RQ5dUQOKj5
 d9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+NH+U5vO/IFNZscOsXAWCP+NPUo3uYF1MTfXKjnDIYw=;
 b=V2eHhqQpd/v7y7GGQ1++MD1PKmA7uLKeoCMBH4pl5AZfnpwQt/Xhmz/WF+GXlm9+Hu
 zpHq9oz8fiKASBdRQmVSuw3Nw84V0QMW3ALZNdyghW9nfapNmjM77VLG038XQlGcRQrS
 6Keo0MU2wfxrkclbqMfTPrrRHenaZYpRQircfH74+dfYqCNMTvp2P1XbSVgL/62DfBED
 aYae2j2u0LvFx6+a1m6FdTi+TBWqZsqBvhRdg67x0l9I1Pw4FAY0TMRO1/FIOy0aNT0K
 s1r71CcLpG21JnVKfj+ruPSVYTqD6YN1oX1g9QPI4pjV4qcIBwkxeIB6jHNUb7ZgHUPM
 QOzg==
X-Gm-Message-State: AOAM532mtqg6JR7XG7eda8vSijx2pJu7T8sqJFyN8J4ETR3T5E6n1qLg
 ExMnfcSBeCqH55o7SSFqX8a8EnaWUbyMtl1m2amBzQ==
X-Google-Smtp-Source: ABdhPJw9LA9GMJ4q5Qaip1X/LD6PP/IcCoAZEn3xFE04tMp2dqzlEsArHBvWu3ft2kb90dtgJyIQ/t2uMb9Zlnd/t0c=
X-Received: by 2002:a05:6000:184a:: with SMTP id
 c10mr34694182wri.244.1622034744051; 
 Wed, 26 May 2021 06:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <20210525211753.1086069-6-jason@jlekstrand.net>
 <acc1737c-261d-9da5-7ea7-759063136c56@amd.com>
 <CAPj87rN_7vmmWcL1vqhvM=etaTjwts_L0vYbsgvYF0_qZw83gw@mail.gmail.com>
 <770eb698-1dde-9e46-da83-44911d96abec@amd.com>
In-Reply-To: <770eb698-1dde-9e46-da83-44911d96abec@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 26 May 2021 14:12:11 +0100
Message-ID: <CAPj87rPdMthO2Wv7QxMGnO__BiZVauMa9HaRk+35Sgvm69QSjw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] dma-buf: Add an API for exporting sync
 files (v11)
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Simon Ser <contact@emersion.fr>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBXZWQsIDI2IE1heSAyMDIxIGF0IDEzOjQ2LCBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+IEFtIDI2LjA1LjIxIHVtIDEzOjMxIHNjaHJp
ZWIgRGFuaWVsIFN0b25lOgo+ID4gSG93IHdvdWxkIHdlIGluc2VydCBhIHN5bmNvYmordmFsIGlu
dG8gYSByZXN2IHRob3VnaD8gTGlrZSwgaWYgd2UgcGFzcwo+ID4gYW4gdW5tYXRlcmlhbGlzZWQg
c3luY29iait2YWwgaGVyZSB0byBpbnNlcnQgaW50byB0aGUgcmVzdiwgdGhlbiBhbgo+ID4gaW1w
bGljaXQtb25seSBtZWRpYSB1c2VyIChvciBLTVMpIGdvZXMgdG8gc3luYyBhZ2FpbnN0IHRoZSBy
ZXN2LCB3aGF0Cj4gPiBoYXBwZW5zPwo+Cj4gV2VsbCB0aGlzIGlzIGZvciBleHBvcnRpbmcsIG5v
dCBpbXBvcnRpbmcuIFNvIHdlIGRvbid0IG5lZWQgdG8gd29ycnkKPiBhYm91dCB0aGF0Lgo+Cj4g
SXQncyBqdXN0IG15IHRoaW5raW5nIGJlY2F1c2UgdGhlIGRybV9zeW5jb2JqIGlzIHRoZSBiYWNr
aW5nIG9iamVjdCBvbgo+IFZrU2VtYXBob3JlIGltcGxlbWVudGF0aW9ucyB0aGVzZSBkYXlzLCBp
c24ndCBpdD8KClllYWgsIEkgY2FuIHNlZSB0aGF0IHRvIGFuIGV4dGVudC4gQnV0IHRoZW4gYmlu
YXJ5IHZzLiB0aW1lbGluZQpzeW5jb2JqcyBhcmUgdmVyeSBkaWZmZXJlbnQgaW4gdXNlICh3aGlj
aCBpcyB1bmZvcnR1bmF0ZSB0YmgpLCBhbmQKdGhlbiB3ZSBoYXZlIGFuIGFzeW1tZXRyeSBiZXR3
ZWVuIHN5bmNvYmogZXhwb3J0ICYgc3luY19maWxlIGltcG9ydC4KCllvdSdyZSByaWdodCB0aGF0
IHdlIGRvIHdhbnQgYSBzeW5jb2JqIHRob3VnaC4gVGhpcyBpcyBwcm9iYWJseSBub3QKcHJhY3Rp
Y2FsIGR1ZSB0byBzbWFzaGluZyB1QVBJIHRvIGJpdHMsIGJ1dCBpZiB3ZSBjb3VsZCB3aW5kIHRo
ZSBjbG9jawpiYWNrIGEgY291cGxlIG9mIHllYXJzLCBJIHN1c3BlY3QgdGhlIGludGVyZmFjZSB3
ZSB3YW50IGlzIHRoYXQgZXhwb3J0CmNhbiBlaXRoZXIgZXhwb3J0IGEgc3luY19maWxlIG9yIGEg
YmluYXJ5IHN5bmNvYmosIGFuZCBmdXJ0aGVyIHRoYXQKYmluYXJ5IHN5bmNvYmpzIGNvdWxkIHRy
YW5zcGFyZW50bHkgYWN0IGFzIHRpbWVsaW5lIHNlbWFwaG9yZXMgYnkKbWFwcGluZyBhbnkgdmFs
dWUgKGVpdGhlciB3YWl0IG9yIHNpZ25hbCkgdG8gdGhlIGJpbmFyeSBzaWduYWwuIEluCmhpbmRz
aWdodCwgd2Ugc2hvdWxkIHByb2JhYmx5IGp1c3QgbmV2ZXIgaGF2ZSBoYWQgYmluYXJ5IHN5bmNv
YmouIE9oCndlbGwuCgpDaGVlcnMsCkRhbmllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
