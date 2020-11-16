Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E29C42B413D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5277789DA6;
	Mon, 16 Nov 2020 10:38:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6451689DA6
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:38:51 +0000 (UTC)
IronPort-SDR: No0MrNXo1/xZ1dUs3+McO5GP+tc70gCTjreSwFEwAJiRPvJDJrsAo59v8wH+cdll68v8nI3Ro/
 oYcj3djq4NAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="188770995"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="188770995"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:38:50 -0800
IronPort-SDR: xC+bxzB3oFzXcHQKdO4kqyKXz6xtG/bTWNVHxpCQ3fB1YeJ9W2CTmNY++n87fkt2XH2NVQCgdD
 hMC6Kp1RloRg==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="475477194"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:38:48 -0800
MIME-Version: 1.0
In-Reply-To: <20201115210815.5272-25-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-25-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552312595.10586.15941399803007888343@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 12:38:46 +0200
Subject: Re: [Intel-gfx] [PATCH 25/27] drm/i915/uapi: introduce
 drm_i915_gem_create_ext for TGL
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>, Joonas@freedesktop.org,
 Matthew@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2020-11-15 23:08:13)
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> Same old gem_create but with now with extensions support. This is needed
> to support various upcoming usecases. For now we use the extensions
> mechanism to support PAVP.

The uAPI related patches should be self-descriptive so acronyms should
be spelled out when initially used. Also, previous series refers to PXP
and this to PAVP, difference should be explained somewhere.

Please add the right Signed-off-by lines to this patch, this seems to
copy a huge part of Matt's work. It's also good to mention that this
patch is "Based on patch by XYZ".

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
