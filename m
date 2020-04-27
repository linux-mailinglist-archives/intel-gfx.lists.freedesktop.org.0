Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0601BAA31
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 18:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95FAA6E338;
	Mon, 27 Apr 2020 16:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733EF6E338
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 16:39:24 +0000 (UTC)
IronPort-SDR: kFFYswfTN+eQr21XsiGtUq8QDec9jz31hdXTcAWLPx/7uXq0VdZSRFVGq3APEueUlL2PIzb3Gr
 uFfj5B8KGhRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 09:39:23 -0700
IronPort-SDR: 9PNOLF3PSuoMfICKS2pCXOM54c7HozCH+ng+qzsBUQb+wxdUdtqpXl9zHcm9aZR5a++tJejFr6
 XEUhdfAJLNdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="458920273"
Received: from nsowell-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.82.159])
 by fmsmga006.fm.intel.com with ESMTP; 27 Apr 2020 09:39:22 -0700
Date: Mon, 27 Apr 2020 19:39:02 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200427163902.GD1862@intel.intel>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
 <20200427085408.13879-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427085408.13879-7-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Switch to manual
 evaluation of RPS
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

On Mon, Apr 27, 2020 at 09:54:06AM +0100, Chris Wilson wrote:
> As with the realisation for soft-rc6, we respond to idling the engines
> within microseconds, far faster than the response times for HW RC6 and
> RPS. Furthermore, our fast parking upon idle, prevents HW RPS from
> running for many desktop workloads, as the RPS evaluation intervals are
> on the order of tens of milliseconds, but the typical workload is just a
> couple of milliseconds, but yet we still need to determine the best
> frequency for user latency versus power.
> 
> Recognising that the HW evaluation intervals are a poor fit, and that
> they were deprecated [in bspec at least] from gen10, start to wean
> ourselves off them and replace the EI with a timer and our accurate
> busy-stats. The principle benefit of manually evaluating RPS intervals
> is that we can be more responsive for better performance and powersaving
> for both spiky workloads and steady-state.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1698
> Fixes: 98479ada421a ("drm/i915/gt: Treat idling as a RPS downclock event")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
