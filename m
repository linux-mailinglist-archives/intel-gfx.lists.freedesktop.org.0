Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9ED25D84D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 14:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF1B6EB91;
	Fri,  4 Sep 2020 12:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42696EB88;
 Fri,  4 Sep 2020 12:02:42 +0000 (UTC)
IronPort-SDR: swTxtRvwaUTe1lmOOR8qu85tU/3/3akefG6kLmNeR6//tArL4Bs1Uoh5Di+AzvCLYKBphCNALX
 vze4hLs6hRvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="155127274"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="155127274"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 05:02:42 -0700
IronPort-SDR: i5N4RdgN1WjUVGUoLAAXq9gXmSzTPcFGlKMpiPT5A8R/tI9NWtmxteLqBwuxs8dSPg4ArFo02M
 PTo86P/NEapg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="332132786"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2020 05:02:39 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kEAK5-0004k3-39; Fri, 04 Sep 2020 14:56:05 +0300
Date: Fri, 4 Sep 2020 14:56:05 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Liviu Dudau <Liviu.Dudau@arm.com>
Message-ID: <20200904115605.GW7444@platvala-desk.ger.corp.intel.com>
References: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
 <20200904110918.GM159988@e110455-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200904110918.GM159988@e110455-lin.cambridge.arm.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v9 0/4] Add support for testing
 writeback connectors
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
Cc: melissa.srw@gmail.com, Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>,
 nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 04, 2020 at 12:09:18PM +0100, Liviu Dudau wrote:
> On Sun, Aug 30, 2020 at 01:44:06PM -0400, Rodrigo Siqueira wrote:
> > Hi,
> 
> Hi,
> 
> Can this series be merged?

Thanks for the poke. It's merged now.

> Neither me nor Brian managed to get accepted
> in the i-g-t committers list, so I cannot push it.

Let's fix that. Please apply in gitlab.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
