Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 642D4A295F5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 17:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0861810E36C;
	Wed,  5 Feb 2025 16:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gUbUHD1w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC2110E36C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2025 16:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738772001; x=1770308001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ug09AZRruL7gL62fyReQP8QWvHIqkR4dWwYiAn96y7Q=;
 b=gUbUHD1w/xVPavdGYmwsjKxzspZwuKVEweoLNJhNGwjb6Rp6wLus/Z2o
 DHOZiF5cHpgjasHqvz8hm4jxhk3YzPiK06zqs0/YO7tqN266MDoo4j4ih
 S/rTaZ3hHsX6dVlo/ascSgaPSA32iz+RtWssVXL6q1zPgEW2bGvFuqc3z
 VRjzBMtlLtREILZbI6tfDQ8fa+Se119iwGyQYKjeOKMLiukZvuvPcVfUy
 Iw3R4cC7oezBRHcBvsJffnvIeUwWNVzf8Wsx047hhv1GTO+QsM2AYWDAc
 hI5CwCWCbXcgqMjndWrWi/h3KPt9Bcq8XTuXKcLooduG32uC05zlV8PqN g==;
X-CSE-ConnectionGUID: 00UJS3vYTrWFNb/a3QQK+A==
X-CSE-MsgGUID: CZ0kGjwASNKpRgENto155g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43098655"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="43098655"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 08:13:21 -0800
X-CSE-ConnectionGUID: McWrhIUdSIqHvNWbWfEaPg==
X-CSE-MsgGUID: /WFcITOFQ2qsn6CCW9ColQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116142332"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 08:13:22 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Kan Liang <kan.liang@linux.intel.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH v2] drm/i915/pmu: Drop custom hotplug code
Date: Wed,  5 Feb 2025 08:13:04 -0800
Message-ID: <173877191287.2275757.509515986256077077.b4-ty@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250131231304.4151998-2-lucas.demarchi@intel.com>
References: <20250131231304.4151998-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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


On Fri, 31 Jan 2025 15:11:32 -0800, Lucas De Marchi wrote:
> Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support for a PMU with
> a scope"), there's generic support for system-wide counters and
> integration with cpu hotplug.
> 
> The i915 counters are system-wide, even though the migration code
> is using the wrong topology mask:
> 
> [...]

Applied to drm-intel-gt-next. Thanks for the reviews.

[1/1] drm/i915/pmu: Drop custom hotplug code
      commit: 87b593d79864e6e82cb00aa3d837094a1643e272

Best regards,
-- 
Lucas De Marchi <lucas.demarchi@intel.com>
