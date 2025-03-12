Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6F3A5D9E5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 10:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5221B10E745;
	Wed, 12 Mar 2025 09:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvST0qSJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2704410E745;
 Wed, 12 Mar 2025 09:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741773165; x=1773309165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eYnKDcFwBMzEGi2o3m9Omde4B+0CK3Aw6v6uHjVc+60=;
 b=fvST0qSJ/nHG+4Mk/ujuxT6ge7rUnM5cb0D6H9/61jDylsUrxrC7/L2P
 l68KF58zvp6s3BQ6O66qoL98MkN5Vb6Rg4qnzHx01G3IQ3VAX9io2sxvq
 bwQHAX5WYwEx8u2h4y7yuEbZFuLesKf3qam32bOfgcsxAlVSIocMNpXyf
 /EQlGTZcyWkesVD2b5Al9PmFm5XHa+NwJk9wxXsJOOunT2+vQV/PBkFKo
 evrOIunxUatPlED2tYVSk+P6VcIRloWgHeEsUxtrJ5zpOIcqovmPFm1lb
 or6qZBdl9x9W0KJMKzF+jsCRio7ZsMwV/PlGdJbvJ+/CApkrQeff9xbiw g==;
X-CSE-ConnectionGUID: 6kAtxYmQSO2S3F2vmfubRQ==
X-CSE-MsgGUID: 1GbLrn5aSMCr+eIGQFTR1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46626239"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="46626239"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 02:52:45 -0700
X-CSE-ConnectionGUID: LWX960QBSUK8vAiHaoQkIQ==
X-CSE-MsgGUID: XU/ES/VrQW++lfxaxdD9FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="125779156"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 12 Mar 2025 02:52:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Mar 2025 11:52:42 +0200
Date: Wed, 12 Mar 2025 11:52:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure_fo?=
 =?utf-8?Q?r?= drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk (rev2)
Message-ID: <Z9FZailpdSXuyxKv@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <174173495369.22166.15885117229945257147@18a75f3d1eae>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <174173495369.22166.15885117229945257147@18a75f3d1eae>
X-Patchwork-Hint: comment
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

On Tue, Mar 11, 2025 at 11:15:53PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk (rev2)
> URL   : https://patchwork.freedesktop.org/series/139097/
> State : failure
> 
> == Summary ==
> 
> #### Possible regressions ####
>   * igt@kms_addfb_basic@too-high:
>     - fi-kbl-8809g:       NOTRUN -> [FAIL][6] +3 other tests fail
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v2/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

A bunch of stuff seems to have broken in CI:
- something is now loading amdgpu when we didn't want it loaded
- the full dmesg has been lost so I can't even find out when amdgpu
  got loaded

-- 
Ville Syrjälä
Intel
