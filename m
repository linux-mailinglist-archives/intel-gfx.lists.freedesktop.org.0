Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B942266114
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 16:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84CC26EA7C;
	Fri, 11 Sep 2020 14:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF476EA78;
 Fri, 11 Sep 2020 14:20:17 +0000 (UTC)
IronPort-SDR: +bDmQZjRk0Is/6ECKqGP6XiHF08+99BKojjCb6oEn3EfUDIZf2+vMROWodLQ15Kyo5VqRtZIac
 QcWYuKZBqr/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="158796617"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="158796617"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 07:20:16 -0700
IronPort-SDR: HMBYQk6/dXDDP4QXIld75Y2w8m4JgIvaYpQvlVfEGt3aUhLAmtIcoM9Fj8Yxz6L17LX2bhBKjM
 abYzPaCl5X/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="334525222"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 11 Sep 2020 07:20:15 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kGjuQ-0001jw-20; Fri, 11 Sep 2020 17:20:14 +0300
Date: Fri, 11 Sep 2020 17:20:14 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20200911142014.GR7444@platvala-desk.ger.corp.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
 <20200911103039.4574-24-janusz.krzysztofik@linux.intel.com>
 <20200911115118.GM7444@platvala-desk.ger.corp.intel.com>
 <272d07bcdc8553e9e8e975a13947e2035238dab1.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <272d07bcdc8553e9e8e975a13947e2035238dab1.camel@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v6 23/24] tests/core_hotunplug:
 Un-blocklist *bind* subtests
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
 =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 11, 2020 at 02:00:11PM +0200, Janusz Krzysztofik wrote:
> Hi Petri,
> 
> On Fri, 2020-09-11 at 14:51 +0300, Petri Latvala wrote:
> > On Fri, Sep 11, 2020 at 12:30:38PM +0200, Janusz Krzysztofik wrote:
> > > Subject: [PATCH i-g-t v6 23/24] tests/core_hotunplug: Un-blocklist *bind* subtests
> > 
> > Change to
> > 
> > intel-ci: Un-blocklist *bind* subtests of core_hotunplug
> > 
> 
> OK, and I guess the same applies to "tests/core_hotunplug: Add unbind-
> rebind subtest to BAT scope" (if accepted).


Speaking of accepted, now that the results are in, for the two intel-ci patches:

Acked-by: Petri Latvala <petri.latvala@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
