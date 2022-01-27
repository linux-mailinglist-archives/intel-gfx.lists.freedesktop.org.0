Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D88CF49DDF8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:30:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4034A10E64C;
	Thu, 27 Jan 2022 09:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC41810EB00
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643275843; x=1674811843;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5RRWiAKVfz0B8E8e0r2vBlLwcM0ftU0enU6prAMZA+4=;
 b=ZcW2uSuBOma6bnD8q6J4sOyUUi7DwT4E8Y1NAJp/ry4HrHIJ81klzZRF
 5W2X1ddASME+1fRlzWxJRo2iY7xKKRTZ1iAdOCX78SDwkEDLBI6N9eAbV
 Y90fi0hGHFb4Z3Mq+vDnzOvQrdl2Bd0dlVHkQPcdlfP1KGuYMyxcsKVXZ
 dnincCTsyyJrWccgzc/K0HGnBhNPNy/Gq1TpaVj55yuMn2MhFNudIW7gl
 bCH7gsOus+6wi2PTgxv0bS4OiqZbWOSB64+CrniICN0Z3HJie8X5vwcTL
 uKVuPWZ1+Jnfges6pYC7Oi4x2OdNCgTw4pmNvhV4HrT0jyUW0FnvjlJU4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="271254475"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="271254475"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:30:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="767443757"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:30:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <75e98802660a5cdde9339b91f22e3f2cdb6fe343.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-3-alan.previn.teres.alexis@intel.com>
 <87k0emxt3v.fsf@intel.com>
 <75e98802660a5cdde9339b91f22e3f2cdb6fe343.camel@intel.com>
Date: Thu, 27 Jan 2022 11:30:37 +0200
Message-ID: <875yq5y18i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 02/10] drm/i915/guc: Add XE_LP registers
 for GuC error state capture.
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

On Wed, 26 Jan 2022, "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com> wrote:
> Thanks Jani for taking the time to review... 
>
> 1. apologies on the const issue, this is my bad, i think it was
> one of the comments from earlier rev not sure how i missed it.
> Will fix this on next rev.
>
> 2. I do have a question below on the const for one of specific types
> of tables. Need your thoughts
>
> ...alan
>
>
> On Wed, 2022-01-26 at 20:13 +0200, Jani Nikula wrote:
>> On Wed, 26 Jan 2022, Alan Previn <alan.previn.teres.alexis@intel.com> wrote:
>> > Add device specific tables and register lists to cover different engines
>> > class types for GuC error state capture for XE_LP products.
>> > 
> ...
>
>> > +static struct __ext_steer_reg xelpd_extregs[] = {
>> > +	{"GEN7_SAMPLER_INSTDONE", GEN7_SAMPLER_INSTDONE},
>> > +	{"GEN7_ROW_INSTDONE", GEN7_ROW_INSTDONE}
>> > +};
>> 
>> Either this needs to be const or, if it needs to be mutable, moved to
>> device specific data.
>> 
>> Ditto for all such things all over the place.
>> 
>> BR,
>> Jani.
>
>
> I had a question though... the list of registers like the one above as well
> as below shall be made const... however, the table-of-lists (see farther down), contains a pointer to "extended_regs"
> that shall be allocated at startup - is it okay for that list to remain non-const
> since the others with actual register offsets remain const?

A static mutable array like this is module or driver specific. Your
allocation is device specific.

Sure, you have a check in there with /* already populated */ comment on
the module specific data to avoid allocating it multiple times.

Now, consider probing two devices with different properties. The latter
one will use the stuff you allocated for the first device. It will get
really tricky really quickly.

Pretty much the rule is no static (or global) non-const data for
anything. We do have to make some exceptions, but every one of them adds
to the burden of checking if they're going to be a problem, maybe later
on if not right now. So it's not so much about being const per se, it's
about ensuring we don't screw up with device specific data.


BR,
Jani.


>
> Alan: will add const for this and above tables:
> 	static struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
> 		COMMON_BASE_GLOBAL(),
> 		COMMON_GEN9BASE_GLOBAL(),
> 		COMMON_GEN12BASE_GLOBAL(),
> 	};
>
> Is this okay to not be const?:
> 	static struct __guc_mmio_reg_descr_group default_lists[] = {
> 		MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
> 		MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
> 		MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
> 		MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
> 		MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
> 		MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
> 		MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
> 		MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_BLITTER_CLASS),
> 		MAKE_REGLIST(xe_lpd_blt_inst_regs, PF, ENGINE_INSTANCE, GUC_BLITTER_CLASS),
> 		{}
> 	};
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
