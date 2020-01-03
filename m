Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7C712F6EB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 11:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203E16E1BB;
	Fri,  3 Jan 2020 10:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543146E1BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 10:57:58 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id n27so27092759vsa.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2020 02:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cUDEKig6tk10OT2xGr1PZNbFpDDUdIntJO694VKLNmQ=;
 b=bj6gL1iFGAxwqttssQYg/577c3iq6dX3EqXErlkPUu6catBgbIX9R0/36gS7wsoPcJ
 KU3qVbVr/6xurBziRQnQtllpTKb7UqZTJNSPCUOizyCdv2IqFIKIhW+VlsM+vMONYC8i
 SVKha8VzbSydnj68EAbus+JSK4HxLxbaIha9+TSc214vV5JH2u07V2VsPvRNydFlyusv
 HTbVIBXLaR7ZKbicHn8FlfMfz7u5ch+s0k4bTIjtDeZV+1b5/Qtq/d4H8X/RZ1NBv+mf
 RuFh624GyWAPsDhxm7FQjtmtbyZ8eG0g0E+XyKe08rWDiRuqn84iSgBV41DKffHIOYct
 KzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUDEKig6tk10OT2xGr1PZNbFpDDUdIntJO694VKLNmQ=;
 b=uEMrGf0QMAb7XCzQyUdy4cQtzf32XMs08FjF54Yt84AcLX/3ZGO5Iyw1p/FAyFG7jG
 uulXr7+O80gux031upKRHLG76wlfbZR7UtZFU7RlP9jGKriJOvFaZDWRA6hLkz+SGaly
 X/5BlShm8Vsuu0HFF5NgCBnVHxTtC4+tKH8Nu+NH1dSzGh7NmCdx5UsH4LTla4ntFYO2
 HS4vD/ikNMdtOjY0FFP5cBOsu00VYklv7mWdva2wQXOSOgweoEGj3/v9q6fWDGGjf+Tw
 qQYqGKT/Uuv/CeO6mOKeyToTGB6Atp3H4cdsPZHsK4r9/OkR/22i/1YSYGRNFaKVk46R
 SNvA==
X-Gm-Message-State: APjAAAVqjidW+m8O1sBZNQnkLE1hq+aAfE7iLOymkdzRpaIAfborlkBR
 hrQDRx29Tiqxuw0VQNS8loVp/7lmz9nv3J/nNOw=
X-Google-Smtp-Source: APXvYqyTPH0u6TDPZlnLzrYTY03eO/k1+AOgmfdue0WJx1OWNY5tQkGk6v7mtDEbZqIurAu5LvHsDCVEBtnrBV64DrU=
X-Received: by 2002:a67:3187:: with SMTP id x129mr41863342vsx.23.1578049077430; 
 Fri, 03 Jan 2020 02:57:57 -0800 (PST)
MIME-Version: 1.0
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
 <20200102204215.1519103-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102204215.1519103-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 3 Jan 2020 10:57:32 +0000
Message-ID: <CAM0jSHPzPzUdFH=uSgTxAwD0mmVnbbsXG58PQZFjco-_8k-R9w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Support discontiguous lmem
 object maps
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2 Jan 2020 at 20:42, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Create a vmap for discontinguous lmem objects to support
> i915_gem_object_pin_map().
>
> v2: Offset io address by region.start for fake-lmem
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
