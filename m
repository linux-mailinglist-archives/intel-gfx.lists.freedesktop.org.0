Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D6D5F3A03
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 01:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2586B10E11A;
	Mon,  3 Oct 2022 23:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B8310E11D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 23:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664840802; x=1696376802;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8OcXnWVmmhtdl3HpuDO+6Qy5RWg5uXeVaDDrK8fcCN4=;
 b=fpvUFFK7TtUz2Bx+2Veeq2j6FC/WN2hVvXNFe4m+C7IqnKW2IU8iCCcW
 mVrPmr1UCsTWFu+/0DwUsJ/+R+1fMv0wV5kGHkJhyE2HZ2m+PNT50HBpg
 45gv1ZiY1H8qEFX7aDRIyzzQFU6mZ90MaiilFqMXtbLBQaOkP8oBhI7pO
 k0pldSlLBXgq626fyJ9rJJuLcv1ApUipm0QWzfFt07HbJ8FtkLnoB0A77
 HIAuJWsKwPTN8lAFQEfUFvRCaLoTlL9tE6HlB9jnB4JzpyGOFlTy2dTeB
 QlXblybApvsw0RRu3ciJl0PGwDc+WnqqzwkEu7lSUGjuO0G56XOo0iR8M Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304330814"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="304330814"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:46:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="952568063"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="952568063"
Received: from kbalinsk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.7.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:46:40 -0700
Date: Tue, 4 Oct 2022 01:46:37 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Yzt0XaZPMI2t5xAH@ashyti-mobl2.lan>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-4-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003223258.2650934-4-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: refactor intel_uncore_rmw
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Oct 04, 2022 at 12:32:57AM +0200, Andrzej Hajda wrote:
> Two small changes in intel_uncore_rmw will allow to use it more broadly:
> - write register unconditionally, for use with latch registers,
> - return old value of the register, IRQ cleanup and similar.
> 
> If we really want to keep write-only-if-changed feature maybe other
> helper will be more suitable for it, intel_uncore_rmw name suggests
> unconditional write.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
