Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBFD4DD0A0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 23:18:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A748F10E131;
	Thu, 17 Mar 2022 22:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D3510E130
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 22:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647555493; x=1679091493;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+kK64hReAbXSCrT6AgvBHElbO5LJQTp601zT2tmqjKc=;
 b=llwUo0OYx+2kLrEsJSsaMBqwz5uHFKcsyLvZAh8WmB47DaXD4i+ZGNf5
 hAEXi+O8I2x6CpurvsgYnkSCFvdL7YaB+1mIOHjKRMSZgj9qW/g43tfQa
 /u8L/JeJ5o9pOon/TvlehtDkWVXovOHpLJ5t1dD8JsEUDDvIcLM9eT3LE
 NS4IhlNAqFnxk38KCRlJEfuibBa39LWei9kWQ74jeVSKjnnBmgI9XmdpG
 dY2By+hKie4PWVTgjkE4tqZkMQJC65PQYQ4YQ1506LhBbylPs83DrCTnG
 ArrSH1eKzqeYpGnXawv0r4o89VDzZjHFN7xvf8R6GsNieUvAJl3eSUI59 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257182440"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="257182440"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 15:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="599261259"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 17 Mar 2022 15:18:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Mar 2022 00:18:10 +0200
Date: Fri, 18 Mar 2022 00:18:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YjOzohegmD76YjXR@intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-3-ville.syrjala@linux.intel.com>
 <87h77wmmg9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87h77wmmg9.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/bios: Make copies of VBT
 data blocks
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

On Thu, Mar 17, 2022 at 09:02:46PM +0200, Jani Nikula wrote:
> On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Make a copy of each VB data block with a guaranteed minimum
> > size. The extra (if any) will just be left zeroed.
> 
> *VBT
> 
> >
> > This means we don't have to worry about going out of bounds
> > when accessing any of the structure members. Otherwise that
> > could easliy happen if we simply get the version check wrong,
> > or if the VBT is broken/malicious.
> 
> *easily
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The high level question is if we really want to save the copies until
> driver remove instead of just during parsing. The lifetime should be
> mentioned in the commit message, with rationale if you have some.

Sure, I'll amend the commit msg a bit.

I think we at least must move away from the "parse VBT once at
driver init" idea because that won't ever let us deal with the
panel_type=0xff->check PnP ID thing. I think I even have a few
real world VBTs in my stash which have panel_type=0xff, so it's
not just some theoretical thing.

So we must hang onto the blocks at least until we've finished the
output setup. But I'm thinking we can just keep them permanently
and even start thinking about moving away from the "parse once,
stash results somewhere" mentality. Ie. we could just parse on
demand instead.

> I was wondering about making the copies up front instead of as needed,
> but that means setting up a list for the min sizes. It would clean up
> the usage (avoids passing around any pointers to original data to the
> parsers). Then you could use just find_section(i915, BDB_XXX). Dunno.

At least if we go for the parse on demand apporach then we definitely
want to do that. Avoids having to deal with kmalloc() fails/etc. while
parsing.

-- 
Ville Syrjälä
Intel
