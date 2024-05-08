Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0328BF9F0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 11:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F3610F704;
	Wed,  8 May 2024 09:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U0bh7na/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D9D510F704
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 09:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715162332; x=1746698332;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=d2BwS3plucdmkJkWW12dE0DgJCx2RhajrGgbTRRWRhw=;
 b=U0bh7na/9MwzbMO3hOVPcjuVuPFbxtXv25eyn5F/T1LWGhE2CNYV6Lqu
 Xn4rvsjVv/B2MPCiktDRT/bR3DT9IU+PzJO4wfth9ZQ1JjBXuOGSkn139
 LPvlFrqTHvCoW1dJ+YItmvA8LzKRUH3we5i6x+KVD/XkKF0XkM+XMVD6N
 PZ+hPcYGVZdZtsVImNUwIpzuiapOgmt9K8XxKQa8f9V3PUuMBobL1O4jf
 8CLfLpoA/Dhf92/VzVrEb138lR2MNKCnfUavTbuc4busp7Gz3FNXNi5UH
 PVwxtwQJZbUjHEpMtIbFquMu1rV4WjMJlrluAbg5iqEkFcgcclfGQbOc0 w==;
X-CSE-ConnectionGUID: U3NmO+b5TOaflPBJW+Me+Q==
X-CSE-MsgGUID: QseJB1xuRsWT2jkIQEQ1yQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="14817355"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="14817355"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 02:58:51 -0700
X-CSE-ConnectionGUID: /9PnVYcxRKC77WM9jaP+Zw==
X-CSE-MsgGUID: wZG9xyEFQkmH0q21JL8GZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33664922"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 localhost) ([10.245.246.76])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 02:58:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
In-Reply-To: <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
 <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 08 May 2024 12:58:46 +0300
Message-ID: <87v83ok4kp.fsf@intel.com>
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

On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> This is the limitation from the retimer hardware.

The commit message needs to reflect this.

Do all units have a retimer with the limitation? Or could you have a DG2
without the limitation? Do we need to check for that instead of blanket
removal of UHBR 13.5 for DG2?

BR,
Jani.


-- 
Jani Nikula, Intel
