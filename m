Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BECF4A8C3D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 20:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E05710E2CB;
	Thu,  3 Feb 2022 19:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9483D10E26D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 19:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643915364; x=1675451364;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=87ml1Sew+OQ9+lORmQKBd2o7fEVwmBgvBvDAQRK/J1c=;
 b=IhuRLV0acl0zN88zoKEfnrEi/KhplKceO4yK8JpQiwmGpDxubGlSLFhs
 3C9E3lS5jPK9AXgfvbKPK5dFfXaWQC552e1cC4piAanP+zggyp6v4pAb+
 Rw8w4WaO1PQ2onfi7aPAD//e/HHA3wFJJ7/mnH+Z9Aa1578MH98l3GPu+
 JaLLanwaff2R+eFMc8d5RSPHnyKq7x2fS0/7ETuAGtgn11gcj1mkXKvAt
 gi1lpVkosQJ5y5zPPaYd6lKGdPCPizcygrhEQUD9zUV+rCb4WNfOpWXQ7
 FPwcoIM+vtosehEdKXq1OY0chwo9lbRK3l9ICZd/D/bWBfQJHcC/YNetK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228880808"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="228880808"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 11:09:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483355867"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 11:09:23 -0800
Date: Thu, 3 Feb 2022 11:03:24 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20220203190324.GA4413@jons-linux-dev-box>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
 <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 02:46:19PM -0800, Lucas De Marchi wrote:
> On Wed, Jan 26, 2022 at 02:48:13AM -0800, Alan Previn wrote:
> > Update GuC ADS size allocation to include space for
> > the lists of error state capture register descriptors.
> > 
> > Also, populate the lists of registers we want GuC to report back to
> > Host on engine reset events. This list should include global,
> > engine-class and engine-instance registers for every engine-class
> > type on the current hardware.
> > 
> > NOTE: Start with a sample table of register lists to layout the
> > framework before adding real registers in subsequent patch.
> > 
> > Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> > ---
> 
> ...
> 
> > static void __guc_ads_init(struct intel_guc *guc)
> > {
> > 	struct intel_gt *gt = guc_to_gt(guc);
> > @@ -573,9 +553,9 @@ static void __guc_ads_init(struct intel_guc *guc)
> > 
> > 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
> > 
> > -	/* Capture list for hang debug */
> > -	guc_capture_list_init(guc, blob);
> > -
> > +	/* Lists for error capture debug */
> > +	intel_guc_capture_prep_lists(guc, (struct guc_ads *)blob, base,
> 
> no, please don't cast/export struct guc_ads like this. We can't really
> dereference it since it may be in IO memory.
> 
> See https://patchwork.freedesktop.org/series/99378/ with the huge
> refactor in this file to make it conform to the rules of accessing IO
> memory.
> 
> Maybe this list could be appended in the same reglist buffer and we just
> copy it once to its final location, like we are doing with the reglist?
> 

Agree with Lucas here, let's create the capture list on probe and store
it somewhere in the device data. On ADS population this more or less
turns into a memcpy (or after Lucas's series a dma-buf-map call). And on
fini, just free to stored data. The create capture list IMO is fine to
be done in an external file and return the data to the ADS code but
let's make sure everyone is on board with that. Maybe ping Lucas
directly about this?

Specific patch Lucas's is referencing:
https://patchwork.freedesktop.org/patch/471051/?series=99378&rev=1

Matt

> Lucas De Marchi
