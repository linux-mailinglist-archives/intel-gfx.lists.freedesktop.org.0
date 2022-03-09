Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236F94D3A70
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 20:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2314289FE6;
	Wed,  9 Mar 2022 19:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABFF10E057
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 19:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646854474; x=1678390474;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0cK7WRCexvpByn98RnaFDeRIicHrQ2xbLtDbyugJDcY=;
 b=FP/8dn1KjdUgn4KyoPL6XGCJbwF+jDO49u86MBDklCJY5qkL8wUBd13a
 L6aCvIVtih2lftA0tgEQ8A4msNuZuX+sucmafCjL/sGPWFE08tJqHciCd
 B6M1V5t7qAxGg75zVpXZ/ssGoqtW8gcwwq+m9TBPixiTFV7CVXaAMd7iP
 sCJWfBBIkfgNE+TcJZQ6I+m5KZ3mh65XxMp3gExKLKaxBG8VdYJLJ9Ve0
 vhqnWbiwrhss3D2ONdUAGGLE+gp6/nvdabCZ0JMEYdPoFWfQeJzOQYTyy
 p4PhUMVPcBRXWP8PyyUnDNz1g4axFLWgVlDliXVgzl4X5/sCytBuJSyXJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235022989"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="235022989"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 11:34:33 -0800
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="495962276"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 11:34:32 -0800
Date: Wed, 9 Mar 2022 21:34:58 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220309193458.GA9556@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-7-ville.syrjala@linux.intel.com>
 <20220309185959.GA9439@intel.com> <Yij7HFOvBiVg+kqD@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yij7HFOvBiVg+kqD@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Fix PSF GV point mask when
 SAGV is not possible
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 09, 2022 at 09:08:12PM +0200, Ville Syrjälä wrote:
> On Wed, Mar 09, 2022 at 08:59:59PM +0200, Lisovskiy, Stanislav wrote:
> > On Wed, Mar 09, 2022 at 06:49:46PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Don't just mask off all the PSF GV points when SAGV gets disabled.
> > > This should in fact cause the Pcode to reject the request since
> > > at least one PSF point must remain enabled at all times.
> > 
> > Good point, however I think this is not the full fix:
> > 
> > BSpec says:
> > 
> > "At least one GV point of each type must always remain unmasked."
> > 
> > and
> > 
> > "The GV point of each type providing the highest bandwidth 
> >  for display must always remain unmasked."
> > 
> > So I guess we should then also choose thr PSF GV point with
> > the highest bandwidth as well.
> 
> The spec says PSF GV is fast enough to now stall the display data
> fetch so we don't need to restrict the PSF points here.

But why it asks to ensure that we have the PSF GV of highest bandwidth to
stay always unmasked then?

Stan

> 
> -- 
> Ville Syrjälä
> Intel
