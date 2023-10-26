Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D16E97D829F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A59310E7C3;
	Thu, 26 Oct 2023 12:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCB110E7C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698323266; x=1729859266;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/WUc+gZfvTVxMA4x1x8HeH+qR1DkGOiuMqL38f2bElo=;
 b=eDLlcoAAJz10Stldl/dMpsJQN+crPq4GYG9ap0zEiRpAJP50QREqHOGv
 cEQRZapSazuiMHMc9HOeBwQ7ILdtznVgNetTpjRbSLDePS/WCLWWh4UJr
 5bYs4UJzdiC5UkQKIG0KUKv4jMNbYCE+WKG9bbIQMQ+Ba+3kRbg3D2N+w
 BIi7ulaKanBaMNVVlsofBYol/nEwBmPf0lCay3nMCs6mAYOygBbuLlLiV
 Az9HYI2g/fXXcjXxGVfmy9thCRY797EDdhl3Uw0RCXcIN5DmAlcGiXrL5
 TmDHTtsq7be7NbJ0YD2hQcj5yJQucfrOdm51zylceBifUSA6kt8SJ4U09 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="334271"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="334271"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="932719443"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="932719443"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga005.jf.intel.com with SMTP; 26 Oct 2023 05:27:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Oct 2023 15:27:42 +0300
Date: Thu, 26 Oct 2023 15:27:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZTpbPtR0e3JqWfJv@intel.com>
References: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
 <20231025121318.2732051-5-ankit.k.nautiyal@intel.com>
 <ZTkPEZVq8aIgyUI3@intel.com>
 <1e1777bf-561a-5f22-b578-9a20f0afd48b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1e1777bf-561a-5f22-b578-9a20f0afd48b@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Limit max_requested_bpc
 based on src DSC bpc limits
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 26, 2023 at 11:24:38AM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/25/2023 6:20 PM, Ville Syrjälä wrote:
> > On Wed, Oct 25, 2023 at 05:43:18PM +0530, Ankit Nautiyal wrote:
> >> At the moment the max requested bpc is limited to 6 to 10/12.
> >> For platforms that support DSC, min and max src bpc with DSC are
> >> different.
> >>
> >> Account for DSC bpc limitations, when setting min and max value for
> >> max_requested_bpc property.
> > NAK. DSC capabiliies change dynamically, the property does not.
> 
> Hmm, perhaps I should remove the check for sink DSC support and have 
> only Platform check HAS_DSC.
> 
> The problem I am trying to fix is that our HW does not support DSC with 
> 6bpc, but we are allowing the max_requested_bpc to be 6 bpc.
> 
> This can be a problem with some eDP panels that support modes like 
> 4k@120 which will always need DSC and when max requested bpc property is 
> set to 6.
> 
> I am wondering how to avoid this. Does it make sense to have the min 
> value for the max_requested_bpc to be 8, for platforms that support DSC?

I think the easy fix is to just use 'min_bpc = max(dsc_min_bpc, max_bpc*3)'
with DSC. And likely we should do something like that for YCbCr output
as well.

-- 
Ville Syrjälä
Intel
