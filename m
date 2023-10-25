Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251487D6A50
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 13:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2092B10E5A0;
	Wed, 25 Oct 2023 11:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F3110E5A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 11:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698234115; x=1729770115;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=o77g6XZREVdBJFCyjSlm5mQyvzdZ5kOWg/8HHOV63b0=;
 b=K/aLTFCzq1PN4uvS7kfA0A9QtMtEAD+P418dc2IA8JxGXmS40LQNag9d
 CcaYLqj2MPrUY4h7fST2Mun5mIpMiIT/imVN/1KFNbnBGxY09HmSa/v5F
 tw4eka+9YzydhcT40/XMY1nkxxGxQq1bIaHJs8zwLMJ3jFSf/e7f0PmnH
 QmVWsthQjNm2/bCaisvidN9GOffRNIM3yc+U7oPyd7LvGtZCUiToouqO9
 dtNGtbqKZ+eOAPt3UKSWOCIoV02Oy8+uTAie8zwqOCGR14rZGq4g4MKTS
 EQHZ2KZxO1GDBJ9Iww3ufB1IPDJ0uZqVp60N+/76v9CYmmuk4okMND3HX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="366636723"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="366636723"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="762427695"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="762427695"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:41:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
Date: Wed, 25 Oct 2023 14:41:50 +0300
Message-ID: <87r0lj7wu9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [topic/core-for-CI][PATCH 0/2] Drop some
 unnecessary patches
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

On Tue, 24 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Try to drop a few seemingly unnecessary patches from core-for-CI.

Yay, ack!

>
> Ville Syrj=C3=A4l=C3=A4 (2):
>   Revert "freezer: Dump more info on whoever is trying to get frozen
>     with locks held"
>   Revert "iommu: Remove iova cpu hotplugging flushing"
>
>  drivers/iommu/iova.c       | 28 ++++++++++++++++++++++++++++
>  include/linux/cpuhotplug.h |  1 +
>  include/linux/iova.h       |  1 +
>  kernel/freezer.c           | 12 ++----------
>  4 files changed, 32 insertions(+), 10 deletions(-)

--=20
Jani Nikula, Intel
