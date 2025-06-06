Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4DCACFFE5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 11:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B993310EA2F;
	Fri,  6 Jun 2025 09:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPr71tmu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52D110EA21;
 Fri,  6 Jun 2025 09:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749203982; x=1780739982;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wbQxvGSva47yTqwssv/nZWM+Ng3vaQjOK1PiTA74m8I=;
 b=VPr71tmuCw/E2t7zRpbVNk6HGf02jGOJTTKpznn0Pu6pCDZ1+KN8g7yc
 z2UgPTInRrUVFV0g+rUkaeuMwWGEBdW/DTdJ9fNaQbwOKWPRDU63e4c4G
 61NPNd/p89c8IAsBb8aXytv/2/UJMh4N9RKSX8f429xeDGJCYdOXE+1lk
 /Gyod48wgsUwbFDGIDv32J0vnfA4YQei0i3yD8i1J8BGIKGsZ/aAm8rf9
 0T8QAQDiPnnxhs9E8Vj2gl9bKD8sO//o/ByqeyqPePEzvTNcr/u4gXEc7
 naCHCyN9fsDgoJVQ9bjOEFJVl8JjIn381ytf8ZcHhjOPxtfBGs5bfmMvJ Q==;
X-CSE-ConnectionGUID: y5uh4B09SEG81UhuL/IdxQ==
X-CSE-MsgGUID: 89UoRweMQk+34XeY++Ay5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11455"; a="38984739"
X-IronPort-AV: E=Sophos;i="6.16,214,1744095600"; d="scan'208";a="38984739"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 02:59:41 -0700
X-CSE-ConnectionGUID: KjUbqsCDRouvX/alzwBNUQ==
X-CSE-MsgGUID: 8hYleBpeS+mRZPIxiq6Awg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,214,1744095600"; d="scan'208";a="146300505"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 02:59:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Suraj
 Kandpal <suraj.kandpal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: split out display register macros to a
 separate file
In-Reply-To: <ipmzkkad7742bmgeessnbwz5or43wup5j73y7j6bwvxbgst2k5@pgu2bxyol2so>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250604110225.993638-1-jani.nikula@intel.com>
 <ipmzkkad7742bmgeessnbwz5or43wup5j73y7j6bwvxbgst2k5@pgu2bxyol2so>
Date: Fri, 06 Jun 2025 12:59:37 +0300
Message-ID: <c3e3c1e35d933b4bec911e78ec1af494e5aa3c40@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 05 Jun 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Jun 04, 2025 at 02:02:25PM +0300, Jani Nikula wrote:
>>This is a scripted split of the display related register macros from
>>i915_reg.h to display/intel_display_regs.h. As a starting point, move
>>all the macros that are only used in display code (or GVT). If there are
>>users in core i915 code or soc/, or no users anywhere, keep the macros
>>in i915_reg.h. This is done in groups of macros separated by blank
>>lines, moving the comments along with the groups.
>
> I wonder if with this we couldn't end up moving wrong registers.
> Maybe we should double check the address range too?

I think at this point aiming for perfection in the split is already
blocking progress.

It's been almost four months since I posted this first, and I've mostly
just been polishing the 300+ lines of python/bash scripts to do
this. And that's all for a one time change, after which the scripts are
useless.

We could've merged the first version, fixed the issues in the following
months, and we would be ahead.

IMO just getting the first split done is the most important part,
because 4k lines is impossible to navigate manually.


BR,
Jani.


-- 
Jani Nikula, Intel
