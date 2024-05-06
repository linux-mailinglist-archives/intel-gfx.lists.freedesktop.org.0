Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8A38BCCDA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 13:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0D910EF59;
	Mon,  6 May 2024 11:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JiGHFX5D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DC710EF59
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 11:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714995176; x=1746531176;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6gNv5DOz1oRRX6sbqZ5c7dDAxARFupADfC+KHDS2ltE=;
 b=JiGHFX5DYwbiZr32DjPrWpZCe+yIKf4D+Mda8neJvXIPMXIIAfeuguRT
 VUpsxKm9ArfIjlX0OaNgyJma+EBe0Dh/Yi8I0hVO86waY3h2ChyU6YJ+M
 VFvho2OUVRiL5E20x97IblmsYgDKEz9+hy8WDfO2GvYUG0R/3n4dZRD5c
 Vab56PFiwcwDtXL0aMg5iJpPXOuG1kWgMXi+HFaQus7oT5f1gqqy8fxJy
 44/FeHm/fmj5lV7Flb9g3ZbchSJTcow/vOeta1wJJY+sAY/1EMjQpN930
 Ky2X71KJBPXi+Lh06ZgQoMNMSYJ53Og231WuDHtR0QDaGy9uAqz8ef8fr g==;
X-CSE-ConnectionGUID: Q52kcRQLQaCTN2dlR5oyfw==
X-CSE-MsgGUID: 8I7UAOnHRAWd+sESmucHOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10584549"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10584549"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 04:32:55 -0700
X-CSE-ConnectionGUID: t0AngHZfR1ex5zahfTlYnQ==
X-CSE-MsgGUID: eJ7zwY6AQlm8KtaDHrjtuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28149793"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 04:32:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 14:32:52 +0300
Date: Mon, 6 May 2024 14:32:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/35] drm/i915/bios: Get rid of "LVDS" from all LFP data
 stuff
Message-ID: <Zji_5G_GUsMPWWHS@intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-5-ville.syrjala@linux.intel.com>
 <87jzk7nvqy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87jzk7nvqy.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 06, 2024 at 12:19:01PM +0300, Jani Nikula wrote:
> On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The LFP data applies to all kinds of display interfaces, so
> > stop calling things by the "LVDS" name.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> However...
> 
> > @@ -902,11 +902,11 @@ struct lfp_brightness_level {
> >  } __packed;
> >  
> >  #define EXP_BDB_LFP_BL_DATA_SIZE_REV_191 \
> > -	offsetof(struct bdb_lfp_backlight_data, brightness_level)
> > +	offsetof(struct bdb_lfp_backlight, brightness_level)
> >  #define EXP_BDB_LFP_BL_DATA_SIZE_REV_234 \
> > -	offsetof(struct bdb_lfp_backlight_data, brightness_precision_bits)
> > +	offsetof(struct bdb_lfp_backlight, brightness_precision_bits)
> 
> I haven't quite figured out what to do with [1] yet. Should probably
> sort it out before making this cleanup?
> 
> BR,
> Jani.
> 
> 
> [1] https://lore.kernel.org/r/20240221180622.v2.1.I0690aa3e96a83a43b3fc33f50395d334b2981826@changeid

Right, forgot about that one. We should just merge it.
The original out of bounds concerns are not a thing
anymore since we started to make copies of the blocks
that are at least as big as our struct definitions.

> 
> 
> >  
> > -struct bdb_lfp_backlight_data {
> > +struct bdb_lfp_backlight {
> >  	u8 entry_size;
> >  	struct lfp_backlight_data_entry data[16];
> >  	u8 level[16];							/* 162-233 */
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
