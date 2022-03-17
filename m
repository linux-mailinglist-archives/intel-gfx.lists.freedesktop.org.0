Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB8B4DCF20
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 21:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E8C10E765;
	Thu, 17 Mar 2022 20:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFC610E75C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 20:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647547706; x=1679083706;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fOJb8XwyhloHlwAsrPp36QUwvI9AkI66eVyig2hCQIc=;
 b=St5lQqxZ1vjGbHVGy4MNx66CPTJbe+E3wjXbzUn/ODocF56GL9b21tTo
 m2dDhQfAR6pAG10zm9W7dGKoWym7k6mbBwqMtWdgic9K4ZMEsNyK+91ym
 a6tCOOO8/5+a2XERWTV6C874500Y9Kd0NsUtjVCc8LXaXWyh3J32soT72
 rbB2mIqMqxL4Ok5OgVEfKchV2gQ1BLM/aL/SXkwQO9vEGy7RAWGGESZWy
 Sa7G4t2yMe7cbtJqh3DGd5VKP9sIgu06nldT/HtBJ2CG/R00M1Quy8oTH
 6/Xi2zEFRkbxKqb8wKv2J85i5x7WVx5Do2xRtEW97bep5Kdcap+Gu2C/a g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="281769541"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="281769541"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 13:08:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="558088686"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 17 Mar 2022 13:08:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 22:08:22 +0200
Date: Thu, 17 Mar 2022 22:08:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YjOVNsideRDdZ6Z/@intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-4-ville.syrjala@linux.intel.com>
 <87ee30mm36.fsf@intel.com> <YjOUPRwkitfDYkxh@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YjOUPRwkitfDYkxh@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/bios: Use the copy of the
 LFP data table always
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

On Thu, Mar 17, 2022 at 10:04:13PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 17, 2022 at 09:10:37PM +0200, Jani Nikula wrote:
> > On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Currently get_lvds_fp_timing() still returns a pointer to the original
> > > data block rather than our copy. Let's convert the data pointer offsets
> > > to be relative to the data block rather than the whole BDB. With that
> > > we can make get_lvds_fp_timing() return a pointer to the copy.
> > 
> > Ugh, so just as I R-b'd the previous patch... I realize it's all broken
> > without this, right? It does pointer arithmetics between bdb header and
> > the allocated bdb for ptrs?
> > 
> > Do we want a broken step?
> 
> Probably not. Somehow I convinced myself that the artihmetic was being
> done between the original block and bdb header. So now I need to figure
> out how to get out of this mess, I guess ideally without having to just
> squash the two patches together...

I guess I could suck block_offset() from this patch into the previous
patch and call it temporarily straight from get_lvds_fp_timing().

-- 
Ville Syrjälä
Intel
