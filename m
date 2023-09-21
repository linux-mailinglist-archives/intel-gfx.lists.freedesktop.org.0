Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D897A948C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D048C10E00D;
	Thu, 21 Sep 2023 13:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0057E10E00D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 13:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695301979; x=1726837979;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NjO9tYF1cFC9RxZmXdPhdyCF8L9Wq/94x+ed6HRMZM8=;
 b=hyKeZyuTodb8a1/q/5spQF5s01dC6Xq7NGi7/Wsr3KLa5xvKsz1T+oTl
 h09w7dIKnuLl01/hgVmLxpZFNAr++NsKX4c/GhSx6s/7Q1iHXBLud68a2
 sGvYXCCmkleBjmuLw0UJbRfdXODp2h95ETNoBlCG4LQHD2wxCYuTsaqNO
 mKM/5m/N8b2q2zKqQtXdXR9KbCzqtsVH4z0zjbrEl2b5z9/MExhCqIYtn
 K1+b7l/Wt1lzkAHSW6iJXSsA6VBSgijzbZghsBn+C3B/IfX4hGIN5OPVv
 GFqM5lh7IFBvFaJcYq6ifsIdKSc38wc/1O6E8gYpDQL/Tub2oN1Xdi5wK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="446987266"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="446987266"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:07:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="782157664"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="782157664"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:06:27 -0700
Date: Thu, 21 Sep 2023 15:06:20 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZQw/zPFuOB9iXWJA@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-4-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170257.8586-4-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Implement
 for_each_sgt_daddr_next
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Mon, Sep 18, 2023 at 07:02:53PM +0200, Nirmoy Das wrote:
> Implement a way to iterate over sgt with pre-initialized
> sgt_iter state.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Oak Zeng <oak.zeng@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
