Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D011A77705
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 10:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE93710E522;
	Tue,  1 Apr 2025 08:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQ9/R2V5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5336C10E522
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743497907; x=1775033907;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=askQTEdIIVrs6qpvVdTPkuJF6T44iy6VlL59ip7aLjU=;
 b=CQ9/R2V5XttlZLdhsdOWQfB4sk2Ba44Sy/YMIcDgnZx295Jl8CGVP3Nv
 mgT6zBQb/eN/o839L3snaRwe2ZfyC+yfmC9xTiOhdgZbbteu/L5HW8Nzn
 gKBXNqjDIjgaySAYweEG3sgqmmeoN04OpzKLZ69xuvIUHI28RpNyhSeuH
 yq3EY1czufO8C+yJpc+SsDOt3BS+jzbAjjFEJYAednoV0lR6cFOKuo5+F
 Z5NH8IYtfE515ome9OcjhLXZDmMxhu7CZlfperIY5Hu4wOjNeLrzgOMzL
 9wOX3NrXCH8cd/D4smJppkximmrBToVDufH39y/HCtV5V7y1kE7DBHpP1 w==;
X-CSE-ConnectionGUID: zrxV8sMLSYuW/8ZMDiusoA==
X-CSE-MsgGUID: 3lYwn4lASh2XDvgWWQyNJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="44981854"
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="44981854"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 01:58:26 -0700
X-CSE-ConnectionGUID: pO7N/yP4RPWUHDceUKuyLw==
X-CSE-MsgGUID: JZed/1XzRpuiruaGaoHm4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="163556123"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 01:58:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Zhenyu Wang <zhenyuw.linux@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [RESEND] drm/i915/gvt: use hardcoded reference clocks
In-Reply-To: <Z-lYh8toArVVUZgC@dell-wzy>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250321125114.750062-1-jani.nikula@intel.com>
 <Z-lYh8toArVVUZgC@dell-wzy>
Date: Tue, 01 Apr 2025 11:58:21 +0300
Message-ID: <8734es45si.fsf@intel.com>
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

On Sun, 30 Mar 2025, Zhenyu Wang <zhenyuw.linux@gmail.com> wrote:
> On Fri, Mar 21, 2025 at 02:51:14PM +0200, Jani Nikula wrote:
>> Usually I'd argue hardcoding values is the wrong thing to do, but in
>> this case, GVT looking deep into the guts of the DPLL manager for the
>> reference clocks is worse. This is done for BDW and BXT only, and there
>> shouldn't be any reason to try to be so dynamic about it.
>>=20
>> This helps reduce the direct pokes at display guts from non-display
>> code.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

> Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

--=20
Jani Nikula, Intel
