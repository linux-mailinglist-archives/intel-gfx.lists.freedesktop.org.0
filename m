Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEE57C000B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3DE10E395;
	Tue, 10 Oct 2023 15:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE7C10E397
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696950725; x=1728486725;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eVOCdqQmMLRQT6njovCS2TD8KdkAGr4kUQ06dVqnYIY=;
 b=C5zwMi76qiSgygUE3nqxwEPIH6qNFWvLk5bFnu6GOoM/GL0PzCqf7E+O
 23ubFHsPDYsy68xb676QCmNTTwj0z/mA/QeITvm3ff0ihKKes65ECKdGl
 qJhnHWtgoLLJ1D5etYGJLiClzEYSjI/2pStzlG5ooMOsqQsUGaDY89bR7
 wl2qaP1HTB8mZMxhWpXuarhPRktY2hMje+aL2p8rcLrVH6WXoEYOkI/iF
 lP5jPBTqZVyma2BqSOe4p5nak+6wCXHMtTqxI4/ZkJyFKmC6m7EkN6s4n
 DufLiEHuBHIoh2bcMy9/3PjIBMRbc+A2/Sw1AMSUerM6efJFp0L2EFcyc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3009264"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="3009264"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:12:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819264172"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="819264172"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.148.82])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:12:00 -0700
Date: Tue, 10 Oct 2023 17:11:54 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Tue, Oct 10, 2023 at 06:58:27AM -0700, Matt Roper wrote:
> On Mon, Oct 09, 2023 at 04:38:56PM -0700, Jonathan Cavitt wrote:
> > FIXME: CAT errors are cropping up on MTL.  This removes them,
> > but the real root cause must still be diagnosed.
> 
> Do you have a link to specific IGT test(s) that illustrate the CAT
> errors so that we can ensure that they now appear fixed in CI?

this one:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html

Andi
