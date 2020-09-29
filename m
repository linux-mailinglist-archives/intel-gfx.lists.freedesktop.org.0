Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E56C927BE06
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 09:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4948981B;
	Tue, 29 Sep 2020 07:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF9C8953E;
 Tue, 29 Sep 2020 07:30:16 +0000 (UTC)
IronPort-SDR: 99wTXqgy7YlFEygEiWPIXI6Ul6zhf8dPYcIuj9WDOSb+3BiNNeDRb9ghoq83ltoaWLTDHSeSYu
 VH+Z/3OKtNXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="226280658"
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; d="scan'208";a="226280658"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 00:30:12 -0700
IronPort-SDR: kCpdJM79QM6ljb1NM5zqFnI2IByWgGBnuQ9BQLRacgDFF6XRelJeGoADijH5BH/wMpHOLvlL4n
 Zj5LH3ojEK3Q==
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; d="scan'208";a="489216932"
Received: from dmcenean-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.31.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 00:30:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20200928231022.GF2157395@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20200928080931.246347-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87a6xaow40.fsf@intel.com>
 <SN6PR11MB3421725FE60CC7930FC02AB6DF350@SN6PR11MB3421.namprd11.prod.outlook.com>
 <871rilq0um.fsf@intel.com> <20200928230739.vpj22bwebqhtehuk@ldmartin-desk1>
 <20200928231022.GF2157395@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 29 Sep 2020 10:30:25 +0300
Message-ID: <87mu19nipa.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/edp/jsl: Update vswing table
 for HBR and HBR2
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Sep 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Mon, Sep 28, 2020 at 04:07:39PM -0700, Lucas De Marchi wrote:
>> On Mon, Sep 28, 2020 at 08:15:29PM +0300, Jani Nikula wrote:
>> > On Mon, 28 Sep 2020, "Surendrakumar Upadhyay, TejaskumarX"	<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>> > > This is a good example of a potential trap that having
>> > > IS_ELKHARTLAKE() cover both ELK and JSP creates. An unsuspecting coder
>> > > might change the if ladder to have IS_ELKHARTLAKE() first, and the
>> > > subsequent IS_JASPERLAKE() branch would never be taken.
>> > > 
>> > > BR,
>> > > Jani.
>> > > 
>> > > Tejas : In that case I will put attention note in comment about
>> > > platform checks such that ladder distrubance can be avoided. What you
>> > > suggest?
>> 
>> > The solution is to make IS_ELKHARTLAKE() mean ELK and only ELK.
>> 
>> Since we are talking about the TLA for JSL in the other patch, for
>> elkhartlake it is EHL, not ELK. ELK is something else, but I'm not sure
>> what:
>> 
>> $ git grep -w ELK -- drivers/gpu/drm/
>> drivers/gpu/drm/i915/gem/i915_gem_stolen.c:             IS_GM45(i915) ? "CTG" : "ELK", reg_val);
>> drivers/gpu/drm/i915/gem/i915_gem_stolen.c:      * Whether ILK really reuses the ELK register for this is unclear.
>> drivers/gpu/drm/i915/intel_pm.c:         * Not 100% sure which way ELK should go here as the
>> drivers/gpu/drm/i915/intel_pm.c:         * assume ELK doesn't need this.
>
> Yeah, ELK = Eagle Lake, CTG = Cantiga.  Both are old gen5 platforms IIRC.

Yeah, I know, my bad.

BR,
Jani.


>
>
> Matt
>
>> 
>> Lucas De Marchi
>> 
>> > 
>> > BR,
>> > Jani.
>> > 
>> > 
>> > -- 
>> > Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
