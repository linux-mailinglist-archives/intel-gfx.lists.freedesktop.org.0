Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1404F7EE1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 270FF10E147;
	Thu,  7 Apr 2022 12:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1B210E147
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649334220; x=1680870220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AAg+6dvCtO0se93u4oFBHvVS8kwaK52SE1432T2x4jQ=;
 b=HsMekYhveu9oRsm7s3/MpXjIhQWSeUMvIpuTz5wbqYHwqSqbC+gXnu5G
 9gICYB7+1Zzxu2ElCOHMK68Ij2twr0mrcgQReNgZQGuZNKDs2CCKcmdON
 ZbVVNZFl3rudeODZIPXXOoTQgEPvor7JssNuHX8D+zEeFTIoEmzscgZfw
 bGqkJuRPHY+SwZOQitnvaYpkP9KqElGSXplaEspWkwGXXCmBsdDpSYsVO
 GtYv+bjKUq8WoizSZU2YueBYdacotxFXUywZX2LrkWxyep/niyydSFiPY
 CBmO85dd3gSuNCMndYA06f/CaSSGPE1FbqYqb6D6guapFr8EtY55u8GTy w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="261001548"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261001548"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550028997"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 07 Apr 2022 05:23:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Apr 2022 15:23:33 +0300
Date: Thu, 7 Apr 2022 15:23:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yk7XxeUsmvWm2TRz@intel.com>
References: <20220405173410.11436-3-ville.syrjala@linux.intel.com>
 <20220406133817.30652-1-ville.syrjala@linux.intel.com>
 <87k0c15h05.fsf@intel.com> <Yk7IgZJlOkIebTq7@intel.com>
 <87czht5c9f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87czht5c9f.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 02/22] drm/i915/bios: Make copies of VBT
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

On Thu, Apr 07, 2022 at 03:06:04PM +0300, Jani Nikula wrote:
> On Thu, 07 Apr 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Apr 07, 2022 at 01:23:38PM +0300, Jani Nikula wrote:
> >> On Wed, 06 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> > Make a copy of each VB data block with a guaranteed minimum
> >> > size. The extra (if any) will just be left zeroed.
> >> >
> >> > This means we don't have to worry about going out of bounds
> >> > when accessing any of the structure members. Otherwise that
> >> > could easliy happen if we simply get the version check wrong,
> >> > or if the VBT is broken/malicious.
> >> >
> >> > v2: Don't do arithmetic between bdb header and copy
> >> >     of the LFP data block (Jani)
> >> > v3: Make all the copies up front
> >> > v4: Only WARN about min_size==0 if we found the block
> >> >
> >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 230 ++++++++++++++++------
> >> >  drivers/gpu/drm/i915/i915_drv.h           |   1 +
> >> >  2 files changed, 174 insertions(+), 57 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > index 5518f4cfa1b1..068978734e3b 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > @@ -88,7 +88,7 @@ static u32 get_blocksize(const void *block_data)
> >> >  }
> >> >  
> >> >  static const void *
> >> > -find_section(const void *_bdb, enum bdb_block_id section_id)
> >> > +find_raw_section(const void *_bdb, enum bdb_block_id section_id)
> >> >  {
> >> >  	const struct bdb_header *bdb = _bdb;
> >> >  	const u8 *base = _bdb;
> >> > @@ -118,6 +118,124 @@ find_section(const void *_bdb, enum bdb_block_id section_id)
> >> >  	return NULL;
> >> >  }
> >> >  
> >> > +/*
> >> > + * Offset from the start of BDB to the start of the
> >> > + * block data (just past the block header).
> >> > + */
> >> > +static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
> >> > +{
> >> > +	const void *block;
> >> > +
> >> > +	block = find_raw_section(bdb, section_id);
> >> > +	if (!block)
> >> > +		return 0;
> >> > +
> >> > +	return block - bdb;
> >> > +}
> >> > +
> >> > +struct bdb_block_entry {
> >> > +	struct list_head node;
> >> > +	enum bdb_block_id section_id;
> >> > +	u8 data[];
> >> > +};
> >> > +
> >> > +static const void *
> >> > +find_section(struct drm_i915_private *i915,
> >> > +	     enum bdb_block_id section_id)
> >> > +{
> >> > +	struct bdb_block_entry *entry;
> >> > +
> >> > +	list_for_each_entry(entry, &i915->vbt.bdb_blocks, node) {
> >> > +		if (entry->section_id == section_id)
> >> > +			return entry->data + 3;
> >> > +	}
> >> > +
> >> 
> >> Failing to find the section_id in the list above, perhaps this should
> >> check if the section_id is present in bdb_blocks[] and complain
> >> loudly. If we fail to add a section there, this will never find
> >> it. I.e. we should never call find_section() on a section_id that isn't
> >> present in bdb_blocks[].
> >
> > That's perfectly legit. Eg. old VBTs are always missing a lot
> > of the eDP related blocks.
> >
> > What we could do is add some kind of dummy block into the list
> > for every block we've initialized, whether we found it or not.
> > With that we could complain if find_section() gets called on
> > anything that we didn't try to duplicate.
> 
> I mean if we don't find it in the list, we can check the bdb_blocks[]
> array if we even have it in our initialization list.

Ah, yeah we could do that I suppose.

-- 
Ville Syrjälä
Intel
