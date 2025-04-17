Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5994A916CA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 10:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADBD10EA5A;
	Thu, 17 Apr 2025 08:45:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cxsyk+Bz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4E0F10EA5A;
 Thu, 17 Apr 2025 08:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744879525; x=1776415525;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=hrixoAXXcLxee0/uMWX0IfZaZbxd8rd/iruEeyvJoks=;
 b=cxsyk+Bzfn6XfGuJ9o3Nn2Dyuh3eSQvHetA5hMmoZ3xjgfBDoSrtndAS
 kPa5m65AbxIDnDubZFIBzmbYANQCIMQddek/L4cVv9JyBwQcsHtgmtmyV
 oeHQWlwJOdd+T0oAGNlhEpjeca1Rod0STJ277Fgvq4YNma6LFH2iX+nZc
 2+3xJU4FqTjrhotExwq2wmVMlZ7DhP2UaoLAMplU2rPww6LqNguqpakrW
 0Rda2hY0pWExK9OFzkJi47E4Y4tEZKeO7FshBZU0AmsS+jUb4OemkD7xo
 7PxufvHfN1qtt3r1oxsMaCB4uIGuVn9Bpg5cNO69znB4zN0i/51GQSmKx g==;
X-CSE-ConnectionGUID: QmUW84NmQv+hmEPnIGr8Ig==
X-CSE-MsgGUID: QkpurSCWSzWPPIDAOmvmRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="56641184"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="56641184"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 01:45:25 -0700
X-CSE-ConnectionGUID: 3Eo1lDqwTWW6Gsmc1rfSQA==
X-CSE-MsgGUID: QihxQiV0Q4ux0oxlKQy93w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161785472"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 01:45:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 00/14] drm/i915/display: final (?!) mass conversions to
 struct intel_display
In-Reply-To: <SJ1PR11MB6129CC87485F5CFA1650FED6B9BC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744222449.git.jani.nikula@intel.com>
 <SJ1PR11MB6129CC87485F5CFA1650FED6B9BC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Thu, 17 Apr 2025 11:45:21 +0300
Message-ID: <87a58fp466.fsf@intel.com>
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

On Thu, 17 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> LGTM
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks a lot, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
