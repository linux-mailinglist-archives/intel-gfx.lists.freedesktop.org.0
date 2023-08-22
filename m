Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D71C7840EE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A2310E345;
	Tue, 22 Aug 2023 12:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7370810E345
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692707935; x=1724243935;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OQtjQJCWxtBfLoEuZsuBXmeOwoojmUd6hIQCCcThV+c=;
 b=X5rOMEXMj3bTMd6B5ymxeJ85g9CNUrGk9FceHz+nW/VRbG4aJ34/QqPb
 KL+VaSmpDqbp5tJal6FNIy+3Y5Voyi0IWrQHY1BDeZatzP/TZRyUDv7QI
 ewoszIeG6+/72g9qwUKMBv7toIgudauFqkq9H+sFD02obHiboykeEEZoj
 3+mcAEaCxnvJsZjR103ICrUzqE/DJ/pCrCL6S5vQdYBU8Hfs86qa60nVt
 a5V61wIRXTkhcruelRd5EWRo9MkY4qkYtpOawbx/xbobJDzT2UihaNjR0
 MvMhN3XVLN752t3bswurZEfn7OIW3Mz7dpoRJi4leKrxdxSCJBpIg2xX9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373846712"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="373846712"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:38:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="806277093"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="806277093"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.156])
 by fmsmga004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Aug 2023 05:38:37 -0700
Date: Tue, 22 Aug 2023 14:38:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Message-ID: <ZOSsS4YURnfNLvm6@ashyti-mobl2.lan>
References: <20230819225001.1040607-1-andi.shyti@linux.intel.com>
 <CH0PR11MB544438D1C2A1E609212D0E0FE51EA@CH0PR11MB5444.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CH0PR11MB544438D1C2A1E609212D0E0FE51EA@CH0PR11MB5444.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [CI] drm/i915/gt: Refactor hangcheck selftest to
 use igt_spinner
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

> > The hangcheck live selftest contains duplicate declarations of some
> > functions that already exist in igt_spinner.c, such as the creation and
> > deconstruction of a spinning batch buffer (spinner) that hangs an engine.
> > It's undesireable to have such code duplicated, as the requirements for
> > the spinner may change with hardware updates, necessitating both
> > execution paths be updated.  To avoid this, have the hangcheck live
> > selftest use the declaration from igt_spinner.  This eliminates the need
> > for the declarations in the selftest itself, as well as the associated
> > local helper structures, so we can erase those.
> > 
> > Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> 
> 
> Test fails with -62 (ETIME) on intel_selftest_wait_for_rq
> It looks like the cause might be me calling intel_context_put too early?
> Let me move those calls to later and see if that helps.
> Give me some time to implement those changes.

Thanks!
Andi
