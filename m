Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BEF2E26A5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 13:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5BB8976D;
	Thu, 24 Dec 2020 12:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9E18976D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 12:07:53 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id y15so1340535qtv.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 04:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rVYkJ2QvHPOKaMVeaejnRCLHvt2E6Rq9JRSuX4QdscA=;
 b=SOqWV7ss72hNe5uAJ6Mb0qaPH1Mwu7PbLkkwn3nIE3+vtTGCi0JVpXduUOkUIKlFYi
 IbwARBp2kuGsyBZITpf3/BzU48MDfUv1lrmuzb608iQ0PFWIwkz4YKHyCg5dz2sEiU1w
 4bs/y+YrW3JAHZ2q50k68jSbwLev7OQppbP7FYpGcsEQxAtFAFbTSasYpl6AVqpszCCI
 EyoYZxTngcoFIDbDvbCzhxKPyDzBFma+dMlWDW3NT1FANORa0Dz5Geg3KodzfqBAzFKT
 wqzyopw6chqjAemsn+oGpFw88KQdbLHSyclJQmEo5D3rfQXya7ZqSZFwCEKLP8wg92qS
 cczg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rVYkJ2QvHPOKaMVeaejnRCLHvt2E6Rq9JRSuX4QdscA=;
 b=GPoNloIESobyc+CAAK43dCF0l8fKW1xA0CG8qYwJLwGlPA85vo8Pm/upXvqdlu21F4
 8F2niaror34IZw45IL5nbdPdlZaoyueW/oPgQfXU+WA2cMY0PHNGNFVXw07lnj9GfaW1
 apCYqOSnTuVCJ8iGoioTrdFe027uJJvtPv7c0laOPsck0y2tkwy2j/tVXWj3N99AmWBd
 SV8zClGxtc+SxuVPiO7f6hi+sVmwvEIkEZdmuuNqXHGK0RMqBFmlgSTTjk+MOmNChRLt
 O/WCuC+It3jkRMtGnnu4KzSYtqorl/8/8IPiLHgxa1lkBwsul0L9PeLcCp0nTsplVhM7
 b2XQ==
X-Gm-Message-State: AOAM531C3qMdrGx7S0/Ule8q0j4yb0n5HkfukG6udOQJwqgRa4dViUPX
 ARGH77dM3G13rLkByY9ATSmBaTfBhVsD253RTGJieO2p
X-Google-Smtp-Source: ABdhPJytIZVrTMXB56RiywFOC1Poyf8DsoexkF4w5SIJXULOhkrJ5kzNGorRzQoibaFnD6bHJxbIfQ4Sdn/8I+i5AfI=
X-Received: by 2002:ac8:1386:: with SMTP id h6mr29568364qtj.95.1608811672984; 
 Thu, 24 Dec 2020 04:07:52 -0800 (PST)
MIME-Version: 1.0
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
 <20201223111126.3338-2-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Dec 2020 12:07:27 +0000
Message-ID: <CAM0jSHM15XTLNxOp9bZFX+tEdFpvavv13V5hMn=osmAg=7GCdw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/62] drm/i915/gt: Use virtual_engine
 during execlists_dequeue
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

On Wed, 23 Dec 2020 at 11:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Rather than going back and forth between the rb_node entry and the
> virtual_engine type, store the ve local and reuse it. As the
> container_of conversion from rb_node to virtual_engine requires a
> variable offset, performing that conversion just once shaves off a bit
> of code.
>
> v2: Keep a single virtual engine lookup, for typical use.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
