Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB607DCEE5
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 15:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25BA110E4F6;
	Tue, 31 Oct 2023 14:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DA910E4F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 14:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698761909; x=1730297909;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CgK6n11a3ToSRlWSno1aGyL6hILJB+wHgkWPwFACSVU=;
 b=cv3upRDInt30OOGOlDptBe3xIxELNB85illw4tDUmhbMARbpb6QaUkGq
 tN7M8kpdsAvQr9iCZTkAcw0/IW2IQJakL1OOf4flsnRvenAQGRbFtRYLP
 XHMYTcsCHfQgefB9TjCi9DE9VKUozULBjMR8Dm+jm6pdas5RUvFpC5/Vi
 XDbXWmVbMRGejCnQOoBqi4dJm+Y/Js54XD5bg2W9kX+UquLIbdV7+6DAt
 I+tR0CL2/bZJ9SDb/WRxYv7r7gvLkllYhYw5iII8YLpUlSbU+2MddWtd6
 lsjMeSfLcd7TSwqhHIWa83hP+kwIqHYYTe6NUc2CFaIoo9S2fD+60jLXg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="9825943"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; 
   d="scan'208";a="9825943"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 07:18:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="764250127"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="764250127"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.45])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 07:18:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <a2684135-1bda-f705-8462-11c0122c3bb2@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231031124502.1772160-1-jani.nikula@intel.com>
 <20231031124502.1772160-2-jani.nikula@intel.com>
 <a2684135-1bda-f705-8462-11c0122c3bb2@linux.intel.com>
Date: Tue, 31 Oct 2023 16:18:25 +0200
Message-ID: <87v8am50zy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH RESEND 2/3] drm/i915: move gpu error debugfs
 to i915_gpu_error.c
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

On Tue, 31 Oct 2023, Nirmoy Das <nirmoy.das@linux.intel.com> wrote:
> On 10/31/2023 1:45 PM, Jani Nikula wrote:
>> +void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
>> +{
>> +	struct drm_minor *minor = i915->drm.primary;
>> +
>> +	debugfs_create_file("i915_error_state", 0644,
>
> nit: s/0644/S_IRUGO | S_IWUSR

The direction pretty much across the kernel is to go towards octal
permissions because the macros are harder to understand.

> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks,
Jani.

-- 
Jani Nikula, Intel
