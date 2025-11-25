Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 266F5C84318
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 10:21:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B4910E392;
	Tue, 25 Nov 2025 09:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+tY7JN/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD2810E392;
 Tue, 25 Nov 2025 09:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764062478; x=1795598478;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rXSULp4vfIoNnkqO/8ZTvxScvJMuAPn6XpwllKcdgyM=;
 b=Q+tY7JN/77nZwvZnrlGkPCP96ft+SF1xzTw5bKaUnKT5xDEajRA6fXmb
 1Kgsfx2IrAkyyYjOkWwa2YL7cYMxw5Vd6bT/yIDju1Qh2iPhGGFTPaV1h
 7tDAvzG3LLV1ujxWMItazMJEh9RPcL2RZX4D+YIssGIgw+yAvwnp39i5q
 mlubsOPR/uvGeCDPwJIvxSLspLpiEmu8Hh1w7Q+df+BaeNKDTCwMn00tG
 Xvfk6CLzIAoMM0+77pINB1Z+4t37RLz4D2ma/XV37VSLCD+1H6SC7b+5B
 Fp+PPIhhgE1+QyBLMZ2kM8yL/ABQxL/CYYJmzk3yXRSiqjAS4X1at/1yC w==;
X-CSE-ConnectionGUID: 1haZ8lbHR8+mHisPa/vsXw==
X-CSE-MsgGUID: 2OIcJz0MSr+aw/Hyyftr8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68664444"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="68664444"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 01:21:18 -0800
X-CSE-ConnectionGUID: Vf900OCkQKuA5pq0yVnxoA==
X-CSE-MsgGUID: 3AHWtPaDSKq2oGQ9YFoO0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192224469"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 01:21:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
In-Reply-To: <7210f811ede22c67bb0e88f1f4580f899aa345b5.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
 <20251123160127.142599-3-vinod.govindapillai@intel.com>
 <e397113073a89536b28e57f44313eff247bf1fb9@intel.com>
 <7210f811ede22c67bb0e88f1f4580f899aa345b5.camel@intel.com>
Date: Tue, 25 Nov 2025 11:21:12 +0200
Message-ID: <5a24e00828c84c753647e0039f491c3b14adfce9@intel.com>
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

On Tue, 25 Nov 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Mon, 2025-11-24 at 18:25 +0200, Jani Nikula wrote:
>> On Sun, 23 Nov 2025, Vinod Govindapillai
>> <vinod.govindapillai@intel.com> wrote:
>> > One of the FBC instances can utilize the reserved area of SoC
>> > level cache for the fbc transactions to benefit reduced memory
>> > system power especially in idle scenarios. Reserved area of the
>> > system cache can be assigned to an fbc instance by configuring
>> > the cacheability configuration register with offset of the
>> > compressed frame buffer in stolen memoty of that fbc. There is
>> > a limit to this reserved area which is programmable and for
>> > xe3p_lpd the limit is defined as 2MB.
>> >=20
>> > v2: - better to track fbc sys cache usage from intel_display level,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sanitize the cacheability config regist=
er on probe (Matt)
>> > =C2=A0=C2=A0=C2=A0 - limit this for integrated graphics solutions, con=
firmed that
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 no default value set for cache range by=
 hw (Gustavo)
>> >=20
>> > v3: - changes related to the use of fbc substruct in intel_display
>> > =C2=A0=C2=A0=C2=A0 - use intel_de_write() instead of intel_rmw() by ha=
rdcoding the
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default value fields
>>=20
>> Overall issue: The fbc mutexes are per fbc instance, but nothing
>> protects display->fbc.sys_cache_id.
>
> The places where this sys_cache_id can be changed to a valid fbc
> instance id + fbc cfb offset are protected by the fbc mutex as part of
> intel_fbc_enable and intel_fbc_disable. That's is what I was mentioning
> in my prev reply. And the places where this sys cache usage register
> reset happens is outside the fbc context - where sanitize and remove
> module gets called. I don't see a need to update the fbc.sys_cache_id
> from anywhere else.

That's not the point. Each FBC instance has its own mutex. Two FBC
instance mutexes could be held at the same time. I don't think this is
the case during enable/disable, though. But the point remains, the
instance mutex can't protect something that's not part of the instance.

BR,
Jani.


--=20
Jani Nikula, Intel
