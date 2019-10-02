Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F57EC86D6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:00:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 418306E91E;
	Wed,  2 Oct 2019 11:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784376E91E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:00:39 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id b20so16637383ljj.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Oct 2019 04:00:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YqW4lirDp6dhPL53QREOEClblGXQffbz/DGv2dLJs4Q=;
 b=Uo69XGyILZ1BQtB/MI7/g+X6NxQDEWaeaohGN6eb7xgGhs17t0nuH56v4iH0C3NdYb
 gMfaD6Lcz/4wHcNSxtTO3Z/z7QD0mtCNsVc6loy+sidNLEl01sMrMlnQcyggMMCLCczx
 IglBC8tiYGj59yISiYbv4bfq2Q60dX4/7LgEzQCPP/5aX75/qUpVDpA1ohOMGuBuWURR
 11DToLB9DA0jBCrr1+VCcW4T3CEw8sCAUxMkMOrukj7GMPDQieSizIEJDBowSTmosFSJ
 Yi7uJfDs0On9YsO9b/UKPFV00TmJfyw/kC1EPsaZ6VtMTCIAX6AqF27P0WZT/p2KY52R
 8Pmg==
X-Gm-Message-State: APjAAAULPthjLpbHdtTU88fUYQ7L0AwhZ87ylyniergwJXb/lLJMWuEP
 A6d6yzqBEfnaDV7lhz9AM8lytA==
X-Google-Smtp-Source: APXvYqzu9K6EJ442RqSftT7bhnv6pnQOGABkdQlZVfOHCKr4mFhLt1GwBoceHpgFO7VessYbj9nmHg==
X-Received: by 2002:a2e:86d5:: with SMTP id n21mr1977522ljj.1.1570014037566;
 Wed, 02 Oct 2019 04:00:37 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y22sm4544784lfb.75.2019.10.02.04.00.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 04:00:37 -0700 (PDT)
To: Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org
References: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
 <20191001080739.18513-1-jani.nikula@intel.com> <87eezvbgp1.fsf@intel.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <dc08714c-c76f-10f1-a5e7-7972beeb4552@rasmusvillemoes.dk>
Date: Wed, 2 Oct 2019 13:00:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87eezvbgp1.fsf@intel.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YqW4lirDp6dhPL53QREOEClblGXQffbz/DGv2dLJs4Q=;
 b=ISl1taxiHeTMVMMOn0n8wcdg1xJCR1fcz2fZFt8tGPPObtsnfloz8d6yuwZ/9jaDBC
 EpdDdSIVXj2fa5iKwOBPzK1izqeisJnL+CPOwUoqWwMd4nnpL+vDOFHoSeaHcSqS4GjT
 iCUvnNTfZGkmnxxuPGn9m+87WKlq8hpi7/JB8=
Subject: Re: [Intel-gfx] [PATCH v3] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDIvMTAvMjAxOSAxMi4xMSwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24gVHVlLCAwMSBPY3Qg
MjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4gd3JvdGU6Cj4+IFdoaWxl
IHRoZSBtYWluIGdvYWwgaGVyZSBpcyB0byBhYnN0cmFjdCByZWN1cnJpbmcgcGF0dGVybnMsIGFu
ZCBzbGlnaHRseQo+PiBjbGVhbiB1cCB0aGUgY29kZSBiYXNlIGJ5IG5vdCBvcGVuIGNvZGluZyB0
aGUgdGVybmFyeSBvcGVyYXRvcnMsIHRoZXJlCj4+IGFyZSBhbHNvIHNvbWUgc3BhY2Ugc2F2aW5n
cyB0byBiZSBoYWQgdmlhIGJldHRlciBzdHJpbmcgY29uc3RhbnQKPj4gcG9vbGluZy4KPiAKPiBN
YWtlIHRoYXQKPiAKPiAiIiIKPiBXaGlsZSB0aGUgbWFpbiBnb2FsIGhlcmUgaXMgdG8gYWJzdHJh
Y3QgcmVjdXJyaW5nIHBhdHRlcm5zLCBhbmQgc2xpZ2h0bHkKPiBjbGVhbiB1cCB0aGUgY29kZSBi
YXNlIGJ5IG5vdCBvcGVuIGNvZGluZyB0aGUgdGVybmFyeSBvcGVyYXRvcnMsIHVzaW5nCj4gZnVu
Y3Rpb25zIHRvIGFjY2VzcyB0aGUgc3RyaW5ncyBhbHNvIG1ha2VzIGl0IGVhc2llciB0byBzZWVr
IGRpZmZlcmVudAo+IGltcGxlbWVudGF0aW9uIG9wdGlvbnMgZm9yIHBvdGVudGlhbCBzcGFjZSBz
YXZpbmdzIG9uIHN0cmluZyBjb25zdGFudHMKPiBpbiB0aGUgZnV0dXJlLgo+ICIiIgo+IAo+IHRv
IGJlIG1vcmUgZXhwbGljaXQgdGhhdCB0aGlzIGNoYW5nZSBkb2VzIG5vdCBkaXJlY3RseSB0cmFu
c2xhdGUgdG8gYW55Cj4gc3BhY2Ugc2F2aW5ncy4KPiAKPiBSYXNtdXMsIG9rYXkgd2l0aCB0aGF0
PwoKSXQncyByYXRoZXIgZmx1ZmZ5LCBidXQgaXQgZG9lc24ndCBtYWtlIHVuZm91bmRlZCBjbGFp
bXMgYWJvdXQgc3BhY2UKc2F2aW5ncywgc28gaW4gdGhhdCByZWdhcmQgSSdtIGZpbmUgd2l0aCBp
dC4KCltJdCdzIHByb2JhYmx5IGp1c3QgbXkgbGFjayBvZiBpbWFnaW5hdGlvbiwgYnV0IEkgc3Rp
bGwgZmFpbCB0byBzZWUgaG93Cm9uZSBjb3VsZCBldmVyIGFjaGlldmUgYmV0dGVyIHRoYW4gdGhl
IGxpbmtlciBjcmVhdGluZyBqdXN0IDEKdm1saW51eC13aWRlIGluc3RhbmNlIG9mICJlbmFibGVk
Iiwgd2hpY2ggSSBiZWxpZXZlIGhhcHBlbnMgcmVnYXJkbGVzcwpvZiB3aGV0aGVyIG9uZSB1c2Vz
IHRoZXNlIGhlbHBlcnMgb3Igbm90Ll0KClJhc211cwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
