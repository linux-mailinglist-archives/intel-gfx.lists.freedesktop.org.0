Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 623B05FC7EC
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE7B10E546;
	Wed, 12 Oct 2022 15:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC4010E546
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587142; x=1697123142;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/vXlNttnfsd3NQL9TJDjKFpf5Wt+txVUL3Qp0qafdqY=;
 b=bOqH9Y5Y8uRFBsx3CpAEE8L1UQUxl+/c2AYzqXNp3CcpdxTY5zvzBedo
 uNVKomQpotmSdo9ThLlVnL1xFEABtxBUHMTN1DyELeWgEs6Bv1KSvFogf
 oP/tcGKNIoB7LiJYKwIRtEw+s6GSYWvTl04ieXKLAO68kmjKNrO3wSFeg
 kAR9mFhkwa1G77r/6npYA3WUrFj6Awh9ofO309Y1qayacj/GaN5Sk5p7G
 jp3A8AtqEAE3bHnDQXbE922xX8uKKxLIrLwm4Io7f+4eU+Ri2c6rXPNsn
 iDa9zlt2vHfG/TPCCqOOBy/aeLAnoDHsRR2MoL4/2pHvMqPLzzLwGOVDR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="366816244"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="366816244"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:05:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="769242893"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="769242893"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 12 Oct 2022 08:05:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Oct 2022 18:05:37 +0300
Date: Wed, 12 Oct 2022 18:05:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y0bXwSqJx5GUiTZd@intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-13-ville.syrjala@linux.intel.com>
 <87a661w1qc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a661w1qc.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/22] drm/i915/audio: Use intel_de_rmw()
 for most audio registers
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 05:33:31PM +0300, Jani Nikula wrote:
> On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The audio code does a lot of RMW accesses. Utilize
> > intel_de_rmw() to make that a bit less tedious.
> >
> > There are still some hand rolled RMW left, but those have
> > a lot of code in between the read and write to calculate
> > the new value, so would need some refactoring first.
> >
> > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Cc: Takashi Iwai <tiwai@suse.de>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> With commit 06b975d58fd6 ("drm/i915: make intel_uncore_rmw() write
> unconditionally") I feel much more comfortable doing these changes.

Agreed. The write might have a side effect which is important
even when value doesn't change.

-- 
Ville Syrjälä
Intel
