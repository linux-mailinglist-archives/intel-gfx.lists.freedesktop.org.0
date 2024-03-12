Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD31879397
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 13:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5717510F046;
	Tue, 12 Mar 2024 12:03:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hc3SyWpB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EBCE10F046
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 12:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710244988; x=1741780988;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2+ETaapEupOqKFftf55/7meYHq4RTpwgJMF1tYaVaD0=;
 b=hc3SyWpBiUYwNoi+fUglF7GZw4k57HtAApoWVoR7oIDKjQPwiSKaf2aD
 BRIGq21C2BG0HChaeP+pYVlaMMz7lQQRnCR+IflFDHdj09JWQRQHVtzOE
 AQO1DE1queizP4NQQW6EKkbqSQVeBY7EafXzxBqeR/ajEoQ83wLnf69yO
 MQrxCLMwAfXFKiyYLvHy4jTLM8tUA4f98FwWw6WRdLjvQ0gfeH5Sg3nKq
 GFpwDcaTe5E63s00ftsOieEo8XopAIrn5yQFfeYhh00My9+W9euijAXBA
 hsJz6jTOR7Ny/T5uor6DO5LAetbI2C05Y4rNElbfT4bj0xUmB3C6OaCpT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8767586"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8767586"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 05:02:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16004996"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 05:01:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 4/6] drm/i915: Extract opregion vbt presence check
In-Reply-To: <20240312120240-afdb1b83-8517-434b-be79-06f41bafd71f@linutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
 <20240228213235.2495611-5-radhakrishna.sripada@intel.com>
 <20240312120240-afdb1b83-8517-434b-be79-06f41bafd71f@linutronix.de>
Date: Tue, 12 Mar 2024 14:01:45 +0200
Message-ID: <87msr3slp2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 12 Mar 2024, Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.de=
> wrote:
> On Wed, Feb 28, 2024 at 01:32:33PM -0800, Radhakrishna Sripada wrote:
>> We want to later change intel_opregion_get_vbt to duplicate the vbt
>> memory if present, which would be an overkill when we just want to
>> peek into the presence of opregion vbt. Carve out the presence check
>> into its own function to use in places where only the presence of vbt
>> is required.
>
> This doesn't compile when CONFIG_ACPI is not enabled:
>
>   CC [M]  drivers/gpu/drm/xe/i915-display/intel_bios.o
> drivers/gpu/drm/i915/display/intel_bios.c: In function 'intel_bios_is_lvd=
s_present':
> drivers/gpu/drm/i915/display/intel_bios.c:3425:24: error: implicit declar=
ation of function 'intel_opregion_vbt_present'; did you mean
>  'intel_opregion_asle_present'? [-Werror=3Dimplicit-function-declaration]
>  3425 |                 return intel_opregion_vbt_present(i915);
>       |                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
>       |                        intel_opregion_asle_present
> cc1: all warnings being treated as errors
>
> Seen on next-20240312.

Thanks for the report, fix at=20

https://lore.kernel.org/r/20240312115757.683584-1-jani.nikula@intel.com

BR,
Jani.


--=20
Jani Nikula, Intel
