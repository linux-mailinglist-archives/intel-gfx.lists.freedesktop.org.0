Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6D66E7FAE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 18:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 314FF10E1C1;
	Wed, 19 Apr 2023 16:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629E010E9F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 16:32:24 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-94ea38c90ccso93216166b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 09:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681921942; x=1684513942;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vjXbDQrMTlMveGgpzjaxOqJ4MX3Zc3PuAQFculrIp90=;
 b=Bzjp+BeQnrAKzIJWTEfUAa+W3pdspTEwqQF0Pa3tbP0lt3pW+mEMdyjsxr7XKzQxxM
 mIrFsanjX96nzba8usxtgUNN+uUHN5AaScdGV3qyXuEIojvImSDkRl/zXstTSqiLG9qS
 2jZ2SMzLHM11Ly9g09B0B0ONvetjkk3kMyy5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681921942; x=1684513942;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vjXbDQrMTlMveGgpzjaxOqJ4MX3Zc3PuAQFculrIp90=;
 b=VluvYfsQWjClVKVIBgc4no6fmk9zHR+nEC4nUdJ363l4zSWJqOH/GqVXuKaJJW7A5I
 BcysaMEufUSHJqTZnFr3L8j+n6myMvdFvDvzAwzU1fTJ+rTyOy3tEwi8IROmW9Jeu0uj
 zPx/4c5dz8xGuQ6Pdt/j6GGRgM9elj16ILM2/1mx/6EusdNAId6UdOco/UxI/JhhgJOp
 xTxrnb+TGHyoYDaDpiUHKLjTQY5o7IQKVU2o4UnpdLnMdZueBxJh9NgGCAkQ5gE/iViR
 F4j19qHSjm1wNkSavEMPn3+FUzQuiNUQQTY1G9L6+fFqjR/eVUnepO2UV0M4meU55oFq
 tLYA==
X-Gm-Message-State: AAQBX9de1rELWzQZoqiHUzOdTxaI2eWGAWpjSvvAb5xVZwXSLqWLxG7I
 kUUPLz3fVkhFJLgyovgD9U0r8Q==
X-Google-Smtp-Source: AKy350aENGpODhst1P2SnjiQJvzhoC9GSkVgTOh9e3yM/mzLGea3xasoYck5TN1My/5JEkEvmKDOSQ==
X-Received: by 2002:a17:906:5d:b0:94e:d688:fc92 with SMTP id
 29-20020a170906005d00b0094ed688fc92mr16825594ejg.0.1681921942431; 
 Wed, 19 Apr 2023 09:32:22 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 t16-20020a170906269000b00932ba722482sm9754722ejc.149.2023.04.19.09.32.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 09:32:22 -0700 (PDT)
Date: Wed, 19 Apr 2023 18:32:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ZEAXlEeYrqvVejJj@phenom.ffwll.local>
Mail-Followup-To: Nathan Chancellor <nathan@kernel.org>,
 Mark Brown <broonie@kernel.org>, Dave Airlie <airlied@gmail.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20230414125913.851920-1-broonie@kernel.org>
 <ZDuqut+8BKjMXblJ@phenom.ffwll.local>
 <8c90b4db-3075-4275-bea8-01f501b00885@sirena.org.uk>
 <ZEAVxeIEOny81EGY@phenom.ffwll.local>
 <20230419163011.GA1865368@dev-arch.thelio-3990X>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419163011.GA1865368@dev-arch.thelio-3990X>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 the mm-stable tree
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Mark Brown <broonie@kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Dave Airlie <airlied@gmail.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 19, 2023 at 09:30:11AM -0700, Nathan Chancellor wrote:
> On Wed, Apr 19, 2023 at 06:24:37PM +0200, Daniel Vetter wrote:
> > On Tue, Apr 18, 2023 at 07:34:44PM +0100, Mark Brown wrote:
> > > On Sun, Apr 16, 2023 at 09:58:50AM +0200, Daniel Vetter wrote:
> > > 
> > > > Note there was a ppc compile fail, which is why we pushed the ttm revert.
> > > > That /should/ be fixed now, but would be good if you can confirm?
> > > 
> > > According to Nathan (CCed) there's still issues with the interaction
> > > with the PowerPC tree.
> > 
> > So this revert was supposed to fix this: 56e51681246e ("drm/ttm: revert
> > "Reduce the number of used allocation orders for TTM pages"")
> > 
> > If there's anything left then I need to chase that asap since the merge
> > window will open soon.
> 
> I think we are talking about two different issues here. My issue is not
> a compilation failure, it is an incorrect merge resolution that is
> happening in -next because of two independent changes in the drm and
> powerpc tree, the thread below should have more information.
> 
> https://lore.kernel.org/20230413184725.GA3183133@dev-arch.thelio-3990X/
> 
> I do not think this is something that either tree can solve
> independently of each other, -next has to resolve the conflict correctly
> (which is what I point out in the message above) and a note of it should
> be passed along to Linus so it can be resolved correctly in mainline
> when the time comes.

Ah yes that's a different one. I think we have a note about this one
already, but I'll double-check with Dave Airlie.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
