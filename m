Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 348C93142B4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 23:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC5D6EA0E;
	Mon,  8 Feb 2021 22:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B636EA0E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 22:16:58 +0000 (UTC)
IronPort-SDR: DeHZNq/bxunjD6QKHMs6W+/W7CBGQpayPgDc5+mIgWAX/hU2/Spj5juiHw6jfJxYNLaKX9WABM
 YNId56mvMs8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181010290"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="181010290"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 14:16:50 -0800
IronPort-SDR: L73APkdJ/e5Q3T04WXRfGjLgF/ofjMFcIEomLdB+KhmzvHPd9nfPXdvcqYoCClObfAcgTGGHpw
 R2q28zghUzPQ==
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="395760247"
Received: from chajungc-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.212.143.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 14:16:49 -0800
Date: Mon, 8 Feb 2021 17:16:47 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210208221647.GA82362@intel.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <161235259319.6538.16159675225219123332@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161235259319.6538.16159675225219123332@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 03, 2021 at 11:43:13AM +0000, Chris Wilson wrote:
> Quoting Tejas Upadhyay (2020-11-30 12:48:55)
> > Removing force probe protection from RKL platform. Did
> > not observe warnings, errors, flickering or any visual
> > defects while doing ordinary tasks like browsing and
> > editing documents in a two monitor setup.
> > 
> > Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> 
> We now have a system in CI and that appears quite promising,
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

Indeed. Pulled, thanks!

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
