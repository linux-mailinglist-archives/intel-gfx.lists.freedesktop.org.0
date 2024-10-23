Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F539ACABE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 15:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0265110E7D8;
	Wed, 23 Oct 2024 13:09:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFmqYqwB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5534C10E160;
 Wed, 23 Oct 2024 13:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729688949; x=1761224949;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=00up3AruYVTsbu5yC0IuIPnOuh5NPyis+vwygtQ8SCY=;
 b=jFmqYqwB+sney5HFYx0o7NU7wbs25DI/Zil2xj/ETMBrb2dt/L3GZNhi
 wduWc5VKOKgwkOV1q9JIxBbFSfBeNyCsFTZaomraDTX3dD5cAS5/0mtIl
 UP9mQyNJxOOfFIkkha/WAy3JMGOznuumUpzFWxWUrOmXlp00M6N4rYryz
 G+ipzabSdkV1PRr+LcspxEsLzbwRyxQkSME+3OSNkW6nfXmnO7DTX/NAi
 pcCgB+J95a3EM2OBk2jUG6hvIPMeJvEf5uCxpuHiW6+cDSopIPRHrrBrg
 wYuE1Vbx9ZFD31mC4fs499JBN8IgNjMqQuM4TxHz1Pl6HxKG+aAU9de58 g==;
X-CSE-ConnectionGUID: Od6aqJauQw6HKsyZkEpG0Q==
X-CSE-MsgGUID: dDFC4n0KQlqJ5F8Hx9x6oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29166738"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29166738"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 06:09:09 -0700
X-CSE-ConnectionGUID: FTOiETPrQ2CpJ6GZJlu7Jg==
X-CSE-MsgGUID: G/Br6gsORBuUb2U8m9xN/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80270535"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 06:09:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com, maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH v4 08/15] drm/i915/display: remove the display platform
 enum as unnecessary
In-Reply-To: <ZxfltspjmnJXNJd7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1729518793.git.jani.nikula@intel.com>
 <eeaa31b20670975479b8226d770f1559d966ef32.1729518793.git.jani.nikula@intel.com>
 <ZxfltspjmnJXNJd7@intel.com>
Date: Wed, 23 Oct 2024 16:09:03 +0300
Message-ID: <87r087t18w.fsf@intel.com>
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

On Tue, 22 Oct 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Oct 21, 2024 at 04:54:09PM +0300, Jani Nikula wrote:
>> @@ -1466,7 +1462,7 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>>  	const struct subplatform_desc *sp;
>>  	const u16 *id;
>>  
>> -	for (sp = desc->subplatforms; sp && sp->subplatform; sp++)
>> +	for (sp = desc->subplatforms; sp && sp->pciidlist; sp++)
>
> I honestly got confused on this... should it be a separate patch?

Well, I'm removing ->subplatform so obviously I have to check for the
end condition using something else. I can make it a separate patch if
you want.

BR,
Jani.


-- 
Jani Nikula, Intel
