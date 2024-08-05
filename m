Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DA5948570
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 00:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32E0710E2CF;
	Mon,  5 Aug 2024 22:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gI1Bu7f9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9D210E2CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 22:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722897021; x=1754433021;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=e4erJZ/SSuw3QMVOEBIBfjLGRnIrMqxBSGZwTmu0Gds=;
 b=gI1Bu7f9NuiVKT3qfbF8kDkXlaleyQjzrAwdJkN0O1TOWX2q7fISfgxh
 /t0PuwHvxi+Ivd53tUUhb8eTK1S6yiVYAPciGAERXaeOnafDThScKIkMv
 x8a9PvKCMHLX8rIs5Hcj6QoPs9btxHArHbagARxpR0sfJEkIfkCyUrT+q
 b8D/AWh5Mh9iXokQl3Q/esEcYO8CAbSqlyWVy6imA8uNoSDGcMlvGrldq
 xmUKGWfN/TZEuXcycdi/+501KBz6OMDAsVQf2+EzDbmRQFH1s0wnafzx/
 SjiXnvfO3EGDGYFJ/KFvrrkZW0Fssvvkhje2m2rb4uma+JcLf4TrdsPsx A==;
X-CSE-ConnectionGUID: fuYZqplySuaiqdKF4GG+sQ==
X-CSE-MsgGUID: 9r5rfBvWSp2tOnIUDpXAMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="24677708"
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="24677708"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 15:30:20 -0700
X-CSE-ConnectionGUID: ZTIZ4ICfTxGiNQyQ/8a9Ag==
X-CSE-MsgGUID: aSW5G5PnSWyOWRbDXb8dfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="56235816"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.244.45])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 15:30:18 -0700
Date: Mon, 5 Aug 2024 23:30:14 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Delete sysfs entries for engines on driver
 unload
Message-ID: <ZrFSdvngs2arVQi-@ashyti-mobl2.lan>
References: <20240801154047.115176-2-krzysztof.niemiec@intel.com>
 <qx6a6di4z46gnfmi4an3x6io346ujncpoubcodxgs6l25veifc@piwwoizskuly>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <qx6a6di4z46gnfmi4an3x6io346ujncpoubcodxgs6l25veifc@piwwoizskuly>
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

On Mon, Aug 05, 2024 at 05:46:06PM +0200, Krzysztof Niemiec wrote:
> On 2024-08-01 at 17:40:48 GMT, Krzysztof Niemiec wrote:
> > While the sysfs entries for engines are added in intel_engines_init()
> > during driver load, the corresponding function intel_engines_release()
> > does not correctly get rid of them. This can lead to a UAF if, after
> > failed initialization (for example when gt is set wedged on init), we
> > try to access the engines.
> > 
> > Empty the engines llist in intel_engines_release().
> > 
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

...

> drm/i915/gt: Empty uabi engines list during intel_engines_release()
> 
> While the uabi_engines_llist is populated in intel_engines_init() during
> driver load, the corresponding function intel_engines_release() does not
> correctly get rid of it. This can lead to a UAF if, after failed
> initialization (for example when gt is set wedged on init), we try to
> access the engines.

Pushed to drm-intel-gt-next with the updated commit.

Thanks,
Andi
