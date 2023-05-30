Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F52A716DFF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 21:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB6C10E173;
	Tue, 30 May 2023 19:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F35B10E173
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 19:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685476160; x=1717012160;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kwJ9GlcmhuW/ixE7khRLHjlXpW8/cFwUSBX2sjaGZsw=;
 b=PEqxS37NauPl3nG/6LbS9e6Q4MHm1PVEJwwFhGxDjoGhGSnQ7mIKbEMb
 C+m/zN1NGmtG0sBLOkATynx4C4k0K5ossrh5BKjOWIaNnoCFut8lm9LO5
 GA/9Zc0k9+VZIPO8lOuel5BsnWJqf5glBvNZ21WNwRWcdZc5r1qDFkjYy
 7MNpjgyXouulFR6czejs74lxQQMzCuOzUoTUh+2CEDjcMYvQJXUTCyHRS
 ui7F2wKLpVLP1VuPLuJqb9/e5xdLPgTdJvTkCx0975AjvkRsfMYZzrHNK
 ZIU1SSXOnGuSCbD5iRDB+VyyPI+qZono/8vtqPm69nPUBh5DaiVDvgzbt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="420793322"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="420793322"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 12:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="684108750"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="684108750"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO intel.com)
 ([10.252.53.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 12:49:17 -0700
Date: Tue, 30 May 2023 21:49:13 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZHZTOSulVe/hrEMK@ashyti-mobl2.lan>
References: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for
 compute contexts
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Wed, May 17, 2023 at 07:27:54PM +0530, Tejas Upadhyay wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Allow compute contexts to submit the maximal amount of work without
> blocking userspace.
> 
> The original size for user LRC ring's (SZ_16K) was chosen to minimise
> memory consumption, without being so small as to frequently stall in the
> middle of workloads. With the main consumers being GL / media pipelines
> of 2 or 3 batches per frame, we want to support ~10 requests in flight
> to allow for the application to control throttling without stalling
> within a frame.
> 
> v2:
>   - cover with else part
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
