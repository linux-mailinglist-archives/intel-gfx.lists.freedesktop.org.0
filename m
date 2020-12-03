Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F25A2CDB5C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 17:37:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229486E037;
	Thu,  3 Dec 2020 16:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8766E037
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 16:37:52 +0000 (UTC)
IronPort-SDR: +DkEvf9f0keQk3VtdJcslrMUNGxvFGQYNBs0ICCymcbZT42hF4uJ+yeY22uYGZ9JJRbx7RD7iN
 8Nkb5osyVVow==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="257935336"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="257935336"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:37:52 -0800
IronPort-SDR: lzv0AOBIfpHGo7nB8PLd04bdOJtVar8pu4yJRgV8l+q6PzGosaYp2CAFhLAb53zlLyvOYjq2ND
 0CKtwB59o71w==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="540241526"
Received: from isobow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.16.51])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:37:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>
In-Reply-To: <20201201224652.GB22608@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-4-manasi.d.navare@intel.com> <87tutxsddo.fsf@intel.com>
 <20201201224652.GB22608@labuser-Z97X-UD5H>
Date: Thu, 03 Dec 2020 18:37:46 +0200
Message-ID: <87sg8mc0bp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/display/dp: Attach and set
 drm connector VRR property
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 01 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Tue, Nov 10, 2020 at 12:41:07PM +0200, Jani Nikula wrote:
>> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
>> > +
>> > +	if (INTEL_GEN(dev_priv) >= 12)
>> 
>> I wonder if we should just add a wrapper
>> 
>> #define HAS_VRR(i915) (INTEL_GEN(i915) >= 12)
>> 
>> to be more descriptive. And use it in the previous patch too.
>
> Yea I like the idea of adding this wrapper in intel_vrr.c and have the platform check in that
> and then use that in intel_vrr_is_capable() ?

Works for me, but might just throw that in i915_drv.h with all the other
HAS_ helpers also. *shrug*


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
