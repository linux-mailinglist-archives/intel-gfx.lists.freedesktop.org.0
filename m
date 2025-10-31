Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EB0C24B0C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 12:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A95810EBBA;
	Fri, 31 Oct 2025 11:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXDh/Qgm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87AB110EB56;
 Fri, 31 Oct 2025 11:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761908774; x=1793444774;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wdWyR3R04EamsZBOTjsZ4tH4Q35xaaW0LVTrQO3G9NE=;
 b=GXDh/Qgm+G/uhbG+1HS8OrOtDslcyMAU7/QDGo3wjJlaVATGmlgWpcY+
 hHriKMFtegV9d6IGyw9dT/ONNIPGPza3AvMnDTfGokRGEjFp7NFYknuof
 AykBccSrfelgl42SKtq42IH1jDur1lPMDUBJiSVY2ocfgW5eci5EtAK9C
 nrpX/K+Ar9vny/k5IIW9RQaCQqF3tt4Gd5DDMzLOfM1/cg3RaKRM8zN/i
 Bud9F9ZkBAlawuz4PvRLSM2B5+OKV/eq+GJuUZkwaapEQZQ6Mt3oM2XGV
 ZCXhkIycTfWdG0lmmAW4p6xMwfBu6Qq2pU8/GLhyRsiB1c5/v3peRB1Pb Q==;
X-CSE-ConnectionGUID: SdixlttoRi6v4/AxW6StFA==
X-CSE-MsgGUID: uvt9pUvARjeYGbA/i8TcZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="51640456"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="51640456"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:06:14 -0700
X-CSE-ConnectionGUID: DUDD6QLATVCDVwxzRLodtQ==
X-CSE-MsgGUID: MoGhaQGRRRiOG3+q8cMu9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="186327297"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 04:06:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] drm/i915/dsi: log send packet sequence errors
In-Reply-To: <aQHVpSHJjRW0PYjw@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251029084603.2254982-1-jani.nikula@intel.com>
 <aQHVpSHJjRW0PYjw@intel.com>
Date: Fri, 31 Oct 2025 13:06:09 +0200
Message-ID: <3aeabd8dae0e34a7a415534ddcbf1b06900cc4ae@intel.com>
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

On Wed, 29 Oct 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 29, 2025 at 10:46:02AM +0200, Jani Nikula wrote:
>> We might be getting send packet sequence errors and never know. Log them
>> as errors. Also upgrade the not supported read commands to errors.
>>=20
>> v2: Also error log -EOPNOTSUPP (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, series pushed to din.


--=20
Jani Nikula, Intel
