Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7578A5116E6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 14:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F44610F408;
	Wed, 27 Apr 2022 12:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9878610F408
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 12:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651063333; x=1682599333;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7BAMJHEu/uZpWQqW4zjmnovM1Ybd5i/f2rUSryqnHoU=;
 b=lJeWsA4wtFqTNJzncMt2rqJDX2+MoYcU0Fi6otCrKhNUfwObj/D8AP1C
 t1Xau55j3VGvQtJBhRHe8beklBNEvuIQbgOs2V31SEvb+gmiFqRLf0cao
 Etsk7eSQv4VhkHuJ6vcxFM2SlJ8dnt78kdiPLvG91gk4xQgKSI1DM25pQ
 oZ7+MqAla/TlE6meBzptt/2e2ySnqZYN/51flpXoUflfgqM318MX1zpf8
 q0CuogArkA+v2pB8Zy9utC9U8Id9fYrzHY7c+efpNN8S+HWtBq6Zd3msi
 6PpSg8nJCFMrZBAEJ0UEoTl6a8VCKqbwdrSe0VnQN9EVt/jrSx2HPu4z/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="246476170"
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; d="scan'208";a="246476170"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 05:42:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; d="scan'208";a="580573257"
Received: from brutrata-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 05:42:11 -0700
Date: Wed, 27 Apr 2022 14:42:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Ymk6ICgcRio8zE4g@intel.intel>
References: <20220427003509.267683-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427003509.267683-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[...]

> +	if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count, dmc_header->header_ver, dmc_id))
> +		drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
> +		return 0;
> +

mh? :)
