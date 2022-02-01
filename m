Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 127184A5983
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 10:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA0C10E8D1;
	Tue,  1 Feb 2022 09:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7824910E70D;
 Tue,  1 Feb 2022 09:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643709361; x=1675245361;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UaCGN/R2tIrxKU54K8KrjnZPEZ/AFXenqYiJhmPnN0A=;
 b=LzLhVUELEOzlUg29vm9I30MQbKJ8qVkgoIDvnzF6b3K5RHd/ZP5EayXt
 NhRqqkHrcfOhU1Y9sqXoGyQ/kcHlcji+QzIB2Wa6qIt3VH91LsRZ0JLnM
 6+RBvDCyCUmsZtyP2BCuWhK+yosaRZq55GnxbrP3K2rvWOeLHfBQicTtl
 zewdZtBwcueBIvsSyE26TxtVLz4A/RVSVVX6Z8NKD1DVC0kbhJPZ/fgyd
 9M9CAN1btedeBdLo7ItdV5chWrw/jCde21H9K3W/rJWD6gsxl7/DVSfrN
 tPt2Zt1LJGvDV9tUw9KgIMeG2jXcuBGrFlwgnKfUQSXXO7LXATAl1fzGP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="228317179"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="228317179"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 01:56:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="522997743"
Received: from snolan-mobl.ger.corp.intel.com (HELO [10.252.5.5])
 ([10.252.5.5])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 01:55:59 -0800
Message-ID: <bcdcc3bc-cc60-8e69-6547-0ac107687892@intel.com>
Date: Tue, 1 Feb 2022 09:55:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20220201070340.16457-1-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220201070340.16457-1-thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Return some errors instead of
 trying memcpy move
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

On 01/02/2022 07:03, Thomas Hellström wrote:
> The i915_ttm_accel_move() function may return error codes that should
> be propagated further up the stack rather than consumed assuming that
> the accel move failed and could be replaced with a memcpy move.
> 
> For -EINTR, -ERESTARTSYS and -EAGAIN, just propagate those codes, rather
> than retrying with a memcpy move.
> 
> Fixes: 2b0a750caf33 ("drm/i915/ttm: Failsafe migration blits")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
