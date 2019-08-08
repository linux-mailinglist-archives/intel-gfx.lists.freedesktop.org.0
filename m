Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB18863C4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34D96E4CF;
	Thu,  8 Aug 2019 13:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943D26E4CF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:58:33 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id n12so195411vsr.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 06:58:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9OcDTXdJXgtzeTYJN2WQNcqDuJdDxJnA+gz385NFbSQ=;
 b=XEq+RxEmmVk1tJmQqRnkk9IiG/qG9FnUk9xd/NlrFq29gXVheJ0bosxEXKWwYSDxyR
 vF49O1B6HKShBQRCpXx5oF6c8LRMLu2D90W2nanaB9w3nZA7lkOVrGM3l9ntcCVsIPG7
 jVtCq+5ThXl2oVPL26vDr0ouDPMVsr/AvzEysZ5IaWXJHxO8xJWF/WKrWLIQgn8YxCr0
 KWPEHOtIoZ+l6k0M1ZGq0eQ2ppPGGDQU8Kwd67809OaD0QE6TsqIxijbBFYvwZ99Pyf6
 SnoHbUYAg3A5J/OaaJz2+0NvmF+9UV0JV1098sVH5enDRlf56BXcGES9nWA2fUuyFTxH
 MbSg==
X-Gm-Message-State: APjAAAWAu1jnozqI2ux4DnKcdz3oDpcaDwgxlJY0zcA5nlirKW3sZRrD
 9ScQqisLVJmVi2tKXg+3kGqlasbaNdJgyuZhRcc=
X-Google-Smtp-Source: APXvYqyd7cZx3d8GiHrEydlggtEwJtN9F0hu0dNyhNWR6LLsFFzzRHrPeu4x05b+NLCsnIbFHbqgJ3CH6XjBVZDwRnM=
X-Received: by 2002:a67:e454:: with SMTP id n20mr10268435vsm.34.1565272712559; 
 Thu, 08 Aug 2019 06:58:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
 <20190808074207.18274-8-chris@chris-wilson.co.uk>
In-Reply-To: <20190808074207.18274-8-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 8 Aug 2019 14:58:06 +0100
Message-ID: <CAM0jSHNOn1ZrGQeEWkjapQcHO9SQLfivwsmoYkOWmER8NXg-8g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=9OcDTXdJXgtzeTYJN2WQNcqDuJdDxJnA+gz385NFbSQ=;
 b=Z7QUHHnpRSnGTcnkfy+wTxad7eZmMx/Bkh9djmvvsQa8fPaj+CmkeLEkn/zwHd8sg4
 qGNVf4TlBYDx1qORMdwSIRO0F9Zs8N4gHAVA+cJvcMkr6r3JMEepSeN+82Ctosy1bOfg
 dCYh17zDAeVwQk2rQG7VbnGpsOYAtSu+Dktc2SUVIx0c7X4zlQ2GXiX0rSkMkexfe0+b
 6b5yZGdfECNA+1OUWI+xeyR5KGmgu433JUtJOxmG6Fq4PPWdn82xF8mFdJhwbdegK6yP
 uMlUwebX2qCZNTPiRW7UfeBy8vDaY4BOSzdRTT0odHX6tDWvIjv+UXqytGXueabpP1tF
 KnOQ==
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915: Lift timeline into
 intel_context
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

T24gVGh1LCA4IEF1ZyAyMDE5IGF0IDA5OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBNb3ZlIHRoZSB0aW1lbGluZSBmcm9tIGJlaW5nIGluc2lk
ZSB0aGUgaW50ZWxfcmluZyB0byBpbnRlbF9jb250ZXh0Cj4gaXRzZWxmLiBUaGlzIHNhdmVzIG11
Y2ggcG9pbnRlciBkYW5jaW5nIGFuZCBtYWtlcyB0aGUgcmVsYXRpb25zIG9mIHRoZQo+IGNvbnRl
eHQgdG8gaXRzIHRpbWVsaW5lIG11Y2ggY2xlYXJlci4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
