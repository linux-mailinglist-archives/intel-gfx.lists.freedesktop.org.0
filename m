Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7848761958
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 15:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B3D10E3C7;
	Tue, 25 Jul 2023 13:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C944910E139;
 Tue, 25 Jul 2023 13:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690290475; x=1721826475;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nXoPnir6ZLUVtzSW+ufaogqAI+6mPetA31I3T0am5Y0=;
 b=FK3kAn3kZLSwMAdSbTaads3LPTSrD5N2KjB2Vk9uAu9nRK7M/u1ka+vh
 KvcbAU80DN6wbeHDH7vPT07c7ivbNxRk95h32qETG/JzmwofNGQVlAHqd
 S/+SNT2D7+Tjwh2ZyGpTwMASTpHv1+gkhqF5hfQZcYthe2e1BhLaicz6V
 XF1MYkRg9e7dPUpXZSjtKxJHydZpcCSgF3e4qW9TRJpiDZwrm92Bn3ORo
 TsjSWHXwdiHInZSgo8NIVOWiEOuKyrQAY/bJb3qvKRRJRuYiL71RQ7yGO
 LidWD33bc026UxLaejNyHhBmSPO7VIStgIM7mChTb8j1eSk6LyKPRlKU5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="371324079"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="371324079"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 06:06:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="972676292"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="972676292"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 06:06:54 -0700
Date: Tue, 25 Jul 2023 15:06:51 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <ZL/I6zGfNvM/D9t6@ashyti-mobl2.lan>
References: <20230721212133.271118-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230721212133.271118-1-u.kleine-koenig@pengutronix.de>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Simplify expression
 &to_i915(dev)->drm
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel@pengutronix.de, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Uwe,

On Fri, Jul 21, 2023 at 11:21:33PM +0200, Uwe Kleine-König wrote:
> to_i915 is defined as
> 
> 	container_of(dev, struct drm_i915_private, drm);
> 
> So for a struct drm_device *dev, to_i915(dev)->drm is just dev. Simplify
> accordingly.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

that's correct! Thanks for the cleanup.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
