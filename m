Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC468430FC
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF75110E8B6;
	Tue, 30 Jan 2024 23:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4277910E8B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:16:58 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id
 d75a77b69052e-42aadddeaf8so17701311cf.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656557; x=1707261357;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=uoiZE/zsQQI54E4oXMM4MMuRwJ5xomY8eRPPms9oxZE=;
 b=i0XUutQ+3KZ6QwMEwIaTmY7BZaS/dNmlifT7brQfNZEnhrkBVAx+/QIURZDI8oBvnu
 qsLWitYZHDnW+7JHegoEdiKLM2BtXvVRhB8GoDamjQoh/7Mbbp8vLVsUCFE0ba5Y7HKU
 7O0XdMD5oMUz3Aa/DEsSkouDQUUPIfzmxTK7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656557; x=1707261357;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uoiZE/zsQQI54E4oXMM4MMuRwJ5xomY8eRPPms9oxZE=;
 b=P0XfIYcgihH4BYiBLOA2Gmy3Z1aoa7HpRPsX6/AfhcvIg2TMu6V0S6KKaBCtd2PGc9
 FGqP0NNxXrxmoLuyHmzysqogbO/8zMWCShQM3zr2Oxpzy7QKxV3utJm6AYCYIkvdq1K+
 sVG4Qr5/1LpcF1mb+3pAdAj7huYmNNnIVHVESnM1lYZzyOIY99rqwYLa8VG0zCnaoIAh
 G1KwkBloam6UjWpf2+1cSW202nGdXQGfo1O2GPy4xvyWETEOJe5Rv0cbCmKrhkxYXEfC
 c+GLBwkN/1VJgYIZhwpSKEkKePXw+5LZ8fpTwp8aSekKWKx2bGpNis+QxwchkZkPvK/g
 9j7w==
X-Gm-Message-State: AOJu0YwYq8PDscPYMXuPfeOT9OC/7M5Le7mRLKzaGbLDl1uTXaINRzv3
 keEdEFQ3rzJGy4Hz0sLT1sIai0NqQ5/GytUMaXp7V0o/N7BTO5q7+Vr3V3/8RQ==
X-Google-Smtp-Source: AGHT+IHhCvv6cGytUQ2NnpV9fBJ3joz5kn9nNBhiKOg07H5WD63jNZ5WdM2vkv19WWrmhdx9pEpc5w==
X-Received: by 2002:a05:622a:283:b0:42a:db63:2bae with SMTP id
 z3-20020a05622a028300b0042adb632baemr160862qtw.7.1706656557297; 
 Tue, 30 Jan 2024 15:15:57 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 cg3-20020a05622a408300b0042a4691f8dasm5069654qtb.8.2024.01.30.15.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:15:56 -0800 (PST)
Date: Tue, 30 Jan 2024 23:15:55 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH v3 01/16] drm/i915: Use struct resource for memory region
 IO as well
Message-ID: <ZbmDK2WTZmaDGMHt@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-2-ville.syrjala@linux.intel.com>
 <d9566696-3e6e-4382-b0ba-0995cbb001ab@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d9566696-3e6e-4382-b0ba-0995cbb001ab@linux.intel.com>
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

On Tue, Jan 16, 2024 at 11:23:00AM +0100, Nirmoy Das wrote:
> 
> On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > mem->region is a struct resource, but mem->io_start and
> > mem->io_size are not for whatever reason. Let's unify this
> > and convert the io stuff into a struct resource as well.
> > Should make life a little less annoying when you don't have
> > juggle between two different approaches all the time.
> > 
> > Mostly done using cocci (with manual tweaks at all the
> > places where we mutate io_size by hand):
> > @@
> > struct intel_memory_region *M;
> > expression START, SIZE;
> > @@
> > - M->io_start = START;
> > - M->io_size = SIZE;
> > + M->io = DEFINE_RES_MEM(START, SIZE);
> > 
> > @@
> > struct intel_memory_region *M;
> > @@
> > - M->io_start
> > + M->io.start
> > 
> > @@
> > struct intel_memory_region M;
> > @@
> > - M.io_start
> > + M.io.start
> > 
> > @@
> > expression M;
> > @@
> > - M->io_size
> > + resource_size(&M->io)
> > 
> > @@
> > expression M;
> > @@
> > - M.io_size
> > + resource_size(&M.io)
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>

Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

