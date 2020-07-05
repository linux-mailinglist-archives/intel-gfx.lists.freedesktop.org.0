Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C539214FFC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 00:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071D06E1C4;
	Sun,  5 Jul 2020 22:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606816E1C4
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Jul 2020 22:01:30 +0000 (UTC)
IronPort-SDR: AoFVW9mc1QYzn7SL2giJZfkoQNxgniU8md14JqUod0Dcih+7mHJwZxNaXn4g7CcW3LCEYCQUzk
 iZvKDIK2YDMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9673"; a="127409141"
X-IronPort-AV: E=Sophos;i="5.75,317,1589266800"; d="scan'208";a="127409141"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2020 15:01:29 -0700
IronPort-SDR: L6qb4nYhK+XXM0J/b72cVmdv+USADp4kChWZLaZVrcwh+nLY/+3jZ+xj3EyllIB3SplMGstAds
 7KC6bfU7SW9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,317,1589266800"; d="scan'208";a="357269113"
Received: from gbain-mobl.ger.corp.intel.com (HELO intel.com) ([10.251.82.155])
 by orsmga001.jf.intel.com with ESMTP; 05 Jul 2020 15:01:27 -0700
Date: Mon, 6 Jul 2020 01:01:29 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200705220129.GA1217@intel.intel>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-17-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702083225.20044-17-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915/gem: Asynchronous GTT
 unbinding
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> +static int gen6_fixup_ggtt(struct i915_vma *vma)

you create this function here and remove it in patch 21. This
series is a bit confusing, can we have a final version of it?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
