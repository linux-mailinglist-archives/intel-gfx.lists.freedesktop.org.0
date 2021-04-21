Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D04CE366E47
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 16:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F006E9BF;
	Wed, 21 Apr 2021 14:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2455A6E9BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 14:32:30 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso37199297otb.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 07:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KatKMRcorHaCB8knJAAJ9JHDSKXTyx9e9HLULQuHgrw=;
 b=Lk9mhpUltJNpMeMC/+MYMF5AVtHdMcxa/Gaf0vfsQCCCNJj9tDSD+Yt0gsFvik3kR2
 I1N0CxLCo6qJDWjfOHXnxmah+smujMVA5FU8CRp/HjbzUew2IJ4z238DWKHVzWQGQvAn
 bss0JKTo5oLvIuqC1kbc1BJqut9z24/EJO/4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KatKMRcorHaCB8knJAAJ9JHDSKXTyx9e9HLULQuHgrw=;
 b=b4bl500GWTiG+GwlpUB9K4hzljGwE9cmEz+bl1+PwHdA2abJjz+wFoLzp5V2wa8EU4
 phFMHOtYvjqqfGcOMNpgRhq5TcV2XKr/ilvljhb6NTGfMeV0mJZ2rA2a8FR10sqmwekw
 lLet1k3OnftmDuuntj8DqDsXXr2MXIf9h2aNFHZyUaxRohvP5J1Qypfx/MY3kzooABFj
 PipGfNYCEk5SvAIhBkbH1VVMRBWofKAtuGR1E68NEXWEfGEi/jLrIMpkSzGq7ein7XSe
 vrDW3fDuEdNH+ZibW+5D0OelsK2tEsXtKhTS6eUHZsfpNt4gRo2d46W46xFmLswlp+HF
 EYjw==
X-Gm-Message-State: AOAM533abVwcJl9qwqoEe/zqR4E84ER7gGUoXD1HZ5npvoSpYCFm9tn5
 zW7jpk9gPAK7B0Zmm6D4PCVd2Bta8xKQX1uu533Qwg==
X-Google-Smtp-Source: ABdhPJzhesco6THmq6TsUiGIDC3hulWXQaMptXynVdEEkp0XyOzFvk6Agm/HhpxmFj31qNzTiQMCz5w39aqGVCzGpgs=
X-Received: by 2002:a05:6830:1398:: with SMTP id
 d24mr24080226otq.281.1619015549354; 
 Wed, 21 Apr 2021 07:32:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210421120353.544518-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210421120353.544518-1-maarten.lankhorst@linux.intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 21 Apr 2021 16:32:18 +0200
Message-ID: <CAKMK7uFpoY7YMEMbftjq+P5XHR6L+F0KwFtbK7CtuUFy7HsLkQ@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix docbook descriptions for
 i915_cmd_parser
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
Cc: Dave Airlie <airlied@linux.ie>, Stephen Rothwell <sfr@canb.auug.org.au>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 21, 2021 at 2:03 PM Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> Fixes the following htmldocs warnings:
> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'jump_whitelist' not described in 'intel_engine_cmd_parser'
> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'shadow_map' not described in 'intel_engine_cmd_parser'
> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Function parameter or member 'batch_map' not described in 'intel_engine_cmd_parser'
> drivers/gpu/drm/i915/i915_cmd_parser.c:1420: warning: Excess function parameter 'trampoline' description in 'intel_engine_cmd_parser'
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index e6f1e93abbbb..afb9b7516999 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1369,6 +1369,18 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
>         return 0;
>  }
>
> +/**
> + * intel_engine_cmd_parser_alloc_jump_whitelist() - preallocate jump whitelist for intel_engine_cmd_parser()
> + * @batch_length: length of the commands in batch_obj
> + * @trampoline: Whether jump trampolines are used.
> + *
> + * Preallocates a jump whitelist for parsing the cmd buffer in intel_engine_cmd_parser().
> + * This has to be preallocated, because the command parser runs in signaling context,
> + * and may not allocate any memory.
> + *
> + * Return: NULL or pointer to a jump whitelist, or ERR_PTR() on failure. Use
> + * IS_ERR() to check for errors. Must bre freed() with kfree().

IS_ERR_OR_NULL or needs an actual bugfix in the code since we're not
consistent. Also s/bre/be/
-Daniel

> + */
>  unsigned long *intel_engine_cmd_parser_alloc_jump_whitelist(u32 batch_length,
>                                                             bool trampoline)
>  {
> @@ -1401,7 +1413,9 @@ unsigned long *intel_engine_cmd_parser_alloc_jump_whitelist(u32 batch_length,
>   * @batch_offset: byte offset in the batch at which execution starts
>   * @batch_length: length of the commands in batch_obj
>   * @shadow: validated copy of the batch buffer in question
> - * @trampoline: whether to emit a conditional trampoline at the end of the batch
> + * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> + * @shadow_map: mapping to @shadow vma
> + * @batch_map: mapping to @batch vma
>   *
>   * Parses the specified batch buffer looking for privilege violations as
>   * described in the overview.
> --
> 2.31.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
