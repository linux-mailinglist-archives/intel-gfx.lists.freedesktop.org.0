Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823E620A5FD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 21:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D456EC19;
	Thu, 25 Jun 2020 19:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 668CE6EC09
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 19:39:43 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id h22so676870lji.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 12:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=17WdKMKValxAVT99H5TR9V68E65knI8pUdtoLJ11GRE=;
 b=zVd8ORsNLJmTnPeWG5BmFsJ1Q07f4+WXXS+j+M91V/d7cVrims7kmRnigWh6cZTAQk
 2VVWGKzgjuzCMD17IAIMg+/1bXTrneRzfUvStg2Cfgd3mdYEdS5ipvHtziyX8f3Et1qr
 jzwWboMe31pWv1x3xdkezqeaPTKcf1W+0cnktXHoIHDWqJJ2+1mf72afnUca+l+lHO9x
 J0yqTK2P4+gmhuDhMPcsitM1JTVHGwmZFOeMJmsu4oSr0RRGrZCWO/MnGV1F1Cl6aG0u
 TJQpfj4xcDXEVEM7bernS0wvQ1rCiEYtmd4huZXJ2Xg/J+2eRjlohdSH+GUGjeDly724
 AD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=17WdKMKValxAVT99H5TR9V68E65knI8pUdtoLJ11GRE=;
 b=NzD+LrftI1tgro5rvCWBjerUb7uSbNU1ATh+hd8FaP/Yn92f/lXxi58tzeYBywITBy
 15E1FHDRpgTcI1vifyErU9T0C9BFXyDCi7U+JKwCZTm4/nTeq078+CCjLJBBvIo5mNco
 ybNBldswBlAAUxMPrEEX4DUG8qi14Tz2BnmzlcbXi36cQMAF6Utlm6fvZ8ZC/F+xHj+f
 nWUhUA44skJnGWyTtOIJvTvXsqKzfZP/4+gDFe5bdUjtaHZSPrIxYe/GcVxb090gtcKu
 SOi6ZSY3z8eNoNQf7aM/s1ALnZ7FH69bcSUDvTwcGhX7/6mHMklTbKANLQF58/Sdg8rs
 MDlQ==
X-Gm-Message-State: AOAM53180t8MR6naxYZku1ObsCzVpFlQPtKZDYr/xIqq37xspgu6nz8v
 3T/VcPa4y0qjMCTloMcrey36ZGvmgL8=
X-Google-Smtp-Source: ABdhPJxljUr+qKAA1CMkSTtLXbDuX7nltzScgAqVEPS+rJt9p6wTydD/BxZNmBhuqUZyvOdCX4iQMQ==
X-Received: by 2002:a2e:87da:: with SMTP id v26mr16466919ljj.14.1593113981360; 
 Thu, 25 Jun 2020 12:39:41 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id j19sm2254460ljg.28.2020.06.25.12.39.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 12:39:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-5-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-5-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 21:39:39 +0200
Message-ID: <159311397998.202818.15659222080838800847@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 4/8] tests/core_hotunplug: Add
 'lateclose before recover' variants
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MTEpCj4gSWYgYSBH
UFUgZ2V0cyB3ZWRnZWQgZHVyaW5nIGRyaXZlciByZWJpbmQgb3IgZGV2aWNlIHJlLXBsdWcgZm9y
IHNvbWUKPiByZWFzb24sIGN1cnJlbnQgaG90dW5iaW5kL2hvdHVucGx1ZyB0ZXN0IHZhcmlhbnRz
IG1heSB0aW1lIG91dCBiZWZvcmUKPiBsYXRlY2xvc2UgcGhhc2UsIHJlc3VsdGluZyBpbiBpbmNv
bXBsZXRlIENJIHJlcG9ydHMuICBMZXQncyByZW5hbWUKPiB0aG9zZSB2YXJpYW50cyB0byBtb3Jl
IGFkZXF1YXRlIGhvdHJlYmluZC9ob3RyZXBsdWctbGF0ZWNsb3NlIGFuZCBhZGQKPiBuZXcgdmFy
aWFudHMgZm9jdXNlZCBvbiBleGVyY2lzaW5nIHRoZSBsYXRlY2xvc2UgcGhhc2UgcmVnYXJkbGVz
cyBvZgo+IHBvdGVudGlhbCByZWJpbmQvcmUtcGx1ZyBpc3N1ZXMgdW5kZXIgb2xkIG5hbWVzLgo+
IAo+IHYyOiByZWJhc2Ugb24gdXBzdHJlYW0KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CgpBZnRlciBhZGRy
ZXNzaW5nIGNvbW1lbnRzIGZyb20gcHJlY2VkaW5nIHBhdGNoZXM6CgpSZXZpZXdlZC1ieTogTWlj
aGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKLU1pY2hhxYIKCj4g
LS0tCj4gIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCA1NyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
