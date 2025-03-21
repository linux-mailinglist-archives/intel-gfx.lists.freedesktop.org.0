Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDCEA6BB42
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F54D10E7C1;
	Fri, 21 Mar 2025 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bPh9q0dM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0876710E7C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 12:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742561690; x=1774097690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FxjHxItMXfWJbQHJoBosfVemUP8dVNT90s/kgmD52Bs=;
 b=bPh9q0dMMjV1XqW1EEqxIl5nOKaW5aFbKeKX8fuHhVC9T6gd1Dqsc6dY
 jM0dVjRtInSyI2khgOISjN/Jn2e05xNNnhtLifh+w2CEwiN5C0MDqWDv9
 LIOyr8brmeVQLorh2jBlwk5973UPBT/HtMGFxEXXQWOa4y408EPvK3rgW
 UoxZmA0mY9YKDjXyjDvXsMxgLFPGXrmo8sD+umjxMT+ZfgCxK2y68T5xB
 0xDBKvNwZL7NijiieT7wNSuedSTbte1vtXOXG2zOE7dM3RRyT2tEzKIlm
 rmo+Z8CHbgdDRr7Klg3Cnczu4hg6M5JRrN/tCB8sMbdMmzCAGJYy4pCO6 A==;
X-CSE-ConnectionGUID: Z14YI+AWSTeeVEM4vg4fGw==
X-CSE-MsgGUID: Fgjsvan2QnSheaGjS/5Zwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="31417578"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="31417578"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:54:50 -0700
X-CSE-ConnectionGUID: yii9XOC3S1isvnkkJXCZgg==
X-CSE-MsgGUID: 7OqMPjFTToaBkbOCAecW3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128504741"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:54:47 -0700
Date: Fri, 21 Mar 2025 13:54:44 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: =?iso-8859-15?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Subject: Re: [PATCH] drm/i915: Increase I915_PARAM_MMAP_GTT_VERSION version
 to indicate support for partial mmaps
Message-ID: <Z91hlFGB7ukxrWyG@ashyti-mobl2.lan>
References: <20250306210827.171147-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250306210827.171147-1-jose.souza@intel.com>
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

Hi Jose,

On Thu, Mar 06, 2025 at 01:08:27PM -0800, José Roberto de Souza wrote:
> Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
> was the last patch of several patches fixing multiple partial mmaps.
> But without a bump in I915_PARAM_MMAP_GTT_VERSION there is no clean
> way for UMD to know if it can do multiple partial mmaps.

right! Thanks for taking care of this.

> Fixes: 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
