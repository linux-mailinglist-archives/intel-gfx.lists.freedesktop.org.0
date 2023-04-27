Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 635DC6F09CB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 18:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0DA10E0ED;
	Thu, 27 Apr 2023 16:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15DC110E0ED;
 Thu, 27 Apr 2023 16:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682612703; x=1714148703;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sYCmHNowSmuwaB9xwBuKWPQJcoR42q2J9wXpOV7LHQo=;
 b=GMcTBp6nVWCd0rB0a0wYAUn0JuXuhT/gbNoPM9tKyTpgNWrry5do5Hd6
 0leTtb5QjFn5uXonUv/99mYIrzZpPb3W+or6iorM1P2qTpUcU8YtwHMpD
 xyHlqo0KtVom+bSf8PN4PLAzEKxe5FDH0prDdHUHqWOgQa3LbRukKqyz2
 wtz3LV2jadyhZ5e8HT2uTlCHTXFTlJ//JkQGr9ecsnTn3rYuWIsTvUthg
 +OYqvFQluNi71MkQVlZmb/+aiHuZukgPCwXqSFOsQJ2nsyI/HbfDx/wwC
 nz3Btp+tzwREu7TuQX51iMlk7dU44gF7WC7ZT4v8mNQERnOQLX3RiKrMZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="433780767"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="433780767"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 09:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="763887868"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="763887868"
Received: from knowak-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.9.125])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 09:25:00 -0700
Date: Thu, 27 Apr 2023 18:24:58 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230427162458.5bkxmdh2zb5zjykc@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230425162405.1730513-1-vinay.belgaumkar@intel.com>
 <20230425162405.1730513-4-vinay.belgaumkar@intel.com>
 <87a5yu9y2r.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a5yu9y2r.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] i915_pm_freq_api: Add
 some basic SLPC igt tests
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

Hi Ashutosh,

On 2023-04-26 at 13:40:28 -0700, Dixit, Ashutosh wrote:
> On Tue, 25 Apr 2023 09:24:04 -0700, Vinay Belgaumkar wrote:
> >
> > diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
> > new file mode 100644
> > index 00000000..17adacbc
> > --- /dev/null
> > +++ b/tests/i915/i915_pm_freq_api.c
> > @@ -0,0 +1,153 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2023 Intel Corporation
> > + */
> > +
> > +#include <dirent.h>
> > +#include <errno.h>
> > +#include <fcntl.h>
> > +#include <inttypes.h>
> > +#include <stdlib.h>
> > +#include <sys/stat.h>
> > +#include <sys/syscall.h>
> > +#include <sys/types.h>
> > +#include <unistd.h>
> > +
> > +#include "drmtest.h"
> 
> The series is merged but before merging I removed all the #include's above,
> they are not needed.

Please do not do this, at least send it to trybot and look at
GitLab.Pipeline status. There are platforms where compilation 
failed due to missing fcntl.h, see
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/137

It is fixed now with
https://patchwork.freedesktop.org/series/117047/

Regards,
Kamil

> 
> > +#include "i915/gem.h"
> > +#include "igt_sysfs.h"
> > +#include "igt.h"
> 
> Thanks.
> --
> Ashutosh
