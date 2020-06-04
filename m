Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A6E1EE2D9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 12:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3D76E326;
	Thu,  4 Jun 2020 10:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B856E326
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 10:55:36 +0000 (UTC)
IronPort-SDR: CNbpEltzoH2xA85/4WbhsEDn16a4q7F+NvhtDL0VFl2BO8VvrUJRvMHFT2kvANf4P9SAJ7Af8A
 rXfL0Tpcgnog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 03:55:36 -0700
IronPort-SDR: 5vbDb2wSzjNvPTprTiB5MlgiEdVgT/34OEPOUu3gINBy/OmKEu8oynfA9lq47xHyg6+nLFQELw
 hwKemom30qcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="445466679"
Received: from unknown (HELO [10.249.46.66]) ([10.249.46.66])
 by orsmga005.jf.intel.com with ESMTP; 04 Jun 2020 03:55:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200604102140.8845-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c86b06e8-6402-ef90-03d9-03642aa9fb52@intel.com>
Date: Thu, 4 Jun 2020 11:55:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200604102140.8845-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise all copy
 engines with the blt routines
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04/06/2020 11:21, Chris Wilson wrote:
> Just to remove an obnoxious HAS_ENGINES(), and in the process make the
> code agnostic to the available of any particular engine by making it
> exercise any and all such engines declared on the system.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
