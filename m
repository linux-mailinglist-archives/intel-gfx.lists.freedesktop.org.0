Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7B81A9B83
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FC16E95C;
	Wed, 15 Apr 2020 10:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF7DA6E95C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:57:01 +0000 (UTC)
IronPort-SDR: lY/zGIFOMcY3WRmHwz9GPhMtMLra7vZaKTGq9RumkkTzadebNm+yT8jOiGZKYZ2/WtC0lWC+jy
 xFIxz6wTpZ2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:57:01 -0700
IronPort-SDR: uIhgSiCuIuBdF632yURkRU2aIVGJ6AbL9ZNakAOx8fwIl0H/sAXms6MPl5zuG7PBmBM4KYlvBr
 fyV7SymtWIXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="454869949"
Received: from lbrannix-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.93.149])
 by fmsmga006.fm.intel.com with ESMTP; 15 Apr 2020 03:57:00 -0700
Date: Wed, 15 Apr 2020 13:56:59 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200415105659.GA50947@intel.intel>
References: <20200414161423.23830-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414161423.23830-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Try to smooth RPS spikes
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

On Tue, Apr 14, 2020 at 05:14:22PM +0100, Chris Wilson wrote:
> By the time we respond to the RPS interrupt [inside a worker], the GPU
> may be running a different workload. As we look to make the evalution
> intervals shorter, these spikes are more likely to okay. Let's try to
> smooth over the spikes in the workload by comparing the EI interrupt
> [up/down events] with the most recently completed EI; if both say up,
> then increase the clocks, if they disagree stay the same. In principle,
> this means we now take 2 up EI to go increase into the next bin, and
> similary 2 down EI to decrease. However, if the worker runs fast enough,
> the previous EI in the registers will be the same as triggered the
> interrupt, so responsiveness remains unaffect. [Under the current scheme
> where EI are on the order of 10ms, it is likely that this is true and we
> compare the interrupt with the EI that caused it.]

looks reasonable to me. Wouldn't it make also sense to evaluate
the difference between the current and the previous pm_iir?

Reviewed-by: Andi Shyti <andi.shyti@inte.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
