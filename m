Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706F9840B48
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 17:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5319810ED2C;
	Mon, 29 Jan 2024 16:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D7210EA71;
 Mon, 29 Jan 2024 16:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706545472; x=1738081472;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=6Z+jNFPN//3ULtq3a9uV8TG+ONCXyWF4m/UldvSyucs=;
 b=QIogqycwDvJB/LWk/5aSueYb1Qx7YiF/hGPziOP6A2RddfiW/ORdV71a
 YJiI8ZIjpfuQGh88oroP98dp9eFrERhdmDs7eTCVjdvgEuR7FKlN/V5AG
 YNg+XDQYjkPs9KBa36s+vlKlIlcdfT66j/HqeGJUyOMEohcPcoGSFyLR/
 p+GfWSrsRBE3Nej8H7VY9lWl/NHjRC7hRa1yNBE+1wSYYr9eAb+v9L6b3
 dhm79eNPj41CQ2lDZ4ulS1NqdYjr922UAruVZLdSzw6h1eodHwP4xbdmC
 Hzmm5tfYctuhxEEDNUo2sO0AqLcOFcKFmc2J59Po6xPAP7pJ3SqZE8Glw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="2860480"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="2860480"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 08:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="3503087"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.intel.com)
 ([10.165.21.138])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 08:24:22 -0800
Date: Mon, 29 Jan 2024 08:24:22 -0800
Message-ID: <8534ug6rbd.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2] drm/hwmon: Fix abi doc warnings
In-Reply-To: <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
References: <20240127165040.2348009-1-badal.nilawar@intel.com>
 <85ttmyczbz.wl-ashutosh.dixit@intel.com>
 <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-redhat-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com,
 rodrigo.vivi@intel.com, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 29 Jan 2024 07:18:59 -0800, Lucas De Marchi wrote:
>
> On Sat, Jan 27, 2024 at 12:10:08PM -0800, Ashutosh Dixit wrote:
> > On Sat, 27 Jan 2024 08:50:40 -0800, Badal Nilawar wrote:
> >>
> >
> > Hi Badal,
> >
> >> This fixes warnings in xe, i915 hwmon docs
> >>
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/curr1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:35  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:52
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/energy1_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:54  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:65
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/in0_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:46  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:0
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:22  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:39
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:0  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:8
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max_interval is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:62  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:30
> >> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_rated_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:14  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:22
> >
> > /snip/
> >
> >> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> >> index 8d7d8f05f6cd..92fe7c5c5ac1 100644
> >> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> >> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> >> @@ -1,4 +1,4 @@
> >> -What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
> >
> > Are the warnings happening because this path doesn't exist?
> >
> >> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/in0_input
> >
> > So this I guess could also be
> >
> > /sys/class/drm/card<n>/device/hwmon/hwmon<i>/in0_input?
>
> no. the issue is not that it doesn't exist, but that the same path is
> documented in 2 different places. If the interface is exactly the same,
> there could be just 1 place to document it and then reuse the same file
> (without the module name). If the interfaces are not identical, then we
> should differentiate them like is done here.

Ah, got it, thanks!

>
> +i915 maintainers
>
> Are you ok with merging this through either xe or i915 trees
> instead of splitting the patch? My preference is the first option.
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> also tested that this fixes the issue when building docs.
>
> thanks
> Lucas De Marchi
>
> >
> > But no need to change, what you have is also a valid path. But maybe to
> > make clear:
> >
> > /sys/bus/pci/drivers/i915/<device>/hwmon/hwmon<i>/in0_input
> >
> > ?
> >
> > But anyway...
> >
> > Assuming you turned on the htmldoc build option, could reproduce this and
> > verified that this patch is fixing these warnings, this is:
> >
> > Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
