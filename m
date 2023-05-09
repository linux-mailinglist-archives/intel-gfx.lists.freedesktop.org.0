Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648DC6FC2E2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 11:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE9810E371;
	Tue,  9 May 2023 09:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461E710E371;
 Tue,  9 May 2023 09:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683624946; x=1715160946;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=h1cVGnwBwmjYaATILljOV4HVPwbeYHchazT++Fv5Rvs=;
 b=e7s/HFtOIC8KrCjT82CoKWiMSv7RaGL9K1ODA73VwXtML5uOz2HX6pbe
 h3OHN2vgL0QKdKflcUOvfRiNou0xI/cz94RHxfiJWrlQh8DfMRyRwPiTm
 D/L+c2C+veAV52wv53DIj9dt65jMxBxmVi3lF3TCK+lWn3d6jsGaAnqSN
 0E7/YdCSNFHhHGkF+RxdZVkl1goHXKcqjRSSJEC/emaetBNm43uFaiyAg
 paKYXoArcokvsFA1lRJu/rVAKlKCNUWkIVllaGbNUjo+uo2hvawvn56II
 DemK1rF+KMmBOpqdmgr5PT17pdKMgirIKTnJTRCRGrmFEyKgHGvAOOOVo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="348703819"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="348703819"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 02:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="788460012"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="788460012"
Received: from unknown (HELO localhost) ([10.252.39.92])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 02:35:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Simon Ser <contact@emersion.fr>
In-Reply-To: <xAFAkPUUOOBaOeo-gUC5Cie_-c8lebcFKZD7CYPMIJP_6fy8dla0m68EYtWtQAAayuNIftrpBJkHFEHJaUrV-MyO_xJvWiErwJ2NAkQuLMA=@emersion.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230504123444.1843795-1-jani.nikula@intel.com>
 <xAFAkPUUOOBaOeo-gUC5Cie_-c8lebcFKZD7CYPMIJP_6fy8dla0m68EYtWtQAAayuNIftrpBJkHFEHJaUrV-MyO_xJvWiErwJ2NAkQuLMA=@emersion.fr>
Date: Tue, 09 May 2023 12:35:40 +0300
Message-ID: <875y91onir.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/connector: document enum
 drm_connector_tv_mode DRM_MODE_TV_MODE_MAX
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 May 2023, Simon Ser <contact@emersion.fr> wrote:
> Reviewed-by: Simon Ser <contact@emersion.fr>

Thanks, pushed to drm-misc-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
