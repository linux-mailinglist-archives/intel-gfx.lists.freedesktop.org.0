Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC2DB962CB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4FE10E62A;
	Tue, 23 Sep 2025 14:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XYlsLE3V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB0410E62A;
 Tue, 23 Sep 2025 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758637053; x=1790173053;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZqlIxAh1kWYxNCVmgQMF/WMK0F1cBRkCIGCPILwKqLk=;
 b=XYlsLE3V3J6vlY31G1pwhi2uevUhd2+WLuj4EHwLCpwSTm5buJcLBXOj
 Z4EiEyiOhHNDRIlu8EQ217DU0pqBp5nnjIcZiaGwJc5e63eTmq46TEvm5
 TZfVCRHY3+Y/2gY6/zbaUcxBjvJNJds1RHuKMItmrXfSvGGPHfq64oNSp
 U9W/YML94R/JiLH4miCkqMvcCD2N91LasMQ8MQk47CfWT3Qzh88kj1e8s
 JJ7niZ14XZgETmM0wkz2Ayrqwn50FXKQJJQmo6AgbY6CgkKhAJM9uTLiH
 cV1b1UcZ64/Oyde3yVJ55CP4OjdBdyGcxBOXk7GW1ssBucldzf/CwJiJ2 w==;
X-CSE-ConnectionGUID: uAZAtljXQwKf4z1LDWa4Gw==
X-CSE-MsgGUID: omoCGHmLSS24wo8TEW2dnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60972058"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60972058"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:17:33 -0700
X-CSE-ConnectionGUID: u5PlYcwoTDizi4NL2X8u8w==
X-CSE-MsgGUID: 95dXLT84TIedPb1U0qIUvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="180767628"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:17:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/irq: split ILK display irq handling
In-Reply-To: <aM1LXLkz8j1serrU@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1758275448.git.jani.nikula@intel.com>
 <f549e6d2a50bcaf0a4ca559f867828357f3927aa.1758275448.git.jani.nikula@intel.com>
 <aM1LXLkz8j1serrU@intel.com>
Date: Tue, 23 Sep 2025 17:17:28 +0300
Message-ID: <3efae7d2b0923c802545dd763ae3f2241426d1ad@intel.com>
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

On Fri, 19 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Sep 19, 2025 at 12:51:49PM +0300, Jani Nikula wrote:
>> +void ilk_display_irq_master_disable(struct intel_display *display, u32 =
*de_ier, u32 *sde_ier)
>> +{
>> +	/* disable master interrupt before clearing iir  */
>> +	*de_ier =3D intel_de_read(display, DEIER);
>> +	intel_de_write(display, DEIER, *de_ier & ~DE_MASTER_IRQ_CONTROL);
>
> The original used completely unlocked register accessors. Assuming that
> has been working all along without hangs I don't really want to
> re-introduce the lock again. I recently looked at some profiles and
> the irq handlers showed up fairly prominently so making these a lot
> more expensive isn't really desirable. So I'd go with the _fw() variant
> for this stuff.
>
> I've already written a patch that I was planning to send at some point
> that switches all the bdw+ display irq handlers to _fw() to reduce the
> overhead a bit. Would be nice if we could do the same for all the
> earlier platforms too, or at least not make it much more expensive
> than it already is.

Ack. I was actually going to use _fw, but I don't know what happened
between brain and keyboard. :/

BR,
Jani.


--=20
Jani Nikula, Intel
