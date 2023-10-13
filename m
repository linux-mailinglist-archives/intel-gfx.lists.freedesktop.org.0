Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD08E7C8A32
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 18:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C8010E61D;
	Fri, 13 Oct 2023 16:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B36610E61C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 16:15:54 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-406553f6976so6675075e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 09:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1697213753; x=1697818553; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rY/OAKvNly9Rc3a/BDlQPzJe+rG6fOysad2AjRxUknI=;
 b=aJodLQ2EyuUZndYrYpUZrE8hgpPE8CCmmbdwGDI5P4lIMI8RtUI3XfwUelsKLQW67C
 g4lHPy1D6Tdx0Sqj9/i6rAFDeIrrLCxmEGbDhm+TcMY4Meaxb5VRvelCNJDD1V8KL9lv
 0BHkb5pvGiF8oilrSuevlBYB4/2EiOIoaahaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697213753; x=1697818553;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rY/OAKvNly9Rc3a/BDlQPzJe+rG6fOysad2AjRxUknI=;
 b=d8g+940Ugka62h9isoSkcnTKgC75iN3FJtpJ2gnTxUnN0PgeOLg7ET9pS3irtRkzyB
 pTo38ugUS5rOUjaaWn/hPjaMNVinh5oVOx1mh0sia4HFw4mQS9Jc/LiQ5qSr1z//ktv4
 o+NUvM5hwyuCyVsKFHDRxWCAXtMAyqW6jln6z+BVgduv0ODOJCaUWVsfaGrITPuKf1uL
 JaDFTKBQllb4JakVYSxecfq4Cp0aKeINny5o1pKOQfGLQLMLBq95G4Pj/7Qf1uJrZOXr
 1E7OZVIyrEK+F6LJgqEC/cn3u5ltXv3iVWx2ta+Pxd3T+mwnxt/K69g/SOQmwPT9UIUL
 MszQ==
X-Gm-Message-State: AOJu0Yxro+mVoYMi1jCmmscKCJhRTXNsdw6/rBxc1XEh2ScRF4BnE1n0
 RyQGIPW8XRnsf7Tcee/6/C0rFA==
X-Google-Smtp-Source: AGHT+IGz4C19ELIeF2uxBTPB3+HBMoQ09FU8pZtUTNt8/nauK8H/ephzp814j2ZmFxsUyVqavQuJWQ==
X-Received: by 2002:a05:600c:1d03:b0:404:7606:a871 with SMTP id
 l3-20020a05600c1d0300b004047606a871mr24038108wms.2.1697213752664; 
 Fri, 13 Oct 2023 09:15:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 n12-20020a05600c500c00b0040773c69fc0sm536868wmr.11.2023.10.13.09.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Oct 2023 09:15:51 -0700 (PDT)
Date: Fri, 13 Oct 2023 18:15:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZSltNRk0vaPdSxI2@phenom.ffwll.local>
References: <20231013103140.12192-1-nirmoy.das@intel.com>
 <ZSkg47slZ25rSQK4@intel.com>
 <ae8d62c9-ddfb-8913-6b67-681d9cf70978@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ae8d62c9-ddfb-8913-6b67-681d9cf70978@intel.com>
X-Operating-System: Linux phenom 6.5.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush WC GGTT only on required
 platforms
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 13, 2023 at 02:28:21PM +0200, Nirmoy Das wrote:
> Hi Ville,
> 
> On 10/13/2023 12:50 PM, Ville Syrjälä wrote:
> > On Fri, Oct 13, 2023 at 12:31:40PM +0200, Nirmoy Das wrote:
> > > gen8_ggtt_invalidate() is only needed for limitted set of platforms
> > > where GGTT is mapped as WC
> > I know there is supposed to be some kind hw snooping of the ggtt
> > pte writes to invalidate the tlb, but are we sure GFX_FLSH_CNTL
> > has no other side effects we depend on?
> 
> I spent some time searching through the gfxspec. This GFX_FLSH_CNTL register
> only seems to be for
> 
> invalidating TLB for GUnit  and (from git log ) we started to do that to
> enable WC based GGTT updates.

Might be good to cite the relevant git commits in the commit message to
make this clear.
-Sima

> 
> 
> So if I am not missing anything obvious then this should be safe.
> 
> 
> Regards,
> 
> Nirmoy
> 
> > 
> > > otherwise this can cause unwanted
> > > side-effects on XE_HP platforms where GFX_FLSH_CNTL_GEN6 is not
> > > valid.
> > > 
> > > Fixes: d2eae8e98d59 ("drm/i915/dg2: Drop force_probe requirement")
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Cc: John Harrison <john.c.harrison@intel.com>
> > > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > > Cc: <stable@vger.kernel.org> # v6.2+
> > > Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_ggtt.c | 6 +++++-
> > >   1 file changed, 5 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > index 4d7d88b92632..c2858d434bce 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > @@ -197,13 +197,17 @@ void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
> > >   static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
> > >   {
> > > +	struct drm_i915_private *i915 = ggtt->vm.i915;
> > >   	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
> > >   	/*
> > >   	 * Note that as an uncached mmio write, this will flush the
> > >   	 * WCB of the writes into the GGTT before it triggers the invalidate.
> > > +	 *
> > > +	 * Only perform this when GGTT is mapped as WC, see ggtt_probe_common().
> > >   	 */
> > > -	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
> > > +	if (!IS_GEN9_LP(i915) && GRAPHICS_VER(i915) < 11)
> > > +		intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
> > >   }
> > >   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
> > > -- 
> > > 2.41.0

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
