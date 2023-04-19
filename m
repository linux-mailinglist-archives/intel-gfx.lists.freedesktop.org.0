Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C18356E8473
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 00:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81B210EB35;
	Wed, 19 Apr 2023 22:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5911F10EB2F;
 Wed, 19 Apr 2023 22:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681942641; x=1713478641;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZJuPPsPtSwEoiON+Mfehgyud/tbJqnddMUOXP6GGrQI=;
 b=KVP1f5z0ag8GNO8ye5oHX4IDzjHejoIB36I3P+BrKtECbHWMSX4IFLpc
 8e76nT6mS/5vPKwTt5a7zKFnnzIECACRgxvhoBDQdu8vLGUMF9GgYDND5
 E8j34ZINgx3g3RXHzbHRJCQ49nzxbZ16h/FXk4yhsMXt4brDs9K6DzGc5
 QV2Q9PxblC7pE44xO2GBpkspdou+UaBa+6AD5sGZhy9lKcaFVsxVKtEl2
 h6mhtn95plAfrVJcSK6SinIOrHfYRLhXPlor9+VJ0yglJ1KPNAgrb5wt7
 2of2/MTEWNQ/KTx7m2AbnzYNOYQs72DnQRpks8TDDfYT0m/k3pLGcK8U6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="373462952"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="373462952"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 15:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="685115604"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="685115604"
Received: from mmzakhar-mobl2.ccr.corp.intel.com (HELO intel.com)
 ([10.251.213.234])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 15:11:51 -0700
Date: Thu, 20 Apr 2023 00:11:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Yang, Fei" <fei.yang@intel.com>
Message-ID: <ZEBnJJsX85a62/BG@ashyti-mobl2.lan>
References: <20230419211219.2574008-1-fei.yang@intel.com>
 <20230419211219.2574008-2-fei.yang@intel.com>
 <ZEBjqa0W9PflR9RX@ashyti-mobl2.lan>
 <SN6PR11MB2574D2B3FB7F7B579F1762179A629@SN6PR11MB2574.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN6PR11MB2574D2B3FB7F7B579F1762179A629@SN6PR11MB2574.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/mtl: Set has_llc=0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Fei,

On Wed, Apr 19, 2023 at 10:10:24PM +0000, Yang, Fei wrote:
> > Hi Fei,
> >
> > On Wed, Apr 19, 2023 at 02:12:12PM -0700, fei.yang@intel.com wrote:
> >> From: Fei Yang <fei.yang@intel.com>
> >>
> >> On MTL, LLC is not shared between GT and CPU, set has_llc=0.
> >>
> >> Signed-off-by: Fei Yang <fei.yang@intel.com>
> >
> > just an unanswered questino from Nirmoy:
> >
> > This statement is bit unclear to me.  I would say "On MTL, LLC is not shared between GT and CPU"
> 
> I have updated the commit message accordingly in this version. see above.

oh... sorry... I got confused... never mind! :)

Thanks!
Andi

> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> >
> > Andi
