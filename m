Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4357C9177F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 10:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0A610E769;
	Fri, 28 Nov 2025 09:36:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMza8Vmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8431C10E761;
 Fri, 28 Nov 2025 09:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764322574; x=1795858574;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tmqd5lZzE7kvbODrectWGuDw9BvnBlRahwGFmpUyCwo=;
 b=SMza8Vmp6BAaeQmZ4Cxvc3X3Jd+Q6Uti8Oe87LApEz4GmtFDzUsFdxDd
 ljcJaUqZ29jA7OKEEVHRGp5I+U54wcSbyzkK444+SZJDGA+/gMR44oSd2
 6B83U6fsM6+bKB57buzQyzW5ihPGS2oLoIBpL6YhK90yNJIf3OWSiwt/V
 zoRQm0U7OEoyxa/LX+Gj6N7Fg2uW80YCH+Q6yLhgiJ56g23PsDFQ5mHud
 ibgj4uFPsvapuLU4vO/wnPjFmL+J6sZqwltCihHJ324EsER8LkRjShDsQ
 3APXYElQYSYuhqWrMldFzKcL05PUujvVmTGUdAaHf+syP2V15HNRMAvce A==;
X-CSE-ConnectionGUID: NDMPcmyJQq2u3VyavkHtMQ==
X-CSE-MsgGUID: myU8M/tERWmmuV8I6PWe1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="53921677"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="53921677"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 01:36:14 -0800
X-CSE-ConnectionGUID: r0jLwzNoSQqrQrrxJrYp3w==
X-CSE-MsgGUID: UIW5WRm9REygXzRsOhflEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="224375579"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 01:36:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [RESEND 1/4] drm/{i915, xe}/dsb: make {intel, xe}_dsb_buffer.c
 independent of display
In-Reply-To: <PH7PR11MB803500F399EADA5703EF35A5F9DFA@PH7PR11MB8035.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1764155417.git.jani.nikula@intel.com>
 <a8cee08e8c36c2cf84cb9cda1b9f318db76710af.1764155417.git.jani.nikula@intel.com>
 <PH7PR11MB803500F399EADA5703EF35A5F9DFA@PH7PR11MB8035.namprd11.prod.outlook.com>
Date: Fri, 28 Nov 2025 11:36:10 +0200
Message-ID: <2fdae13525af9b3882bb4d7558a44d201395c472@intel.com>
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

On Thu, 27 Nov 2025, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Wednesday, November 26, 2025 4:41 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
>> Subject: [RESEND 1/4] drm/{i915, xe}/dsb: make {intel, xe}_dsb_buffer.c
>> independent of display
>> 
>> The DSB buffer implementation is really independent of display. Pass
>> struct drm_device instead of struct intel_crtc to
>> intel_dsb_buffer_create(), and drop the intel_display_types.h include.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM.
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>

Thanks, series pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
