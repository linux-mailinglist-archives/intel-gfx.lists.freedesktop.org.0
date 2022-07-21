Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C12B57CBB4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 15:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EA418AE38;
	Thu, 21 Jul 2022 13:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EA918AE38;
 Thu, 21 Jul 2022 13:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658409568; x=1689945568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1CPphQOFIKtOVzHA2NLW7txYk6ZS97cH/ky6dO4dyvA=;
 b=G3hep9FKHKeKFk7QMo6LENcv0whb+2cBVry2QtiOhy35F/0n48q5bncH
 9ryBThg40lVYP5sQ92hE9ecJ1VZGUCqr65dFGVgzn0SUgXWXQjrkIH8Zk
 MjRCgt9cHvnAvDKsyOeQ0qILrao2S5Ks3loposq+uyaqr7awSnUkNOFhx
 8ICxhOKzTBpCjSvdV/Fg4voeXK7kDXDh5cgbfLpSG0LnQFFHR75/o/Mk1
 ikcJOP2EnDGFoqV2oV9I4KlcChplb01DqkmI/sHXoDSoPaKGb2QXHD0XS
 ZjSaBtv18Z+M1y111N/kmAR4aaB1VPDLLrt/U3GasVRqSEun9xqbjkNzb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="284598178"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="284598178"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 06:19:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="656739520"
Received: from mstrobel-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.203])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 06:19:22 -0700
Date: Thu, 21 Jul 2022 15:19:15 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <YtlSU5uOoGokdKjs@alfio.lan>
References: <20220716040520.31676-1-wangborong@cdjrlc.com>
 <YtlPxPZ/BWATWL1J@alfio.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YtlPxPZ/BWATWL1J@alfio.lan>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix comment typo
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
Cc: michal.winiarski@intel.com, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jason Wang <wangborong@cdjrlc.com>,
 rodrigo.vivi@intel.com, zhou1615@umn.edu
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On Sat, Jul 16, 2022 at 12:05:20PM +0800, Jason Wang wrote:
> > Fix the double `wait' typo in comment.
> > 
> > Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
> 
> Few warnings for this patch:
> 
>  1. you missed Rodrigo's r-b tag.
>  2. please add a counter to your patch, this would be [PATCH v2]
>  3. please add a changelog, as this is a single patch, do it
>     after the '---'
> 
> No need to resend, just keep the three notes in mind for your
> next patches. Anyway, thanks for the fix and as I am at it:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Pushed in drm-intel-next.

Thanks,
Andi
