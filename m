Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80778D6252
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 15:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C911C10E3CE;
	Fri, 31 May 2024 13:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qn4GDrYA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59D0A10E3CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 13:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160618; x=1748696618;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=YC9e5FiQyI7ULfoGLub7QQwundlsSfut4ynpU+7K3QU=;
 b=Qn4GDrYAA+c63xyUPrgC+6zkBU1OpWsdNAO3HPNHYYIDdG/uYFfciMEq
 RZDcjrg+qvwqkAZIrl1HyqrdaBISgO79k/Rshwtq48hoICqCLhh9jRpvO
 DSwpCAyq0HY1RDuwvD+4jpI6H4r326grie5wF2+67HqJq+3BAQafACbu2
 YnC2dUIfuAUVFaiGzD4yaWCNZDdkXm4wXeu74C6JeUpRCMc0G9OZ4/SBS
 CJ/2Oif8UDOfeZ3Ag4Pw7KfhypcCwjOmXWUKXMXzeCZ/uJseT+CCG0hKi
 2KkfzbzepW8OaDgj8PJVbLIv/uQpNVvTdJy3wxcqe3PqwI4c29LrVHIyu g==;
X-CSE-ConnectionGUID: Awg8sJM+Shq0PGFfuyIoGw==
X-CSE-MsgGUID: 7B7ZyvSvSsiRisMrddqvmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13823751"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13823751"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 06:03:37 -0700
X-CSE-ConnectionGUID: EtjnRFEcSKWrtykLZ4FrsQ==
X-CSE-MsgGUID: 5iHEQJ8AR6SllHy6+ulzMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36237929"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 06:03:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/7] drm/i915: Regroup pipe CRC regs
In-Reply-To: <20240531115342.2763-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
 <20240531115342.2763-4-ville.syrjala@linux.intel.com>
Date: Fri, 31 May 2024 16:03:32 +0300
Message-ID: <87y17qdtgb.fsf@intel.com>
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
> Put all the definitions related to a single pipe CRC register
> in one place, instead of the current approach where things are
> spread all over the place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel
