Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD9078F262
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 20:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBD910E1A0;
	Thu, 31 Aug 2023 18:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB34110E1A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 18:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693505920; x=1725041920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wAUFD/pPKGml5Zf6In+olZEtMlog/VJ+C/KbqhqR62E=;
 b=IJaNxCccN2JYvC9udq5jzVaN/sAE2PpbgR6tpw0WJru1z4a1B4vKiLTK
 twtV7axoDFZFHt4LuSd8US5+8+kwmGn6VL13p3M+d+tGwZRToLuq2g3yR
 NoR/lL1StfEYRiZLXVRDHmKx5frWpd5IzEp3+jv2AEliMzbd/or75pyBS
 Ofz2vy4ftDM5nGn4Su1Mxd172wXoab8TmiL24P1W1GIABFhlju6QK6juV
 677VOX0Z5EqMS80tSA+fiR6Eq4fgQcsvr+ig1BaKcRCXH3ii9C/401cHe
 pxu1NZHpt6MiT7Ip5MvTcVg5tw8Vbdv5JS5PR2qlrUajpbHPZ7n2gXANU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="373427553"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="373427553"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 11:18:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="739624831"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="739624831"
Received: from dineshba-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.161])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 11:18:38 -0700
Date: Thu, 31 Aug 2023 20:18:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZPDZexRdUjkh1DfF@ashyti-mobl2.lan>
References: <20230828192852.2894671-1-jonathan.cavitt@intel.com>
 <20230828192852.2894671-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828192852.2894671-2-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/gt: Wait longer for tasks in
 migrate selftest
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Mon, Aug 28, 2023 at 12:28:52PM -0700, Jonathan Cavitt wrote:
> The thread_global_copy subtest of the live migrate selftest creates a
> large number of threads and waits 10ms for them all to start.  This is
> not enough time to wait for the threaded tasks to start, as some may
> need to wait for additional ring space to be granted.  Threads that do
> so are at risk of getting stopped (signaled) in the middle of waiting
> for additional space, which can result in ERESTARTSYS getting reported
> erroneously by i915_request_wait.
> 
> Instead of waiting a flat 10ms for the threads to start, wait 10ms per
> thread.  This grants enough of a buffer for each thread to wait for
> additional ring space when needed.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Applied to drm-intel-gt-next.

Thanks,
Andi
