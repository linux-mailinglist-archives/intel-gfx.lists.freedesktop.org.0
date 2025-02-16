Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6ADA37765
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2025 21:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C456D10E2AA;
	Sun, 16 Feb 2025 20:13:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QzL7jjTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1877910E15E;
 Sun, 16 Feb 2025 20:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739736797; x=1771272797;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/3goS/B/0TuHOpIkgJCW7Ile8lPR4M0Pq2wcji6Mp9I=;
 b=QzL7jjTiuEfUvM3YkLAOY14lUPoB3KPdjNQ5uA11XhlyapFm+Z8Us1C6
 NOM24kGgrowHz9TwNnnYJIH2JQNAKkQ96bI/YElC1GoUWpuOZxH/GXs3q
 I4C/48ebUAVgq7VFLIpijIqLLh9ITExbA9xFJEBUbrawg2sRYDkd4zXTb
 XB9Dcxi9mgZCenz/IwdY+/TXoibSzoT24pST1ESYDyOb3pOmqtl5YK8Xd
 inmfYp3EQVRUUpJ6C1+kypSuAEfxmMg3Gcxc93aGRUPEPBqgWGd4j+ZaM
 xTJFDWWgh0XrAW940NHP1P3KDfYZUYuBlGlbCX3CXOI8EVpyt1gIZriVD g==;
X-CSE-ConnectionGUID: TNw2fpZERiSjRonTK3J3Lw==
X-CSE-MsgGUID: 7wexGRyqSJayz/6jQCkO7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40557482"
X-IronPort-AV: E=Sophos;i="6.13,291,1732608000"; d="scan'208";a="40557482"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 12:13:17 -0800
X-CSE-ConnectionGUID: yjMVYenURReTGD/qT+6iVQ==
X-CSE-MsgGUID: fjBnY6UJQka6YMu6LpWoSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144859915"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 12:13:15 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1tjl0r-0000000CCkJ-06EO; Sun, 16 Feb 2025 22:13:13 +0200
Date: Sun, 16 Feb 2025 22:13:12 +0200
From: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on linux-next (next-20250210)
Message-ID: <Z7JG2BAR0taUWHAU@smile.fi.intel.com>
References: <SJ1PR11MB6129D6C5644D4A6C858A4F04B9F92@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB6129D6C5644D4A6C858A4F04B9F92@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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


The fix landed upstream, will be in next Linux Next.

c213375e3283 ("serial: 8250_dw: Call dw8250_quirks() conditionally")


On Sat, Feb 15, 2025 at 04:16:58PM +0000, Borah, Chaitanya Kumar wrote:
> Hello Andy,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
> 
> Since the version next-20250210 [2], many machines in our CI are unable to boot.
> 
> Unfortunately, we have  not been able to collect any logs (even from pstore).
> 
> However after bisecting the tree, the following patch [3] seems to be the first "bad"
> commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit bfd3d4a40f3905ec70b17dbfa9b78764e59e4b4f
> Author: Andy Shevchenko mailto:andriy.shevchenko@linux.intel.com
> Date:   Mon Feb 3 14:14:56 2025 +0200
> 
>     serial: 8250_dw: Drop unneeded NULL checks in dw8250_quirks()
> 
>     Since platform data is being provided for all supported hardware,
>     no need to NULL check for it. Drop unneeded checks.
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?
> 
> Thank you.
> 
> Regards
> 
> Chaitanya
> 
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250210
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250210&id=bfd3d4a40f3905ec70b17dbfa9b78764e59e4b4f 
> 
> 

-- 
With Best Regards,
Andy Shevchenko


