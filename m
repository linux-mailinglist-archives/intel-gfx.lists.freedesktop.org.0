Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C099EB059
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 13:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BCD10E392;
	Tue, 10 Dec 2024 12:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CobWPDF+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9EC10E392
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 12:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733832220; x=1765368220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HyMozaIlUHVr7oztByMv9jphOyitzcEJUn1VXaroZgk=;
 b=CobWPDF+TChO1PbvGXUjXw9zUTbZ4bL4PcI8AOfybnibAuifduRNXqoe
 KiFOVxlg+ttwJLRBGi3tIEXJ+kyWL3k4bOgCNpKOUxvPzBOiy0yODzuuT
 lny0p9xTNvcLILyRO5q32T39eH80/GBoRhYZ/seV8zL4Xx8auKeJi+sEB
 M9/lSQF0+X8m1PEMawZKgN9z1Y1XuVNyFXDkhGTyX0tYp4VL8PcxSYZTl
 gCU1hreW5bKaAp5Z8U8uFcs1uxyyAc2ACi6pUBVRz5oiUmmDB47EXnv6e
 Gnpr9gsL0G7xm/6DKLH3gtbrhsgFKxaNCKuGp2dG6aY3ynBH6l19aABqx w==;
X-CSE-ConnectionGUID: IHnjqXtwR4eL93/cNqTvuA==
X-CSE-MsgGUID: TU9ua7E9TvOo9A3w0i5ViA==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45553833"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45553833"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 04:03:40 -0800
X-CSE-ConnectionGUID: 3PLQAikWRPq8T223K4pSBw==
X-CSE-MsgGUID: l6xQx1JFToS4HHsy0nF8rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="100199778"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.254])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 04:03:36 -0800
Date: Tue, 10 Dec 2024 13:03:32 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 3/4] drm/i915: Introduce intel_cpu_info.c for CPU IDs
Message-ID: <Z1guFMeR-8c8EQ0e@ashyti-mobl2.lan>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-4-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241030143418.410406-4-raag.jadav@intel.com>
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

Hi Raag,

On Wed, Oct 30, 2024 at 08:04:17PM +0530, Raag Jadav wrote:
> Having similar naming convention in intel-family.h and intel_device_info.h
> results in redefinition of a few platforms. Define CPU IDs in its own file
> to avoid this.
> 
> v3: Move file out of gt directory, add kernel doc (Riana)
>     Rephrase file description (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
