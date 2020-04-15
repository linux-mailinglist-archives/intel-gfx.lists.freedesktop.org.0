Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7871A9C14
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EF46E96F;
	Wed, 15 Apr 2020 11:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACE16E96E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 11:24:22 +0000 (UTC)
IronPort-SDR: dk6mohFnN2Ki+SZPoFUyi8yfQvfWg5P4I+LYhKW0D8taRZ/iF0WiMRJaZ7I0XRB343EsNEbdAG
 mCEQl5OlBc3A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 04:24:21 -0700
IronPort-SDR: GlQM2AYNhbo9+7tYDnarSoJfFjHnvrpcfnZ6lQIRjOyIwohaKJmiqiukTt8wh8UTwUms8+aVnf
 a4GSWWwuyZjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="298967963"
Received: from lbrannix-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.93.149])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Apr 2020 04:24:19 -0700
Date: Wed, 15 Apr 2020 14:24:18 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200415112418.GE50947@intel.intel>
References: <20200415075018.7636-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415075018.7636-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update PMINTRMSK holding fw
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Wed, Apr 15, 2020 at 08:50:18AM +0100, Chris Wilson wrote:
> If we use a non-forcewaked write to PMINTRMSK, it does not take effect
> until much later, if at all, causing a loss of RPS interrupts and no GPU
> reclocking, leaving the GPU running at the wrong frequency for long
> periods of time.
> 
> Reported-by: Francisco Jerez <currojerez@riseup.net>
> Suggested-by: Francisco Jerez <currojerez@riseup.net>
> Fixes: 35cc7f32c298 ("drm/i915/gt: Use non-forcewake writes for RPS")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Francisco Jerez <currojerez@riseup.net>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: <stable@vger.kernel.org> # v5.6+

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
