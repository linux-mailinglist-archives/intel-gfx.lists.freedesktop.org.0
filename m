Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAE37A1F88
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 15:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C8310E62D;
	Fri, 15 Sep 2023 13:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356CE10E62B;
 Fri, 15 Sep 2023 13:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694783403; x=1726319403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cFoDl6KdvaFLAjOnF/D59x32DD6pY65qiLa64dooMCw=;
 b=Hh40Df19b4g3Y/6zEZNndx0bwSOQA5v6yIoDm+R2hhyhPTOxBQnKPkhC
 zT42CL437ZR+lSSxWd5UhOugFcFRmOreta6+9iGodqXwPK8k2m3QS1cFn
 MWJkZj4OBs7eXfhiJApLcCjBbqJLMsltDRRrNx3HGmu2Nc/UcnU2PG2Hg
 CPGVtBGgc3DEuYuJd2KxTBwznRLvawK8PeQCOzUDiVOw0QdpZ8SJ2X1u2
 a9xMmNwGactoDHY6CkZNS7xux56EaAHSNurC5VHJD9NXZvAnpZt4oA7ab
 z2TMLOF/y+Wzfht/a+cVq+oxm5/TRk4PS3URBpvAWtXgjF5KtGh0MNICB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445701987"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445701987"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:10:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="738321583"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="738321583"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.6.122])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 06:10:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Date: Fri, 15 Sep 2023 15:09:58 +0200
Message-ID: <23874386.ouqheUzb2q@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230915142849.5c620a00@maurocar-mobl2>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-32-janusz.krzysztofik@linux.intel.com>
 <20230915142849.5c620a00@maurocar-mobl2>
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?utf-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mauro,

On Friday, 15 September 2023 14:28:49 CEST Mauro Carvalho Chehab wrote:
> On Fri,  8 Sep 2023 14:32:47 +0200
> Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
> 
> Forgot to mention on my past review:
> 
> > +				       &n, &len) == 1 && len == strlen(buf))) {
> > +		/*
> > +		 * TODO: drop the following workaround as soon as
> > +		 * kernel side issue of missing lines with top level
> > +		 * KTAP version and test suite plan is fixed.
> > +		 */
> 
> Please add a link to lore with the thread discussing the issue upstream,
> as it can be helpful while this workaround is here.
> 
> Also, I would place the workaround on a separate patch, to make
> easier to revert it when upstream fixes it.

Thanks for pointing that out.  Since we already have those kernel changes 
included in v6.6-rc1, then in drm-tip, I'll drop the workaround now.

Thanks,
Janusz



