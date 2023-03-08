Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 253776B1508
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 23:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3441B10E747;
	Wed,  8 Mar 2023 22:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B096810E747
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 22:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678314323; x=1709850323;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5P3jWskLiVSoI9CvbNKdvWS237A5AQC2xy13XKxDo5U=;
 b=FpC24wPLh7UlHSjnKxU2y6b2DTlRrkgzbwn+8Dx4x2s109KENPF8TsA3
 6CUxajqZWFGkHwGYoSj9CChk7WO0oCOkAl7P9uqKCdS8PLpOri9q743o1
 XwRPyqSEdQSSNZ1M4pVwwyjZRT7w8o6VESwOLojtYvS/njiz8ec3QR7o7
 WDOqPZa85ZMHwmj9AT1PQ0qpa2lKG6uG06Zzct+ZwpaFA7lODIdl8GUzf
 6no46VnDwi3x5gwYEhCbIjNrFWN0ptvMLx9pI1RP0HPtkVsnpyPdD23u2
 IK+eNgRgzj7p6SHhZM+BS8pSYBokgq5QSxsR/SglqTktQOptSAtWvTbN2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401121509"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="401121509"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 14:25:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="670496838"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="670496838"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 08 Mar 2023 14:25:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Mar 2023 00:25:08 +0200
Date: Thu, 9 Mar 2023 00:25:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZAkLRGNtH+fJZazS@intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
 <20230214134348.11020-3-ville.syrjala@linux.intel.com>
 <ZADzDhPBjkhNsT7+@ideak-desk.fi.intel.com>
 <ZAj8FHyaMWi+EGyY@intel.com>
 <ZAkJ3buxTRRbgnt3@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAkJ3buxTRRbgnt3@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix idle pattern enabling
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

On Thu, Mar 09, 2023 at 12:19:09AM +0200, Imre Deak wrote:
> On Wed, Mar 08, 2023 at 11:28:07PM +0200, Ville Syrjälä wrote:
> > On Thu, Mar 02, 2023 at 09:03:42PM +0200, Imre Deak wrote:
> > > On Tue, Feb 14, 2023 at 03:43:48PM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > Currently we are always switching to the idle pattern after the
> > > > link training, but we don't always wait for the minimum number
> > > > of idle patterns sent. That doesn't look to be what Bspec
> > > > asks of us.
> > > > 
> > > > According to bspec what we should do is switch to idle pattern
> > > > and wait for it only in DP1.4 MST cases. In all other cases we
> > > > should apparently do neither.
> > > > 
> > > > What confuses matters further is that the port sync SST sequence
> > > > asks us to "stay in idle pattern". But if we never switched to it
> > > > how can we stay in it? This still needs further clarificaiton.
> > > 
> > > HSW seems to require it also for SST, but yes for all other platforms
> > > bspec only requires it for MST.
> > 
> > commit 3ab9c63705cb ("drm/i915: hsw: fix link training for eDP on
> > port-A") (written by you it seems :) says there was some problem on
> > HSW that needed it for DDI A SST as well. But it's not really obvious
> > why you skipped the IDLE_DONE thing there. Maybe just an optimization?
> 
> Ok, forgot about that. Looking back at the discussion the problem on HSW
> was that switching from sending idle patterns to normal mode didn't
> happen automatically due to some HW problem. The workaround was to to
> switch to idle patterns and enable normal mode manually after the pipe
> is enabled. The WA didn't require waiting for IDLE_DONE, but before
> TGL there is no DP_TP_STATUS register on port A either.

Ah, that would explain it. Also might explain some hardcoded wait 
values I saw in some GOP stuff.

-- 
Ville Syrjälä
Intel
