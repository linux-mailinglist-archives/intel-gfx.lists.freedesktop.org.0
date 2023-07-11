Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 375AD74F299
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 16:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EEA10E3B1;
	Tue, 11 Jul 2023 14:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F16F10E3B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 14:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689086937; x=1720622937;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nMFRPNbmjlDQBmWIopzVYl8pfesV6by2EKu3EaEeY6w=;
 b=bNtFzoRn1ffEwn6yKVO1Y2lHbCFCUQ6quFHdta5yk9tbfUUiIbb7xS3e
 LM3mKzRG2upUINNAAgwKRzy4AomGR+JWwyHHpYeUFDzM9srzGXHjbtgb0
 JKKGnsDod8Gz2ZAbM36drMv8RgUsnOsJsgs108RgwEIWs5LDrzZKiFjQ5
 aHCtgGWczpJ4mQtdLKQzEGaiHuC7E2+DJkM+6UDEpLER/IAFr8QqQ0NRd
 /tvUZN0ekQ0vQ7yKgf5DSwQwY9oBkshuzgARBA+MI2d+ZttU9YGemBC6x
 GQiYoVU2ed1i2DbuLNyup/KYgSKu0b4nEliPMzjRtXaue4Y2wlWSAaku3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="344234821"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344234821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 07:48:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="756375550"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="756375550"
Received: from tpichler-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.137])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 07:48:51 -0700
Date: Tue, 11 Jul 2023 16:48:43 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZK1ry2Op0RcQBjh/@ashyti-mobl2.lan>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230630170140.17319-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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

On Fri, Jun 30, 2023 at 07:01:39PM +0200, Nirmoy Das wrote:
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
