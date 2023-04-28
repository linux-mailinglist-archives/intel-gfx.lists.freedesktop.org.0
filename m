Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C80706F19E3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 15:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6AD610ED50;
	Fri, 28 Apr 2023 13:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FDB10ED50
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 13:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682689542; x=1714225542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CfgcV/xgCbtVYVTHTXHqVD5wdtu8TSzqhO7/qCUeOao=;
 b=Ok4Gmg+th3MOQ8WT1S7h49dVxQmEcKm1tzFy5G3AxaZvt9AsM70LsG3L
 VGCrkBNIzOLCoS+UMMKuu2zlgJTYF8T/NXa6eWt/nfahkUJLK7XhkkfGT
 zG14Al9jkJaYtTSmOQ0PbBwdfG+NLSVV6Tc1Kdv/9JfHaYtbgIH6s2voW
 kdkB5bkc8K7hBUccmz2ArACt12sihNipi09Ip0ZVn8ypl4ytbBwry8rfv
 V72J1AufgSTSxpoxJKLowDIYW5eNil60cSLwo0Dy0suEB53GpOLgZ82gK
 hbv6YuqXYKh0NQ0so5JKWtnYTRhYfGSR5jiRWxHurOhFFLc5UhvgsV807 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="349776881"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="349776881"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 06:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="1024605020"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="1024605020"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 06:45:39 -0700
Date: Fri, 28 Apr 2023 15:45:37 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZEvOAeixZObD9b52@ashyti-mobl2.lan>
References: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
 <20230428125952.4037964-2-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230428125952.4037964-2-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Use gt_err for GT info
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

On Fri, Apr 28, 2023 at 06:29:51PM +0530, Tejas Upadhyay wrote:
> It will be more informative regarding
> GT if we use gt_err instead.
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Thanks for this cleanup!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
