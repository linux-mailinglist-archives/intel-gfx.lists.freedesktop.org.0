Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 803EEA6818E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 01:31:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E27610E155;
	Wed, 19 Mar 2025 00:31:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G4x/sWeo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E48310E155
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 00:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742344304; x=1773880304;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mIfT9xlUZjbkBpAlwm6bXJczXExEh5AtrlqKYnU2j4Q=;
 b=G4x/sWeo+v3LZ2caKhJln+oUqIuj758UhIn7weGa4j+L6bM+Adw+QIG3
 onE13ctRo0VdExXSmaDoEOx5qoWvzHU4tRcRLOpR3btHFoaXxENwLuaUF
 bqi29VCATekoxphY2zh0/TxtCQT0AGRk3ncaRlsr+MNaiSxTwgG0u+WkU
 KtCqtleMy5j0fN/0YOqh7uYZHisB79Quj8FY2/IKsSKzwGNu8H/+xJDzA
 YybmwzWuidhIu26PNgW0n0GPoY/IBphq9JZPTqSo8HydIA4YZTmfHUAIN
 4JUThmEqZsGfS4EBvrcL1XAv9FBq+e/cGehCQBbyGDyXTZ6Rd6JAGQTto g==;
X-CSE-ConnectionGUID: Ee4EHmMbQomPpAPh2eBYTA==
X-CSE-MsgGUID: zKqjhXPBRaOXBnCI48m/Pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="68869197"
X-IronPort-AV: E=Sophos;i="6.14,258,1736841600"; d="scan'208";a="68869197"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 17:31:43 -0700
X-CSE-ConnectionGUID: UrfduQjyS4K4S8VVFBpfZQ==
X-CSE-MsgGUID: idGefAE/Q0Wog+c47PQDhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,258,1736841600"; d="scan'208";a="123170388"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 17:31:40 -0700
Date: Wed, 19 Mar 2025 01:31:36 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 chris.p.wilson@linux.intel.com
Subject: Re: [PATCH v3] i915/gt/selftests: Disable lrc_timestamp test
Message-ID: <Z9oQaCnFG9YOT8Wp@ashyti-mobl2.lan>
References: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
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

Hi Mikolaj,

On Tue, Mar 11, 2025 at 10:33:14AM +0100, Mikolaj Wasiak wrote:
> This test was designed to isolate a bug in tigerlake and dg2 hardware.
> The bug was found and fixed in newer generations.
> Since we won't support any new hardware with this driver, the test
> should now be turned off in the CI to not pollute it with random failures
> on previous hardware.
> 
> Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> Reviewed-by: Chris Wilson <chris.p.wilson@linux.intel.com>

With the changes I suggested, I merged it to drm-intel-gt-next.

Thanks,
Andi
