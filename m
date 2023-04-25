Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AE06EE666
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 19:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB6810E0C4;
	Tue, 25 Apr 2023 17:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD7610E0C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 17:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682442829; x=1713978829;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qH56t7oiYM+1MqmMgHOxBTZ32y40SHzGVUhWUSgLaW4=;
 b=KeelMU5n1hx3Q5kd9lklStMiNKT46X39716G/T/tczGk8DoeQcNy9hyV
 BTQTdNcOtgZR5qtZWf2nbYJIvDt4ZBF3SKBuJt0USiKtP2eFNhLVLuVXM
 fwOeC+jOiiwf66ceGt2ZfEyVklgeXVjpQpWa1yksbsLKm1+7EtvbREAZ3
 jokKj86Iwm+S/gTQ8wqiqG8e/FdJIjICaUEJmVF4Xc5YKxGEWaq4YuCvw
 7XChMVzfP8nwExIASl55gaF4baAwn8DXmpRY/AkAIrHZ4Xj5hjX2+6yFQ
 yNfN94U0FtWDfDoSoRTx/b4jv410P+rSokVbmIT8I7n7B0HJPai9YzXde A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="345595264"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="345595264"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 10:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="867962847"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="867962847"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.107])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 10:13:45 -0700
Date: Tue, 25 Apr 2023 19:13:42 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZEgKRoL43gYVFltY@ashyti-mobl2.lan>
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

pushed in drm-intel-gt-next.

Thanks,
Andi
