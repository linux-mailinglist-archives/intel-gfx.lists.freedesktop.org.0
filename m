Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A73838872
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 09:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6649010E145;
	Tue, 23 Jan 2024 08:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC19B10E071;
 Tue, 23 Jan 2024 08:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705997143; x=1737533143;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ncl8uZ/+AzTaCkFTfAJRPjGYd2RIpoyU7IW9BeE4tlE=;
 b=NIebLwWmtJemSF3FuGENwgK7ShQpz8eoYfQ15boepYQQ5pYBDDpZQzUI
 Va0UpNkUQ1+PsE0kJcuqDPJwQQ3Krv7COJs1+Lzm1fIIQhl+0fo505yYI
 66oGYS9hR2Vul3Ru03OdfGywf3ifkcXruCwNGMvPIhFVVrbJAZ91XLoEy
 UFkNm4lT9OjhCC0rDccOki71sRm/bf8YA9xdrivuH0LeK4eGMf5xUoovX
 DwTelSktXSvctLcOPKafKvTAtAV+Tz/1Hqi2uErYD0PI7EQ4nOC0byOs+
 h3gnb3NNoRkxniJUl5FT3KyOvqKdpyEG+eDBPS1nW/THgOC3b0RYj0GoH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="1305439"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; 
   d="scan'208";a="1305439"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 00:05:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820002350"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="820002350"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 00:05:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 10:05:37 +0200
Date: Tue, 23 Jan 2024 10:05:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH 2/4] drm/xe: store bind time pat index to xe_bo
Message-ID: <Za9zURjbgjDUdlmJ@intel.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
 <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 19, 2024 at 03:45:22PM +0000, Matthew Auld wrote:
> On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
> > Store pat index from xe_vma to xe_bo
> > 
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > ---
> >   drivers/gpu/drm/xe/xe_pt.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
> > index de1030a47588..4b76db698878 100644
> > --- a/drivers/gpu/drm/xe/xe_pt.c
> > +++ b/drivers/gpu/drm/xe/xe_pt.c
> > @@ -1252,6 +1252,10 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
> >   		return ERR_PTR(-ENOMEM);
> >   	}
> >   
> > +	if (xe_vma_bo(vma)) {
> > +		xe_vma_bo(vma)->pat_index = vma->pat_index;
> 
> Multiple mappings will trash this I think. Is that OK for your usecase? 
> It can be useful to map the same resource as compressed and uncompressed 
> to facilitate in-place decompression/compression.

I thought the pat_index is set for the entire bo? The
cache_level->pat_index stuff doesn't really work otherwise
I don't think (assuming it works at all).

So dunno why this is doing anything using vmas. I think
what we probably need is to check/set the bo pat_index
at fb create time, and lock it into place (if there's
some mechanism by which a random userspace client could
change it after the fact, and thus screw up everything).

> 
> Also would be good to be clear about what happens if the KMD doesn't do 
> anything to prevent compression with non-tile4? Is it just a bit of 
> display corruption or something much worse that we need to prevent? Is 
> this just a best effort check to help userspace? Otherwise it is hard to 
> evaluate how solid we need to be here in our checking to prevent this 
> scenario. For example how is binding vs display races handled? What 
> happens if the bind appears after the display check?
> 
> > +	}
> > +
> >   	fence = xe_migrate_update_pgtables(tile->migrate,
> >   					   vm, xe_vma_bo(vma), q,
> >   					   entries, num_entries,

-- 
Ville Syrjälä
Intel
