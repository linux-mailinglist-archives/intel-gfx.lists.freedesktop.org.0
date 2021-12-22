Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9686047D798
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 20:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065D710E1ED;
	Wed, 22 Dec 2021 19:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0248310E1ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 19:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640200949; x=1671736949;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=9YFc36FBbxOSjHHSHC+/HC23ZOYYtruSrZRtgQkXGmw=;
 b=EIipKhRJD9dxKN4sCaUES5PQu1lSP98lVNRloH/hKevWeEDVBL4ZBZ82
 VTHD2cfkbLAbAFaO7fpDUmvdKb+jHp5ZODbrXT7c6sH0fJUWMu1iWZogJ
 m29LKVwUbLsYWBx2lTBryrt2+b9xtLjUu4NUffTkSNPXIb+Atin+Ru1cQ
 yDb97CiN63TsloXPciakjHp0+hSpuPam+OsZEzl7PBj54cNaSrUZwwVEd
 7/M37r8SiwrUpMNTXKfLej4qEpAi/Fx3V0Kzp63yYRct+oFPwaG+tLCeu
 +btSkAOEygJSPeNgNbGeo12sYccvHmypjTlJnQNCwiP36BU0IjZO2kfLv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="240919422"
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="240919422"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 11:22:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,227,1635231600"; d="scan'208";a="468275496"
Received: from smile.fi.intel.com ([10.237.72.61])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 11:22:27 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1n07Ad-000w14-2Y for intel-gfx@lists.freedesktop.org;
 Wed, 22 Dec 2021 21:21:03 +0200
Date: Wed, 22 Dec 2021 21:21:02 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YcN6nos9UaYGRIQk@smile.fi.intel.com>
References: <20211222154033.6770-1-andriy.shevchenko@linux.intel.com>
 <164019809475.15676.2723971470983454199@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164019809475.15676.2723971470983454199@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/1=5D_drm/i915/dsi=3A_Drop_double_ch?=
 =?utf-8?q?eck_ACPI_companion_device_for_NULL?=
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

On Wed, Dec 22, 2021 at 06:34:54PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/1] drm/i915/dsi: Drop double check ACPI companion device for NULL
> URL   : https://patchwork.freedesktop.org/series/98304/
> State : failure

I couldn't see how even possibly to have any new regression with the change
provided. Can anybody assure me that it's my patch made all those breakages?

-- 
With Best Regards,
Andy Shevchenko


