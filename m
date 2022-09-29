Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 580405EF736
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 16:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B58D10E2B7;
	Thu, 29 Sep 2022 14:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF9010E2B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 14:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664460612; x=1695996612;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=j9AbXq8wgT+6ZAxk1O0CgqF6jZBZZi5CPsZzqGw2KU8=;
 b=Mft6taCTLtmwV6YNRGdsCGa3KbAsHNyWflPFyRuARgg1gab5kfqUErBf
 EuhpfLL9AghHQ4tIm7cLd4z9Y3bdaZWAU5hIWgeGXVnQ8Zd/EHrjDuH25
 nl5JZVRJ28UBF6gqJoP0a26/6o7nN3R4Osrf3XuktVbQUGYvx1TKCEAX6
 PBMvhOEHRqect6cELLOIWuVpcBsSWNevSOjAPPs1JtbIkWeCD/8piN9PW
 FK1RsTE4HAcMM7T2tYOGJX4BizL6Oh35JQwihQL0/mJn5XsuY4gm0gIN+
 3pmxNz99OuFE5g2Swno+EG9vgfMgdkd9iSJ0ixfUsu+OprhSkvwvXx1SH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="299503195"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="299503195"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 07:10:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="624579578"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="624579578"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.72])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 07:10:09 -0700
Date: Thu, 29 Sep 2022 16:10:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <YzWnPlmn6lt9c0x5@ashyti-mobl2.lan>
References: <20220927171313.6553-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220927171313.6553-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush to global observation
 point before breadcrumb write
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

Hi Nirmoy,

> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> 
> Add flag to pipecontrol instruction to ensure in-flight writes are
> flushed to global observation point. Also split the pipecontrol
> instruction like we have in gen8.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/5886
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

pushed in drm-intel-gt-next.

Thanks,
Andi
