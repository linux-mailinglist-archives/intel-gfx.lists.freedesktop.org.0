Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBC2473EBA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 09:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A1A10EA53;
	Tue, 14 Dec 2021 08:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF8510EA53
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 08:50:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="226209287"
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="226209287"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 00:50:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="614177467"
Received: from nalbarnj-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.235])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 00:50:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mark Brown <broonie@kernel.org>, intel-gfx@lists.freedesktop.org
In-Reply-To: <Ybf2OaeMtARJndDg@sirena.org.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213170753.3680209-1-broonie@kernel.org>
 <163944579366.24609.8486942156265418559@emeril.freedesktop.org>
 <Ybf2OaeMtARJndDg@sirena.org.uk>
Date: Tue, 14 Dec 2021 10:50:27 +0200
Message-ID: <87v8zr604s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_implicit_use_of_struct_pci=5Fdev?=
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

On Tue, 14 Dec 2021, Mark Brown <broonie@kernel.org> wrote:
> On Tue, Dec 14, 2021 at 01:36:33AM -0000, Patchwork wrote:
>> == Series Details ==
>> 
>> Series: drm/i915: Fix implicit use of struct pci_dev
>> URL   : https://patchwork.freedesktop.org/series/97975/
>> State : failure
>> 
>> == Summary ==
>> 
>> CI Bug Log - changes from CI_DRM_10995_full -> Patchwork_21841_full
>> ====================================================
>> 
>> Summary
>> -------
>> 
>>   **FAILURE**
>> 
>>   Serious unknown changes coming with Patchwork_21841_full absolutely need to be
>>   verified manually.
>>   
>>   If you think the reported changes have nothing to do with the changes
>>   introduced in Patchwork_21841_full, please notify your bug team to allow them
>>   to document this new failure mode, which will reduce false positives in CI.
>
> This report appears to be a false positive - it is difficult to see how
> the change could have triggered anything in the tests and the reported
> change looks like an administrative change with the infra.

Yeah, don't worry about it. Pushed to drm-intel-next, thanks for the
patch.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
