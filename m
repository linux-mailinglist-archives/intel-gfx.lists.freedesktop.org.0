Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2835E87D7
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Sep 2022 05:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E3610E42F;
	Sat, 24 Sep 2022 03:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8809810E42D;
 Sat, 24 Sep 2022 03:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663989028; x=1695525028;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=chsh7xys3hBCqEKdp+1zP6wS9ZuMZBpTgni+79xMQWI=;
 b=m9nS20YllOMV2YyHrRLHmLkztfr/BE4sKb8pSQYhDgtgR7nix+2CwvwG
 lLt52pM2p2JtMcs0lK0ToX/DB4PAgpUkqUqF2N3yU794axP1D+ElR8JvV
 XAd8ryzW9+mziuS/xjkjN2bpSluIM83mKAC0VcBvmmE5keDjpSwQbtqWH
 6vlJ7iHBLUFpYb6T+DoZcev8jA/0SLhvny7r9k4SJHSeLPx5RqdgWnDK6
 HjfeILd6SNQ0ye2rbSBJb2NolS5CY+Sm0QiuwqU6rgVqxUoBMvGYIdeVD
 k/8weyUvYA+c9tc1HOKn+5omRCPAqI26Da3tFPawvOetN8mgDgMnY+q7t g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="299461540"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="299461540"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 20:10:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="598098356"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.252.138.221])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 20:10:27 -0700
Date: Fri, 23 Sep 2022 20:10:26 -0700
Message-ID: <87sfkh8o2l.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <YysHM8Ot1escBzEy@ashyti-mobl2.lan>
References: <20220916150054.807590-1-badal.nilawar@intel.com>
 <20220916150054.807590-2-badal.nilawar@intel.com>
 <YysHM8Ot1escBzEy@ashyti-mobl2.lan>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Sep 2022 05:44:35 -0700, Andi Shyti wrote:
>
> > +void i915_hwmon_register(struct drm_i915_private *i915)
> > +{
> > +	struct device *dev = i915->drm.dev;
> > +	struct i915_hwmon *hwmon;
> > +	struct device *hwmon_dev;
> > +	struct hwm_drvdata *ddat;
> > +
> > +	/* hwmon is available only for dGfx */
> > +	if (!IS_DGFX(i915))
> > +		return;
> > +
> > +	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
>
> why don't we use devm_kzalloc?
>
> > +	if (!hwmon)
> > +		return;
> > +
> > +	i915->hwmon = hwmon;
> > +	mutex_init(&hwmon->hwmon_lock);
> > +	ddat = &hwmon->ddat;
> > +
> > +	ddat->hwmon = hwmon;
> > +	ddat->uncore = &i915->uncore;
> > +	snprintf(ddat->name, sizeof(ddat->name), "i915");
> > +
> > +	hwm_get_preregistration_info(i915);
> > +
> > +	/*  hwmon_dev points to device hwmon<i> */
> > +	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
> > +						    ddat,
> > +						    &hwm_chip_info,
> > +						    NULL);
> > +	if (IS_ERR(hwmon_dev)) {
> > +		mutex_destroy(&hwmon->hwmon_lock);
>
> there is not such a big need to destroy the mutex. Destroying
> mutexes is more useful when you actually are creating/destroying
> and there is some debug need. I don't think that's the case.
>
> With the devm_kzalloc this would be just a return.

If we are using devm_kzalloc we might as well replace all the
hwmon_device_register_with_info's (in Patch 1 and 7) with
devm_hwmon_device_register_with_info and then i915_hwmon_unregister is just
this:

void i915_hwmon_unregister(struct drm_i915_private *i915)
{
	fetch_and_zero(&i915->hwmon);
}

Even the above statement is probably not needed but might as well retain it
for sanity. So this is a simple change.

Thanks.
--
Ashutosh
