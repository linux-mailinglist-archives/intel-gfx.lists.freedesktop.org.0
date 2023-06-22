Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF8573A1E5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 15:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C7710E569;
	Thu, 22 Jun 2023 13:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B97110E569
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 13:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687440897; x=1718976897;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0DdIl2STuiyJ4lASbQt8XQb9LXzK4Dm7FISLPsQITcU=;
 b=c1BNU7RmB9zypxGoyIEVYBT0e2Vj4MHdgRVazmxjYrKK5YCMXSUpDmTN
 RcThAGOoAO9j9JYjZ55izSl58UBPWaLKfQmAiY9ji46TXhVxXBw+ig28z
 ggDnYKONnYznbwk3BC+6TQnETXRgijSIUMzI4pyU7SzUGgO5f2jdbeTiy
 Ofu6xEGz25CPDAxFam/tKskmfXfyep59yCflhI50DReyhoNJS2xPdamZX
 3lsYAFaCoXZieJJ37gt4SgBzCA6eJzb02tZijZ/YJw2BBlNhGhXQ8CnrM
 q6KCk7T5BfnZyfiA8k5WmnZ9HhTSXe0+3pyw6Yk38x1tdgTaiR6EPfpUf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="357982264"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="357982264"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="1045174651"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="1045174651"
Received: from akivisil-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.96])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:34:55 -0700
Date: Thu, 22 Jun 2023 15:34:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZJRN/JdwD21viGxi@ashyti-mobl2.lan>
References: <20230619090326.3039040-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619090326.3039040-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14018778641
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

Hi Tejas,

On Mon, Jun 19, 2023 at 02:33:26PM +0530, Tejas Upadhyay wrote:
> WA 14018778641 needs an update after recent
> performance data on MTL, aligning driver here with
> HW WA update.
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

pushed to drm-intel-gt-next.

Thanks,
Andi
