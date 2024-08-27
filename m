Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 574CD96057E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 11:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B619510E2C3;
	Tue, 27 Aug 2024 09:25:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVO0iAz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20C010E2C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724750748; x=1756286748;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eAdDcSmFtZ0BMK6j+43tAGHRdqLUWqpyfrY1XTaNHc0=;
 b=fVO0iAz81IKHs9Rij7/Bs27u1PJ0CPoILhHFrr4cJK2gqGOl/a4/NHUB
 YdAw1SkcGYz2kz4FgPSqyB01SYV2zf5AqFbGl9MvSoI3NxBefyMDhk2pn
 YYtI1mVaknvENOThesp7e2PZekjNoDVJ5w+9wom0U8VqEgWOMEAUoCi5u
 FJptJXk4JX1cumfrInjMNxXyGn4MEAxyiw6nJ5bKz3l64Ipxzw1i5mTcH
 gqJK3zk5Ou3bpxTiAh5GsG3CnKu4vKcjeki65bbQsbLOPQtbPoxFf9abj
 6UPn5/CcXmPNPbvCFmJghmrSDFKspC/9DnlljrkcH01iVSVJ+U3d/o8Jo w==;
X-CSE-ConnectionGUID: jURZ58u7TkC+sa7/cQzRkw==
X-CSE-MsgGUID: fsBW/21DT0yWHdCfNK5dxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="34369288"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="34369288"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 02:25:47 -0700
X-CSE-ConnectionGUID: F22ylfGkSESgfz6/u1fiaQ==
X-CSE-MsgGUID: p0uG7W1DS5CXRMfukBpSXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="63120644"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 02:25:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.IGT: failure for drm/i915/display:
 correct dual pps handling for MTL_PCH+
In-Reply-To: <20240826170150.GC5091@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
 <172258287417.502429.17165387604242704891@2413ebb6fbb6>
 <20240826170007.GB5091@mdroper-desk1.amr.corp.intel.com>
 <20240826170150.GC5091@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 27 Aug 2024 12:25:41 +0300
Message-ID: <87v7zmz59m.fsf@intel.com>
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

On Mon, 26 Aug 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Mon, Aug 26, 2024 at 10:00:10AM -0700, Matt Roper wrote:
> Oops, I replied on the wrong patch here.  This was meant for
>
>         [v2] drm/i915/gt: Whitelist COMMON_SLICE_CHICKEN1 for UMD access.
>
> rather than this one.  Sorry for the confusion.

Hey, thanks for bringing this one up. I ended up double checking, and
I'd forgotten to close the issue after pushing. :)

BR,
Jani.


-- 
Jani Nikula, Intel
