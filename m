Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7855B7AD9F9
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 16:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D540910E256;
	Mon, 25 Sep 2023 14:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BBE10E256
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 14:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695651690; x=1727187690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=napxsTzsE3WG4EO0PHYYK8yp7ZlU2g9JiYkpFn+UD38=;
 b=JjLSHkZEpC7VbbEsP3uwE+8g1V2eaUMmr4IjGelmxXpjxKIgFzPnseLB
 G7TlSLQSNqf2i8iSCb3yWjF5G7NHMl4FInGPEleUi1se8R9/wB2W3xxYz
 ITlefcY9pPxyqZJR30uPyj8on74+P2XGaWm7JZrJIF2xB1IppPhev12Ow
 zxUE/cl0PyexeXhqE/jcBYGgMZWxWAyx4/ACDuuaEdtTbFDfjbHcXY9NZ
 QQ/w45g8Nhp9H97U7mjaGLpOLIFzpL9cBrguY5+yR8/q2d8MKX7VqDBwi
 nZwpcU+EYTzpoQ+DiIy1koSa4Ua0EoDPoYVqdYRmEuTpV8YsZmG/rJl+a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="371583406"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="371583406"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 07:19:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="777664010"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="777664010"
Received: from nurqayrx-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.213.34.118])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 07:19:28 -0700
Date: Mon, 25 Sep 2023 16:19:22 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRGW6lbncJp8vZSp@ashyti-mobl2.lan>
References: <20230921160637.3862597-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921160637.3862597-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: remove inlines from
 i915_gem_execbuffer.c
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

Hi Jani,

On Thu, Sep 21, 2023 at 07:06:37PM +0300, Jani Nikula wrote:
> Just let the compiler decide what's best. Turns out absolutely nothing
> changes in the output with the inlines removed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
