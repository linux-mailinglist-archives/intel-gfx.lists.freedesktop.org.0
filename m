Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4627C556CA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B086E1B9;
	Tue, 25 Jun 2019 18:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0ACE6E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:07:31 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id f68so3656508vkf.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 11:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0SDa7cBN4rVBeFTUuXIMBfm0RVFqzkWJCKPk3eosMGg=;
 b=WKvWcHE7IDRFB6B+ztBufSADZ6mc0dSdIznhWPHxGuxfyBEkaClKanwu0yf2AHJk52
 zYG0KN1mNRvUCiq49Ihik3hxxHQvwxqGYzET/He9L6wOYAJtJYT//Z5p2d6SABmmzygU
 OGAIvjHm0BunmL6bXQCk4lsn4eal+kbbIUm6QvIt3YT62rP9jKsEVbKMCa2I9b8o+NSC
 PJdvND9uRVOV7NMDXbmU5DUjHac9UPAYk5+IFuyNzQ3X4Toid1zApdX2OHbP0/Xgk88E
 dbKvXE8GBMmNGu4RYbpQjdcZPtW0MTiLfrR471eoLhTdjxaQbOTO/KQEf2LHoOmNSuXp
 8AEw==
X-Gm-Message-State: APjAAAWOI0EO0IEFaa7vvQ8WwSsFJeL4MO6TeaJquN67uNQcOFirax30
 XTVuMNW7ZbovQWgCzc6Lwy645CTMktQ89VnLJXk=
X-Google-Smtp-Source: APXvYqwgu9Hw1xhDQel8f1r4HHbKCqQ9fSFtBFwdMw73k3M0geXmND4ejhNqsbNk21sb/EWb+rT2PLC9+VeKGPI0sqc=
X-Received: by 2002:a1f:9b83:: with SMTP id d125mr11144159vke.76.1561486050010; 
 Tue, 25 Jun 2019 11:07:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
 <20190625130128.11009-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190625130128.11009-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jun 2019 19:07:04 +0100
Message-ID: <CAM0jSHMr2DJ-qg4H=fkyE1CrystwTnHVfgZ0ePh3y8L8VDi7LA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=0SDa7cBN4rVBeFTUuXIMBfm0RVFqzkWJCKPk3eosMGg=;
 b=b7MAWS0VyADJHbaC9NBN1VEuLIZ/cUpEsz72SqIcGPcmOhL3ZXUUTPkw9C1PR7Ui+t
 O7sSrRKfCNrZS+kJlpjzWUzHY/Itn4DD8nBn39ZlwziYgc3dnCC/w/mFWT0wCe6y4wkL
 qpT/l+rdF2VYJu4/9aDOYicKXaGoj2WeqsJoTimsKKaqMY5CDxmgWPxW6GOPtsV23IUs
 Bb4v08hcsgXZYSp6Ha/fTPtfBghPGbtJinGxncyEiLSJDWcxyKkkZK2nugSy9Tqqtedh
 d2oaqRQ9Di6Zoel29JvKgFIpSwCxUoy2tEf+2KXsKjJW7xCa0ksVMqnSXieyNy5GCm07
 1KsQ==
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915/gt: Pass intel_gt to pm
 routines
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

T24gVHVlLCAyNSBKdW4gMjAxOSBhdCAxNDowMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU3dpdGNoIGZyb20gcGFzc2luZyB0aGUgaTkxNSBjb250
YWluZXIgdG8gbmV3bHkgbmFtZWQgc3RydWN0IGludGVsX2d0Lgo+Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
