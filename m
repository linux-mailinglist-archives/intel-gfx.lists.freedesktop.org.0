Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772C19B7D5A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 15:56:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA85910E406;
	Thu, 31 Oct 2024 14:56:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kRCMQuy6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2FB10E406
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 14:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730386563; x=1761922563;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TYoKocrXmoWPpEwvF06eZ4iXoYwvkrUkJWfUt4bnotg=;
 b=kRCMQuy6YRajT1XaY6rfWj38OrT8brTT6mfCEtU/CYZTVPzSAI3rYEJv
 IPl556mRPID710JzqvRXED/qosHI3bFCLibR01kLmdUAJ15QndiJ/UXy9
 hv4TjCvCVLJGLVE1jgyvc/aEpPdOoC2BZVJlKEG8wuXKi304FN2xoqqcW
 hUj4Y4uquR2wtyS8J3NFxExe+KiGtyjwWfYpsK1UetbFswUC+e6OIUJxB
 /HZeiofRT2lrdwD2zwZ3B6qnhpzFBP9m8oK8Ek5H+MsddmAcfTtiuaaY4
 CF9vSMqDsWN8YRq8zWb1Sqo1fq5YFrNejbuIHps/NgBHWW+CentSLxbU6 A==;
X-CSE-ConnectionGUID: f03PhFrlQ9uQGadA+56XEQ==
X-CSE-MsgGUID: v0mzbID8SF2bDOT3Mj5psQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29546656"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29546656"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:55:23 -0700
X-CSE-ConnectionGUID: A9qKMayPQ9KjAW5BzZdOIQ==
X-CSE-MsgGUID: OqLxCR5FSwOCbeBszRSn9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113433104"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:55:21 -0700
Date: Thu, 31 Oct 2024 16:55:18 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 0/2] drm/i915/display: Power request
 asserting/deasserting
Message-ID: <ZyOaVjZgHMg5mvAz@black.fi.intel.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <ZyN_FKqlDfQBH_24@black.fi.intel.com>
 <MW4PR11MB705490B264289108778C8133EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB705490B264289108778C8133EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Thu, Oct 31, 2024 at 07:58:19PM +0530, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Jadav, Raag <raag.jadav@intel.com>
> > Sent: Thursday, 31 October 2024 14.59
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Sousa, Gustavo <gustavo.sousa@intel.com>;
> > jani.nikula@linux.intel.com
> > Subject: Re: [PATCH v3 0/2] drm/i915/display: Power request
> > asserting/deasserting
> > 
> > On Thu, Oct 31, 2024 at 01:40:25PM +0200, Mika Kahola wrote:
> > > There is a HW issue that arises when there are race conditions between
> > > TCSS entering/exiting TC7 or TC10 states while the driver is
> > > asserting/deasserting TCSS power request. As a workaround, Display
> > > driver will implement a mailbox sequence to ensure that the TCSS is in
> > > TC0 when TCSS power request is asserted/deasserted.
> > >
> > > The sequence is the following
> > >
> > > 1. Read mailbox command status and wait until run/busy bit is
> > >    clear
> > > 2. Write mailbox data value '1' for power request asserting
> > >    and '0' for power request deasserting 3. Write mailbox command
> > > run/busy bit and command value with 0x1 4. Read mailbox command and
> > > wait until run/busy bit is clear
> > >    before continuing power request.
> > >
> > > while at it, let's start using struct intel_display instead of struct
> > > drm_i915_private as well.
> > 
> > Perhaps this needs to be its own patch since it's unrelated to the series.
> 
> There was a request from Jani to start using intel_display instead of
> drm_i915_private also with the calling function. So this is perhaps
> remotely related to this WA I included this here.

Yes, he has a series WIP for it. Perhaps worth collaborating.

Raag
