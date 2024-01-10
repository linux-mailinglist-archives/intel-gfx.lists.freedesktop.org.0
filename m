Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0FC82A06F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 19:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6317510E657;
	Wed, 10 Jan 2024 18:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B97210E657
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 18:52:00 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-40e4582ed74so37430545e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1704912718; x=1705517518; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=khjjw9VUi5Fs8jrAttbbUYSHNqxjIpBzOUT5i61h0BU=;
 b=bztIuzFU0QVL46eo/HCUHhrhxAxu9w+3E7xKMsrO/N8etcx/rKKoLev5rAV+jFfaBg
 tgOys8e58/KwRS5rcjbkDDgXe4mdUhwVwyh0a3LsmRkM/1sznMR4+UYCnYqSsdwybY6S
 y4jyii7XjHZ8p0xYT548QELt4cadBVxrX5S91CraN1KSFFOXPnjIm18kHB8qU5jTcBG7
 LeYZ+y6PunGv+xh8IOLh7GrWy3Xg75H14VrxeV+UP8jmGpOnrGDvrjD2AyEookLgc02h
 ac0Ghyo3h4I8xt8CPTlyi0yNDBSEXM7UjzZnfIOjj2aXQelAhdM93rHFvG5mPGMfO1uj
 79vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704912718; x=1705517518;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=khjjw9VUi5Fs8jrAttbbUYSHNqxjIpBzOUT5i61h0BU=;
 b=mEICHAuDLoUAUwEHx4kjh/ryxm/12MeXCG17wQYQ0oyNGGU0+TaOUEcgNGbwPp9VsI
 qS3EJLBcQY0plsgeW8D4XadixxbT49Fy3QFG5tu1+gDz00tluuOZDRna7TcQugnVdI1A
 x9bflng3JPXLVKOXs71ZF36dzBb7QYe7f+Vm+T3RNlUiuyLdIMbYFUkrUplIdpBSVX/m
 VrCKzF2OlA2GXKYt9Fdk2LUe6EXPPfsbEchER0QFtPszK/GWBQS+3IAn0rAY6d+51G5s
 G4z7EdwX153m0GAPQlZOwpEn1RGHOWgOsMDSGFVZ+8GnRoRErHENUtHgS3WSqTTd5d6y
 H2BQ==
X-Gm-Message-State: AOJu0Yz0Wyioew23gq+ZhE49tX0iW0crMIUmELvsfKwUKcOp/e8FaGR1
 /eFQz1cQkLy9ZJYVuSCv7+oUwSWKwBHrmw==
X-Google-Smtp-Source: AGHT+IFcnxDmj3TC/WXfVLyJHT2mD8xIgU9DvvJCrywzIVgaDbYsMJIxKpXZqvOmoYD+qvPXsuxOJA==
X-Received: by 2002:a05:600c:164a:b0:40e:5424:4274 with SMTP id
 o10-20020a05600c164a00b0040e54244274mr387428wmn.282.1704912718511; 
 Wed, 10 Jan 2024 10:51:58 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 o23-20020a05600c511700b0040e4c1b0c14sm3137753wms.34.2024.01.10.10.51.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jan 2024 10:51:58 -0800 (PST)
Date: Wed, 10 Jan 2024 21:51:55 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: chris.p.wilson@intel.com
Subject: [bug report] drm/i915/gt: Use i915_vm_put on ppgtt_create error paths
Message-ID: <963ea6ea-e49e-4dbb-b050-1f5f545020dc@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Chris Wilson,

This is a semi-automatic email about new static checker warnings.

The patch c286558f5853: "drm/i915/gt: Use i915_vm_put on ppgtt_create 
error paths" from Sep 26, 2022, leads to the following Smatch 
complaint:

    drivers/gpu/drm/i915/gt/gen6_ppgtt.c:274 gen6_ppgtt_cleanup()
    warn: variable dereferenced before check 'ppgtt->base.pd' (see line 271)

drivers/gpu/drm/i915/gt/gen6_ppgtt.c
   256  static void gen6_ppgtt_free_pd(struct gen6_ppgtt *ppgtt)
   257  {
   258          struct i915_page_directory * const pd = ppgtt->base.pd;
                                                   ^^
pd is ppgtt->base.pd.

   259          struct i915_page_table *pt;
   260          u32 pde;
   261  
   262          gen6_for_all_pdes(pt, pd, pde)
                                      ^^
There is an unchecked dereference inside this loop macro.

   263                  if (pt)
   264                          free_pt(&ppgtt->base.vm, pt);
   265  }
   266  
   267  static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
   268  {
   269          struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
   270  
   271          gen6_ppgtt_free_pd(ppgtt);
                ^^^^^^^^^^^^^^^^^^^^^^^^^^

   272          free_scratch(vm);
   273  
   274          if (ppgtt->base.pd)
                    ^^^^^^^^^^^^^^
Checked after an unchecked dereference.

   275                  free_pd(&ppgtt->base.vm, ppgtt->base.pd);
   276  
   277          mutex_destroy(&ppgtt->flush);
   278  }

regards,
dan carpenter
