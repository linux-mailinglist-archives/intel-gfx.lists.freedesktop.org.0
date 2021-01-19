Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9B82FBC22
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23CA16E87B;
	Tue, 19 Jan 2021 16:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261746E87B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:14:08 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id t17so5815370qtq.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 08:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+l8kN0kLsWK0Hw9tM6N5bECVSBWir3POkP317fj7eA4=;
 b=IUZnsy8kkUKvh7VAmuDofEWSoJ0R5nWmO+2Ph7mZIEAhH56UJ0kv3DApX6sRMhIGNb
 XdwVfogYauNumMfIxTRxgnnvqMtXVcWsnRU0JiD59VohxCBMMBQASjWNCUHNmRiMTw0w
 ntJTFDx6umWhPyyY3HZC6pgD92AFCZ9G3e9k+KQgIydGu6h/rZYpf+uNNueDSfkmQZpD
 faKd48VquWFIMvXR7q/VurkOlUrRMu1ULETqoYtQh2v3zS393M+AUKjrB2/P/XMbOdrL
 wF3p5stwO3hKpo5Ag+mp1Mp3HRc8YxHUaznI4Zo8IEE9IdZ8d8Z85YjrwczevrQ1ZbAW
 lOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+l8kN0kLsWK0Hw9tM6N5bECVSBWir3POkP317fj7eA4=;
 b=hjxlcRg30BodelIStEsAkDsGi5b2/+OovlKFZ5Hy9DQmazozloHEwwYeDoxAi75QCE
 9inNPABTHaUPX56GTdh9M6nJ6rYIjBxid37Witkm5qlk1v+KzAuVXYmBRosVGWU8EWjw
 tfZCTX9BNoF0cwx1GSrAlqrQMpD4flzQUlZL7nSnX+th4yMCwzyN+z45Uelm7YUFZkPM
 iqhlXjFWfdKxLE+6SDWMbQYlPN1Q+CyzPSz64MvmjUrwN2GgcVodYSOX+kkAU5FEDpF2
 Xhn+MEEqb4cvHJ78voK7AUlc7mOqH/MWztGXMWobw8S6+d8NVO0W+nIYXwEPcsGp+1uP
 Juaw==
X-Gm-Message-State: AOAM532aiU8gtkcL1pUYfViM2nRv4L9Si7kr9qP5VfGBcu28Yt98JUC1
 Hwquq1uZsH75KAXNk3e5kqpAxxnWlYc67d6ekrfHCPFi3dU=
X-Google-Smtp-Source: ABdhPJw6HgZkWOT6faN/2NbH2Pu6VYcXWmu/o9nGe2mEFJt1bWCPu93/fLxa+hz01S/7sqdDxDRy2R0mrBGAmYXpgNw=
X-Received: by 2002:ac8:c8c:: with SMTP id n12mr4722077qti.339.1611072847246; 
 Tue, 19 Jan 2021 08:14:07 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-4-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 16:13:40 +0000
Message-ID: <CAM0jSHNa7EJ3M7XA_kVR395nn8iegp9kr0iWMwOpcducTWxs5A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gem: Use shrinkable status for
 unknown swizzle quirks
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
