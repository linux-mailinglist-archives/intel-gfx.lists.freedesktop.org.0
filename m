Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0B65BDDAE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 08:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD9310E2EC;
	Tue, 20 Sep 2022 06:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF74E10E2EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 06:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663656972; x=1695192972;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kAcSEuoP7aPeri9z5zZA5JE4B/zoqDD2P+d65JhBoxc=;
 b=HcZkgolDGxoVQBKPiKJM7h0RZltcgMkPSzrMwz2mjFpdlXYB7SwV5nHu
 sTJ3QGRk7eHqep2sz6h+uNTupKn8cL4TEDgji3WtiaZq2wmOfez8dHJ0h
 UpBUucGx1zbgdtwY3fvh25KS1Nlgmj7k5W5zxIGB7I20eiQn+7qxoLe4O
 29v0Lk7+xA0QTYpTIv48hRe3AQfAYEE9Q8TWg/TeF7+098X7cJvbUBjNq
 9vXDGPN2BPg37BstnwXJwXx7lAw5w25KXGY4afr73myX7sAJx1o55kCID
 anbqPLrrDZo7xf0yRexvAhfBz+cGkAeBdzgJqO7bc1eYSTRn8HvSRThLE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="297207587"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="297207587"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 23:56:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="744408437"
Received: from icostanz-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.2])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 23:56:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
In-Reply-To: <CY4PR1101MB216689B1D6D7ED654EB51B11F84D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-3-anusha.srivatsa@intel.com>
 <87y1ufpves.fsf@intel.com>
 <20220919193257.GA1061080@mdnavare-mobl1.jf.intel.com>
 <CY4PR1101MB216689B1D6D7ED654EB51B11F84D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
Date: Tue, 20 Sep 2022 09:55:55 +0300
Message-ID: <875yhipm9w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action
 struct to cdclk_config
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Sep 2022, "Srivatsa, Anusha" <anusha.srivatsa@intel.com> wrote:
>> -----Original Message-----
>> From: Navare, Manasi D <manasi.d.navare@intel.com>
>> Sent: Monday, September 19, 2022 12:33 PM
>> To: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action struct
>> to cdclk_config
>> 
>> On Mon, Sep 19, 2022 at 12:26:19PM +0300, Jani Nikula wrote:
>> > On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
>> > > The struct has the action to be performed - squash, crawl or modeset
>> > > and the corresponding cdclk which is the desired cdclk. This is the
>> > > structure that gets populated during atomic check once it is
>> > > determined what the cdclk change looks like
>> > >
>> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_cdclk.h | 14 ++++++++++++++
>> > >  1 file changed, 14 insertions(+)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> > > b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> > > index c674879a84a5..3869f93e8ad2 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> > > @@ -11,13 +11,27 @@
>> > >  #include "intel_display.h"
>> > >  #include "intel_global_state.h"
>> > >
>> > > +#define	MAX_CDCLK_ACTIONS	1
>> >
>> > Okay, this review is just nitpicks, but they'll need to get fixed
>> > eventually so here goes.
>> >
>> > No tab after #define.
>> >
>> > > +
>> > >  struct drm_i915_private;
>> > >  struct intel_atomic_state;
>> > >  struct intel_crtc_state;
>> > >
>> > > +enum cdclk_sequence {
>> >
>> > Needs to be named intel_ something.
>> 
>> Agree here
>
> Agree with all the above. Will make the suitable changes.
>
>> >
>> > > +	CDCLK_INVALID_ACTION = -1,
>> > > +
>> > > +	CDCLK_SQUASH_ONLY = 0,
>> > > +	CDCLK_CRAWL_ONLY,
>> > > +	CDCLK_LEGACY,
>> > > +};
>> > > +
>> > >  struct intel_cdclk_config {
>> > >  	unsigned int cdclk, vco, ref, bypass;
>> > >  	u8 voltage_level;
>> > > +	struct cdclk_step {
>> >
>> > Needs to be named intel_ something.
>> >
>> > Since this is used independently, I'd prefer it to be defined outside
>> > of struct intel_cdclk_config.
>> 
>> I think the point of having it as part of intel_cdclk_config is that because we
>> already pass cdclk_config to set_cdclk where these actions are going to get
>> used.
>
> Yes. That is correct. This eventually gets used in bxt_set_cdclk() and
> we are already passing cdclk_config there. Having this new struct
> embedded in cdclk_config makes the fields - action and cdclk to be
> accessible without having to change the function signature of
> set_cdclk()

I referred to defining the *type* outside of struct intel_cdclk_config.

Contrast

	struct foo {
		struct bar {
			...
		} baz;
	};

with

	struct bar {
		...
	};

	struct foo {
		struct bar baz;
	};

when you actually use struct bar for parameters and local variables.

BR,
Jani.


>
> Anusha
>> Manasi
>> 
>> >
>> > > +		enum cdclk_sequence action;
>> > > +		u32 cdclk;
>> > > +	} steps[MAX_CDCLK_ACTIONS];
>> > >  };
>> > >
>> > >  struct intel_cdclk_state {
>> >
>> > --
>> > Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
