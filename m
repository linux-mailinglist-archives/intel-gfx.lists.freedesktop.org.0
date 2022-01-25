Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 334B749BD85
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 21:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DE410E498;
	Tue, 25 Jan 2022 20:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7573B10E3C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 20:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643144115; x=1674680115;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ba5QAytaFicP6BQxnnAg/nMuIAz6pM4B6ElTOqQqjIA=;
 b=Hwfl0MhvY4+UKr8MFKR4JN/8kqhSD87OUzi5Sx8aFYuCEaCLZ2APuDxS
 ISiR5uZlUizltVsJvzVmrAUHFR6YndOCNiU6qt+8ZyfMRJFIGA7+iQn82
 GkoC3lrZO3msigIHNNMVYw0cOeqNfEAlaLhPnL9GUOWCFZliuoniPUnSu
 tWXBLbi5fXE/jzmJG81dGFM60AGQEmH0NTOl/8azuwhE0HNw6uefN9nij
 yFrn+CIsfvddCsxiq2WNexySeZxXDrj0oZHeHKwZeU/tozGg0Bd3PXpH7
 /Ym/xxMikVxUPiG93Y3H/jH7UpyKZ0hhBGF5BphMrUnMoulBj7dQ1Y8la w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246195010"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="246195010"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 12:55:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="520544156"
Received: from shwetan1-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.225.153])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 12:55:14 -0800
Date: Tue, 25 Jan 2022 12:55:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220125205513.ecsgv554trz7oncx@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125183142.850325-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220125183142.850325-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix header test for !CONFIG_X86
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
Cc: Siva Mullati <siva.mullati@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 25, 2022 at 10:31:42AM -0800, Lucas De Marchi wrote:
>Architectures other than x86 have a stub implementation calling
>pr_err() and WARN_ON_ONCE(). The appropriate headers need to be
>included, otherwise the header-test target will fail with:
>
>  HDRTEST drivers/gpu/drm/i915/i915_mm.h
>In file included from <command-line>:
>./drivers/gpu/drm/i915/i915_mm.h: In function ‘remap_io_mapping’:
>./drivers/gpu/drm/i915/i915_mm.h:25:2: error: implicit declaration of function ‘pr_err’ [-Werror=implicit-function-declaration]
>   25 |  pr_err("Architecture has no %s() and shouldn't be calling this function\n", __func__);
>      |  ^~~~~~

actually the pr_err() may be excessive spam to the log. Maybe just
remove it together with the ones from drm_cache.c

Lucas De Marchi
