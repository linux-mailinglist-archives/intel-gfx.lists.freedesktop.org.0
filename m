Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464159B7DE0
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD25910E00C;
	Thu, 31 Oct 2024 15:12:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BnAJbUak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887A110E00C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730387579; x=1761923579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=U/+++vywUAGhlTPiRcpPvo28q2Pp6878gpjBviubkgA=;
 b=BnAJbUakUwuU6mQIMwszmJgh5Dn91+AcpuiqftHdtbl8xXtQs4ffHRNM
 q69IfmJKC+mNa417GEl4FZyZ4btTQhnbD4M6Mx90Yt5lsEfxb4Hztg6a8
 jvfZdzB+X89bXJt4XGZleMZxPR1mylGdiBn5l6aH87LHQOWhvodE2MkQO
 lJiIZPqgYTKVXv+bR0leEa+hEVvQaSYpD18JGi4/IHCequpubvG6j+5JA
 j3XuVGLQXgCo+SUP0oSyu0a0scX0yqX1cAEOM4B6JaJAab8n54+9RE9d4
 YEPljU3X8M1vPvB5eXyWFShtIbSB/h3k22/dGVAKplJu7RAC2zJHiD/7I w==;
X-CSE-ConnectionGUID: ldGAFvvhSbi2J55ukthvgA==
X-CSE-MsgGUID: 5Y9WncH5QfGGUtPTgFs3HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="30349714"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30349714"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:12:58 -0700
X-CSE-ConnectionGUID: jtzvyHgxS0e9AN6M9ZaVxQ==
X-CSE-MsgGUID: FrgZE1FcTW2WAYZ+fLlP5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="83457733"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:12:57 -0700
Date: Thu, 31 Oct 2024 17:12:53 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Message-ID: <ZyOedbhfZlSldnaZ@black.fi.intel.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <20241031114027.225217-2-mika.kahola@intel.com>
 <ZyN-K6kvCJdri7Lj@black.fi.intel.com>
 <MW4PR11MB70547BFB1F1942AAA3E94889EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZyOZJ-hDIpT7G91_@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZyOZJ-hDIpT7G91_@black.fi.intel.com>
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

On Thu, Oct 31, 2024 at 04:50:20PM +0200, Raag Jadav wrote:
> On Thu, Oct 31, 2024 at 07:59:16PM +0530, Kahola, Mika wrote:
> 
> ...
> 
> > > > +static void wa_14020908590(struct intel_display *display,
> > > > +			   bool enable)
> > > 
> > > Can be one line?
> > 
> > Could be. This should fit within expected line length.
> 
> With that,
> 
> Reviewed-by: Raag Jadav <raag.jadav@intel.com>

Btw, this looks like a v4 with missing changelogs.
So make sure to update it too.

Raag
