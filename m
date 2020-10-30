Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A36072A0BF1
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6666EDFD;
	Fri, 30 Oct 2020 16:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D1B6EDFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:57:18 +0000 (UTC)
IronPort-SDR: x69WT5aoL6gVi/s1MBYYLCQR8MTFRX/hqeOQ9Nno629jB+OLeCf9C10i/L1d29vg0wI4rXeLhc
 aus8xIImQf7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="186444775"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="186444775"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:57:18 -0700
IronPort-SDR: F36cKY2hxx6Uwzf66fIkg7i+RDMpLpVkTg9COHYXYCU4Hn4pTP3jhvdq2WtzwjMljMn2ReMTYy
 VRKody1YnY9Q==
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="304814638"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:57:16 -0700
Date: Fri, 30 Oct 2020 18:57:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20201030165713.GD3811545@ideak-desk.fi.intel.com>
References: <20201028210712.66475-1-jose.souza@intel.com>
 <20201029161234.GA3795323@ideak-desk.fi.intel.com>
 <30dad4e376cecc8ba49cd3edd4045f192c83e79a.camel@intel.com>
 <20201030164812.GC3811545@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030164812.GC3811545@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force initial atomic check in all
 eDP panels
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 30, 2020 at 06:48:12PM +0200, Imre Deak wrote:
> [...]
>
> Btw, if intel_pipe_config_compare() wouldn't show a mismatch for the
> PSR state (I suppose it doesn't) then intel_crtc_check_fastset() will
> reset mode_changed, so probably better to use connectors_changed.

Ah, nvm, PSR will get enabled even during a fastset, so you don't want
to force a full modeset -> mode_changed is ok.

> 
> --Imre
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
