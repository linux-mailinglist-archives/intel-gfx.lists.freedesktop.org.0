Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCB128E1FC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 16:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC596EAA7;
	Wed, 14 Oct 2020 14:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3886EA9B
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 14:14:10 +0000 (UTC)
IronPort-SDR: WZMKRvZroUNJBMOhvqXDG78xVvgUvRpjSOe2Jmrr67ZeCgoTMKr3FvYrDcxAM4mwmMXmOVEAjv
 1gOJNB9I/WyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="227751619"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="227751619"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 07:14:09 -0700
IronPort-SDR: s/QFuInCl8Hkh4bFS8VHAqFP+JzI2as9vQ7IrFF28Sc1JVaQVJWQdDYpkL4wo5ZVKyoZP/j8tl
 /T/io6hIdgIw==
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="463899628"
Received: from erussell-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 07:14:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lee\, Shawn C" <shawn.c.lee@intel.com>,
 "20200828061941.17051-2-jani.nikula\@intel.com"
 <20200828061941.17051-2-jani.nikula@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar\, Uma" <uma.shankar@intel.com>
In-Reply-To: <BY5PR11MB4307FF0DBCF91278A17EC19AA3050@BY5PR11MB4307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
 <87362jdd4y.fsf@intel.com>
 <BY5PR11MB43075789F4800E9D04E2DA6DA3040@BY5PR11MB4307.namprd11.prod.outlook.com>
 <87sgaibd66.fsf@intel.com>
 <BY5PR11MB4307FF0DBCF91278A17EC19AA3050@BY5PR11MB4307.namprd11.prod.outlook.com>
Date: Wed, 14 Oct 2020 17:14:04 +0300
Message-ID: <87eem0c2tv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 14 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
> I think I got the problem now. The patch you attached is correct.
> http://lore.kernel.org/r/20200831083657.15600-1-jani.nikula@intel.com
>
> But customer refer to below patch without "override_edid = true".
> https://patchwork.freedesktop.org/patch/388309/?series=81121&rev=1
>
> This is why they can't get EDID from mailbox #5 properly.

Yeah, there was that bug in v1 of the patch.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
