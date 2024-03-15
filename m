Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1448687CCF8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 12:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97B31121F1;
	Fri, 15 Mar 2024 11:56:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T3A4X9Oa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835751121F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 11:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710503784; x=1742039784;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HN8LlXlWEQnxm/0ACVjO+uPLJUMW6xLw0Ay6Tt6Pj+I=;
 b=T3A4X9OazLaKYauIgNe1V+5BlsNcg7lWfJjqZffQiaUyBbVcb8DG4e51
 pefKeb2/t4qOrOu8UO9k6+0mq29Jho/gmU3z8QNcbc87omAETZVyAQKzE
 m6GjYDpOZYP955YHWwmelDBcGlf+vnxA2Z6Rxc1oab8eM84oVqszk/YhX
 GjQXpVRqMMpEYOFmLaNtr8m5YJk10EkyDm7CImQ6Fw2WOreU6mV9kyxdp
 R9Sp35X//7eaqgHTd3+vphi8pQT7Hxhz4owIHkeNZaYFtjVbVJG1jIYeQ
 dppLLPnM/CHXNPdHXFL4qtEJyxOUT84eTBYOmmhNewiGryYw8fvxgrovN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="16821429"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="16821429"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 04:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="827780590"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="827780590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2024 04:56:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Mar 2024 13:56:19 +0200
Date: Fri, 15 Mar 2024 13:56:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com
Subject: Re: drm/i915/dp: Enable AUX based backlight for HDR
Message-ID: <ZfQ3Y46jdr5QrL_v@intel.com>
References: <20240315050529.1987425-2-suraj.kandpal@intel.com>
 <20240315113352.GA820980@toolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240315113352.GA820980@toolbox>
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

On Fri, Mar 15, 2024 at 12:33:52PM +0100, Sebastian Wick wrote:
> On Fri, Mar 15, 2024 at 10:35:30AM +0530, Suraj Kandpal wrote:
<snip>
> > @@ -318,11 +346,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
> >  		panel->backlight.min = 0;
> >  	}
> >  
> > +	if (DISPLAY_VER(i915) < 11) {
> 
> This should check for INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP instead!
> There is no reason to bind this to any hardware version if the hardware
> itself can tell you if it supports SDP signalling or needs to set it via
> AUX.

That should be OK for icl+.

To extend this to pre-icl hardware I think we pretty much need both checks:
- has_gamut_metadata_dip() -> can we actually transmit the SDP?
- INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP -> can the tcon extract the data from the SDP?
and if either is false then we fall back to AUX.

We should also change intel_dp_add_properties() to check
the tcon caps instead of relying on has_gamut_metadata_dip(),
	for eDP.

-- 
Ville Syrjälä
Intel
