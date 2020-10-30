Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DBA2A01B2
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 10:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFA86E06B;
	Fri, 30 Oct 2020 09:45:27 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D4FA6E06B
 for <Intel-GFX@lists.freedesktop.org>; Fri, 30 Oct 2020 09:45:25 +0000 (UTC)
IronPort-SDR: gQ+U+jCnxrPFqFVoboXPUzUtjdGy/uX1HmxKmJICrKKJlH4wyonzbg610ipBAlIvF8jDDTo3dp
 Zv5YS80eIk7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="156359312"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="156359312"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:45:24 -0700
IronPort-SDR: Xa7RsHH3b9g0NoqolnbBxcPOhmY68vfkysd7kUPnhSdmuCG1rNZz/a396tfnJv88zzsZhNb5SX
 6v5kZ6DP+lZA==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="469476852"
Received: from bvandelf-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.7.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:45:23 -0700
MIME-Version: 1.0
In-Reply-To: <20201028145826.2949180-1-John.C.Harrison@Intel.com>
References: <20201028145826.2949180-1-John.C.Harrison@Intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org, John.C.Harrison@Intel.com
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160405112047.7719.1940086579305479235@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 30 Oct 2020 11:45:20 +0200
Subject: Re: [Intel-gfx] [PATCH v3 0/3] drm/i915/guc: Update to GuC v49
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting John.C.Harrison@Intel.com (2020-10-28 16:58:23)
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Update to the latest GuC firmware
> 
> v2: Rebase to newer tree, updated a commit message (review feedback
> from Daniele) and dropped the patch to enable GuC/HuC loading by
> default as apparently this is not allowed.
> 
> v3: Rebase to drm-intel-gt-next which is apparently missing the
> patch to explicitly add Jasperlake FW.

This was now merged.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
