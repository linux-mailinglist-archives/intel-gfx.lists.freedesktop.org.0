Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BAF84313F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6341113724;
	Tue, 30 Jan 2024 23:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C39113724
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:28:27 +0000 (UTC)
Received: by mail-qv1-f54.google.com with SMTP id
 6a1803df08f44-6818a9fe380so33987546d6.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706657246; x=1707262046;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=HKS1x0+G1bcghb8XKyGon9Y/lzNST22DPeEtLmCzP/M=;
 b=RKhx0s6z5+IqChsiqYI2M4v3ZbMHUL6w3a+GLI7PT38GuAbQm4iMUtlp59kPTxY52k
 FlGm6Lh5rYLwTNXu7lXRkWChFg3AIOO1srbufMypv1qmfPTs3kk68lVAxxOLf/dZu6DP
 z34k5VIC/xqfF9fx7UQYzG0jtUsSCLeYszZJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706657246; x=1707262046;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HKS1x0+G1bcghb8XKyGon9Y/lzNST22DPeEtLmCzP/M=;
 b=OamAPqTYF/8idvju8svinfgBw3GAIqKVUEMHif/r4RCPMdabJ9dzEomgQa7qgxewBd
 Y6sRfjJEbKirmBEBIrrvU0kRVEpWhCyhuqLG6jQ4eAV6C0VF1Nfs6ByHHgvBwYwMZl9X
 QdlVfg0rLM0ZbaEGARGQD5g6y+4OHj8iou2b4kKEklIwwXFhyAeD+xftQuaMX3BgqsET
 QsFh5DWpYdKSAz1yPcEaUVAFvrYqbE6Mn5R6FVx7mZ0npzgRWLO6k8ewdhj93jl2EQxY
 IUOy6EcXrkZE6sorN39fl7P41z4PcsYckjwP6jiS2SNb4v1POLnfGlUsFLGCg8aAYS/R
 Ubqg==
X-Gm-Message-State: AOJu0YzaHA/CHVTTsftC5Vo21bVYCjcEbykjkLbZk4yOAgerIVmmse+W
 5LJvNRJYOexAoPMzI9oRzcyrTC+YAsYYWHQUayEb5Y4OcuQGvWGhjOceu9A3Yw==
X-Google-Smtp-Source: AGHT+IGaeIkoDY65LtZoY3KvxR22cD89ik55994MM8rbOfNcbNRpue5ns92Ps2VEQ2FV5zacMZFFnw==
X-Received: by 2002:a05:6214:f0e:b0:68c:4fac:930e with SMTP id
 gw14-20020a0562140f0e00b0068c4fac930emr1235qvb.54.1706657246200; 
 Tue, 30 Jan 2024 15:27:26 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 b17-20020a0cbf51000000b0068109717d02sm4939060qvj.54.2024.01.30.15.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:27:25 -0800 (PST)
Date: Tue, 30 Jan 2024 23:27:24 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 15/16] drm/i915: Try to relocate the BIOS fb to the
 start of ggtt
Message-ID: <ZbmF3IeyAyb-QERO@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-16-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-16-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:56:35AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On MTL the GOP (for whatever reason) likes to bind its framebuffer
> high up in the ggtt address space. This can conflict with whatever
> ggtt_reserve_guc_top() is trying to do, and the result is that
> ggtt_reserve_guc_top() fails and then we proceed to explode when
> trying to tear down the driver. Thus far I haven't analyzed what
> causes the actual fireworks, but it's not super important as even
> if it didn't explode we'd still fail the driver load and the user
> would be left with an unusable GPU.
> 
> To remedy this (without having to figure out exactly what
> ggtt_reserve_guc_top() is trying to achieve) we can attempt to
> relocate the BIOS framebuffer to a lower ggtt address. We can do
> this at this early point in driver init because nothing else is
> supposed to be clobbering the ggtt yet. So we simply change where
> in the ggtt we pin the vma, the original PTEs will be left as is,
> and the new PTEs will get written with the same dma addresses.
> The plane will keep on scanning out from the original PTEs until
> we are done with the whole process, and at that point we rewrite
> the plane's surface address register to point at the new ggtt
> address.
> 
> Since we don't need a specific ggtt address for the plane
> (apart from needing it to land in the mappable region for
> normal stolen objects) we'll just try to pin it without a fixed
> offset first. It should end up at the lowest available address
> (which really should be 0 at this point in the driver init).
> If that fails we'll fall back to just pinning it exactly to the
> origianal address.
> 
> To make sure we don't accidentlally pin it partially over the
> original ggtt range (as that would corrupt the original PTEs)
> we reserve the original range temporarily during this process.
> 
> v2: Try to pin explicitly to ggtt offset 0 as otherwise DG2 puts it
>     even higher (atm we have no PIN_LOW flag to force it low)
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

