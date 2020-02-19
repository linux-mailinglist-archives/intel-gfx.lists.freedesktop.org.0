Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ED1164EDA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 20:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92ABE6EC87;
	Wed, 19 Feb 2020 19:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CA76EC87
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 19:25:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 11:25:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="224602486"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by orsmga007.jf.intel.com with ESMTP; 19 Feb 2020 11:25:46 -0800
Date: Wed, 19 Feb 2020 21:25:46 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Message-ID: <20200219192546.GA17296@intel.intel>
References: <20200219190223.16972-1-andi.shyti@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219190223.16972-1-andi.shyti@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: make a gt sysfs group and
 move power management files
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>  drivers/gpu/drm/i915/Makefile            |    4 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c       |    3 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h |    1 +
>  drivers/gpu/drm/i915/gt/sysfs_gt.c       |   79 ++
>  drivers/gpu/drm/i915/gt/sysfs_gt.h       |   22 +
>  drivers/gpu/drm/i915/gt/sysfs_gt_pm.c    |  432 +++++++++
>  drivers/gpu/drm/i915/gt/sysfs_gt_pm.h    |   17 +
>  drivers/gpu/drm/i915/i915_sysfs.c        |  375 +------
>  drivers/gpu/drm/i915/i915_sysfs.h        |    3 +
>  vvv                                      | 1127 ++++++++++++++++++++++
   ^^^
ops....

fortunately nothing compromising in it :)

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
