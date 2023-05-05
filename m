Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1496F7F30
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 10:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9876D10E5AD;
	Fri,  5 May 2023 08:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C0E010E5AD
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 08:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683275894; x=1714811894;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+4FyffhFlidnVvxREbLWWwXuSFAmj4CfuDl2AH2uVds=;
 b=WMAnoXQ9PRXAMQx37nvLPti7dd8f/Lor5NI1TCLKpIrrW4xieQ4c+DTj
 6zCRjHPxyQDhqRWMYV5ugiImgPdHKNQrU/JyF58f8XObk5lLnlqI1FaFA
 VXjvx3eBi/J9H6wkQnaF7BD0wtMdlJiPcobOoM+tjR27uVlqKKAWIsQax
 QwPoIfIIGqINc0gjuRmWDwl0kT6vFjqsqglxTnMP+rSNJrDltONFYmxte
 YaZcMNAiuaHpyqZIJ9E1itj8wawvSGogs4FTHA036dq61fSTc+WdPikUq
 j+J03ob1K+k7fzEeXSVcWS2/IUfyuXNblZQp/piod6C3h6uM8XY5oK9Ga w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="377239847"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="377239847"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:38:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="697464263"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="697464263"
Received: from waidhas-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.217.245])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:38:11 -0700
Date: Fri, 5 May 2023 10:38:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <ZFTAbpHojsRN50zJ@ashyti-mobl2.lan>
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
 <20230504102805.18645-2-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230504102805.18645-2-juhapekka.heikkila@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/mtl: Add MTL for remapping CCS
 FBs
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

On Thu, May 04, 2023 at 01:28:03PM +0300, Juha-Pekka Heikkila wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
>     Add support for remapping CCS FBs on MTL to remove the restriction
>     of the power-of-two sized stride and the 2MB surface offset alignment
>     for these FBs.

The alignment here is off.

Andi

> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
