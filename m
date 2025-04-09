Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1CDA82418
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 14:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB0710E85E;
	Wed,  9 Apr 2025 12:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jz2X3ejM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF37010E85E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 12:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744200067; x=1775736067;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=XZmcqdZKY56AK0alqJagXMMDdrnp4qii7NMf2eIt6eU=;
 b=Jz2X3ejMnfOs5DGT3im9PJObVPXv5ME6gn41r6bLK1snGu3LheOtk+Pq
 K0+WlvmlF60j7B2on+e5c6FFv5VUPmzQpgI2k5mxuwB9/X/+XSy0CttLo
 pwQfA1nzurYmzSBHN1Y+4pLIBMEqc1QypAEqHljJUwxkZt6mtF8V8iftL
 4XYR438OVSM4OanVH/DXj+/5mIpCabANAsVtJmH3r+1j5x8PSjF3tLOYu
 SkrjexaDKJKZauWXwATMPF5YMqwWhkOlhAK9SF4O4vo1GVawOs5eOdnZs
 KE9Vr2JVLD0Yxawd9CxyDvWnEqvikoQm4QTFwg0aiB2T7VBlX0WXK0wu4 A==;
X-CSE-ConnectionGUID: PXeC07fbS0iq1drgVy4ihw==
X-CSE-MsgGUID: pZ8sk0rJQtmT/8pr/0C+8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="68149336"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="68149336"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:01:07 -0700
X-CSE-ConnectionGUID: 05fnJwmKSP+8CjXStN4onw==
X-CSE-MsgGUID: OdnAlj5RRXemomxRTHBN8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133439604"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:01:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "cover.1743682608.git.jani.nikula@intel.com"
 <cover.1743682608.git.jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 0/2] drm/i915/dsi: couple of fixing
In-Reply-To: <SJ0PR11MB589486DC119A58935649E135F1B42@SJ0PR11MB5894.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1743682608.git.jani.nikula@intel.com>
 <SJ0PR11MB58940EE32DA88AFBB2D8EE49F1B52@SJ0PR11MB5894.namprd11.prod.outlook.com>
 <8734ehydkk.fsf@intel.com>
 <SJ0PR11MB589486DC119A58935649E135F1B42@SJ0PR11MB5894.namprd11.prod.outlook.com>
Date: Wed, 09 Apr 2025 15:01:02 +0300
Message-ID: <87o6x5wnlt.fsf@intel.com>
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

On Wed, 09 Apr 2025, "Tseng, William" <william.tseng@intel.com> wrote:
> Yes, we should merge these patches for sure.  Here are the tags.
>
> Reviewed-by: William Tseng <william.tseng@intel.com>
> Tested-by: William Tseng <william.tseng@intel.com>
>
> Thank you for contacting me.

Thanks a lot, pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
