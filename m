Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0C03BF0B4
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 22:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D6E6E1CF;
	Wed,  7 Jul 2021 20:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B9C6E1CE;
 Wed,  7 Jul 2021 20:23:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="189061293"
X-IronPort-AV: E=Sophos;i="5.84,221,1620716400"; d="scan'208";a="189061293"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 13:23:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,221,1620716400"; d="scan'208";a="491839163"
Received: from dut029-tgly.fm.intel.com ([10.105.19.10])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 13:23:05 -0700
Date: Wed, 7 Jul 2021 20:23:04 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210707202304.GA23844@DUT029-TGLY.fm.intel.com>
References: <20210706222010.101522-1-matthew.brost@intel.com>
 <20210706222010.101522-7-matthew.brost@intel.com>
 <9834f3c0-a1a3-9b1a-d291-732501b7a013@intel.com>
 <20210707175015.GA17157@DUT029-TGLY.fm.intel.com>
 <9f72e74d-f2ae-65ba-cb0d-fc1a7b4df08c@intel.com>
 <20210707185653.GA23375@DUT029-TGLY.fm.intel.com>
 <d24a8167-309a-7a3e-8778-f12776f11bba@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d24a8167-309a-7a3e-8778-f12776f11bba@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/guc: Optimize CTB writes and
 reads
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 07, 2021 at 01:21:35PM -0700, John Harrison wrote:
> On 7/7/2021 11:56, Matthew Brost wrote:
> <snip>
> > Ok, I sent it but I looks like patchworks didn't like it. Anyways we
> > should be able to review that patch.
> > 
> > Matt
> Maybe because it came out as 6/56 instead of 6/7? Also, not sure if it needs
> to be in reply to 0/7 or 6/7?

Yea, that is probably it. I think 6/7 would've made patckworks happy.

Matt

> 
> John.
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
