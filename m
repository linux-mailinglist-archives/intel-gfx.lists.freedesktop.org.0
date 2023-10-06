Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123647BB70C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 13:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F29310E1F3;
	Fri,  6 Oct 2023 11:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D703F10E1F3
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 11:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696593482; x=1728129482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kecoYumBdYK2kv4As43Q0O9YB5U4bVW/AiZdy1IyUzI=;
 b=mPDQxOZM77+JBD4ofer9R0awbQ06Gvhq5MJZi6GdtxWdJpHPn+C/EnvU
 v+bdGnRsufGYEjjEle5+ph3+VCYeVSUmNqCMI2FePb+poinrCrVy/n85a
 /+ebXoF2w5mnDyeLWR5niatQwaxAL8+r9JDFoATpo6R20fdirlI/z9hMi
 8Ax188OdVglxvGhGqoyOpCU6Zj6lXxG0IN4r0bzovgJClLqiQlhHZvG+u
 a9mNRxwAYQV6fGEL+Yxb16iFZwhcaAFbjhrV/wGyu9rkhARQW755iYBBp
 6mO1boOE9MbwQ35PRy4U6G9HylgGzvmmCkl7GlD1GQMAWOVYVkphk7JGq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="381018631"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="381018631"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="752172930"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="752172930"
Received: from suthengc-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.154.2])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:57:53 -0700
Date: Fri, 6 Oct 2023 13:57:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZR/2OqfsCmJV+E+7@ashyti-mobl2.lan>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-4-jonathan.cavitt@intel.com>
 <46b4e64d-db0c-9d96-7cd6-11c930a8c84f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46b4e64d-db0c-9d96-7cd6-11c930a8c84f@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> > +	/* Preallocate a shared id for use under memory pressure. */
> > +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> > +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> > +	if (err == -ENOMEM) {
> > +		kfree(wait);
> > +		return err;
> > +	}
> What about any other error? Even if xa_alloc... is currently defined as not
> returning anything other than zero or ENOMEM, it is bad practice to assume
> that it can never produce any other error.

it can return -EBUSY when we run out of free spots. In such case
we neeed to wait a bit the queue to clear up.

Andi
