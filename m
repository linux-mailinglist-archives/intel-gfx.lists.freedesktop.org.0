Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00C050D56B
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Apr 2022 23:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4C6510E21B;
	Sun, 24 Apr 2022 21:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862FF10E21B
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 21:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650837267; x=1682373267;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8Z3AbwezrA/LcMu8j7HNFp4wr2vPGCQIRXtWj/jPGCo=;
 b=ili6IiJb+jmqd1WID8hnc8eUhzpEeJOktYMlyZCWLhzzR9dzvDjmD1wQ
 ncPpDBmVqflV3QaT8F+PMpGo7IfXow+vwQKU437qgkPCuSCl0joVseSzs
 EYtFysKHMsBVSc7ahW+F7pwK7ADfA9PtQDvw6joo4UUlJZK+m9z/jZ2DL
 wIG8+BQtdfw3YQ8oO2ptcfSfvPHvqAnmib8HLCoD//ayWgNP4DQpScjjs
 Bo22JwkTqhsJooZLDeN9mLttFkhGKh+tdNGX8hVD5o1WHyKPVXVh8zlpz
 Dexnes7vtJ2gYg1uYoUJATzcJxMDLhwSn3RGQ/NqnZeih/AXt4ohOuPe4 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="328021136"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="328021136"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 14:54:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="729431092"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 14:54:25 -0700
Date: Sun, 24 Apr 2022 23:54:22 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmXHDrVFNDDc7+1k@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <ba922b5b0e021f188c21acab9651e06e4bff4428.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba922b5b0e021f188c21acab9651e06e4bff4428.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/gt: Convert callers to user
 per-gt pcode functions
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On Tue, Apr 19, 2022 at 11:25:04PM -0700, Ashutosh Dixit wrote:
> Convert appropriate callers to use per-gt pcode functions. Callers using
> pcode functions at "global scope", including *all* display functions are
> not converted, they continue to use the legacy pcode interface.
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Jani Nikula <janijoonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
