Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C15CE29AE94
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 15:03:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95CF6E0BC;
	Tue, 27 Oct 2020 14:03:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412E86E0B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 14:03:00 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id f9so1647279lfq.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 07:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dGbTwaXOzSJ4pxvjVyLlcUV6ApoV8kZIL5SfyNcwcUY=;
 b=nmPNJOzdh+VwoYhA8/J2CQad6Re0F4vQR6RoyhUJStTBsGYxBHwM+PPWrOZTJ7Mmc+
 +sR3JjGVlkPDfBy5Ns9BCnM+wTLbu16YuDL+RBeTsh53g8BxJUKxn0mSs6fcH14OS7cf
 4nuhy5RU/21mmjK5nU93toqtWC/u4eFnsmymdcRFUN7sR5iAE1cpiN8HmuJhZwHHRqzi
 y/TtUtesLfWOe1kZKWbDdg0SiVuWzXgi+Szoy4enErRwYVI5jsUpKp6wYnsUddYpnvGC
 uxv143jRxM/e1yXU5wVHIdpcbUbDge+wMiGyqQ5TRDTiTDZ7zaGOTBhIyFCX5rAV0fqm
 wxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dGbTwaXOzSJ4pxvjVyLlcUV6ApoV8kZIL5SfyNcwcUY=;
 b=KxaZSkBpuXsoXCCnmT2W1jAPNwCd+HadupR5WqeIVYPk8q+rrL6ms15xpz35XhGYgH
 G2pwujoqxJSx/rRklJ0aDqGwVbqhN1mxPa9PLv7C5bYVUL5kG8Fq26noBzkDIfDMlsrw
 Y+/HErTBKEB7S1652FodRndHKOky30EWn8BTVHWpS3ej+9Ol3nStNAmCZnM6MLenP7ff
 ymh/QAkPSNnmFHobTzEBx/uoSAqq5aYPoOG0+9dZdRbhBCYrvHiuEfoPouqqEHMqDgY0
 GTPlG4icgGoeKasTaOX2W4mbzrnWw246liyXh06Qamhjw4TXq//0xZBrPC6T8waCiunE
 co5g==
X-Gm-Message-State: AOAM5321Irzqz9YcuHgXunFBuY773er/+FrWJz3VCCUYXzKjUBJseNmR
 b7c3yiHK0oOS9H82O7i9Sf4HRzg/e2w+sZJNavVm+N7cJu8=
X-Google-Smtp-Source: ABdhPJy5dFD2sYUDApndAmsdQ3Y4j1X2eSf0lDStqtCBDZRX4wRm3JRaQu0qrNkm9tjFYWgnoQ+38p5jBEjPBSFPMNU=
X-Received: by 2002:a19:8b8b:: with SMTP id n133mr964675lfd.202.1603807377193; 
 Tue, 27 Oct 2020 07:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <20201027133600.3656665-1-imre.deak@intel.com>
In-Reply-To: <20201027133600.3656665-1-imre.deak@intel.com>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Tue, 27 Oct 2020 10:02:45 -0400
Message-ID: <CAKf6xpuYr3G_FdOgoc4sJ33m46oNR=GR7z8X2DegwsgXaOBQvA@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix error handling during DPRX
 link training
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjcsIDIwMjAgYXQgOTozNiBBTSBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+IHdyb3RlOgo+Cj4gTWFrZSBzdXJlIHRvIHByb3BhZ2F0ZSB0aGUgZXJyb3IgcmVzdWx0
IGZyb20gdGhlIERQUlggbGluayB0cmFpbmluZwo+IHBoYXNlLiBUaGUgbGFjayBvZiB0aGlzIGJy
b2tlIHRoZSBsaW5rIHRyYWluaW5nIGZhbGwtYmFjayBsb2dpYyBpZiB0aGUKPiBsaW5rIHRyYWlu
aW5nIGZhaWxlZCBkdXJpbmcgdGhlIERQUlggcGhhc2UuCj4KPiBGaXhlczogYjMwZWRmZDhkMGI0
ICgiZHJtL2k5MTU6IFN3aXRjaCB0byBMVFRQUiBub24tdHJhbnNwYXJlbnQgbW9kZSBsaW5rIHRy
YWluaW5nIikKPiBSZWZlcmVuY2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2ludGVsLy0vaXNzdWVzLzEzNzgKPiBSZXBvcnRlZC1ieTogSmFzb24gQW5kcnl1ayA8amFuZHJ5
dWtAZ21haWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4KClJldmlld2VkLWJ5OiBKYXNvbiBBbmRyeXVrIDxqYW5kcnl1a0BnbWFpbC5jb20+CgpJIGhh
dmVuJ3QgdGVzdGVkLCBidXQgSSBhc3N1bWUgdGhpcyB3aWxsIGNhdXNlIG15IDcyMDAgdG8gZmFp
bCBsaW5rCnRyYWluaW5nIChjaGFubmVsIGVxdWFsaXphdGlvbikgYW5kIGNhdXNlIHRoZSBmbGFz
aGluZyBkaXNwbGF5LiAgQW55CnN1Z2dlc3Rpb25zIHRoZXJlPyAgV291bGQgYSBxdWlyayBsaWtl
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDEwMjMxMjQ4MDQuMTE0NTctMS1qYW5k
cnl1a0BnbWFpbC5jb20vCmJlIGFjY2VwdGFibGU/CgpSZWdhcmRzLApKYXNvbgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
