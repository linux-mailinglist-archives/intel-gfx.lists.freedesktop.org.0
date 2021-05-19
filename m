Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 217283887AA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 08:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A776EAD5;
	Wed, 19 May 2021 06:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4EF6E1B1;
 Wed, 19 May 2021 06:36:14 +0000 (UTC)
IronPort-SDR: P9r+8398rn+OkJ9o4MXpcGrElsxXsYb4s1tSNimhmn1ChL8SoKC0mM8KO8Q+YosZNQIMhApAjl
 1cmMy1bLVEhw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="200953990"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="200953990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 23:36:12 -0700
IronPort-SDR: 26FJhG5hKjHpbMUSgRDcfyLkTroVpSa105OceBVvPqSlEtPcgRPJkIMfpdl08K18Nyn5sJFb9M
 9BeadNdkd5eg==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="473337476"
Received: from akrolak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.74])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 23:36:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20210519004012.GF4589@zhen-hp.sh.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210518161705.3697143-1-gregkh@linuxfoundation.org>
 <20210519004012.GF4589@zhen-hp.sh.intel.com>
Date: Wed, 19 May 2021 09:36:05 +0300
Message-ID: <87zgwrdycq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: remove local storage of
 debugfs file
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 May 2021, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
>
> Thanks!

Thanks for the review. Please also let Greg know whether he can pick
this up via the debugfs tree; I don't care either way.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
