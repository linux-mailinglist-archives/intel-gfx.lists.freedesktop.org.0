Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 712A644AA65
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 10:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C52E6E849;
	Tue,  9 Nov 2021 09:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05F46E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 09:16:30 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 a20-20020a1c7f14000000b003231d13ee3cso1319742wmd.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Nov 2021 01:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Yjma5mRrb82FaHeqwEGkttg2XiFg5zhxGRY3Wmkbjxk=;
 b=fKFTVCySyPMePSh7mhupGnzSoJoGvjq1KyxBEzABecEN+XHEN+WMQOhWsEzkGtRmid
 9iqVwP//G3abSfqk+rIgkTn5yXuk0Mo3f5OlFYwtq9LaFWTjU8N9nNL55Cz3Nf/+UZuI
 ZcQxS2ta7waGRCAMMNIigaBfF2L2we8y7YaxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=Yjma5mRrb82FaHeqwEGkttg2XiFg5zhxGRY3Wmkbjxk=;
 b=umIpodeSdmKWLKWsY+T3qXj0Sge4EQwR6qk9IcivmhGigqo+ls13MmTN7DvExv8dE7
 zvoZEYcZfgidSC1HjejKD3SWJnepw2ebt8b5xOF9qaCFNBRM5FWbNxLh1D9cW4Ap8j29
 ihFnQYL6hdUYe0hmLW4FhkowhWqI0LnuuUhV7sOh80cfk92uHF7oEgSaBA4zhVamAGx6
 vvKq8j8TLn5k1hU7nsPKwqR3/3S/BvJt5iTbFnStYYPy7xKycSu+pgMkc7BZxXubM9eQ
 ARa6oBZYij0liRK5Jla5DkS6x6kIvvVjpxzH5KCtNqfxVazM9L2Gs5zsvR2YsuidKM00
 W5FA==
X-Gm-Message-State: AOAM531+k4hnNtehELZe+GnnkMcm9oQoSLPI+sWmrHvaKZnTOgstS3Va
 lWVdidTHaNJFhK1nu9KDFgFQNw==
X-Google-Smtp-Source: ABdhPJz7q+uhfnvfEH4DwVgZJaCEKFC1hKgEx5TjbsATOUhrI19DS7lgDXeUqtwj6dIwUW3QWcXnJA==
X-Received: by 2002:a05:600c:3b83:: with SMTP id
 n3mr5338933wms.116.1636449389206; 
 Tue, 09 Nov 2021 01:16:29 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h13sm19842564wrx.82.2021.11.09.01.16.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Nov 2021 01:16:28 -0800 (PST)
Date: Tue, 9 Nov 2021 10:16:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YYo8axRhW/zFQUgW@phenom.ffwll.local>
Mail-Followup-To: Jani Nikula <jani.nikula@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Dave Airlie <airlied@linux.ie>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20211015202648.258445ef@canb.auug.org.au>
 <20211101194223.749197c5@canb.auug.org.au>
 <20211105171517.287de894@canb.auug.org.au>
 <874k8qampc.fsf@intel.com>
 <20211106133314.42e3e308@canb.auug.org.au>
 <87zgqd6alj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zgqd6alj.fsf@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
 drm-misc tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Dave Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 09, 2021 at 09:40:08AM +0200, Jani Nikula wrote:
> On Sat, 06 Nov 2021, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > Hi Jani,
> >
> > On Fri, 05 Nov 2021 13:03:43 +0200 Jani Nikula <jani.nikula@intel.com> wrote:
> >>
> >> I probably should have pushed c4f08d7246a5 ("drm/locking: fix
> >> __stack_depot_* name conflict") to drm-misc-next-fixes.
> >
> > Please do so as builds will start failing otherwise :-(
> 
> Thomas/Maxime/Maarten, okay to cherry-pick that to drm-misc-next-fixes?

Yeah just do, for drm-misc this is considered in committer purview. I
think we should add a section to the docs about "What if a patch is in the
wrong branch" which tells you to just cherry-pick -x or whatever.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
