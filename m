Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C2574F2A7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 16:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C808110E3BD;
	Tue, 11 Jul 2023 14:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B73010E3B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 14:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689087017; x=1720623017;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LZdFjKdvzikNRrI2K+3BBl1rwb0oikvViDsyAXTNu4A=;
 b=dmECbaL0JIGiFcoKeHKqBjuxIlW50tAQdzbpbEaZuLI6YpMjj1d+RFFz
 SUpjRdwCESDZ4E/9siOA30NXbNFwI0lTC3rCC1iyKB+P/44XeQ/AwjsPg
 RYnK2bf32yDV5krh357o29TFXqlgwQyWtSr3UYGqjOiEpEvf742yQJAaa
 Z6Ne9Z+l3yCH+fyA9XWTm0R0yGDvTVOLRhtf2SeObVJsi66srPujVFjzo
 SqyZSpJWNVS1f86R1bWhx6q7Ua5iqg4MaX5RpcHbXo2HsjR8Yjqw/m67d
 U/v2iik9e7bUkw+sryr330+9+MxUnxf5qkHmE8RuhV7EbO//nbqyTAYgR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344953964"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344953964"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 07:50:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="845277084"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="845277084"
Received: from tpichler-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.137])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 07:50:13 -0700
Date: Tue, 11 Jul 2023 16:50:04 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZK1sHArxvWczfFWd@ashyti-mobl2.lan>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <20230630170140.17319-2-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230630170140.17319-2-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not use stolen on
 MTL
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Fri, Jun 30, 2023 at 07:01:40PM +0200, Nirmoy Das wrote:
> Use smem on MTL due to a HW bug in MTL that prevents
> reading from stolen memory using LMEM BAR.
> 
> Cc: Oak Zeng <oak.zeng@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
