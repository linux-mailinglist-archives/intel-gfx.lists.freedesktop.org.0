Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1004696AF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 14:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBB27A551;
	Mon,  6 Dec 2021 13:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3CC7A550;
 Mon,  6 Dec 2021 13:18:33 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id p3so9765216qvj.9;
 Mon, 06 Dec 2021 05:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QfM6r7Wt9Tj5DOQylxIiCrnk8we9qJZjFbxTCRe5N8g=;
 b=pUc1gFPFaQFVbYToMurfMFG+PXLRppxmJtxwnME6/elUbZrgi5HawGgd48R4WjeGpi
 gTzclBPZHXOYRBOSuXpqQD+q+5IOR74fbKRoiqCGpH4DHp/WDoPeN2csmUiX1G3RNxye
 jkkb0SlixTmADjrnkMK1QFMZbOo7n1cPiVQ+RYCsHCekoaCvLG5XRkY8Q69cFV2dEo03
 8cHwfYlvcR0kTZ1GN/ufNzdb1o8OH63qdXu4YYCdiQzuKBrxZANPi7Upw73C7svPXtC9
 ZYMQDrK70iW9vXz2mb3M9kt6lX4fkXtIaHSNaKOQdZbAFEHfjmfvpOvcNlQeDrJ084AX
 lOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QfM6r7Wt9Tj5DOQylxIiCrnk8we9qJZjFbxTCRe5N8g=;
 b=nDijp//vSHQ/PrKbORVqmDyNh+9IaQ14hfYBWW64YLc/tsISNep/es84vaPgICZLWI
 EhEHIMe33lLLVSeQPpZxaNmlReFt8uCWwBG2p2WtQL1As4msWIy7zkjEDNs0ayVookIB
 X87AlO0R6m5CRBVWP4Kho/xmIXQOdL4ADp6WGaK+BIIVWFtJfoD9vEJJUe/muDw8xOoo
 8mI+mDLjXcpRsTc+fIpu1X9h1fDzHMLyN4Ktt3GheUYYOGIla7gJoYA8RrCTPoHwYBiX
 X+SFCR0zBTArdVBMT4odaXpwZwdYccLzCuDOb4nmNeXYgK4d+HIWLbhE/hsCT1g21t0V
 c3TA==
X-Gm-Message-State: AOAM533xRquqgUrgFv5te4zK045pwQ06f5yiLLorHvIPH1DFYA/HzBx2
 wxnpl7rfpD7dkUWZrjauXuUBveQr0irsg3NbSxtMPPaEZgY=
X-Google-Smtp-Source: ABdhPJz7c7LEIVEFU57L2VkMAzwDatIU9ROvYwekbreTvUydYPInrMLkhy7Y5xvubjoM6QYeHg7kPeTb0wDwfhOh40E=
X-Received: by 2002:a05:6214:18c7:: with SMTP id
 cy7mr36305584qvb.0.1638796710217; 
 Mon, 06 Dec 2021 05:18:30 -0800 (PST)
MIME-Version: 1.0
References: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
 <20211129134735.628712-5-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211129134735.628712-5-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 6 Dec 2021 13:18:04 +0000
Message-ID: <CAM0jSHNf84JhZ3j2XawWbnv1Lmrvf0D+PG+U8n3QwZ6NFHozoA@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 04/16] drm/i915: Take object lock in
 i915_ggtt_pin if ww is not set
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 29 Nov 2021 at 13:58, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> i915_vma_wait_for_bind needs the vma lock held, fix the caller.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
