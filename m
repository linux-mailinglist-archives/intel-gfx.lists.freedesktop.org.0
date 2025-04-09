Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB72A828DC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF0D10E92E;
	Wed,  9 Apr 2025 14:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ddPeCPzZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF52410E92E;
 Wed,  9 Apr 2025 14:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744210526; x=1775746526;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=O+gtQPj8b79nF3V8qUDix2TUuZOKmPGdwMEUNHvJrFA=;
 b=ddPeCPzZD09XlwchJb6FUWPOb4PmP35Rr8OHYMlWahwmy9y30sDOxPTG
 TcbfoNY+Ai+WGnrEXmCva0bZGxd7p8k8hYRf8loOlIapkQuuxKZLKOejU
 LWKaKlkO3FazcBmkiCNTe1nlwqdPZ95vRXU4ViqniJU0mlCXphP4Mj46m
 GcplvhfjKMFyOkNzS6LH1WDN2mjj+jKkctq03FlEoVGzYldB0VN1NnjMA
 oTiMqGkpyeC4opxjMTBmCKu04UEIvzGq6vl2TJhX5j1C+imDo5WY+49dn
 zh3GiYPy8017kMDBGRypGRB43mk5ITu1F83jE3/KNcfW38sh23dC5/z8l g==;
X-CSE-ConnectionGUID: Yu81gCLRRJG+xdZ7bB6nUQ==
X-CSE-MsgGUID: U0QCtwg9QBO93f671+dFAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="56324762"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56324762"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:55:25 -0700
X-CSE-ConnectionGUID: LvIht0HzRMiRZqvEO2uqug==
X-CSE-MsgGUID: CKfdjJ/WTkKA07QKbbEgNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128469049"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:55:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 0/7] drm/i915/wm: convert to struct intel_display
In-Reply-To: <SN7PR11MB675058FDFDBC54805AFA2128E3B42@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744119460.git.jani.nikula@intel.com>
 <SN7PR11MB675058FDFDBC54805AFA2128E3B42@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 09 Apr 2025 17:55:21 +0300
Message-ID: <87cydlwfja.fsf@intel.com>
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

On Wed, 09 Apr 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Tuesday, April 8, 2025 7:09 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH v2 0/7] drm/i915/wm: convert to struct intel_display
>> 
>> v2 of [1], basically just a rebase.
>> 
>> BR,
>> Jani.
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> For the whole series

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
