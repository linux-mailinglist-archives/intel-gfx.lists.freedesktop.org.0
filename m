Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA17D48CD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 22:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD5C6EC89;
	Fri, 11 Oct 2019 20:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DF86EC89
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 20:03:34 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id i13so3421538uaq.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZMAp3sXuq2EnW4BcdaW4iaMC5cnNXjec5eHOzM8sNBQ=;
 b=jP/ycDkyK3+tdKnHnyAHIJ77b366sG4FRgPadscVetSCBjRXoBXl+CLxzNKWJOCcaO
 zpSR3lXoBJSHBWa/qfVTGyGsLlL55sdLwa/Pc2d+CT+rDhgVTSep2SXFvTarYs/7vxlk
 0tsQgQJsoLzwhgLUaSF1o+x/E6f/+MTcar6ygOPrCgRaNCjUdEiySC0W7vlEgjuOxcku
 IxQR89+w1tC5cxB8nmPOzw90MfEIDT3O8nis2ASiMqPukqpMk4gmD1TMwkHgOzWy/d/q
 KvO1UbozRs5zqhBG/cj5eZEmug5pT26H7e3mpq/MX0iCUN1L4x/5zWavwHrkssYIFtvu
 jIjw==
X-Gm-Message-State: APjAAAVJ12RVZqOu84vZ6rSLmXA8FrETz/2L1Mkay7ASZr6jPR9nA956
 WrSHWVGo7HfjKQKKa0Pd94FgUnyiC7uj4/iOZXc=
X-Google-Smtp-Source: APXvYqwEKL61WPiDpyiF0OXeBo1ZNPeVk7wTxiDqU/L70PdD//B32ryvOZxwOhZlbiwmedvP72uISVx30sxYspu8gEY=
X-Received: by 2002:a9f:2382:: with SMTP id 2mr6928206uao.95.1570824213765;
 Fri, 11 Oct 2019 13:03:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191011193620.14026-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191011193620.14026-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 11 Oct 2019 21:03:07 +0100
Message-ID: <CAM0jSHOr=rWrAFNen5+QcMZ9rtz7XsP-BFRDpCiEmzVnDoGDHw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ZMAp3sXuq2EnW4BcdaW4iaMC5cnNXjec5eHOzM8sNBQ=;
 b=nvqM7SLtB4ryhZj6eMIK6HI2BHhiNuCOoY+3zSrAaf3X0jx4WRUrTR8bFEldU48oPt
 hQUvofEfmkwyh0Ur3i1IT7smEtMo0OTgGegh7CTFV3DKTh1HyolNK97iFm4pOIagRawa
 UOrH1A7304rThTcKt8fO0tMF0aBdHOmruzyuvBWeJkqU5Q45jvwWvanHUKNGnNOoQIkV
 wrLaX6LJrdf2dhvYJZYu1R44rYCZB+goSecPVfQm4gj2hYNOvz77+6kOvfpdmTVQ1kLa
 lBVYxML9DbYsf7sDJsFWVxV2FcS9FOpWvHfpoZUFIkgv1isoOgPbftvPqknNnOOC0mDj
 kkHw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Serialise write to
 scratch with its vma binding
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMSBPY3QgMjAxOSBhdCAyMDozNiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQWRkIHRoZSBtaXNzaW5nIHNlcmlhbGlzYXRpb24gb24g
dGhlIHJlcXVlc3QgZm9yIGEgd3JpdGUgaW50byBhIHZtYSB0bwo+IHdhaXQgdW50aWwgdGhhdCB2
bWEgaXMgYm91bmQgYmVmb3JlIGJlaW5nIGV4ZWN1dGVkIGJ5IHRoZSBHUFUuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
