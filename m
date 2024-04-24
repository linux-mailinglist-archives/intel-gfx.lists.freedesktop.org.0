Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 559D68B0C1D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 16:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C778010E37F;
	Wed, 24 Apr 2024 14:12:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i6Y7NxtA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D4A113BA8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 14:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713967950; x=1745503950;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TMKHoe/PI1z9k6hKQT8FTECJmTXxsfUEBc/56ECDj0w=;
 b=i6Y7NxtAvFrIXQ1q6VWcZZx8GWazEDGjgmqSMcwcxtEQTuhZjczg4jDE
 2e1ylEmpIxfYoXVhFIu4wScVmKHqeEmtmRCBKbYmTegRIvbZ3LzZI46P6
 yKYq5iOWaVGFda4JHyo8sZZOXm5Pp6kk9iUuorA+VL7jpQX2CGm72kZ2T
 yiYT2nnYqUN280FAjab+GIQ/RFZgj5WCfdFHNAuUAkUgmleCBWSJRyZ5d
 R1WkXooRpZjh5XfpFsnunpew7FWhRfIediOwnuPFmZ6qEd+Ok0QNmLwiF
 6aobYMTqkoydGjPYS2U6ThNs2mDzV3CvSpOvVJuK2Y/3QGlmRSjBconCG w==;
X-CSE-ConnectionGUID: j/P9W2tNS463RT0BcSSjKQ==
X-CSE-MsgGUID: KGlOgqixTSiAPOhkfJuR5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="13390689"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="13390689"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 07:12:25 -0700
X-CSE-ConnectionGUID: O42SJj2xRjyPlVtUhcM3yQ==
X-CSE-MsgGUID: J8aVQnSASvmEnYceawYL2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="29187484"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 07:12:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andy Pont <andy.pont@wonksw.tech>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: Timeout with USB-C video adapter
In-Reply-To: <em32687794-85ba-4ce2-98ce-16af8fe460d1@04c694f6.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <em32687794-85ba-4ce2-98ce-16af8fe460d1@04c694f6.com>
Date: Wed, 24 Apr 2024 17:12:21 +0300
Message-ID: <87sezaq27u.fsf@intel.com>
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

On Wed, 24 Apr 2024, Andy Pont <andy.pont@wonksw.tech> wrote:
> Hello,
>
> I=E2=80=99m working on the coreboot port for a laptop which uses the N200=
=20
> (AlderLake-N).  The built in LCD and HDMI port are working correctly but=
=20
> I am having problems with driving an external display over USB.
>
> The Linux kernel (6.5.0-27-generic in Ubuntu 23.10) gives a message that=
=20
> says:
>
> i915 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF D to get=20
> active
>
> The timeout occurs in hsw_wait_for_power_well_enable().  I have put the=20
> full dmesg output of the drm_WARN_ON() messages on Pastebin[1].
>
> I=E2=80=99m guessing something in the FSP isn=E2=80=99t being correctly c=
onfigured but I=20
> don=E2=80=99t know whether it is graphics, USB, or power related.
>
> Thanks in advance for any advice on where to look.

Does it work all right with the stock UEFI boot, and you're only seeing
issues with coreboot?

Is /sys/kernel/debug/dri/0/i915_vbt the same for both?

Might be easier to file a bug as described at [1], and attach full dmesg
with debugs enabled.

BR,
Jani.

[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


>
> -Andy.
>
> 1. https://pastebin.com/p3JTYpTC
>

--=20
Jani Nikula, Intel
