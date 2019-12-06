Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2276115774
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 19:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B2C6E0C8;
	Fri,  6 Dec 2019 18:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7068C6E0C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 18:55:17 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id y23so3281740ual.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2019 10:55:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EJI7ijIB5ltNKXZZvpYQccYKUAizINasvrDDDVdVsL4=;
 b=VSdtwu/0HNIaZQO+J8j1m8JwccuZPSwvd9IkkJE9A+I6NzCJ7Ogc7V8KgpvC3jKtCy
 lCGmoVCKpr+mZ8ZFehZSdL/r2lye6BWFtCzzO3uULpyMGttjhlkMSE5x1+RCjPQdmAm8
 l6TSejd7QNB9t8/LfObppNV81Lyii0A8MvqgsngxEiu/TgbqQEOyDsCU4zh0Uq/CZoXu
 3TMoAYVJ61DlIM0cXtgIc6L4sfKdHXMxLw0twghmfNJuCusYds2a0i2eeMbHGOXPTF7N
 7XDrtjfaa2b3n7INTQHtDDhX01DO0DUc4Suez/+/KeDXEFKrydWhPBiLg7Fjs67cAvOe
 KUdw==
X-Gm-Message-State: APjAAAV3UwWz18PZViaq0EwXDtvY6cn/XEZzvYgcKVavrEo+1pRDRXI7
 shxPISXYBMqL51kj99Q6d9Ms2zUpbaMgAMXaF375Jw==
X-Google-Smtp-Source: APXvYqwSe6dE3w8si2upfE/0cCnEz+jdKEydoewm0gyPwTCQj5HQm1v3/lqywrxEedvvotnsppHVgev2rjMl1dsx8Zg=
X-Received: by 2002:ab0:2759:: with SMTP id c25mr14064083uap.104.1575658516241; 
 Fri, 06 Dec 2019 10:55:16 -0800 (PST)
MIME-Version: 1.0
References: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 6 Dec 2019 18:54:49 +0000
Message-ID: <CAM0jSHOodC6SH3dXBL7t3BGuphp_tj4DF-knh_U229pU5fdC6w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=EJI7ijIB5ltNKXZZvpYQccYKUAizINasvrDDDVdVsL4=;
 b=Ltooy3kTr+9uZNL+cLBQ+5LRnZygR2cVMbnLLF6UOB57Zl/J641r8jtqph86aj6E8s
 665utddI1gzRvVf9zwWWttn7GYHt5aUMR8cu1wPBKfn6lZpe7R0WfOkh8JN4HTWwADS8
 fmgMWDhCyLPsUXaRU1wtqAnlAD3009eFBFP62/MNABETrhn1ncsbi2LBgxRtmbvVWtCd
 enDiJ6ltc1Vz/RuEAvqqCeSOh0e0RE7c1gWUmqm96l8fQRPb7xDOXaRhkUzuZu3fIyuC
 7btQxkDhBG/5ZAkhZss2GecFbWOafj1ZrdcinQCJOTX7/jndyeJjeeo5Gm6179zfoz6E
 U0uA==
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Check for error before
 calling cmpxchg()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCA2IERlYyAyMDE5IGF0IDE2OjA0LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBPbmx5IGRvIHRoZSBsb2NrZWQgY29tcGFyZSBvZiB0aGUg
ZXhpc3RpbmcgZmVuY2UtPmVycm9yIGlmIHdlIGFjdHVhbGx5Cj4gbmVlZCB0byBzZXQgYW4gZXJy
b3IuIEFzIHdlIHRlbmQgdG8gY2FsbCBpOTE1X3N3X2ZlbmNlX3NldF9lcnJvcl9vbmNlKCkKPiB1
bmNvbmRpdGlvbmFsbHksIGl0IHNhdmVzIG9uIHR5cGluZyB0byBwdXQgdGhlIGNvbW1vbiBoYXMt
ZXJyb3IgY2hlY2sKPiBpbnRvIHRoZSBpbmxpbmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkZvciB0aGUgc2VyaWVzOgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
