Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D63B42B0E5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 02:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C4E89CA0;
	Wed, 13 Oct 2021 00:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5961B89CA0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 00:17:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="214456010"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="214456010"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:17:10 -0700
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="626146689"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:17:10 -0700
Date: Tue, 12 Oct 2021 17:12:26 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
Message-ID: <20211013001226.GA4739@jons-linux-dev-box>
References: <20211004220637.14746-1-matthew.brost@intel.com>
 <163338641382.1481.16854458251824370216@emeril.freedesktop.org>
 <fcb604f9-5e2c-d694-5f02-ce0acb780947@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fcb604f9-5e2c-d694-5f02-ce0acb780947@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIFBh?=
 =?utf-8?q?rallel_submission_aka_multi-bb_execbuf_=28rev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 12, 2021 at 03:15:37PM -0700, John Harrison wrote:
> On 10/4/2021 15:26, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Parallel submission aka multi-bb execbuf (rev4)
> > URL   : https://patchwork.freedesktop.org/series/92789/
> > State : warning
> > 
> > == Summary ==
> > 
> > $ make htmldocs 2>&1 > /dev/null | grep i915
> > ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:166: warning: Function parameter or member 'submission_stall_reason' not described in 'intel_guc'
> > ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:166: warning: Function parameter or member 'submission_state' not described in 'intel_guc'
> > 
> > 
> These seem like valid things that need to be fixed.
> 

Yep, already done.

Matt

> John.
> 
