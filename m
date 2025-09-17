Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D66B7D561
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842A110E027;
	Wed, 17 Sep 2025 04:39:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bhMzaSK3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F1F10E027
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 04:39:04 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id
 41be03b00d2f7-b54b3cafdcaso3204991a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 21:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758083944; x=1758688744; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=z8fV8zlOO20RsVvFlRYpgn1tfsf1DE4Abz4x8Z6o6Co=;
 b=bhMzaSK34xGhqVg/iNjp+VDz7lvu+DTuY5WhWiBbDL9W9gfqxJc9LRlPQ+LHwt+wQK
 rE0u4QNdovTOYATg3phoM1DkUNHayyHbrnzz+JY2f5C40qFLOZofzree9uGOA+oEiUAa
 a4Q5zMFUn8PiOza7MEQILHKx9lrxnuagw390rrbGvZkZ8b3qHMr2C1E5FOXJj0mrUDmL
 EPlWfLc5tlyKeL9dudeObDmUBIj7wCSVJnneaO1Ic4ds7gIssniUfexFOleynkx3HZxr
 hg60K/Jx4xCFFRtxwxIQ78+sz9eo0M+YsnIvXIAZAWCzpM9/luEqgA+X6HUgBdmXhUA/
 79nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758083944; x=1758688744;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z8fV8zlOO20RsVvFlRYpgn1tfsf1DE4Abz4x8Z6o6Co=;
 b=vh2BzX3Bh8NJaNHUtXIC29bBl9fVjyqsZS516hyFwMPTmNbQNtrId2+hddyKNtnG0s
 ljDO+ohPzVqHxPyjHdi90PES8N803dhgxq050Z1VNjvENruyiKTt5E12Ys9VmPFgljuz
 7jkaeEuWTDukboZS2A6pdpeEPgreOXuyWjv0Jbnnxnwewys1kITKrqhdNA8OoPZPtx00
 zgOxxXf1xcct0S+Udhx5j6Cc+0ZO0tvqmQwg1/3rfNKofX76zWOb9qOQExDxrHDsDArV
 fah+OU5pwl78G7B/v6AyBkmv4Mxj+AyABxTTcKDnhQDykLwwGv/nPYdyy42opdbu62BN
 9z5A==
X-Gm-Message-State: AOJu0YxJVElzGw1jMUeT0rUG4MaHJ/Iw4qijdA0S+JdM77boW7D/lGp3
 /NW1fCCRK9ytsFrGptJ4wNy6IrB+esW1unXt8LZtN0gJIt6766kZ1bmU
X-Gm-Gg: ASbGnct3WnmbfDIrsLKREIpVra132BcGB6a1EWn8HdJQRl+xB9zWcLUOkpT32yHO10g
 t4vATm0objX779fC/9m96n8S2tJE2QNgiyCBYhG6BWhT2mbFTy+NmegU1qwhH1O1u00SHr9gvWl
 uabo9ouxZ9j6WFGa25JaZzqcx57T0icjoNoAu7OiLIlx3u35xegO2V1bhByJYGpjaRXgDmGYkId
 GC9HO43sgT5QF9hXDzC7VeoxLNNfJEMjkPnhXSXS3eSnCxEHrcp/Tn+mlrsENMzw0CKuw6mHDQ2
 jZBTfPHNHERFPT+Vx47jwFm1SXDBRqXnY1NQ3W+K2mrIcjDCFn/98PXx1UaWDPXknaEFfTJF6vU
 vuoT2hNaaFeaNhMXpz1o10t3Q6MWgsaElQ4+oz/c=
X-Google-Smtp-Source: AGHT+IEY3kQRf4R5ihgBABKVAzU8yQJYVkcXeAPhObsGHo88nb1JrcGXU2RjkVy4I9MsvjGYlfOp/g==
X-Received: by 2002:a17:903:8ce:b0:24b:1609:5e2b with SMTP id
 d9443c01a7336-268119b3b6emr10276415ad.5.1758083944375; 
 Tue, 16 Sep 2025 21:39:04 -0700 (PDT)
Received: from localhost ([2400:2650:24e0:bf00:6647:e402:ac7:7283])
 by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-77607a6986esm17576363b3a.43.2025.09.16.21.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Sep 2025 21:39:04 -0700 (PDT)
Date: Wed, 17 Sep 2025 13:39:01 +0900
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 alex.zuo@intel.com
Subject: Re: [PATCH 0/2] drm/i915/gvt: Various mmio.c fixes
Message-ID: <aMo7ZY6hBl_7wQn3@dell-wzy>
References: <20250916174317.76521-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916174317.76521-4-jonathan.cavitt@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 16, 2025 at 05:43:18PM +0000, Jonathan Cavitt wrote:
> Remove the 'reg >= 0' check from reg_is_mmio because it's unnecessary
> due to it always being true.  Also, fix the kernel docs for
> intel_vgpu_gpa_to_mmio_offset, as they incorrectly assert it returns
> 'Zero on success, negative error code if failed', when in reality it
> returns 'the MMIO offset of the given GPA'.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> 
> Jonathan Cavitt (2):
>   drm/i915/gvt: Remove unnecessary check in reg_is_mmio
>   drm/i915/gvt: Fix intel_vgpu_gpa_to_mmio_offset kernel docs
> 
>  drivers/gpu/drm/i915/gvt/mmio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Looks fine.

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

