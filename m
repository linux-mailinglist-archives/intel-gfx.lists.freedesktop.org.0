Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BB5880F5C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 11:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6F210F58B;
	Wed, 20 Mar 2024 10:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GtFBVuL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2203110F6FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 10:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710929526; x=1742465526;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+GDHrt6dumu4aff11nQKlha1u7ntXNBsJBbgaqs7F+k=;
 b=GtFBVuL0ZFsS4ZN0x5nd+1gkfXaAlVcJowOJvspT6HVDF3+Ld8cvLosZ
 fAo4Cl3OQgURc2g2H6OHMJCdYhw5qZvvXPK5ILUY9pvoeJdfKi2KpNUIB
 wst4oC9oF6LkuS1nSVdPloenjm4aTDODIFvD2UISldMTAYhXSoZzW6ZFq
 NIfrWnmc4WFWOfZdtjDShoPIK1zT2wJjUAyNRJZ54JqoRpcjMIcFQqU1s
 ctS0Z9svLC8IOWPSzRCq94SQZRLdiCEuXuwMHwk63OAutVB6tTRPxvbqn
 KZfwj8cADiXkNaDuYb47MLrAdjuVWYcrCFVsst7lwhisp4qOcVlbKRz2E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="9615177"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; 
   d="scan'208";a="9615177"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 03:12:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="14009689"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 03:12:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gustavo.sousa@intel.com
Subject: Re: [PATCH] drm/xe/display: fix type of intel_uncore_read*() functions
In-Reply-To: <311efe399cedd3b9ee95e5aac98e1c8956092d0a.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240314065221.1181158-1-luciano.coelho@intel.com>
 <y5sc3bfcyhzmmeq7ru3jgsr2pw3xistizk4ycvbfw22rmn4ijb@erie627pruac>
 <87a5muntvo.fsf@intel.com>
 <311efe399cedd3b9ee95e5aac98e1c8956092d0a.camel@coelho.fi>
Date: Wed, 20 Mar 2024 12:11:59 +0200
Message-ID: <874jd1nrf4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 19 Mar 2024, Luca Coelho <luca@coelho.fi> wrote:
> On Tue, 2024-03-19 at 17:06 +0200, Jani Nikula wrote:
>> On Tue, 19 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> > On Thu, Mar 14, 2024 at 08:52:21AM +0200, Luca Coelho wrote:
>> > > Some of the backported intel_uncore_read*() functions used the wrong
>> > > types.  Change the function declarations accordingly.
>> > > 
>> > > Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> > 
>> > if a patch affects xe, please always Cc the xe mailing list so it
>> > triggers CI on those machines
>> 
>> Indeed. I just bounced the patch to intel-xe to trigger CI.
>
> Thanks, guys! I'll do it always from now on.

Thanks for the patch and review, pushed to drm-xe-next.

BR,
Jani.

>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
