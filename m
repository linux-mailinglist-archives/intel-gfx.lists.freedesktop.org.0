Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0D09B7D49
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 15:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C1210E8BB;
	Thu, 31 Oct 2024 14:50:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eRV0mwlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8B510E8BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 14:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730386222; x=1761922222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BzBamUX3xGrAaQWHip/O1XHSRE9FxCXSfcVm6qXZqI0=;
 b=eRV0mwlxif2SrMdDLLC3roz/m5Rp5Vk5C99BTxDVIz8p881fwpF2d6/a
 oSII1me2Vdg2pVfwJIc5bawzwhHA6hNGLAspM/J7C8WGORWf2sMHh4ECN
 TuyQpt6qkZPyN0h10fx2i7eFvo+Kc4iPRBJVrXETGbfor9Tjy3rKmwfcq
 YRrV4vmCG8EKCFAoh+RvMzMJkHtXHkmvtdi/S7MvNkUrJUp/wePCIbHDA
 66FcGJGXfry4o3TEEZ7YEfJmI0R9LVesiMkZsaIJUHbWE8G5Nyr/aXcF6
 q4jJTPdsIUkK4RvYjBZedD0phihtNY/3/35K17nTEsouBQonky/stJeUJ A==;
X-CSE-ConnectionGUID: PXntLSTuRu+ZC1SGoo6CuA==
X-CSE-MsgGUID: pHwWXxNeQA6CKQRfxiGZeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="30344816"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30344816"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:50:20 -0700
X-CSE-ConnectionGUID: FF9HiWgySZKJDTXBDE1WnA==
X-CSE-MsgGUID: VDrycngoRyqg+8UYixZWAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113495180"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:50:18 -0700
Date: Thu, 31 Oct 2024 16:50:15 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Message-ID: <ZyOZJ-hDIpT7G91_@black.fi.intel.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <20241031114027.225217-2-mika.kahola@intel.com>
 <ZyN-K6kvCJdri7Lj@black.fi.intel.com>
 <MW4PR11MB70547BFB1F1942AAA3E94889EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB70547BFB1F1942AAA3E94889EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Thu, Oct 31, 2024 at 07:59:16PM +0530, Kahola, Mika wrote:

...

> > > +static void wa_14020908590(struct intel_display *display,
> > > +			   bool enable)
> > 
> > Can be one line?
> 
> Could be. This should fit within expected line length.

With that,

Reviewed-by: Raag Jadav <raag.jadav@intel.com>
