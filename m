Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6922CA77527
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 09:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C926B10E2B7;
	Tue,  1 Apr 2025 07:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqI4MjVR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D253B10E513
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 07:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743492262; x=1775028262;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Zm4faa3FpfB0qvh+2HLhaFrFOp8NWIcZJNIiUQyDAF4=;
 b=BqI4MjVRnM2IMeXL1OoWyR78XUZkJkwUiI23Ed62N88nTTfTiZXT22Kq
 KkQB3Pzv6BRkokXXRjtTqhzObzOQ8GY9I8N6wwoATAuQAFAp6Is+Gf7Xy
 ZFxQ2LJyJ8KnwrUE5w9Hsi8v7zZE6+s6qXtjhLSR47P/fAyNifu3YbRDR
 Ps1XOu/jwnFdlyZIOfTw/sqRFqLX4pcKpJPn9fWg2s1KIrTZ4PBf2tEnK
 JA9/i1H0QQfua76u4BUPiMDPSvrua57pecOLpj4+OBVLYI8dGFxmHNTtf
 AcuZzm9GjXtK/7ASy32smEgLyQ4u+ESVMvLWYjRCIgQA1O5UB2Rut1vkd A==;
X-CSE-ConnectionGUID: +sFJT5dMTOGvFCJPBCZtQQ==
X-CSE-MsgGUID: mORLjVZVRsakHBFi/YUSVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="55796057"
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="55796057"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 00:24:21 -0700
X-CSE-ConnectionGUID: oMHkYEI9R1SrnMtWOD6XHQ==
X-CSE-MsgGUID: f6zlBvAlRMO4rkjjRNlVXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="126769003"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.51])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 00:24:20 -0700
Date: Tue, 1 Apr 2025 09:24:17 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sk Anirban <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Badal Nilawar <badal.nilawar@intel.com>
Subject: Re: [PATCH v5] drm/i915/selftests: Refactor RC6 power measurement
 and error handling
Message-ID: <Z-uUoQateb-QHxSS@ashyti-mobl2.lan>
References: <20250327191924.4131598-1-sk.anirban@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327191924.4131598-1-sk.anirban@intel.com>
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

Hi Anirban,

On Fri, Mar 28, 2025 at 12:49:24AM +0530, Sk Anirban wrote:
> Revise the power measurement logic to save and evaluate energy values.

How is the logic been revised? Can you be more specific please?

> Previously, the test only checked whether the system had entered the RC6
> state, without considering any potential interruptions in that state.
> This update introduces a threshold check to ensure that the GPU remains
> in the RC6 state properly during the specified sleep duration.

How is the threshold been evaluated? As far as I can see, there
is only one pr_err() added in a path that fails anyway (it's
almost more a debug). Should we evaluate the threshold outside
from the failing path?

Andi
