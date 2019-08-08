Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FF386D90
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 01:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D316ECDA;
	Thu,  8 Aug 2019 23:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com
 [IPv6:2607:f8b0:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B826ECDA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 23:03:05 +0000 (UTC)
Received: by mail-pg1-x541.google.com with SMTP id x15so34479150pgg.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 16:03:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w4PN33Lkfcqftf0QvPt6llyr/NqrBtuKXP5AjG4sS2I=;
 b=In8NXPkc1q7I/asX3IWiXgd9yaM9ij2qxU9mVha3FP2OqfrasLvR1wkx+MvTZ30ZTS
 grNse7SwiGiU0atVU166jvjVvZIl7kM2457YB6TvlR45/tRAuy7mnJpNqyRe1/we6rBD
 cSOXf32LxglxB90kTT/TcCWT4ZUrIRfoOo7L55U6Cex3XDjdWbiNDRfBbTlPFPNTAZH7
 SxjN15l5nKhWt+kRu71+yBQ029j07ORSOum+bwP4UNPlj6o3yMgGEykJght41OtLh5gU
 wdGBlCo6tR6/kVfPEJOafswTQb+1uvD5ZnYIZtsGFK3d8Ao3U0pRZLx1+Uty/HofsGce
 h0PQ==
X-Gm-Message-State: APjAAAX4R+rtptgEMxLi/AaAheGZrPlAFtkmrnlGn7LIAuzG8ReluBii
 OFdiWKs7u+vLjmqGSQ/w+UpKasSvlidI3A7PHDnOCw==
X-Google-Smtp-Source: APXvYqzH449xBvCrlqjQwzF5xj2tRIVmQKanSHXknIuOYx+GTnQuSh1A8LBUrt41WSJC5l3ogvCmflURVarkffJBOuU=
X-Received: by 2002:a17:90a:c20f:: with SMTP id
 e15mr358266pjt.123.1565305385027; 
 Thu, 08 Aug 2019 16:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <51a4155c5bc2ca847a9cbe85c1c11918bb193141.1564086017.git.jpoimboe@redhat.com>
 <alpine.DEB.2.21.1907252355150.1791@nanos.tec.linutronix.de>
 <156416793450.30723.5556760526480191131@skylake-alporthouse-com>
 <alpine.DEB.2.21.1907262116530.1791@nanos.tec.linutronix.de>
 <156416944205.21451.12269136304831943624@skylake-alporthouse-com>
 <CA+icZUXwBFS-6e+Qp4e3PhnRzEHvwdzWtS6OfVsgy85R5YNGOg@mail.gmail.com>
 <CA+icZUWA6e0Zsio6sthRUC=Ehb2-mw_9U76UnvwGc_tOnOqt7w@mail.gmail.com>
 <20190806125931.oqeqateyzqikusku@treble>
 <CAKwvOd=wa-XPCpoLQoQJH8Me7S=fXLfog0XsiKyFZKu8ojW_UQ@mail.gmail.com>
 <alpine.DEB.2.21.1908082221150.2882@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908082221150.2882@nanos.tec.linutronix.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 8 Aug 2019 16:02:53 -0700
Message-ID: <CAKwvOdkTD-0inuEKLTsH_tKXzXjvzwnUDwYZ++-hOUrC_FU=sw@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=w4PN33Lkfcqftf0QvPt6llyr/NqrBtuKXP5AjG4sS2I=;
 b=VDlEGmqQayUasSCsFFl/kgJP0QooO8SApmQBdfy+BJLl5TJEwpbGtwtJq7T+qOSyqP
 4pr+f9f/cobDjVxMHFw9yEWd6ystcw7NzJfLo/UBCyxRAllppqjZECKri1MBeMdHWnt5
 lPecE59M+Yu4biklKc21qNhg6dGcDqL4iSekPE3+nzudK3ae0ckmJXABQK2P4yao4Ms+
 gpT9Ha7D9di8pymw27zH6y5sFYK8o/fxUS9DMABoCbNg29v2kJf90UAAw9+HndEWWJpZ
 6NSHmgdEp3UZTKKAQsBoYJDcv2cdrc4vbuU/x3uvPWGh/z4COVpgRk2oEyTytwH+OcvW
 YyYQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove redundant
 user_access_end() from __copy_from_user() error path
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgOCwgMjAxOSBhdCAxOjIyIFBNIFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51
dHJvbml4LmRlPiB3cm90ZToKPiA+IHRnbHgganVzdCBwaWNrZWQgdXAgMiBvdGhlciBwYXRjaGVz
IG9mIG1pbmUsIGJ1bXBpbmcganVzdCBpbiBjYXNlIGhlJ3MKPiA+IG5vdCBwaWNraW5nIHVwIHBh
dGNoZXMgd2hpbGUgb24gdmFjYXRpb24uIDspCj4KPiBJJ20gb25seSBoYWxmIG9uIHZhY2F0aW9u
IDopCj4KPiBTbyBJIGNhbiBwaWNrIGl0IHVwLgoKVGhhbmtzLCB3aWxsIHNlbmQgaGFsZiBtYXJn
YXJpdGFzLgoKLS0gClRoYW5rcywKfk5pY2sgRGVzYXVsbmllcnMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
