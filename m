Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AEA12F8B1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 14:15:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3D46E30D;
	Fri,  3 Jan 2020 13:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860896E30D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 13:15:14 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id 59so14632430uap.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jan 2020 05:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VBelpgPNnqNSdde2jppuvAJtD5tqjGPBFvkUC5CYrM0=;
 b=Tnc2gBrFd4vs3nd3zHiw3tpkvyk7c5XMt+tasRD1+j3Q12VKtxbNb7/EfrpwaFKOV/
 hGtKfhYSBxcgNSIofAt/K8Cws4Tchel8RkjNbNsIoieXDbb8gs2mbxOrhFHNtUf56zan
 z4rSziIZUI8tccpfqRPZq6KWmMM58pS+VHtSYdr/lkac0DTMHToLRnG9dlJ1VhlV/hWS
 pBavxML8rE0tr25z8XRr79lUCkPoZAp+Vk/GaVA4TWQs+TSFLKPtEwtVQcIn7JbXESfP
 +Hucp4/YDkmprW+HONKuuT8vvDGWMrtYNXQvuMnaOz1IbiuXplz85yS93w0OYnlDM6iv
 at3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VBelpgPNnqNSdde2jppuvAJtD5tqjGPBFvkUC5CYrM0=;
 b=odjxNo0RChZ/PzCKmRF886N0e5jBmiUHgeHjTfWfYs61T3+6iDKtYtdnNA5ruiQT2i
 3RU1ap/VbCv/EUSMoTS9OhdV20kNFdf8lyGPp+wTBYR/c7bt6qsCsJqP1I5dp4OMDFkn
 Y36qV/29DolL3ritSzpPrv9IOIzl27xFuiQuRfR1Wh7PUklEfex0fkZRwx+yb0tFEKTz
 oV+Cy0ItvS1y+mzsaU2gRe7l/ts/t8BwKFnqsEE8serrl/wkiR0jy8HKpL9DVQDDDXh3
 MlQzi9FrOqqHqd8UjGLyXgNyPFSwlSHwklcyM2AWkzOfeMHZ6oJafVJeaCSYwPORWs0H
 rVxA==
X-Gm-Message-State: APjAAAWoOgH8vDuDR7fzwggIuTWkca7STbAZxe6G05dbe/+rF1Tsx6+D
 oAc1G/zbr2+h0grHTMq5zUcqUy1/zHKncD1RIkw07Q==
X-Google-Smtp-Source: APXvYqy32y60G3I5PoT6jNFW5XjtVvbR+QwIMWtPFIGwjUC70rCJB/CwGqO28Ly+isfKBZ42HqlZlz2XFvzdzD2Rg5w=
X-Received: by 2002:ab0:e16:: with SMTP id g22mr49990153uak.129.1578057313688; 
 Fri, 03 Jan 2020 05:15:13 -0800 (PST)
MIME-Version: 1.0
References: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 3 Jan 2020 13:14:48 +0000
Message-ID: <CAM0jSHOZ6yLKH+25DEEmp2YSOe3wsRD-dQ1ceEUg0RuJ3=9DrA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Move
 igt_atomic_section[] out of the header
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

On Fri, 3 Jan 2020 at 10:45, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Move the definition of the igt_atomic_section[] into a C file, leaving
> the declaration in the header so as not to upset headertest!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
