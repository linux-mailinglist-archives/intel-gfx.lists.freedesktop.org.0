Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA62C4DB7B2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 19:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C2B10E7B8;
	Wed, 16 Mar 2022 18:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AD810E7B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 18:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453697; x=1678989697;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=46B31t1RpVn51Y+u+KVgu7k19ErzLK1oxhC+qBwnj+I=;
 b=UwnYz65cM7TVW+k8GyAJ/+P9X3zkxuKZ960z5nC5t2s/lvXUktFyIEGJ
 jU06S2fKy9sW/SaN2AMgxNZQ+HfWNIUnN2MnKc4ONZfPqzlYuaoghwlG+
 TIGPf4yHJ/Ej4XxQPgK7CpkJGytFlVE139T9G3vD/1s8siRTwFkakg3ra
 8x2dNB9XsED05NLqxkLYIKYpVvfxqZE+N33Na5NhG3HZp+z9znnb5N4/d
 Ja/rXzeR93iKlXsti/uvEJOgRUZpOTxTLiXOBQVkKTdUc92Movq5mgdfm
 lELkwVQ1RZu12cZS9hhTY4WA2EUkYqpWmic2dL3PaKS2o8Wz0FvfQSwM/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="237285487"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="237285487"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 11:01:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690677697"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 11:01:34 -0700
Date: Wed, 16 Mar 2022 20:01:57 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220316180157.GA21786@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-7-ville.syrjala@linux.intel.com>
 <20220309185959.GA9439@intel.com> <Yij7HFOvBiVg+kqD@intel.com>
 <20220309193458.GA9556@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309193458.GA9556@intel.com>
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

On Wed, Mar 09, 2022 at 09:34:58PM +0200, Lisovskiy, Stanislav wrote:
> On Wed, Mar 09, 2022 at 09:08:12PM +0200, Ville Syrj�l� wrote:
> > On Wed, Mar 09, 2022 at 08:59:59PM +0200, Lisovskiy, Stanislav wrote:
> > > On Wed, Mar 09, 2022 at 06:49:46PM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > 
> > > > Don't just mask off all the PSF GV points when SAGV gets disabled.
> > > > This should in fact cause the Pcode to reject the request since
> > > > at least one PSF point must remain enabled at all times.
> > > 
> > > Good point, however I think this is not the full fix:
> > > 
> > > BSpec says:
> > > 
> > > "At least one GV point of each type must always remain unmasked."
> > > 
> > > and
> > > 
> > > "The GV point of each type providing the highest bandwidth 
> > >  for display must always remain unmasked."
> > > 
> > > So I guess we should then also choose thr PSF GV point with
> > > the highest bandwidth as well.
> > 
> > The spec says PSF GV is fast enough to now stall the display data
> > fetch so we don't need to restrict the PSF points here.
> 
> But why it asks to ensure that we have the PSF GV of highest bandwidth to
> stay always unmasked then?
> 
> Stan

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> > 
> > -- 
> > Ville Syrj�l�
> > Intel
