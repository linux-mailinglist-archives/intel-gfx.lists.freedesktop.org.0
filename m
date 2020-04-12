Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 251741A5BAE
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2020 02:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51FF76E37F;
	Sun, 12 Apr 2020 00:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15A26E369
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Apr 2020 00:42:38 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id q22so5467294ljg.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2020 17:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=aRlB7J+Dbj04fAwDJXSreKdtH2SecqPXKVmxLW8Q0/M=;
 b=CnizFuw+yf/YL65FaDkeUk2GsQpMC68wsaTwfUXQb0rltttR1E7Q2R8Ajbxp+DCmmh
 ZbfYBypUK2QgFJQd3OcMVSeTggx5+HnJmjY6LfnekxFDTOK5bDQTJGiJ/lVMjP25TZIL
 hHeWq3VS2J+sZBslOjjl/HyXSylmcL3BnHKjrjdWa0v1c0sxOi0/eFV83/u4ARpStd/n
 zLWeg9VC+yrIjWckr1d+PyBz0atNEmx5JIFqkYa1NdKnekbsMFqLkGTvOcNccvAXkWXB
 cZELSQDryZsHBqW+6aSWyfZ9KLJDMnF6Dwp73eyGhVYT1ZHQ1CfxDQ/ttLXv+nm1YV39
 QQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=aRlB7J+Dbj04fAwDJXSreKdtH2SecqPXKVmxLW8Q0/M=;
 b=Y9Gb465DxoBiJm+Ev3qK/A9R8T/kbUjxk0xWdEmul4IcJjJE6wmfMDoSpFpe7cass0
 4OCtcKXSnVDspp+BFWgJIov9OeY02NvqaoBIQt8O/zxyT/gircX3MaK0WEvpzRUBylwq
 z0vExhLWIiPexqoJhsHSI4UENcHHTIIF2br5/Hifsz0eYKygsN63hUS955T0kcy/31yz
 oIisKWbB/e+jodN2TeQQt9innU03w49yOmLIsraFBKrAgQzx+aGj2cMGqRPcfci3mO9J
 DNziSNaGXuCM/NGKDOOWdabTghBhl5wp6JEGGVr8SwuXzZGzZu1UKSAEcE49WerLbszj
 yEjw==
X-Gm-Message-State: AGi0PuYtQSnXPYopG5rjQBAqKeOxjMftquKv1lbMNmC7WI/0q1igfPVs
 8u5XfHThqBn5Z/2dnNs7f45SNANcKGZ8ihuVMCn85g==
X-Google-Smtp-Source: APiQypJNfC8bCe+xOZoZGJg/i1eRs4yNFkZjOfiyNAKesMR0RbM8kPpDfOH9akzg4RRAuFnVrWWTvMEcALnV3eL043k=
X-Received: by 2002:a05:651c:28a:: with SMTP id
 b10mr7009950ljo.223.1586652157326; 
 Sat, 11 Apr 2020 17:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
 <20200403204008.14864-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20200403204008.14864-13-ville.syrjala@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 12 Apr 2020 02:42:26 +0200
Message-ID: <CACRpkdYsYt4w+YyxNXitqj6pZi64GGif_bLJ=sVzCesB-9XxzA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 12/17] drm/mcde: Use mode->clock instead
 of reverse calculating it from the vrefresh
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBcHIgMywgMjAyMCBhdCAxMDo0MSBQTSBWaWxsZSBTeXJqYWxhCjx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiBodG90YWwqdnRvdGFsKnZyZWZyZXNoIH49
IGNsb2NrLiBTbyBqdXN0IHNheSAiY2xvY2siIHdoZW4gd2UgbWVhbiBpdC4KPgo+IENjOiBMaW51
cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gQ2M6IFNhbSBSYXZuYm9yZyA8
c2FtQHJhdm5ib3JnLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKSW5kZWVkIDopClJldmlld2VkLWJ5OiBMaW51cyBX
YWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
