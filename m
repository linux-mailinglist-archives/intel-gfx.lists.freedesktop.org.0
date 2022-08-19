Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A21599908
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 11:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FD810E112;
	Fri, 19 Aug 2022 09:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1CD10E7B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 09:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660902751; x=1692438751;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QuFLoW+y1+7ivRir5oWacMxWiqStRt8Ah8mp4y2PI7A=;
 b=fd6ddICnV6ciqRKlUbUMOWrumjQb8BrYk3NeIv1IEtdfFP2P4WKZCEqv
 IvZa2ggY7GlZEkFLSpYv1EjCYKtoYxn0o886rCZ4xOeDGKSSQFEHQMtvU
 ZiVstlNiju6rpFuk4oDH6LxES5P41ZS1atuBwNCtgKIYDOQPAkmcRfYup
 xvFxGLvErnUr8tNvxa6YwerTCUNmwo8ONQ/qfRRTgd+oEGZf2cAWLEoQ+
 pFOkgNDPyiqDXutEZRX5iQuI6KjQulEZr6FUyCbQ+9QvV0wNP/cUYvM9n
 Q8oatglROilCgBEpUk5hTFXXvaWRar75NyF0EKBwXXDWwMkpH5TTcpq+C A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="273372485"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="273372485"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:52:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="637220713"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 02:52:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <87mtc3p91d.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660664162.git.jani.nikula@intel.com>
 <b0f4f087866257d280eb97d6bcfcefd109cc5fa2.1660664162.git.jani.nikula@intel.com>
 <YvyjILz4bXhvPjdZ@intel.com> <87mtc3p91d.fsf@intel.com>
Date: Fri, 19 Aug 2022 12:52:26 +0300
Message-ID: <87mtc0o90l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RESEND 1/3] drm/i915/dsi: filter invalid backlight
 and CABC ports
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 17 Aug 2022, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
>> On Tue, Aug 16, 2022 at 06:37:20PM +0300, Jani Nikula wrote:
>>> Avoid using ports that aren't initialized in case the VBT backlight or
>>> CABC ports have invalid values. This fixes a NULL pointer dereference of
>>> intel_dsi->dsi_hosts[port] in such cases.
>>> 
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> Would be interesting to figure out which one of those actually fixed the
>> https://gitlab.freedesktop.org/drm/intel/-/issues/6476 issue, this one
>> or next one.
>
> I asked to test with patch 1 alone first, and it lets them boot without
> the oops. And it produces the warn added here. But this just filters
> port C out of bl_ports, and doesn't fix the root cause. Patch 2 should
> fix the root cause, get rid of the warn and give them functioning
> backlight. I hope. There was no test results with patches 2&3. :)
>
>> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
> Thanks for the review!

Also, pushed the series to drm-intel-next yesterday.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
