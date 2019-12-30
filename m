Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 672FB12D04F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 14:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA9789D83;
	Mon, 30 Dec 2019 13:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC32189D83
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 13:33:49 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id f7so11121757uaa.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 05:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WHfVsr/Sh/nO9oa0wtf27Ee8GtsbifAbt5cHXqxnU0A=;
 b=trkW7HhYp6EfInyQbQ5LDt3Eu7LDLPQyP3fN9DY4q1XDXFy09e7agITIum+aFncZR8
 +o+Eo+rG8akCHenB5zCfubX+jEuKQp9RgiyvqU3R7UHQG89sQW+7kpBQBS9KvT1WgWaR
 Co1+wVmLrB7zG3nROIzWHXqlTxLZpqICECEomouLYrYK16EauYGZa5CIsmsT5SreMpKS
 fpoIC5u4VcZfnU8xmLOoLLWSb6YU2kz/w6IHFjxDuA4Psk2FEp9242VibZ+tbsQ+zL8T
 GH4sXK1rjbRk4Covx9vgQI94dOLOnBdEweluU06D5nTiFnympmeadZLdUAVNayPyVDm4
 H6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WHfVsr/Sh/nO9oa0wtf27Ee8GtsbifAbt5cHXqxnU0A=;
 b=ONkEqR+rDWcA29h9CJvMXN8iW4wo6KTLBL1nIfriRxuefe7ztZQ1xa/EXVeAKZ+HSz
 B5V673e+P/tao5+4BCH0xkrsD5e3d6T+ZBTHFuyiCSGsQBtVYH6JdBQC2ba2r2iRRe/H
 qzbjsD55aPt3LLYVqmH0sU/bhqdA9hZH7N9bN+VpNZijzdScNCSsD1LCQbU/CLI7i0s1
 qWGiMUO+lqKe36EPc8W6hFx6HuQg2Q0KYpHXHgtXbTx7a6GoPjYxt8rk6LDVgBkrSCIS
 tjQTWPKauIzckvXA/da+1caHvN8LtFRSkYA4t4gQhNPJjdt8+I6ESSgIkEI+bd/HlhJw
 eTKw==
X-Gm-Message-State: APjAAAXIXgH2ixgTqL7h/mKChgW0EHBC73DEUITCSGFAsWzGYGSW+yY+
 6hWZNfMPyFT2FyhOmD9iBHSpNUnKceXAEIdxPeo=
X-Google-Smtp-Source: APXvYqy+7JvABV8cvEmxxJapMVhfi3ZEB+A/dWghL7Cr3zFwhUDL4CysoCUZitRBMQ2dauSlADrz9HbqIThlob6LDjw=
X-Received: by 2002:ab0:e16:: with SMTP id g22mr37697013uak.129.1577712829089; 
 Mon, 30 Dec 2019 05:33:49 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 13:33:22 +0000
Message-ID: <CAM0jSHO0PMTPeU_ni9G3h9_bSzMLqwJzgE+bK1hcs_HgVL3ETw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gt: Ensure that all new
 contexts clear STOP_RING
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

On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Set up the RING_MI_NODE in new contexts to clear the STOP_RING bit, just
> in case they find it still set after a reset (as they are the first
> contexts to be run).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
