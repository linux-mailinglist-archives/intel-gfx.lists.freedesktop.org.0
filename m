Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B643710CF02
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 20:58:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DDA89932;
	Thu, 28 Nov 2019 19:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA0789932
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 19:58:19 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id i18so1459374vkk.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:58:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wgVSxtJDGF3dSCASjWsmcNkJLZDNzNDN2fLKgQ0RJ44=;
 b=b4x9IIKjs+NmOr3uSbekpIKPU6b7yVW0slXZL5yA+2j3VRMhLVucTvwYLddAFJ5F7y
 1PWge05F8cTMgH39r4M8x94tQxDKswCCI7NsATXzGuj2TE94zOKL4Xqb5+ccZG6iTfra
 4eb5xGpNxBlG7ZGYJR/XcI2or4V7RWZB7jyt2J7s7L7Oo2zAVAKrY3uM5kMoPmY5C/UY
 1IRQ6DlJhEhFCQV669N9h1Aaeq5RCUyNgy9Ff3r4u2BRmAoGEcU4QxXlTJZ9l3gQ+C3U
 zGt1atWKuzjEPgzE9CHVTTt572iCe0LWtSjJYhac7A1kG5G4jb4+nM0lM7PVf6V4Mh8M
 Sv7A==
X-Gm-Message-State: APjAAAUf80/GK7/7MO/QVi7KbAgYDVDaeNnoBRNP45KOX5E73+gAvrYE
 ikntS+XQJ9AeoCulm9h+rNo8+swv5nxwhHXSkKb4nQ==
X-Google-Smtp-Source: APXvYqy8vgf+1qkLFILT39n3/tm9GG1ssaSIAarzLMNQ/+Ol19Jrrq7Gxp0P2JJDSf20gSYuDdlaYkB8zTqwapJAsRk=
X-Received: by 2002:a1f:5e13:: with SMTP id s19mr5171757vkb.12.1574971097833; 
 Thu, 28 Nov 2019 11:58:17 -0800 (PST)
MIME-Version: 1.0
References: <20191128185402.110678-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128185402.110678-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 28 Nov 2019 19:57:51 +0000
Message-ID: <CAM0jSHPbz8J+nk-3PRT68MkzPu6O2CEzov8owb_voSsiKQTDFA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=wgVSxtJDGF3dSCASjWsmcNkJLZDNzNDN2fLKgQ0RJ44=;
 b=jwYGqdjPOhwFSd9VTMG+Eauz498EGWwCfEgEtrc3NEwv0+paUETYATK+QrSt9zuyfO
 sWpl/RH/32tOJTsb2eeljvYxIW4iSArpGer3XZ1TDvesDbrnCE17LAbJzwENXZjBkdBG
 gAl17rEh+6a8qEGArXsRCtdu+sIFD2tEztHRWUDIz4d7L7uiXM/o85fnVpZ7m+jUeRh5
 yea1iS3UqWsTxNAiU45irwfKYrLbg4zcjEIDlhAQmSxF5FbU8nFKMZ1ngSLPu04+Sd3j
 NcI/Igqt+raFY6N7fg4t62Nr04WpAaYmXvDLjd+OplKv+m9dW/qoHeUct6tfZY8CD4X6
 HdWw==
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/selftests: Drop local vm
 reference!
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

T24gVGh1LCAyOCBOb3YgMjAxOSBhdCAxODo1NCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQWZ0ZXIgb2J0YWluaW5nIGEgbG9jYWwgcmVmZXJlbmNl
IHRvIHRoZSB2bSBmcm9tIHRoZSBjb250ZXh0LCByZW1lbWJlcgo+IHRvIGRyb3AgaXQgYmVmb3Jl
IGl0IGdvZXMgb3V0IG9mIHNjb3BlIQo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
