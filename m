Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBDE90029E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED48110EC03;
	Fri,  7 Jun 2024 11:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KptlaIuk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71CE10EC01;
 Fri,  7 Jun 2024 11:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717761067; x=1749297067;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=WypYkHh+6Q+c4q0EXvgQxn3p3IEhWSzyofW0T8OfsDc=;
 b=KptlaIukot1+smaVgkoHEGQCA/rvfoDDaWzUWfKeoCEa04hKRwTvRajM
 IVT8oyAc3+h90fgScMEpwWKbKKhQX/Dl3/XhyxDZY1W6z5ajf/iPNE7d/
 QuCglfx+rkCPh1+gM4v9U583hGF7E+lSflfpcgv8dggtrffO5U/L8zhbI
 2z0qFGuiH5UWTvJTcwlCb7BQQ8Py7nUVRo+nLFjqROIBZZ5D6rpr+7sYS
 gItVL+qfiDnlgZEi11I+70H7jE6aagavJc+d06YuzNyaz7uDGhlWyBkTY
 I2cFaEVzj4eoLO8YoZqPdEcIcjYRk+RTX1YP9ToH9XSQp0Mj+BjPvx+bl g==;
X-CSE-ConnectionGUID: +/BD8UM/RtOhRxghRoJ4MQ==
X-CSE-MsgGUID: 2JaBYbpaTqCcSUwPcVqSuA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="37005774"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="37005774"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:51:06 -0700
X-CSE-ConnectionGUID: m84rJGspThOBhiv1VAGDmg==
X-CSE-MsgGUID: paBgYweUQf6YX8Z1KleORg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43242119"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:51:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/i915 & drm/xe: drop ACPI_BUTTON
In-Reply-To: <ZmLqPeOYydumQly1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717747542.git.jani.nikula@intel.com>
 <ZmLqPeOYydumQly1@intel.com>
Date: Fri, 07 Jun 2024 14:51:01 +0300
Message-ID: <87wmn1km3e.fsf@intel.com>
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

On Fri, 07 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jun 07, 2024 at 11:07:05AM +0300, Jani Nikula wrote:
>> Both in a series because they're related, but they should be merged via
>> their own driver trees.
>>=20
>> Jani Nikula (2):
>>   drm/i915: do not select ACPI_BUTTON
>>   drm/xe: do not select ACPI_BUTTON
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the patches to drm-intel-next and drm-xe-next.

BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/Kconfig | 1 -
>>  drivers/gpu/drm/xe/Kconfig   | 1 -
>>  2 files changed, 2 deletions(-)
>>=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
