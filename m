Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A892E1AD180
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 22:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FAC16EB6A;
	Thu, 16 Apr 2020 20:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E67C6EB6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 20:50:38 +0000 (UTC)
IronPort-SDR: J93W28lBWeFIrGK/35Q8nJ5f2BJ2Wms7lAEN9fah45kqvP6iERslojxm7LYl0kpFHc6VeyE5HZ
 0icCPALBtr0g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 13:50:38 -0700
IronPort-SDR: bqOToFotibMJkPOZz+HwbZHhKfQkWtB8C9kChd6qCMpKVEFbWHQwiJes2EFrYXdVO8pTgIt1yS
 Hgo74g5r/L8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,392,1580803200"; d="scan'208";a="244512067"
Received: from vlangtox-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.12.96])
 by fmsmga007.fm.intel.com with ESMTP; 16 Apr 2020 13:50:36 -0700
Date: Thu, 16 Apr 2020 23:50:35 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200416205035.GS50947@intel.intel>
References: <20200416184522.21812-1-chris@chris-wilson.co.uk>
 <20200416184522.21812-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416184522.21812-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Check power
 consumption at min/max frequencies
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> +static u64 __measure_power(int duration_ms)
> +{
> +	u64 nrg, dt;
> +
> +	dt = -ktime_get();
> +	nrg = -st_energy_uJ();
> +	msleep(5);

usleep_range?

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
