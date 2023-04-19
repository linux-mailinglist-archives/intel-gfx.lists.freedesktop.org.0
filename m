Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E69F6E74D2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 10:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFBB10E0E3;
	Wed, 19 Apr 2023 08:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5CC10E15B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 08:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681892334; x=1713428334;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OTPNEmfpEyIOc4t+RFzEKgjDhni4UfJoBH67lydePJo=;
 b=ItU/QkDGvndFbKqvncXd4Jwt/9f0h9tAwcLau9k95k0R6YHQNc+//q5z
 2cy59phzoaN2KbEy5zwKOM9WSX/A+Qmw9pI0H8Eg6CkCtG8zX4VlJ+Hqk
 jpg4gTDqPCE8N9vci/+pV9bQ1Ja/OlMT/kganEyPAim6gO618xsGEeuyg
 i9cRL/l7BAm1LUKiY71Z2E8IFEU2mNE2kIk3B44g5j4B0W8WxovmNd+oq
 Cs4ZePu5rxuipV1mMrlJcGOG6f7bIAP6qeCLULj0nPGFeanHLVhuc+NPp
 3q3n8k2jlL/W4RkcRyfj92iDLeG1F/KPm4OhdYXL32KYeB2r/xlB4dgUd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334195094"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="334195094"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="865723560"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="865723560"
Received: from crijnder-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.137])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:18:51 -0700
Date: Wed, 19 Apr 2023 10:18:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZD+j5kqT17ZESDm5@ashyti-mobl2.lan>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
 <20230419060036.3422635-3-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419060036.3422635-3-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Consider multi-gt instead
 of to_gt()
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

Hi Tejas,

On Wed, Apr 19, 2023 at 11:30:35AM +0530, Tejas Upadhyay wrote:
> In order to enable complete multi-GT, use the GT
> reference obtained directly from the engine, rather
> than relying on the to_gt(), which only provides a
> reference to the primary GT.
> 
> Problem appear when it runs on platform like MTL
> where different set of engines are possible on
> different GTs.
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
