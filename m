Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5112DE6D1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 16:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A366E1CD;
	Fri, 18 Dec 2020 15:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888076E1CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 15:42:51 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id r7so2636608wrc.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 07:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TzwW3xjjWn4Ug0mSSu8SJ2wtKhKSJ9lrt0i+nH01vj4=;
 b=dyI4ZoIqVOLhXqCyfu/mV4crgcXXn/OtqE+2L+M8lleBXoA+XvXx0NNtt+FsZ3uIe/
 esTXT/lD49MqnY7PFRzmIL7gaIL26ElvfPa6Cwz+4gF85o9BtaWe+I5/X7Se/CAALtrm
 +MnIbU0EEjWiirv/8lWN5NRFgTb3YmIaOFHBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TzwW3xjjWn4Ug0mSSu8SJ2wtKhKSJ9lrt0i+nH01vj4=;
 b=sSIN2yL5tQVfrJDDa1BSH2/vQFt/RTw1efbwAlQ8isV6o9F63kqIR6nKdLFficX8w2
 Ynp4PtzozlKq5n9JU4AV+30DmGP6+q4S8VKmKjNJEz+x7e2pRcHDSXfCQINl78jgiBac
 iRkA2vmpq9BN3qycAKtxvV49XPie/uOeVEDRvU5IoNpnErtWgAUHLJFnS8a/qGWol7SB
 flOHKVSfJItcaK09fVwb9umnBWcrHbYabxxQUXTJUKODUMyjj6OumsAf1+G2YTJrc0xt
 b/e7BCkzobXkrbRDJB5Pr6UPM3k3ugti1PejQ8mdXzXkTXq3axpjCcey9fFwW4OYRosO
 ijPg==
X-Gm-Message-State: AOAM530ecue+2c5UBSCtk5Yuwwf6Tx4NMqHsFTpQGniFjoDjWBPtAlHo
 1BuPmOVmvEI93TzwQeViO+1jiw==
X-Google-Smtp-Source: ABdhPJzFoz47xZGKOeU8S2OrPf1heeLkRSMGdicNxQBfyOsNIS0LdeecOIJqsfvoygna3jLijzqXsg==
X-Received: by 2002:a5d:570e:: with SMTP id a14mr5171465wrv.126.1608306170200; 
 Fri, 18 Dec 2020 07:42:50 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m18sm14117224wrw.43.2020.12.18.07.42.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Dec 2020 07:42:49 -0800 (PST)
Date: Fri, 18 Dec 2020 16:42:47 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X9zN96w7c5bPLMwJ@phenom.ffwll.local>
References: <87zh2bp34m.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zh2bp34m.fsf@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 18, 2020 at 05:04:09PM +0200, Jani Nikula wrote:
> 
> Hi Dave & Daniel -
> 
> drm-intel-next-fixes-2020-12-18:
> drm/i915 fixes for the merge window

Pulled, thanks a lot.
-Daniel

> 
> 
> BR,
> Jani.
> 
> The following changes since commit efd3043790c6e92f0bbe1fe385db9b544131c59c:
> 
>   Merge tag 'amd-drm-fixes-5.11-2020-12-16' of git://people.freedesktop.org/~agd5f/linux into drm-next (2020-12-16 23:25:51 +0100)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-2020-12-18
> 
> for you to fetch changes up to 046f70d31ddb2069941aec54966fec5b7fbc7b7b:
> 
>   drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping (2020-12-18 12:30:10 +0200)
> 
> ----------------------------------------------------------------
> drm/i915 fixes for the merge window
> 
> ----------------------------------------------------------------
> Aditya Swarup (1):
>       drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping
> 
> Chris Wilson (2):
>       Revert "drm/i915: re-order if/else ladder for hpd_irq_setup"
>       drm/i915: Fix mismatch between misplaced vma check and vma insert
> 
> Lionel Landwerlin (1):
>       drm/i915/perf: also include Gen11 in OATAILPTR workaround
> 
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                | 12 ++++++------
>  drivers/gpu/drm/i915/i915_irq.c                | 27 ++++++++++++++------------
>  drivers/gpu/drm/i915/i915_perf.c               |  2 +-
>  4 files changed, 23 insertions(+), 20 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
