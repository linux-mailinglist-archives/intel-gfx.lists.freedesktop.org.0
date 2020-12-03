Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D8F2CDB57
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 17:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE456E038;
	Thu,  3 Dec 2020 16:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090926E037
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 16:35:35 +0000 (UTC)
IronPort-SDR: JtRoU3UnFsVaey5jLVO79sxkkfOlDTUB569jxQsrBuCgGGhWPf4kQYt/BKNg66A9cU4Fplm/Dp
 7hp3MnL4vnow==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="160993264"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="160993264"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:35:34 -0800
IronPort-SDR: laYC2B7mpJtIzvDYYqwPKfvTZp9+pZP1RS/0csS5sgdhA2A2bXZOWqlWbGEwhSwD2lqV7wCuEt
 55i71ggj3HhQ==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="550548034"
Received: from isobow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.16.51])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:35:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>
In-Reply-To: <20201202224030.GB26911@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-3-manasi.d.navare@intel.com> <87wnytsdgz.fsf@intel.com>
 <20201201222148.GA21862@labuser-Z97X-UD5H>
 <20201202224030.GB26911@labuser-Z97X-UD5H>
Date: Thu, 03 Dec 2020 18:35:29 +0200
Message-ID: <87v9dic0fi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/display/vrr: Create VRR file
 and add VRR capability check
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

On Wed, 02 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Tue, Dec 01, 2020 at 02:21:56PM -0800, Navare, Manasi wrote:
>> On Tue, Nov 10, 2020 at 12:39:08PM +0200, Jani Nikula wrote:
>> > > +{
>> > > +	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
>> > 
>> > I kind of feel like either the function should a) ensure it's okay to do
>> > intel_attached_dp() and return false if not, or b) just use struct
>> > intel_dp as the parameter.
>> > 
>> > As it is, passing a non-dp connector to this function will fail either
>> > subtly or spectacularly, but not graciously.
>
> Actually after doing some code rewriting, I think it is best to still pass
> the drm connector but I am adding the check now for connector type
> Only if its eDP or DP now I get the intel_dp.
> Future we can add HDMI there as well.

It's fine, as long as we don't cast to intel_dp unless we know it's
intel_dp.

>> > > +
>> > > +	/*
>> > > +	 * DP Sink is capable of Variable refresh video timings if
>> > > +	 * Ignore MSA bit is set in DPCD.
>> > > +	 * EDID monitor range also should be atleast 10 for reasonable
>> > > +	 * Adaptive sync/ VRR end user experience.
>> > > +	 */
>> > 
>> > Please fix typos etc.
>> 
>> Did I miss some typos, I dont see any in the above comment?

Odd capitalization, "atleast", "sync/ VRR", maybe also reflow the
paragraph.

I know it's nitpicking, but other people will read the comment many,
many more times than you write it. ;)


BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
