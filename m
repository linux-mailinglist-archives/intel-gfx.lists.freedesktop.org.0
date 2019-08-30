Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6999CA3D0C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 19:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCAC6E392;
	Fri, 30 Aug 2019 17:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7FB96E392
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 17:33:01 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id m18so5279729vsr.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 10:33:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CWvfEXv6MAoYswoo4ZqQVxMhn1rYPWWln+XRd19QgU8=;
 b=KYXGsYvvdu1ZIM7L6I1ScgCMUqyHqCSuEWbzFIvmbYes67LY3Ne/2EBqwBMFPD5EVc
 n+HVGQM3AxU2FeLAIEqvyS8iyvbekT9g68LIslkRaSqGk4OfrHSLAnYFBvfPixPnM2cT
 0qgYTeFTsRTc47uCg4lNoEYpxJuYxbu97hUOXIFXLoic+0qVRYlhxY4U2EpUfYQe9C0Z
 I72H4tACTT6VBsBpGyRtidf+VlZzWeLRmloRGIUz6XG4KmGfApxtJm+f2LWckV2dBPeB
 TZUBI89EHc731eef/cZnr+DijRwjv/z39zwBnU3lD3TBCD9jzMz1a311xOaHOxTTWQSC
 heEA==
X-Gm-Message-State: APjAAAVDB8CZ/sneHFbz5izStNfPubCXYHtjreGWHlCQm+3VMMNVde0W
 zaZutY3JNwU1R/iwVwR2Rab3yTnpGnC7Lc+3Lj0=
X-Google-Smtp-Source: APXvYqwPUUPEdnupbG0kwCvkYc3kKfIw9ArSOI4rR+v6p1DDhgQ45IAEB35TRNJi5hfRGebUPB0o/mzogb+JpB+P96E=
X-Received: by 2002:a67:1c87:: with SMTP id c129mr9659692vsc.23.1567186380846; 
 Fri, 30 Aug 2019 10:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
 <20190830061204.21206-4-chris@chris-wilson.co.uk>
In-Reply-To: <20190830061204.21206-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 30 Aug 2019 18:32:34 +0100
Message-ID: <CAM0jSHNhg4iyDZF+VmvZcLRYmQSNWjynoCUM-VRW_XN3v0M57Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=CWvfEXv6MAoYswoo4ZqQVxMhn1rYPWWln+XRd19QgU8=;
 b=JNg/0cnWMOhkM7M2DA1gtVMq46sVDLo+MNHYRaaVJWYHyxCOpRNjViONb4doj1mqTv
 F175Y/zcT6xxlQwVMGQtvkzMD4BLJaLI4eeJxRayQ0PEbDBDqosx/nFX1o60rrmZsl0S
 dojxacdJzuXfz7W3j04eD8QgMpxWn/u3uqm62GVNrNuZgAFGpMjUiHOBzbUIn48Di97/
 4cYFFgKJ16IN4/NsGMR4eZ/dDxS3Pb3uhJ1if+1ND6sAV4nLzCmn2mp+RnWysYjI1aci
 mlVSvsbRvwtLAsJ4S/hXppyL4ncW9SkqbYLzGFR9yqEsbaFsbV1XNyq2ibrt+aR2c7sY
 PzXw==
Subject: Re: [Intel-gfx] [PATCH 04/21] drm/i915: Use RCU for unlocked vm_idr
 lookup
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

T24gRnJpLCAzMCBBdWcgMjAxOSBhdCAwNzoxNCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2UgaTkxNV9hZGRyZXNzX3NwYWNlIGlzIG5vdyBS
Q1UgcHJvdGVjdGVkLCB3ZSBjYW4gZG8gdGhlIHZtX2lkciBsb29rdXAKPiB3aXRob3V0IHRha2lu
ZyB0aGUgdm1faWRyX211dGV4LCBqdXN0IHdpdGggdGhlIHJjdV9yZWFkX2xvY2soKSBpbnN0ZWFk
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
