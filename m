Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C945A4EEEED
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 16:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED0C10E233;
	Fri,  1 Apr 2022 14:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0556610E233;
 Fri,  1 Apr 2022 14:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648822289; x=1680358289;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y0D5TqYXSe7F3B6E403UvFQFbe8Bi0MJfSKlyjqnGtU=;
 b=ltem82Ikpzy8Vn7BuTOEH026oUygXuG4iTJaZdbDkQzxxJk0K83014Jl
 r2nn4A1qGwB7qApaKA6WtS6mDvMTBTphJDFVcI8+1FE78SPmqAsAbdVSG
 JRMPksoGYt3DuBk/6wymXJ3QyCQZxI5NYoEUW0x/Q4Ma5EINIgSZgIVZ1
 ueNRxS/GmHRa2Wn8fEoSH2tTe62zTImbcnCMM1JkESVYBFDGubxVXIovx
 Gn80syJ7mML6hkoTQeOZ0r3M3OES2Ku8hBQ+uKBznLUJeiDJUVkpkY3Wr
 f6PmX62GYQwfX58R1XyqGeu52zawbrvwW1za8zt/PMIyEQlH5y9mVZcT2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="242290943"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="242290943"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 07:11:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="640549721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 01 Apr 2022 07:11:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Apr 2022 17:11:04 +0300
Date: Fri, 1 Apr 2022 17:11:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YkcH+OO+lVBejjn4@intel.com>
References: <cover.1648752228.git.jani.nikula@intel.com>
 <877d8989om.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877d8989om.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 00/12] drm/edid: cleanup and refactoring
 around validity checks
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 01, 2022 at 11:55:21AM +0300, Jani Nikula wrote:
> On Thu, 31 Mar 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> > v2 of https://patchwork.freedesktop.org/series/101931/
> >
> > Rebased, review comments addressed.
> 
> Ville, care to double check patches 1 & 7 please?

Looks fine by me
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Thanks,
> Jani.
> 
> 
> >
> > BR,
> > Jani.
> >
> >
> >
> > Jani Nikula (12):
> >   drm/edid: use struct edid * in drm_do_get_edid()
> >   drm/edid: clean up EDID block checksum functions
> >   drm/edid: add edid_block_tag() helper to get the EDID extension tag
> >   drm/edid: make drm_edid_header_is_valid() accept void pointer
> >   drm/edid: clean up edid_is_zero()
> >   drm/edid: split out edid_header_fix()
> >   drm/edid: split drm_edid_block_valid() to check and act parts
> >   drm/edid: use a better variable name for EDID block read retries
> >   drm/edid: simplify block check when filtering invalid blocks
> >   drm/edid: split out invalid block filtering to a separate function
> >   drm/edid: track invalid blocks in drm_do_get_edid()
> >   drm/edid: reduce magic when updating the EDID block checksum
> >
> >  drivers/gpu/drm/drm_edid.c | 295 +++++++++++++++++++++----------------
> >  include/drm/drm_edid.h     |   2 +-
> >  2 files changed, 173 insertions(+), 124 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
