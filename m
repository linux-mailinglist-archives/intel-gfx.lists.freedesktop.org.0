Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F81737B92
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 08:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C0510E3CA;
	Wed, 21 Jun 2023 06:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BDD710E3CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687330582; x=1718866582;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=L+mav9QQb3A2prfKinApJR/OdpsHDUmgoD2Z9WdLHtQ=;
 b=hzNeRkMxzvXOuVrQVEPFHibVAljfeYGCPez6d9IY1LViWkMjGFDToWOP
 SoVLHhbZf5dSTqBSsmwySdcNWF2ayAfSU5fIZVu7Wi5iKoUvUYyewuXLl
 wAVBEhbh83fRcnIUgNgcV6YSoGWtJBMaBMFb2s6Fn0t2tK0rKffokjAEB
 Zc5qVkZdAKseFoxpG5wz5BgyvUyClvJEm3doPOzIkMf72y6k/YzpzEiJk
 BzrrOZ1iVXysDW6cqn/Azg4pNi8UaKdccWiXJyFleNKzAxzA+O4BS8+Qw
 hNwHZ7gLY5T4t6zo7j9ZQL9Em54AouktaOCBCHzrTs2BYOiPGXiE9+tKp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357583087"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="357583087"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 23:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="1044587632"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="1044587632"
Received: from sptommas-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.45.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 23:56:20 -0700
Date: Wed, 21 Jun 2023 08:56:17 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZJKfEY3rzx/aHhDU@ashyti-mobl2.lan>
References: <20230619090326.3039040-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619090326.3039040-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14018778641
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

On Mon, Jun 19, 2023 at 02:33:26PM +0530, Tejas Upadhyay wrote:
> WA 14018778641 needs an update after recent
> performance data on MTL, aligning driver here with
> HW WA update.
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
