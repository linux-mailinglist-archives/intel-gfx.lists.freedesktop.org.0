Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87836727AB1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7068F10E583;
	Thu,  8 Jun 2023 09:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A057710E583
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686214867; x=1717750867;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Sme5UgFNuvOAcqmcCFTtTxGmCizSJPjEbC/OfnSH+UU=;
 b=a3vZ/gHDUuQYhGcf1x9v1QPk3Db7ostxdLxO+hI+YN5HmaZ9V7kuggq0
 jx2eVa5nkCvHEx+tv3skr58h400jm0+NEhh+H1TJnr4tWQReYG1iqEDc/
 H4AF06AduOmHiuThviuW/YOV17jgX7zyADl7V4FvYwwDkekd8m1m3yIY2
 dI34vDFOQHVzdfYiF7eCnD8pCTYKuEQWOnUhNDEmTZWpShoCvEg95CVC/
 nDrvd1jx+f4QGyyCZB9bToneX9ndNQnn/XbiV//7jvOfLsbyqx7Pj5KtP
 xTcDEp9F4MRQptF0ierDyaQdcbMoPy2Me1ApXJBAmnjmKZf3uXwogUpg3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336884538"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="336884538"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:00:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="743043538"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="743043538"
Received: from ovaispap-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.59.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:00:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Wang, Zhi A" <zhi.a.wang@intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
In-Reply-To: <DM4PR11MB554984018E367E6291C67DD7CA50A@DM4PR11MB5549.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531020411.18987-1-zhi.a.wang@intel.com>
 <168555222135.17615.4107362582795659089@emeril.freedesktop.org>
 <87h6rpdcfx.fsf@intel.com> <87wn0iase9.fsf@intel.com>
 <DM4PR11MB554984018E367E6291C67DD7CA50A@DM4PR11MB5549.namprd11.prod.outlook.com>
Date: Thu, 08 Jun 2023 12:00:44 +0300
Message-ID: <87wn0es4zn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_remove_unused_variable_gma=5Fbottom_in_comm?=
 =?utf-8?q?and_parser_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jun 2023, "Wang, Zhi A" <zhi.a.wang@intel.com> wrote:
> Please take the <zhi.a.wang@intel.com> as my S-O-B since this is a
> patch about GVT-g. I still don't know why my intel email smtp doesn't
> work.

Thanks, pushed.

You should be able to configure git to set your author From: in the
patch, even when sending the patch email with a different From:.

See e.g. [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20230606191504.18099-2-ville.syrjala@linux.intel.com


-- 
Jani Nikula, Intel Open Source Graphics Center
