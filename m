Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D597A1FE7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 15:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDEE10E630;
	Fri, 15 Sep 2023 13:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114AB10E62F;
 Fri, 15 Sep 2023 13:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694784959; x=1726320959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WXN4IOj0jj0F3H/j7Hv8IYKDXWx5EeCoMpKWvzf3uOY=;
 b=CijpuFZlD4q6lQgbp9JqT21suX2Sl5LpOt2wo6u+t00snzfavSucdEUz
 ELpWvUHJLSZNlx+qZRlCCX4Uy3+YRLcL2LpXQdpJVgH2AYp80v0AFzD2D
 DItmDsg+EaTWKI7yc2/poYV5IJ/9PDO+sZrXE8waCW0RB1lefkU9IlYFX
 YMdsTGB8VlAg80Nt96UOAZaeqNJ1dS0BcLSn14cilgJZ9X3drK5yb3SLm
 88+Ar3NVGRNEHOP7E5zgTpe1CeF5OE6HoBOrpnRKX1/MoRSTy2A3yjxs5
 0y9X5mbZ2WFPOqWC2q/CrXymK5u3Kxe2mkO+vrUAXxggIQMDCghziQW/G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="465611411"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="465611411"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:35:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="780095156"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="780095156"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.6.122])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:35:56 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Fri, 15 Sep 2023 15:35:53 +0200
Message-ID: <1795725.3VsfAaAtOV@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <23874386.ouqheUzb2q@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230915142849.5c620a00@maurocar-mobl2>
 <23874386.ouqheUzb2q@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 13/17] lib/ktap: Reimplement KTAP
 parser
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Isabella Basso <isabbasso@riseup.net>,
 Dominik Karol =?utf-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 15 September 2023 15:09:58 CEST Janusz Krzysztofik wrote:
> Hi Mauro,
> 
> On Friday, 15 September 2023 14:28:49 CEST Mauro Carvalho Chehab wrote:
> > On Fri,  8 Sep 2023 14:32:47 +0200
> > Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> > 
> > Forgot to mention on my past review:
> > 
> > > +				       &n, &len) == 1 && len == 
strlen(buf))) {
> > > +		/*
> > > +		 * TODO: drop the following workaround as soon as
> > > +		 * kernel side issue of missing lines with top level
> > > +		 * KTAP version and test suite plan is fixed.
> > > +		 */
> > 
> > Please add a link to lore with the thread discussing the issue upstream,
> > as it can be helpful while this workaround is here.
> > 
> > Also, I would place the workaround on a separate patch, to make
> > easier to revert it when upstream fixes it.
> 
> Thanks for pointing that out.  Since we already have those kernel changes 
> included in v6.6-rc1, then in drm-tip, I'll drop the workaround now.

Or would you like, Mauro, to keep the workaround for CI testing of linux-xe 
not yet updated to v6.6-rc1?

Thanks,
Janusz

> 
> Thanks,
> Janusz
> 




