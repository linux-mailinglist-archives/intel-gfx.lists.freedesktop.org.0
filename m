Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C1A6B4A2B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 16:19:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5135F10E971;
	Fri, 10 Mar 2023 15:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D3E10E971
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 15:19:47 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id h11so5372461wrm.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 07:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678461586;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=x++W0H9mAJQ+eGSZbKda5sqhW7JbKX3TxddFUSUc2dA=;
 b=pzUi7NikMu9R5ZM5btk8m62T8IgFRRyaOrzENPWh6t5UZddjHhnfIQTYOTFAsye2Kz
 MBNTYF9HybOgRUMJZeZMkFRZlNaPop6Rj7RVkbtqPqwuAzpkofhdsWSlvVFIC0w5hhnb
 Pr3mDEakgj4orDL3Hcna/gDvX4wcbScxNQrcNTDtfE6cd2AmnCO7eL4lIAMlNHtDTzio
 emtk1PB1BSiTQUDH/KT8s1PyJaUT6OjSE0f5LznJsdowbLRWtMoxvMoM3URYKZxOLI41
 eWY4McgXkZIT88sRWFJeTfFhmbXU1AltuTUzj+L8VC/j1RX6wDi5GNow6NMm7i6nuIt4
 1RFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678461586;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x++W0H9mAJQ+eGSZbKda5sqhW7JbKX3TxddFUSUc2dA=;
 b=E8gVukKgn2vglmdtxKuADT3DuFJNXnMbFFutw1fmNjrQFjL2fKDoztLxyx/aJT2pQF
 VJCRVUbF+NR4GZMj2+7YNhFkcgjLM21toUpai3GhckItIdthr5UJMK609qDMYXw460pH
 FiBtPMdpMePtyIFttLwlBl4f2OvzMnXBsvqEgp1cRhIZmU0pwtzDGVzKggeVm8apefWD
 fn81h9irXqsJWLpQjzEgp1idzmthL2ek6evlTLZYd/wpdJr+Bc2qQXPrttvxh44Cq0xV
 dCjXR2ApSHO53vpIKzgEI6K1ZLxviQAuHk6Zpv+LX5Lb5q5nHkF1U+hyMeFtQAo/wfPg
 youQ==
X-Gm-Message-State: AO0yUKXC1J5wTGAHsWg48Fnlc6UKdH887cLwPxNupdNIk4VPOJbvuM/T
 T3l6Izkim78SLuGNDT9NCjUiEHnyX54=
X-Google-Smtp-Source: AK7set8GIT5CGYMgFO6bvv39blbrvxKGUUQMT2zn5comT//s2GZMO+PgalZl46LqaUUas8zd/QVLcg==
X-Received: by 2002:adf:f191:0:b0:2c7:d6e:7e6e with SMTP id
 h17-20020adff191000000b002c70d6e7e6emr17675907wro.24.1678461585743; 
 Fri, 10 Mar 2023 07:19:45 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 l13-20020a5d410d000000b002c5598c14acsm93592wrp.6.2023.03.10.07.19.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Mar 2023 07:19:45 -0800 (PST)
Date: Fri, 10 Mar 2023 18:19:41 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <42a4c5e8-4234-4f4d-9810-2d84bfce1156@kili.mountain>
References: <d1cc6919-6392-41f0-b17e-86e5b706e945@kili.mountain>
 <875yba9dwh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875yba9dwh.fsf@intel.com>
Subject: Re: [Intel-gfx] [bug report] drm/i915/dmc: add i915_to_dmc() and
 dmc->i915 and use them
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

On Thu, Mar 09, 2023 at 04:51:10PM +0200, Jani Nikula wrote:
> On Thu, 09 Mar 2023, Dan Carpenter <error27@gmail.com> wrote:
> > Hello Jani Nikula,
> >
> > This is a semi-automatic email about new static checker warnings.
> >
> > The patch 1b28c1c789d0: "drm/i915/dmc: add i915_to_dmc() and 
> > dmc->i915 and use them" from Mar 1, 2023, leads to the following 
> > Smatch complaint:
> >
> >     drivers/gpu/drm/i915/display/intel_dmc.c:1162 intel_dmc_debugfs_status_show()
> >     error: we previously assumed 'dmc' could be null (see line 1148)
> >
> > drivers/gpu/drm/i915/display/intel_dmc.c
> >   1142  
> >   1143          wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >   1144  
> >   1145          seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));'
> >                                                        ^^^^^^^^^^^^^^^
> > This is a check for NULL too.
> >
> >   1146          seq_printf(m, "fw loaded: %s\n",
> >   1147			   str_yes_no(intel_dmc_has_payload(i915)));
> >   1148		seq_printf(m, "path: %s\n", dmc ? dmc->fw_path : "N/A");
> >                                             ^^^
> > The patch adds a check for NULL.
> >
> >   1149		seq_printf(m, "Pipe A fw needed: %s\n",
> >   1150			   str_yes_no(GRAPHICS_VER(i915) >= 12));
> >   1151		seq_printf(m, "Pipe A fw loaded: %s\n",
> >   1152			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEA)));
> >   1153		seq_printf(m, "Pipe B fw needed: %s\n",
> >   1154			   str_yes_no(IS_ALDERLAKE_P(i915) ||
> >   1155				      DISPLAY_VER(i915) >= 14));
> >   1156		seq_printf(m, "Pipe B fw loaded: %s\n",
> >   1157			   str_yes_no(has_dmc_id_fw(i915, DMC_FW_PIPEB)));
> >   1158	
> >   1159		if (!intel_dmc_has_payload(i915))
> 
> intel_dmc_has_payload() should always return false for dmc == NULL.

Ah, right.  Sorry for the noise.  I'm going to try figure out how to
make Smatch parse this correctly.

regards,
dan carpenter

