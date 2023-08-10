Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9353777454
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 11:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A3D10E149;
	Thu, 10 Aug 2023 09:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB1810E168
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 09:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691659298; x=1723195298;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wYW+UFUj7QtFlxb28QQ3/obSG8YeS3lnKG0Uu6kIH8g=;
 b=Q05n5339iy1FQZrPpqucjxqOgAUc1BtLbmps7wzqB1bAm22fdN+8pR/R
 Q3SHGadmQAzSLBm7gvPru8J2A0LmA063qgkKt1wZq0PCshFhxPYC811kp
 cHA1iu0HvO/GiBSy3vaUfti/G01C/3w/jYXB/oew0PT0NcVq0Fl7vd4pI
 fsXEOUo7hVJZvL2UXcNoR5iU/XwtvvP0IdxQTWEMDHfKebrUFnyTQKmUh
 KZKzEzZzcv7iej+F8vYd7Mbh9FszQlTSxy9VZ2HeLkmbzHvHA3gGeOnfL
 dAD3aBF+ZHNt+EyyuajfLsTfdE7IewN5Og0PCphyP+CMSUwY97UV69IIW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="350933133"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="350933133"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 02:21:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="732138494"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="732138494"
Received: from haijindi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.164])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 02:21:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org
In-Reply-To: <869b069a1818a080441e2d1a41cd9a6648cb6379.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230804084600.1005818-1-jani.nikula@intel.com>
 <869b069a1818a080441e2d1a41cd9a6648cb6379.camel@coelho.fi>
Date: Thu, 10 Aug 2023 12:21:33 +0300
Message-ID: <874jl7s15u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: fix display probe for IVB Q
 and IVB D GT2 server
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 09 Aug 2023, Luca Coelho <luca@coelho.fi> wrote:
> Looks good to me.
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel Open Source Graphics Center
