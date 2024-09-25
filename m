Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE8E98596E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 13:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D064710E995;
	Wed, 25 Sep 2024 11:53:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="ZaJnV8sL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A6810E995
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 11:53:37 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id
 2adb3069b0e04-5365c060f47so7811772e87.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 04:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1727265215; x=1727870015; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=o0d3c8Z9r2ZAGxuFjvCvLBTiAAYmewJnB9aenLoqHvo=;
 b=ZaJnV8sL22hEGoaJRRo3gdgoul5MnM/2fgdy7DO5B8cjpgHmTjjvvIh9bbMYlcZQZX
 dDoXtw2SSB4hOjY9ZasLjnbG5Fdwjmma9lHE34RPG/53BBradQMwYAzO3i3qWke1YTMM
 FccDkyqRvmK0ldwmAZEtsCs552G1/7fxHP/R8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727265215; x=1727870015;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o0d3c8Z9r2ZAGxuFjvCvLBTiAAYmewJnB9aenLoqHvo=;
 b=nDW2lDsJImMS9n4dGRTaEffcBR0FvsvLxdy4cQZYu7h7dm8TCSTCmyt83AD7q40tHT
 qxTRT98UKSRwPNtdnFP9tFxKu5y5w29goyjHtng+BFBLH0ik65MOrKX9JXw30vF7oahS
 o8eO6wfeleiyMMQVIhBIBrIjZ9Vhf64wkeabHp0wICGJ2DVrVbVDpIVbTqprbEkMt6/1
 lo3NemnlZJnM+7yAIseQxdwq1tGFXPn7zp4UVOu7Z7V6VGFHnF5E2vPSUbL1rihEyeKM
 SxvLSS4q9oefo6Cl/u6cZWLtB/CsVBMYaAEBFIM69YB8dW7XhBLpUrcJ+HrFI2iyuGUa
 sD1g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWo/4FpiFb/i3KvNkDB3ZdWwgv6ZN53kDod3+QwoTJZF80opnADYob/Hei/1YDCZM4ZRXlph6RbpMY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwA+9jy7HM8te5dZwD1va6PSQeincvGL56KL0vhx5X3EEtRSY7l
 gpq4lkYjNqCU+r3zqKfpJFRJCyr6476x439e/gJQLPzSqTD8EydD0BsuoOBDAkE=
X-Google-Smtp-Source: AGHT+IE0Khbx5ubXQZXgepY2DULlIwccn07EkXR+5s84p5vSsBP6AN2P3I4pP1Qg24LWmH7MsF1SMA==
X-Received: by 2002:a05:6512:10c1:b0:535:6778:952b with SMTP id
 2adb3069b0e04-5387755b89dmr1579834e87.44.1727265215049; 
 Wed, 25 Sep 2024 04:53:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9393138b18sm199347066b.215.2024.09.25.04.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 04:53:34 -0700 (PDT)
Date: Wed, 25 Sep 2024 13:53:32 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Simona Vetter <simona.vetter@ffwll.ch>, airlied@gmail.com,
 simona@ffwll.ch, lucas.demarchi@intel.com,
 thomas.hellstrom@linux.intel.com, rodrigo.vivi@intel.com,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, lina@asahilina.net,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, himal.prasad.ghimiray@intel.com,
 francois.dugast@intel.com, aravind.iddamsetty@linux.intel.com,
 anshuman.gupta@intel.com, andi.shyti@linux.intel.com,
 andriy.shevchenko@linux.intel.com, matthew.d.roper@intel.com
Subject: Re: [PATCH v6 1/4] drm: Introduce device wedged event
Message-ID: <ZvP5vPnoI-MS8Qar@phenom.ffwll.local>
References: <20240923035826.624196-1-raag.jadav@intel.com>
 <20240923035826.624196-2-raag.jadav@intel.com>
 <ZvKhIQGnGrcPURhD@phenom.ffwll.local>
 <ZvN9yw5AYtxudNne@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZvN9yw5AYtxudNne@black.fi.intel.com>
X-Operating-System: Linux phenom 6.10.6-amd64 
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

On Wed, Sep 25, 2024 at 06:04:43AM +0300, Raag Jadav wrote:
> On Tue, Sep 24, 2024 at 01:23:13PM +0200, Simona Vetter wrote:
> > On Mon, Sep 23, 2024 at 09:28:23AM +0530, Raag Jadav wrote:
> > > Introduce device wedged event, which will notify userspace of wedged
> > > (hanged/unusable) state of the DRM device through a uevent. This is
> > > useful especially in cases where the device is no longer operating as
> > > expected and has become unrecoverable from driver context.
> > > 
> > > Purpose of this implementation is to provide drivers a way to recover
> > > through userspace intervention. Different drivers may have different
> > > ideas of a "wedged device" depending on their hardware implementation,
> > > and hence the vendor agnostic nature of the event. It is up to the drivers
> > > to decide when they see the need for recovery and how they want to recover
> > > from the available methods.
> > > 
> > > Current implementation defines three recovery methods, out of which,
> > > drivers can choose to support any one or multiple of them. Preferred
> > > recovery method will be sent in the uevent environment as WEDGED=<method>.
> > > Userspace consumers (sysadmin) can define udev rules to parse this event
> > > and take respective action to recover the device.
> > > 
> > >  Method    | Consumer expectations
> > > -----------|-----------------------------------
> > >  rebind    | unbind + rebind driver
> > >  bus-reset | unbind + reset bus device + rebind
> > >  reboot    | reboot system
> > > 
> > > v4: s/drm_dev_wedged/drm_dev_wedged_event
> > >     Use drm_info() (Jani)
> > >     Kernel doc adjustment (Aravind)
> > > v5: Send recovery method with uevent (Lina)
> > > v6: Access wedge_recovery_opts[] using helper function (Jani)
> > >     Use snprintf() (Jani)
> > > 
> > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > 
> > Finally caught up on mail, so dropping this here again: Please also add a
> > small section to drm-uapi.rst, pointing at these functions. Just the
> > kerneldoc for developers is kinda not enough I think.
> 
> Would you prefer a new section or have the existing one (Device reset which
> looks somewhat similar but not entirely) modified?

Great point, I think just adding a paragraph and maybe the table/list you
have to the device reset section is perfect.
-Sima
-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
