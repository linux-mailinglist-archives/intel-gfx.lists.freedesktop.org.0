Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2CC9AE273
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD1610E8F2;
	Thu, 24 Oct 2024 10:24:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZnEfgF9d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CA510E8F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729765439; x=1761301439;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9g4Ni+6qsfUU3oN0Pb05EPNV4V3FtBHswFBwVy4aDXc=;
 b=ZnEfgF9dYmYIFJPQrGpntYzCX3aTLr7/Fx131V+QnWeFQLlU87gXafkf
 OaiMZVAw6lIIhBRSB/SoS7pzr33KiykQH2rDV6XEBD6KajGdtt+2igQU9
 o0ztSYqXSG1Sw8sWWsS4u5PuETjDoXqQFYkNiESLl77TS0gYiAlzTmHsT
 GMJp2MfM+pDWzeWIq+pFR5zXRQtx7ie29eZZf/gtlUQBxgukYorcMYx9L
 7v2iCnSQMHY3U9inUMJh5fJHv5wD6UELAWT3BRbMz8AthPlj4H2J+Flu0
 YwN03M4SSVwa1OiOISdqYQs5XsQKOFZ+KVB/NU6HeKQXbqIdFCrmSGqGF Q==;
X-CSE-ConnectionGUID: 4S83RYUZRW+XInrVtT7uwQ==
X-CSE-MsgGUID: fI9fwkTRTj6BISgKXuhFIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39929731"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39929731"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:23:59 -0700
X-CSE-ConnectionGUID: UjlNmlLpSLGHALYCgFay6A==
X-CSE-MsgGUID: TgJIf4BsRHiyYYjYra/SXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80967234"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:23:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [core-for-CI] Revert "ICL HACK: usb/icl: Work around ACPI
 boottime crash"
In-Reply-To: <krqipjhrl7qnvkiyw3ep6kvibftmtf46nojtvha5af2ucqgs2r@tbuxikuhondk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241011121729.143932-1-jani.nikula@intel.com>
 <Zwk7CV9Gom6z-GMs@ideak-desk.fi.intel.com>
 <krqipjhrl7qnvkiyw3ep6kvibftmtf46nojtvha5af2ucqgs2r@tbuxikuhondk>
Date: Thu, 24 Oct 2024 13:23:54 +0300
Message-ID: <87o739sssl.fsf@intel.com>
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

On Wed, 23 Oct 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Oct 11, 2024 at 05:49:45PM +0300, Imre Deak wrote:
>>On Fri, Oct 11, 2024 at 03:17:29PM +0300, Jani Nikula wrote:
>>> This reverts commit 8d16a118950c ("ICL HACK: usb/icl: Work around ACPI
>>> boottime crash").
>>>
>>> There shouldn't be any ICL RVP's in CI anymore.
>>>
>>> Cc: Imre Deak <imre.deak@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>>Acked-by: Imre Deak <imre.deak@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> And applied. Or better, removed the patch from topic/core-for-CI.

Thanks, I dropped the ball a bit during my vacation.

BR,
Jani.

>
>
> Thanks
> Lucas De Marchi

-- 
Jani Nikula, Intel
