Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B7443B8A2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 19:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0823089DED;
	Tue, 26 Oct 2021 17:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCFF889DED
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 17:53:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="227429346"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="227429346"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 10:53:37 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="486291719"
Received: from flaboura-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 10:53:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Satadru Pramanik <satadru@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, "Deak\, Imre" <imre.deak@intel.com>
In-Reply-To: <CAFrh3J_JQEcniOUunvm1hv4R12qhw=s8vWFJ4CWMoB8zPkGRpw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CAFrh3J8jue=s56T-55DCVYYwxJd=4y9LdT2m26rabFvPtRW=8A@mail.gmail.com>
 <874k93kack.fsf@intel.com>
 <CAFrh3J_JQEcniOUunvm1hv4R12qhw=s8vWFJ4CWMoB8zPkGRpw@mail.gmail.com>
Date: Tue, 26 Oct 2021 20:53:32 +0300
Message-ID: <87v91jisf7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] intel_dp_sync_state+oxeo/oxfo boot failures after
 5.15-rc3
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

On Tue, 26 Oct 2021, Satadru Pramanik <satadru@gmail.com> wrote:
> That appears to do the trick.

Thanks for confirming.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
