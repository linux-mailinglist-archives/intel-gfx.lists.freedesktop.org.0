Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F34887618F0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 14:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5FC10E137;
	Tue, 25 Jul 2023 12:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4122310E137
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690289659; x=1721825659;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mz320zfDuWG0ltar3Ww3JoQCzXNVq6JbDe/TpMbtsEs=;
 b=np1qcBy3Y0OPYxaf00E1MbTdqUMa0AtnwE14viujP9BV5fLoIran7PDM
 D5tHk2S3NrrfqBN5OGgwlCzDElLs6yKPeU5epkqrxLCJwiYukMSAxBgzN
 VvlGgX1nLpLtvXqEGlvidmm7JR1THaMygbgz+Sutep8TbzL8vhT25sjvh
 9IKP/MyQ/cjC7bJ1JsJH3j9crYWroV7MsS8ytLlm6QeBvSxtJvcsux4P+
 6UmvJ5qVcCP4m4mfBRiSfyimRrMrHFjJw5Sct8jUn+6ZqgN3eZAySpvxc
 ohL+PdxHuzJuDrB9pRS4NJQ3AmC2IbpNqiPygTDRK0W64Qrt0zwG11EKT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="367736454"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367736454"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 05:54:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="761198850"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="761198850"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 05:54:17 -0700
Date: Tue, 25 Jul 2023 14:54:14 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <ZL/F9lcZJlHB7Dpy@ashyti-mobl2.lan>
References: <20230721212133.271118-1-u.kleine-koenig@pengutronix.de>
 <168999615592.17723.14317445519700559147@emeril.freedesktop.org>
 <20230724073648.hjmu2ztfuau7zvdp@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724073648.hjmu2ztfuau7zvdp@pengutronix.de>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Simplify_expression_=26to=5Fi915=28dev=29-=3Edrm?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Uwe,

> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_121164v1_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> 
> I don't think my patch results in regressions. But I fail to understand
> the indications reported by patchwork, so I might miss something.

I think the failure is unrelated, you can ignore it.

For future patches in i915 (or drm in general), you can retrigger
the tests from patchwork yourself when the results don't look
convincing.

Andi
