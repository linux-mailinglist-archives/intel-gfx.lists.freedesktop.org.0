Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EDE8D623F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1145410E1F4;
	Fri, 31 May 2024 12:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lMxInMPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22C2A10E1F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160238; x=1748696238;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0ZIMWAXGFAlN4vGXRUxUBEfHEGASsZ4WoJUW77RjByI=;
 b=lMxInMPDlDHtI+bgWy3F5ZrIjELw6TWJCtxpzKSSVxCgv7t9BY1OGdAz
 D0ccZ6htaN3tXP79aHAolYa0e72AoUEfJl9lHgndcwusVdGIKnettw2/K
 GBWKYg/NF3bjHoqqk1XHRme+7S8pHuxzNPFN8xYZF3gRw6tfWueIcX+Ft
 6+bCZWsS2yolS+Rlx6HFvsjOCrGTqbgZ5ZmndrTuA34qNKBnRQMcR18b7
 V22uTWXYVe4iLI4En281qhy9FLOyjPlZpR+x+vJ2H5q2pUfhzkM9q9E/v
 Azq4gARhsjLx5uYkYLltSzEDksQquOXoBa5bYecZ/OPFQFmaAXS4rY08X Q==;
X-CSE-ConnectionGUID: GN4Ss9MeS+C6TAPXXx+9Mw==
X-CSE-MsgGUID: +NqAa1tnTeyiwslIds3OjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13569886"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13569886"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:57:17 -0700
X-CSE-ConnectionGUID: XDqTJdY3SwaJ+F2gpQ7jWQ==
X-CSE-MsgGUID: 6IJS1n3fQ6eRraDPtwmFAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="73640753"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:57:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915: Extract intel_pipe_crc_regs.h
In-Reply-To: <20240531115342.2763-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
 <20240531115342.2763-2-ville.syrjala@linux.intel.com>
Date: Fri, 31 May 2024 15:57:11 +0300
Message-ID: <874jaef8bc.fsf@intel.com>
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

On Fri, 31 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The CRC registers are a pretty self contained bunch.
> Extract them to a separate header to declutter i915_reg.h.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel
