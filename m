Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92953537B56
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 15:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B5310E027;
	Mon, 30 May 2022 13:23:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8238610E027;
 Mon, 30 May 2022 13:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653917003; x=1685453003;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/PfYVIhA9bu2Pl324DcjcSrzuYJnhfiA46zRSFGVC/E=;
 b=OjaDGxqK2U0LjLk0exRhKXQC/ZtJc1jRCKccKTtjBEZ6toqPlFApWT1p
 eiz2f4DbSIfEPWP1/qcCPXEp+NWgmnBDxSr5/NAWSd8kHWrG7gZM7grYw
 Jc2Hhzx6LQdOenisOBIZjpua49OoAHzRDGEoJIqdlBngMuGnlxkI8gshu
 7+DUKmu8nUZ9IkhVMYy01GmpZ5tRqIviZbGBmxUeVA2YsJkt6AisMwR4i
 V512YrRs7aGdlIP0ESpT7gArSubDE1KX7FZm+LAxV9q3vNEvjVU65a4Oi
 SseYIsxx7KWxzu0SFKO/xc7q5HlqjMms6Fo2U4euCAVQo0D/iWlYIQKGl Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="255487409"
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="255487409"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:23:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="706157666"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:23:21 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nvfKX-0011ig-6r; Mon, 30 May 2022 16:21:09 +0300
Date: Mon, 30 May 2022 16:21:09 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <YpTExeHWbUh8P1Cf@platvala-desk.ger.corp.intel.com>
References: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
 <YpQuhjGGOVBBHrkt@zkempczy-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YpQuhjGGOVBBHrkt@zkempczy-mobl2>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] lib/igt_device_scan:
 Free filtered devices in igt_devices_free
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 30, 2022 at 04:40:06AM +0200, Zbigniew Kempczyński wrote:
> On Fri, May 27, 2022 at 11:50:40AM +0100, Tvrtko Ursulin wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > Fix a possible oversight.
> 
> Yes, properly coded in igt_device_scan() only. Thanks for spotting this.
> 
> > 
> > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >  lib/igt_device_scan.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > index 3c23fe0eb520..a30433ae2cff 100644
> > --- a/lib/igt_device_scan.c
> > +++ b/lib/igt_device_scan.c
> > @@ -814,6 +814,11 @@ void igt_devices_free(void)
> >  		igt_device_free(dev);
> >  		free(dev);
> >  	}
> > +
> > +	igt_list_for_each_entry_safe(dev, tmp, &igt_devs.filtered, link) {
> > +		igt_list_del(&dev->link);
> > +		free(dev);
> > +	}
> 
> Small nit - I would change the order (filtered list I would remove first).
> igt_device_free() also frees dev->devnode, ... so if we would change the 
> code to be more "parallel" it would be better to avoid use-after-free.
> 
> With this:
> 
> Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

Tvrtko is away this week so I made this change and merged.


-- 
Petri Latvala


> 
> --
> Zbigniew
> 
> >  }
> >  
> >  /**
> > -- 
> > 2.32.0
> > 
