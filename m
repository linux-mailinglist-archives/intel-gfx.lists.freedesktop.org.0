Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F097EC94
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 15:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF7C10E23F;
	Mon, 23 Sep 2024 13:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvzBnLn/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5222310E188;
 Mon, 23 Sep 2024 13:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727099484; x=1758635484;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=V2sX8LpkiXbU/M1Crn4TyXeCk6iQt27h0pg5ljffGcY=;
 b=PvzBnLn/f0vxX0gfswR3ZdN51HRnuYc7oOTr4MGZ/PS2zjfBdxBNKegu
 AqX/5ywSbqKKucb/I0IMoXFAJo62mKm7jMVc9JJc8Ob30mNGMPMLlkFqu
 MfmXsJPVHKXpAg+qIxgmKxoSEyASC5Glfss9QqreN/9h0HDy/IdZmO9OR
 I+dNHE/9l8yh4YtGnEMeSb+jq3ZNQcGBGFsO+iernZzpOtUKGl5/4AuLG
 e5oJ+YB5HCvK0oYdgv0EWBs5U7l8inXAldiLHTxKtQ+Q8UhxuvjkPwfvX
 vsJT7ilSGVw53cUjEPkwCGmV596e8N6xT84hzqi9UKI1h/BZYgbwAMhkF A==;
X-CSE-ConnectionGUID: nP2SzmnlS6mzZ2kWRAalaA==
X-CSE-MsgGUID: wt08SGsqSfOwpcFRIW9nNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="36618384"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="36618384"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 06:51:24 -0700
X-CSE-ConnectionGUID: 8FCRyNvUQlO7DBl9GL1leg==
X-CSE-MsgGUID: veMmibg0QiKKuWTQw3T3mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="75834310"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 06:51:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Francois Dugast <francois.dugast@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Srikanth V NagaVenkata
 <nagavenkata.srikanth.v@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
In-Reply-To: <ZvFmM3FIdY4DS3AS@fdugast-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com>
 <87tte6652c.fsf@intel.com> <ZvFmM3FIdY4DS3AS@fdugast-desk>
Date: Mon, 23 Sep 2024 16:51:18 +0300
Message-ID: <87a5fy5vhl.fsf@intel.com>
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

On Mon, 23 Sep 2024, Francois Dugast <francois.dugast@intel.com> wrote:
> On Mon, Sep 23, 2024 at 01:24:27PM +0300, Jani Nikula wrote:
>> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> > Aux RD Interval value depends on the value read from the dpcd register
>> > which is updated from the sink device use flseep thereby we adhere to
>> > the Documentation/timers/timers-howto.rst
>> >
>> > Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> 
>> With the commit message updated to explain why,
>
> While at it, please also fix the typo s/usleep_rage/usleep_range/.

usleep_rage does have a certain appeal to it, though... ;)

BR,
Jani.


-- 
Jani Nikula, Intel
