Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49BDBE207
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 18:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D716EBF4;
	Wed, 25 Sep 2019 16:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542B76EBF4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 16:12:57 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id l11so7641743wrx.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 09:12:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7De6cqJgk3JfutUQUb8jWXOXf3QSxjdG2pFkMg9Ess=;
 b=gax6LGU3A772iR4+ozVysyoasJCsPrQian+NfW2nYnHNGylp808BdUO4oyAO1+wyJI
 ruHHn2KmJptl4XLI6lq7eypMd/OL2N3Rw6HEykV0I4tj3Qz/9WxlvwWHQTClrTOD6iEO
 kluWjuBaEvQX6MrpGLC+K1zJ8vRaAYWcOU7NRnMRMuWJ5gNvREnXRmOvrDFZgeURf1T9
 sf/f76GYPmahw5qWaRMSRe8zYFdAsBqCSUzARzrdbsb4Fdjj5bs+0C2uwuHX3vaMpbKu
 4ahtNvyfHR7sxjuSeoXyzy78IMUrL6R4IPGrCVPAU0kuC8xEfcdw5nL6s94rnl7xIV/d
 SzGQ==
X-Gm-Message-State: APjAAAWNF21qruc8bSb3Pqnz+o6r6+BRNQ2hmjxjck+oI14Sx0rSMqjM
 /yGzcJHW7JofcdCqrQ/bUlcfku/j3snfzuDMl4wiZA==
X-Google-Smtp-Source: APXvYqyTHM4DtGlx7ANpoVxlm25I8frTuPe4+DSxuM136gbHxv3YZEwTUOXLrqhlM20iWnkKDR0zuOhUhkdaOMxEJVM=
X-Received: by 2002:a5d:4350:: with SMTP id u16mr10516661wrr.289.1569427975737; 
 Wed, 25 Sep 2019 09:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-5-jose.souza@intel.com>
 <CAKi4VAKnqo3W9AZVQzdQHjeyeYqE69_zptq9xpkchR2hSK3mnw@mail.gmail.com>
 <20190924130006.GA25906@ideak-desk.fi.intel.com>
 <7ba6a25da0441df93c5d018f67fbbc4caad2465a.camel@intel.com>
In-Reply-To: <7ba6a25da0441df93c5d018f67fbbc4caad2465a.camel@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 25 Sep 2019 09:12:43 -0700
Message-ID: <CAKi4VA+Anr-OWTWYmJ_t4s6RshXy4c4BZKZ9XhXNGSRXd+ftBg@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=O7De6cqJgk3JfutUQUb8jWXOXf3QSxjdG2pFkMg9Ess=;
 b=Bl0ZT3BE+nP49WYWM3V12Cn9yCtg1gRd6jbEAmLDsAX6E6XsaNvpI8eCDzHcIIPWXQ
 NWvcCgfZNEtqsquPKyvXvuNNCnNU/whK3uviNH3G48fCkA9pidC/kZWYlvKKkCt6Br2B
 fNRSLcxd1UKiwmM1YdXXTmaFq0NFQBO8CSKqg3HccbJKkcrHbHZiGewULmmGWJs+OPh7
 WvUIbfqAZ7QbPtE95KAUhN2doaU9jLCkY2vPGRbVdQYhIdBU/yBWYNvv9+pe1z9Xa9uJ
 nca3IDCtL/vVR6xEEcLuGbwtBK33D06g5KSavcW4KANtbS+mJvHPgrGpFqpYTCyFDdy7
 lz1w==
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm/i915/tgl: Add dkl phy
 programming sequences
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgNDoyMSBQTSBTb3V6YSwgSm9zZSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCAyMDE5LTA5LTI0IGF0IDE2OjAwICswMzAwLCBJ
bXJlIERlYWsgd3JvdGU6Cj4gPiBPbiBNb24sIFNlcCAyMywgMjAxOSBhdCAwMzowMjo1NFBNIC0w
NzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4gT25lIG9kZCB0aGluZyB0aGF0IEkgbm90aWNl
IGlzIHRoYXQgd2UgdXNlIHBvcnQgaW5zdGVhZCBvZiB0Y19wb3J0IGluCj4gbW9zdCBNRyByZWdp
c3RlcnMsIHRob3NlIE1HIHJlZ2lzdGVycyB1c2VzIGEgbWFjcm8gdGhhdCBzdWJ0cmFjdCBwb3J0
Cj4gYW5kIFBPUlRfQyB0byBnZXQgdGhlIHJpZ2h0IHJlZ2lzdGVyLCB0aGlua2luZyBpbiBzZW5k
IGEgcGF0Y2ggY2hhbmdpbmcKPiBhbGwgb2YgdGhvc2UgdG8gcmVjZWl2ZSBhcyBwYXJhbWV0ZXIg
dGNfcG9ydCB0byBtYWtlIGl0IGNvbnNpc3RlbnQsCj4gd2hhdCB5b3UgZ3V5cyB0aGluaz8KCkkg
dGhpbmsgaXQncyBhIGxlZnRvdmVyIGZyb20gcHJldmlvdXMgaW1wbGVtZW50YXRpb24uIEZvciB1
c2UgdGhlbSBpbgpUR0wgd2UgZG8gaGF2ZSB0byBjaGFuZ2UKdG8gdGNfcG9ydCBzaW5jZSBUQyBw
b3J0cyBpbiBUR0wgc3RhcnQgd2l0aCBQT1JUX0QuCgpMdWNhcyBEZSBNYXJjaGkKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
