Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 189756F19E5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 15:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA9910ED5E;
	Fri, 28 Apr 2023 13:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D9F10ED5E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 13:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682689569; x=1714225569;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rdwwVpVkNZVaBdPS3A83ZTH3ZZUE0Was7VuYiiyl0+k=;
 b=Gz/DLr6Q6+yIPWKt5g8rmHocdpkJI3iiQ/RFpZFd8EU8gGqBlOOED5U5
 gmcX4pa7BwBr9O3rIxt1iospAZDiqWCcjU6KUtXqT1WVKhcKes7ubeSbG
 meLY1CFoNWblECx1MnWWDc20A39IbPiKXweVk1QytXFVlhF3NVQQ9r2al
 bMKeAWTpy8ARQeZ3zJaJavfjwutJCMSexQVdwRRiWnF4qE4YwEAhByP2c
 +y9C66Cv9AoVVasE2elMmw3pfCWl1vrxr+VLEj6py0ZroMrLpo4QZUyZq
 rStiCMHImkHIk3iLyXdCp2/YYLkYEdbHxk5+ZbMH72Ctw6ducfo6OYPjT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="346518495"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="346518495"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 06:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="645127192"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="645127192"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 06:46:06 -0700
Date: Fri, 28 Apr 2023 15:46:04 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZEvOHEwE38bVzw2G@ashyti-mobl2.lan>
References: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
 <20230428125952.4037964-3-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230428125952.4037964-3-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Use gt_err for GT
 info
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

On Fri, Apr 28, 2023 at 06:29:52PM +0530, Tejas Upadhyay wrote:
> It will be more informative regarding
> GT if we use gt_err instead.
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
