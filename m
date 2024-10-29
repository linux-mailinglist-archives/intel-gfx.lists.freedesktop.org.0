Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A196D9B4FE6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 17:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2B410E29D;
	Tue, 29 Oct 2024 16:56:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVg3THgM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D694610E29D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 16:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730220998; x=1761756998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vYEcbq3TYB4NAsL+X3NGsVw6XGDqPjDrYMbdpPsTZAU=;
 b=VVg3THgM698WUbsL1YExCSoR6caKklQO4MbhYIGxmky5+wwzpobu5wU7
 QnGoAtkO/rHJFezijl35dgUMikW6IRS7lXBRTJEy1Sxm4+ADXW9d0u86w
 a5fXoqEUL/8FJjBxXxKjFxPoifeBm/6T7G7Lv25oKK8TBwNLDlvRwIg9n
 yM77DjxRJk6JbG5I9bS4FeUrbeX7LlVcmWcU9jcsabXgPKq1MLHKq+R9Y
 gG/DFVws6yRL+ogJIhGqNvPdtnJiromnfhC5qwSzszdyI1KKB/q/4Iakw
 pCI75CG/EyntjcFa1FS1xw2B7p0k0PFXOfmgX+jyRm9qhQFFIUjcuJF5M g==;
X-CSE-ConnectionGUID: gkDyT07cRFS46Hp8+YQppw==
X-CSE-MsgGUID: vvjSbZw5SO+hsevtbB0E2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40412847"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40412847"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 09:56:37 -0700
X-CSE-ConnectionGUID: KwnesTlmRFG/pqbxRd7/7w==
X-CSE-MsgGUID: 8zLhplkTSPKVgprdIykrug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81646788"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 09:56:35 -0700
Date: Tue, 29 Oct 2024 18:56:33 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gustavo.sousa@intel.com
Subject: Re: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Message-ID: <ZyETwUjD2XZoFFXs@black.fi.intel.com>
References: <20241029140037.164687-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029140037.164687-1-mika.kahola@intel.com>
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

On Tue, Oct 29, 2024 at 04:00:37PM +0200, Mika Kahola wrote:

...

>     Use boolean enable instead of if-else structure (Gustavo)

Hmm... Not sure if I'm reading it correctly, maybe need to revisit v2.

Raag
