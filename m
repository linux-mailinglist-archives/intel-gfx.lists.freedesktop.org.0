Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C6B155C63
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 18:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861606EAF3;
	Fri,  7 Feb 2020 17:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 788C16EAD2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:48:45 +0000 (UTC)
Received: by mail-io1-xd32.google.com with SMTP id h8so248203iob.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cZMzCbqGzULWl6vky4N67eZZ9ELT87zkkPMYEmeqkCg=;
 b=aeiH5jPia3FtvBs9WJY6yoY98kGgpzE6SsfGjkepWS9ixOBv9lZKDDKGaa/1FrmvSD
 LXdy8buzonHncvFKI3HRr2ONL6nGzTKPfks/DRX0TixXvgLCoyTMOOWVP5rouc/sAKqk
 zngDjZfjBSw8PVs6Q3JLyvgNZBJ7MER6NTdgAUD7TuAB0mt4bJi/5Dr632vcEsdsVoZ4
 cDtMKvl2RpReJd7frnqhSB0n+th/NnC6lqgCBt7roj377sOBVzWZQruL7wi+akYohHb0
 bAreRR1mNDbCxOLhC6wmGuyv3M5/OR6PS4jqduPvpw0pELy2xM4YRQU/9u6f1+RQnR54
 zAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cZMzCbqGzULWl6vky4N67eZZ9ELT87zkkPMYEmeqkCg=;
 b=LKmgWPCFKYg4u0BcW+rg/rwAm+1iFeT8R+JE8E22mJcsNQS1bSfVnKRyTdVO2GMdNT
 OCpA3hpUtSoPfJkbS42iTYUe5SYLad97MBOhYyXvuekDnPQgVIbOcKbvDL8R6nreT9E6
 YFEsEftZ6lrFzx13+Le5qRAUt+BG5pycI1ssmqlZEravyOxL+RoPaMUt6KU4cznbxxFl
 ylH2lD6AS+WQ75hI1g2iQ3bzqzdvZjFlK7d+cUx0aJYSpCXO2iWZ3xrPK25bUGFVXUKZ
 aDnpI3rK2VXX5kUKLcWxP/KzuIg1E5m8BQpMR//Y89TNFbPnh9KKxySl/ADx8iCpPNbZ
 a6Fw==
X-Gm-Message-State: APjAAAUqBj8gPJrW1lAcnME5533dkFYAbvhQT9Cq6fJ3/uakbEokPSde
 J223+EqFtUbXczPx3DGaM22/6GNppQbHPDA05GO+mycM069CVA==
X-Google-Smtp-Source: APXvYqxXZASy+zqs4lA8yrYLrrzruqR7HkWYnRw5VPKsLNAP5h1vBAILTwVq6n1iHIeT1MboKhDOjfn7gDKQzKU3xH4=
X-Received: by 2002:a05:6638:a4a:: with SMTP id
 10mr4014229jap.44.1581094124852; 
 Fri, 07 Feb 2020 08:48:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5442:0:0:0:0:0 with HTTP;
 Fri, 7 Feb 2020 08:48:44 -0800 (PST)
In-Reply-To: <158109328469.16098.11014223815188039767@skylake-alporthouse-com>
References: <20191219124353.8607-2-chris@chris-wilson.co.uk>
 <20200207163125.15903-1-youling257@gmail.com>
 <158109328469.16098.11014223815188039767@skylake-alporthouse-com>
From: youling 257 <youling257@gmail.com>
Date: Sat, 8 Feb 2020 00:48:44 +0800
Message-ID: <CAOzgRdbL0L84quO0yxoNg0+NtPvqWhSWxntgEOjK4B-zPOeyEw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Approved-At: Fri, 07 Feb 2020 17:01:43 +0000
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Track engine round-trip times
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

MjAyMC0wMi0wOCAwOjM0IEdNVCswODowMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ogo+IFF1b3RpbmcgeW91bGluZzI1NyAoMjAyMC0wMi0wNyAxNjozMToyNSkKPj4g
VGhpcyBwYXRjaCBjYXVzZSBHUFUgaGFuZyBvbiBteSBCYXkgdHJhaWwgejM3MzVmLgo+PiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMTQ0Cj4KPiBObyBp
dCBkaWRuJ3QuIFRoZSBjYXVzZSBmb3IgdGhhdCBpcyB1bmZvcnR1bmF0ZWx5IHdlbGwga25vd24u
Cj4gLUNocmlzCj4K4oCcZHJtL2k5MTUvZ3Q6IFRyYWNrIGVuZ2luZSByb3VuZC10cmlwIHRpbWVz
4oCdIE1ha2UgdGhlIGdwdSBoYW5nIHByb2JsZW0Kd29yc2UsIGNhbid0IGJvb3QgZW50ZXIgdXNl
cnNwYWNlIGF0IGFsbC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
