Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FAC18975A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 09:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127946E89D;
	Wed, 18 Mar 2020 08:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654056E882
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 08:38:39 +0000 (UTC)
IronPort-SDR: GyX2muQRH8/9jcKGn61q/QTcSwunnyh0Ug7eB6CCC/uxSsJwDCnALE75BCvF/lz+X9yrYconTD
 Cqpz+A2Ir9dA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 01:38:39 -0700
IronPort-SDR: ocYCh/T1xq8iHw/xAGcjQrLPfC4Tee50J+xQFMPbrs8EPCPVZdq6Wm+5RJzClTEG9ffTjvbe5W
 WrQUYPA9skPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="355629630"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2020 01:38:38 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 08:33:08 +0000
Date: Wed, 18 Mar 2020 10:33:07 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200318083307.lnnhoalkltvfv4l6@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <158440537072.5177.5259310463530440555@emeril.freedesktop.org>
 <1b7e92817db14053803aff6bf596e65b@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b7e92817db14053803aff6bf596e65b@intel.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENv?=
 =?utf-8?q?nsider_DBuf_bandwidth_when_calculating_CDCLK_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 17, 2020 at 12:43:40PM +0200, Lisovskiy, Stanislav wrote:
> What is this weird DOC warning about? "Error: Cannot open file ./drivers/gpu/
> drm/i915/i915_gem_fence_reg.c"
> 
> - wondering, how is that related to this patch.

Looks like you were unlucky and your series got tested with this merged:
https://patchwork.freedesktop.org/series/74738/

but before the fix has landed:
https://patchwork.freedesktop.org/series/74778/

It's all clean now.

-- 
Cheers,
Arek
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
