Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6996A748FE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 12:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E609010E9E2;
	Fri, 28 Mar 2025 11:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8i9MAzp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167A210E9E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 11:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743160324; x=1774696324;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=87RZXO9w4mvdGSnhBAGSCgVr346i4wUKMWVSSSiLljg=;
 b=B8i9MAzpKNlbgAwqeAyNbik9xdUatsCiQoHr01nmLZqqD/K75FgxsOrO
 18PYvejNlLPwxjZniRxWyiKyT9b7rkYtPY9rQGa04kJFXOfq2Lso3fbqa
 nxeOiWineEgsFXHyfnTCdo8P3aEWwwJtFuLsfEWduc/Ef/3ppWKkDgb9u
 DC+69HrRxYfIJSWVX90D3y+ZBhj/Z4+7xX+8N3qAXKHELFi1nm0XXAyVy
 p5IArBK3eu/m/zEv+tjY+eT6A35HMGBUhgUvh7O2tOnMSbmiP77WB9jJ7
 oPcAA2oJYskIDyolT+0L+EkayxmD/0Y3l6jWC8BXBO+89M3ZGUuxUdHKo Q==;
X-CSE-ConnectionGUID: /pPdGKNIQ9izUEv9/k9PIA==
X-CSE-MsgGUID: +M9ifCf1TcC/CwNVTOuZJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55892292"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="55892292"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 04:12:03 -0700
X-CSE-ConnectionGUID: 3NntIlboRymxHRjWvT+96A==
X-CSE-MsgGUID: VaeHJAjQRhywQbRvgp8e+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="156409623"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.230])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 04:12:02 -0700
Date: Fri, 28 Mar 2025 12:11:59 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
	intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gem: Convert SPDX headers to single-line format
Message-ID: <Z-aD_1xO7pGJO-QM@ashyti-mobl2.lan>
References: <20250327232629.2939-1-andi.shyti@linux.intel.com>
 <nmx7mbxm3anlntj6zys5cody5uhrdx3bou4exxnfldffsaanwu@hwkby5rtqtub>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nmx7mbxm3anlntj6zys5cody5uhrdx3bou4exxnfldffsaanwu@hwkby5rtqtub>
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

On Fri, Mar 28, 2025 at 09:08:53AM +0100, Mikolaj Wasiak wrote:
> Consider also changing the SPDX licence header in gem/selftests as
> currently we have there mix of oneliners and multiliners.

thanks for your suggestion. If you don't mind I would do it in a
separate patch, otherwise this one gets too big and annoying to
be reviewed.

When I started doing this, I didn't know myself that we had such
a mess with the SPDX license formatting.

Thanks,
Andi
