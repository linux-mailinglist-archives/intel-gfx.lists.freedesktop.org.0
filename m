Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 102D8140C0A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 251536F589;
	Fri, 17 Jan 2020 14:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154C76F588;
 Fri, 17 Jan 2020 14:05:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:05:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="243675605"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by orsmga002.jf.intel.com with ESMTP; 17 Jan 2020 06:05:51 -0800
Date: Fri, 17 Jan 2020 16:05:52 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200117140552.GB3238@intel.intel>
References: <20200117073436.6507-1-zhangxiaoxu5@huawei.com>
 <20200117121550.GA3238@intel.intel> <87tv4ugr7y.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tv4ugr7y.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix i915_error_state_store error
 defination
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

> >> Reported-by: Hulk Robot <hulkci@huawei.com>
> >
> > I've never been a fan of non human accounts, we had this discussion
> > already in a different mailing list. Could you please find a
> > different way of giving credit to your CI system?
> 
> I don't actually mind for Reported-by credits. The history is full of
> things like:
> 
>     Reported-by: kbuild test robot <lkp@intel.com>
>     Reported-by: syzbot+ec24e95ea483de0a24da@syzkaller.appspotmail.com

That's just commit log unnecessary pollution, unwanted mail
reference... no one will ever answer at lkp@intel.com, why
reference it, then?

> Care to reference the discussion?

Here in the Samsung list we had a discussion with another Huawei
developer about the Hulk Robot:

  https://lkml.org/lkml/2019/9/4/635

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
