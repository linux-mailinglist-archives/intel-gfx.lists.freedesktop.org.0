Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D2199696E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 14:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D87F10E6E1;
	Wed,  9 Oct 2024 12:02:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aFZB3jcH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6175210E2A0;
 Wed,  9 Oct 2024 12:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728475335; x=1760011335;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zVhOhR49+BQwGH17GyF5Jgpzak5/J6MFOItAvWGvtbA=;
 b=aFZB3jcHSd5pGxh01nphCrB+TKC/uDiMOSf3JAgDjoXFBLmESK4r7tqc
 gFWyVc3+BV55fsdPOS+4sVBeCLwNW3kJ8Fdwy4FhLnB7EzekqZVkBHnTJ
 /nh3fDiwBW6h4qnIgaMzyB3d74DkuHQGmY9WchbGxuofth6iVXYhFbQVv
 F6Dn0OgAK8lvEnXo/fk0oYLz7ULog1h/XHaUKrtqqDx4V5D6aYN1RkpBg
 edHp0sStLMrbT5s8Xo6047W9BAjaRFc4r6lKVI/1xeQzyMhLJRGn//Ksq
 dWq4ubmdeUTq+gOmsOpf1pUrmWZXi/hPxqKq7Vu9mFfTxL5k0ztrAJSyF g==;
X-CSE-ConnectionGUID: kH3KkfEiQwy1j6dgWNo6GQ==
X-CSE-MsgGUID: HqeWnExaRkyKyH3idqq9Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27648435"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27648435"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 05:02:15 -0700
X-CSE-ConnectionGUID: m22sNBzTTpy36zdzddMhXw==
X-CSE-MsgGUID: M1oIhVsFQISL3v2lOllOYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80736635"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 05:02:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
In-Reply-To: <20241009103608.uw7fbirmms2dfv62@kamilkon-desk.igk.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009095608.663743-1-tejas.upadhyay@intel.com>
 <20241009103608.uw7fbirmms2dfv62@kamilkon-desk.igk.intel.com>
Date: Wed, 09 Oct 2024 15:02:10 +0300
Message-ID: <875xq1a3i5.fsf@intel.com>
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

On Wed, 09 Oct 2024, Kamil Konieczny <kamil.konieczny@linux.intel.com> wrote:
> Hi Tejas,
> On 2024-10-09 at 15:26:08 +0530, Tejas Upadhyay wrote:
>> We want to make sure that direct mmap mapping of physical
>> page at doorbell space and whole page is accessible in order
>> to use pci memory barrier effect effectively.
>> 
>> This is basic pci memory barrier test to showcase xe driver
>> support for feature. In follow up patches we will have more
>> of corner and negative tests added later.
>> 
>> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
>> ---
>>  include/drm-uapi/xe_drm.h       |  3 ++
>
> Please send updates to drm-uapi with a separate patch.

Possibly the best way to codify kernel header updates would be to script
them.

This is what I did with intel_vbt_defs.h to automate. Should be pretty
easy to tweak for other headers.

BR,
Jani.


#!/bin/bash

SINCE=962601ac4c78
INFILE=drivers/gpu/drm/i915/display/intel_vbt_defs.h
OUTFILE=tools/intel_vbt_defs.h
KERNEL=$HOME/src/linux
IGT=$HOME/src/intel-gpu-tools


cd $KERNEL

for commit in $(git log --reverse --pretty=%h $SINCE..HEAD -- $INFILE); do
	ref=$(git cite $commit)
	git show $commit:$INFILE > $IGT/$OUTFILE
	cd $IGT
	git commit -as \
	    -m "tools/intel_vbt_decode: sync intel_vbt_defs.h with kernel commit $commit" \
	    -m "Synchronize intel_vbt_defs.h with kernel commit:" \
	    -m "$ref"
	cd -
done


-- 
Jani Nikula, Intel
