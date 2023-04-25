Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BBE6EDF04
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 11:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E88D10E6D2;
	Tue, 25 Apr 2023 09:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB0510E6D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 09:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682414425; x=1713950425;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0fsSKbv2ljBxj3GLrHwo2xAxVbfHQnntxceffEuEoPU=;
 b=bR1skEfLMErQ0h06R0+DNnMNelwiyXavvRNyMs6j8llLX/LS/piBNLmh
 9xenZke5cIrN97YMiZYl9HFR8mEdNqLSHQymHglsjN4N3FrH6cPCm2f/x
 KkoP194OXFlUC/NYxxSePi6CIBF0tzF/yPUVxjVp5QZu4zE5gp44qvgo3
 9cGYYr96FVLhdlKsgftsRnYsIZTfDFlZZq4GSsk3OajQSDbroAe+UV7Jc
 jjJc6kt00uTsAgEnA9q3x1Sj3h1t+CKwf62sqoMPUdACvGuliyBipZ0gm
 EMvsZ/4TXChqTcUGsi38MEQP/6BbjJif0KRbB8xaGwBmCnI99/aMZ92Aj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="327016272"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="327016272"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 02:20:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="817599543"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="817599543"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.107])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 02:20:23 -0700
Date: Tue, 25 Apr 2023 11:20:21 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZEebVYcLY6qP36tn@ashyti-mobl2.lan>
References: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/mtl: Add workaround 14018778641
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Mon, Apr 24, 2023 at 03:47:49PM +0530, Tejas Upadhyay wrote:
> WA 18018781329 is applicable now across all MTL
> steppings.
> 
> V2:
>   - Remove IS_MTL check, code already running for MTL - Matt
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
