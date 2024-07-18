Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D50E5934A6A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7468510E5FC;
	Thu, 18 Jul 2024 08:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9iA/nF+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBD710E048;
 Thu, 18 Jul 2024 08:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721292672; x=1752828672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cj8wnyzJKOAHMz5y5sYf70XbE0crkDHfVyf1IuONtjM=;
 b=U9iA/nF+kDsNzYlCSr9FLswe3ptQHRiOhNZVOV92ke6UTd1Agl+KeYKM
 vhf1hCX1Wl5jBVhJJh9WFaxi/glbd6zKn2OSxveGm7jjnvsq0TG6wtYNr
 cEieZpieyR81vkt06fIdnt1LfybK85bKnzvMb45wiElgggMkA5qGFCG6/
 I6jLP+LNgJHBDULqzzLqlhoktDgmcK09g9mtkjZOsyN297HgApClNZziW
 DHA25FUMIUmFpI9fAx9zcy1i2j35sh+61xgaVF4zCasWZ99AsCVB1TTz9
 h1mVC42VvU4wMUDQSF6EEYsS9zRxpvDLfSwrxiOXnJm4TAG2smbBUGLbl Q==;
X-CSE-ConnectionGUID: U8fmJTPQTEuZeNRjs5ALfA==
X-CSE-MsgGUID: BvRHCVA+TMmv/B3kTyqtqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18542583"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18542583"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:51:12 -0700
X-CSE-ConnectionGUID: 54iLVF5CRIuwt9FplbYlcQ==
X-CSE-MsgGUID: aXR8czcHQeSeYg9DJsTxIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50986561"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.184])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:51:11 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v3 2/5] lib: Add more debug messages to error paths
Date: Thu, 18 Jul 2024 10:51:07 +0200
Message-ID: <4579684.LvFx2qVVIh@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20240717122836.3481656-9-janusz.krzysztofik@linux.intel.com>
References: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
 <20240717122836.3481656-9-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Wednesday, 17 July 2024 14:26:13 GMT+2 Janusz Krzysztofik wrote:
>         while (dir >= 0 && (path = va_arg(ap, const char *))) {
>                 int fd;
>  
> -               fd = openat(dir, path, O_RDONLY);
> +               igt_debug_on_f((fd = openat(dir, path, O_RDONLY)) < 0,
> +                              "failed component: %s", path);
                                                    ^^^^^
Missing newline, sorry.

Please expect new version.

Thanks,
Janusz

>                 close(dir);
>  
>                 dir = fd;




