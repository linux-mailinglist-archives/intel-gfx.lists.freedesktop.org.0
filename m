Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780B87C0048
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5A510E32C;
	Tue, 10 Oct 2023 15:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E363810E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696951330; x=1728487330;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IVmBhO6iM8lAXp/lp+DXo9+nNJaXLHlh95nU1sC+tEs=;
 b=N5Nfk/FR/jC8TqvVL0xAgGkcQmCoscDbzdKIlgULiuYHnWErmt3EoZXi
 ufH5sWDf8fJxZXyY1o7n2mmae6Woc0DqIUKH4hfYPH7Kst6LZvvYU2IUk
 +ZbA6g1YuPVTLccERCF/2XXpAAAZeHKgvQUK/jxl7xWPIFQMP1mAPJd+j
 uIayWsezLafnHZs9cxYBbzi6YcCmMJysrTq9mEUgBeEYT64zCTBoGACaR
 1QRBFlSL1Ic5P6Q0bFAPEEokk6GldcEGeW1f3kpu9g3ICwHWA1Jc4pP6W
 +bg3crkoaRck1uFTu9Og9Pxx+JLSY0u6TKUhhp0u+oywd172jd0LxSkKQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="470692849"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="470692849"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="844166986"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="844166986"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.148.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 08:21:34 -0700
Date: Tue, 10 Oct 2023 17:21:26 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZSVr9tvIBNRt1JGz@ashyti-mobl2.lan>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v10 0/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Tue, Oct 10, 2023 at 08:02:37AM -0700, Jonathan Cavitt wrote:
> Implement GuC-based TLB invalidations and use them on MTL.

I have to admit that I'm a bit biased on this series. Given this
premise, you can add

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

to all the patches.

Nevertheless to get this merged we still an need ack/r-b from a
third party, like Tvrtko and/or John and/or Matt.

Thanks,
Andi
