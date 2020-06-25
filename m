Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF53920A60E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 21:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDCA6EC0A;
	Thu, 25 Jun 2020 19:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 329A76EC0A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 19:42:50 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id h22so686415lji.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 12:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=Pao7tzdBSFEKhGxA0jFIL3hBmHqakLvl2Wr/VqvaXfY=;
 b=JwOc4cRWiysQXt8hffmuiPFQtAoJaVWizqhH/meC6cGI0VsNvj/IBfoYqTiuUju4oi
 UwNdfxdUWIc1XoIjkAlr5zubQ0AGO2lujp5KGPzbJv866TDxCQANpObHY5heHuBRzS/U
 sHQPV+y88tN+fi5B0U+eQ2sg2BMrg6Y4wCcHVQLGVWzpNYx9cGQCeZOa1MaSxtxpB9/X
 NcTYpA9vS11PBNjgGv80QqV411tvHo+tCLAtBD3V67G4BULdV1JEKXZPLOfcJQ4YLl5c
 n0ILPshJ36+1gO9UbSjnU7XS3O5eJ6NXVSARt9rQ0bqyGQMPwgWpRIiH4vfsYNc/7HjB
 3Uag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=Pao7tzdBSFEKhGxA0jFIL3hBmHqakLvl2Wr/VqvaXfY=;
 b=kRmhxHJ2e5ALlzLMbeNPNboic9JeDWKMxCs+aDy+k3TXp4DlqjIwrO77//R7bHHIQR
 cfqjEF7fWz84Eza8r8qj+CbxnFI0B7iU7Ere6G2DJzzM3HB/2qnZHsIcv6dpwH0jCh3K
 QwPl5JU48TANiQ0Q/aN1R6oxUjkFWWtvTA/12aFDQCymTbR1DKRhk+yJPok0YEiqlEjD
 waobgMG5NX0qDERDsLXEh8YihyIY0yoEGYdTvAFiIbhvF9yMGLf+piHUtgQtPKU2zw1x
 e1J8fo3o8RBwCZ2z8NOsFHpH1PsZ8Vv/xtGtHwj8y6nlzEwd5t8t6Zpaphc1KB7k24xO
 LXzg==
X-Gm-Message-State: AOAM530TB0AXPMqrA26lDzAC6fQCm82818spSoEDT+2/lvyyVW7QO3qR
 WvnxiwssH247RqmGZK77IC4lBgaeZDY=
X-Google-Smtp-Source: ABdhPJy9kee/KJ+K6MSPNrFnvUKW/15a6LtZOirOhY7KcThP8gzevT1Tsd771dRs56rPu7XFkbROBg==
X-Received: by 2002:a2e:88c7:: with SMTP id a7mr5285463ljk.355.1593114168332; 
 Thu, 25 Jun 2020 12:42:48 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id w6sm5002568ljw.11.2020.06.25.12.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:42:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-6-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-6-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 21:42:46 +0200
Message-ID: <159311416692.202818.5204035808205731710@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 5/8]
 tests/core_hotunplug: Add 'GEM address space' variant
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MTIpCj4gVmVyaWZ5
IGlmIGFuIGFkZGl0aW9uYWwgYWRkcmVzcyBzcGFjZSBhc3NvY2lhdGVkIHdpdGggYW4gb3BlbiBk
ZXZpY2UKPiBmaWxlIGRlc2NyaXB0b3IgaXMgY2xlYW5lZCB1cCBjb3JyZWN0bHkgb24gZGV2aWNl
IGhvdHVucGx1Zy4KPiAKPiB2MjogcmViYXNlIG9uIHVwc3RyZWFtLCB1cGRhdGUgaW5jbHVkZXMg
b3JkZXIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5
c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMg
fCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
MSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMg
Yi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCj4gaW5kZXggMDg5MmUxOTI3Li4xOGE5NjM1NjQgMTAw
NjQ0Cj4gLS0tIGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwo+ICsrKyBiL3Rlc3RzL2NvcmVfaG90
dW5wbHVnLmMKPiBAQCAtMzAsNiArMzAsNyBAQAo+ICAjaW5jbHVkZSA8dW5pc3RkLmg+Cj4gIAo+
ICAjaW5jbHVkZSAiaTkxNS9nZW0uaCIKPiArI2luY2x1ZGUgImk5MTUvZ2VtX3ZtLmgiCj4gICNp
bmNsdWRlICJpZ3QuaCIKPiAgI2luY2x1ZGUgImlndF9kZXZpY2Vfc2Nhbi5oIgo+ICAjaW5jbHVk
ZSAiaWd0X2ttb2QuaCIKPiBAQCAtMzMyLDYgKzMzMywyOSBAQCBzdGF0aWMgdm9pZCBob3RyZXBs
dWdfbGF0ZWNsb3NlKHZvaWQpCj4gICAgICAgICBoZWFsdGhjaGVjaygpOwo+ICB9Cj4gIAo+ICtz
dGF0aWMgdm9pZCB2bV9ob3R1bnBsdWdfbGF0ZWNsb3NlKHZvaWQpCj4gK3sKPiArICAgICAgIHN0
cnVjdCBob3R1bnBsdWcgcHJpdjsKPiArCj4gKyAgICAgICBwcmVwYXJlX2Zvcl9yZXNjYW4oJnBy
aXYpOwo+ICsKPiArICAgICAgIGdlbV9yZXF1aXJlX3ZtKHByaXYuZmQuZHJtKTsKPiArCj4gKyAg
ICAgICBsb2NhbF9kZWJ1ZygiY3JlYXRpbmcgYWRkaXRpb25hbCBHRU0gdXNlciBhZGRyZXNzIHNw
YWNlIik7Cj4gKyAgICAgICBpZ3RfaWdub3JlX3dhcm4oZ2VtX3ZtX2NyZWF0ZShwcml2LmZkLmRy
bSkpOwoKV2h5IHRoZSAiaWdub3JlX3dhcm4iPwpUaGlzIGRlc2VydmVzIGEgY29tbWVudC4gQW5k
IHBlcmhhcHMgYSB3b3JkIG9mIGluZm9ybWF0aW9uIGFib3V0IHdoeSB3ZSBwaWNrZWQKdGhpcyBw
YXJ0dWN1bGFyIG9wZXJhdGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgKHZtX2NyZWF0ZSkuClRo
aXMgaXMgYSByZWdyZXNzaW9uIHRlc3QsIHJpZ2h0PwoKTEdUTSBvdGhlcndpc2UgKGJ1dCBhZ2Fp
biAtIHNlZSBwcmV2aW91cyBwYXRjaGVzKToKClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNr
aSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+CgotTWljaGHFggpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
