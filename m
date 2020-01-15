Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B017513BC16
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 10:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E2A6E8B3;
	Wed, 15 Jan 2020 09:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EE36E8B3;
 Wed, 15 Jan 2020 09:10:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 01:10:48 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="218062035"
Received: from huse-mobl2.ger.corp.intel.com (HELO localhost) ([10.252.50.31])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Jan 2020 01:10:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna\, Animesh" <animesh.manna@intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <88415e48-2d1d-6b31-211c-6509b4605c67@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191230161523.32222-1-animesh.manna@intel.com>
 <20191230161523.32222-4-animesh.manna@intel.com> <87v9putdvr.fsf@intel.com>
 <8d0d9c04-234f-f099-0f2d-3c3dee5384d6@intel.com>
 <20200103234846.GB2608@intel.com>
 <88415e48-2d1d-6b31-211c-6509b4605c67@intel.com>
Date: Wed, 15 Jan 2020 11:11:19 +0200
Message-ID: <87a76pjd8o.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/9] drm/i915/dp: Move
 vswing/pre-emphasis adjustment calculation
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
Cc: nidhi1.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Jan 2020, "Manna, Animesh" <animesh.manna@intel.com> wrote:
> Sure Manasi, I will make intel_get_adjust_train() non-static and keep in intel_dp_link_training.c.
> Now as suggested by Jani before (https://patchwork.freedesktop.org/patch/345823/?series=71121&rev=1#comment_640087) other non static functions are not following the rule,
> should I change the function name or keep it as it is?

Please prefix it intel_dp_. I think intel_dp_link_training_ is too long
here. :)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
