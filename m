Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165F18BFB70
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 13:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DBD10FAE5;
	Wed,  8 May 2024 11:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvoGX8cx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA6110FAEC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715166053; x=1746702053;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kKPb7hhrABxRwZJV1k8CCXifopwTGZ/zMmUovgbjLzA=;
 b=CvoGX8cxwHUGtV/DM8MZDoQPz7qbLhsKnyHAWzUI/nlJjZ2cJyEpSzX7
 Dw1c5fArKEmVzz5vdBZCuAC2I0FEkh3PuYM4rslmPtGCHQZukx4YSu3MV
 pgyvN3BrPqblqks4BbPzDznIglacgCsWnRrHyP6N5IGJDadS6EFNxytX4
 CYr+6dfK8I96qiEMFa48lGS8dlkbnr/Iey5lt1lZ3E9f/IjEvBSCL8zTZ
 pF/sQ5+90cwvpClDNt/MOT/vUzh4xLfQ06m2gloVvw6v1Rh9WkptB7M9z
 ovxyjbw8Zs2OfEjRcmFbpP/DNpayxDKh125kflNYqfWL4Ogp0ZFNSoGI5 g==;
X-CSE-ConnectionGUID: MMawMxWKQnuJoM7PKx16+w==
X-CSE-MsgGUID: KWDIDw51QVmD/n1NBMZByQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="11179805"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11179805"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 04:00:52 -0700
X-CSE-ConnectionGUID: ucFkgq4lSzCipzLP0MSpMg==
X-CSE-MsgGUID: b16gMbeyToey6FRbme/spA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28787748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 May 2024 04:00:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 May 2024 14:00:49 +0300
Date: Wed, 8 May 2024 14:00:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Message-ID: <ZjtbYT_mrLj_XSyV@intel.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
 <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZjjLJEyQJDddXcaq@intel.com>
 <IA0PR11MB73076CE4DB3C399F961188E2BAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87v83ok4kp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v83ok4kp.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Wed, May 08, 2024 at 12:58:46PM +0300, Jani Nikula wrote:
> On Wed, 08 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> > This is the limitation from the retimer hardware.
> 
> The commit message needs to reflect this.
> 
> Do all units have a retimer with the limitation? Or could you have a DG2
> without the limitation? Do we need to check for that instead of blanket
> removal of UHBR 13.5 for DG2?

And if we do remove it entirely then we should do it fully.
That is, don't leave behind unused PLL tables and whatnot.

-- 
Ville Syrjälä
Intel
