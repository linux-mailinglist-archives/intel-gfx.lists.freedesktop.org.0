Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EED220E38
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AB46EB5E;
	Wed, 15 Jul 2020 13:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FFA6EAA3;
 Wed, 15 Jul 2020 13:34:10 +0000 (UTC)
IronPort-SDR: ENMvTIxhm3klBf6ZHrMuFqwGt4zvudd/3nEYNsGFgQL2GcbCSAbnTA+zJmffH+X7CFvEWs/o/r
 zsxCXVOkV2uQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="167262656"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="167262656"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:34:09 -0700
IronPort-SDR: kXd7HCYFtG5ij349QznAusVpmhLwtnPQev4D80ZzpFQ2qNOJyoVxBYFEbGojF1sHTP+6eu1E6+
 Dhlb8ggAxnyg==
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="460093246"
Received: from iferdane-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.55.197])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:34:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <87a70029vz.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87a70029vz.fsf@intel.com>
Date: Wed, 15 Jul 2020 16:33:58 +0300
Message-ID: <875zao2989.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PULL] drm-intel-next
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Argh, failed to mention:

On Wed, 15 Jul 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> Lee Shawn C (1):
>       drm/i915/mst: filter out the display mode exceed sink's capability

The above depends on:

> Lyude Paul (1):
>       drm/probe_helper: Add drm_connector_helper_funcs.mode_valid_ctx

Which has changes outside of i915:

>  drivers/gpu/drm/drm_crtc_helper_internal.h         |   7 +-
>  drivers/gpu/drm/drm_probe_helper.c                 |  97 +--

and does not have an explicit ack recorded, though drm-misc maintainers
have been Cc'd. :(

I decided they were benign enough, but needed to be mentioned.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
