Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0E149B787
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 16:25:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA8B10E38E;
	Tue, 25 Jan 2022 15:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9742A10E38E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643124333; x=1674660333;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wNdFKpW3EPQFjAUvHWOLPZxRIvn4ZwNL91QpeYacvSw=;
 b=JDElubpi1dvSV3OD97Z7pS7d2t44pdS1U5wHuHZCXGnBBC/8nPTm07DI
 dh7AIAbWuKdAvoblMafSGCUGKEHjI0NzTSg0MlWbQCDGTojnhyiqKHgz3
 cvbjWiEAuHxGnxzuwutAJUFKlWmvI72umU9g3b2GbbkFBptoHIkI3j6OB
 4pP3lBEXn0tHofFB7kl9SWj2rnE7npLpXXDNEJ15qphVz7g5phOps0H3h
 PNcsCAUMFOLPLZVxnDIXNHR38Bb0qisxCKAroW8herHLMBv2GoeC+7PU1
 geE63RSM0Vu83c9Ee1qz69AvLuDXCKEMXlkN8ZCoVArWru7UnTbOBZQYW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="332678796"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="332678796"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 07:25:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="479529967"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 07:25:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <8328facd-f10d-01e6-12e8-67179fbf324e@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1641977368.git.jani.nikula@intel.com>
 <7c018d4a741ecb98dc1a19a7fdb6b35943790ff9.1641977369.git.jani.nikula@intel.com>
 <8328facd-f10d-01e6-12e8-67179fbf324e@linux.intel.com>
Date: Tue, 25 Jan 2022 17:25:15 +0200
Message-ID: <87wninzvl0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: split out
 gem/i915_gem_domain.h from i915_drv.h
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

On Mon, 24 Jan 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> All looks sane.
>
> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Thanks... but I didn't realize this already conflicts between
drm-intel-next and drm-intel-gt-next. I wonder what the best plan would
be for making this happen.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
