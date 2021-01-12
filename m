Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 374E12F3761
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89E289B27;
	Tue, 12 Jan 2021 17:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9B889B22
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:40:06 +0000 (UTC)
IronPort-SDR: KmvVILh+wL2xR6iFD1m6icAeOGpgNh47MThKG0F5EO07DfUMBb9suoMgtgv/a6qLMlZoOiKnF2
 mzajipHzMVrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="196706639"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="196706639"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:39:58 -0800
IronPort-SDR: 0rFOQAiA7kr/t+lKEYt4vObh3oVSEMTY93ejfdu/PhO77y1xnMFG1iywh8SDSAwK8rDEADrGZC
 HW/wzkhrEMJw==
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="381507230"
Received: from vbucoci-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:39:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vivi\, Rodrigo" <rodrigo.vivi@intel.com>, "Roper\,
 Matthew D" <matthew.d.roper@intel.com>, "De Marchi\,
 Lucas" <lucas.demarchi@intel.com>
In-Reply-To: <13f8831443053efa9502c4ab35c546952ebb225e.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com> <875z43w7kq.fsf@intel.com>
 <20210111205743.GC4758@mdroper-desk1.amr.corp.intel.com>
 <20210111212553.brclyuex7dgzeryu@ldmartin-desk1>
 <13f8831443053efa9502c4ab35c546952ebb225e.camel@intel.com>
Date: Tue, 12 Jan 2021 19:39:52 +0200
Message-ID: <87ft36t5p3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Use TGL stepping info for
 applying WAs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Jan 2021, "Vivi, Rodrigo" <rodrigo.vivi@intel.com> wrote:
> On Mon, 2021-01-11 at 13:25 -0800, Lucas De Marchi wrote:
>> last time we talked about this was regarding dg1 AFAIR and the
>> consensus was to create a topic branch and that topic branch to be
>> merged in both branches. That would avoid having 2 commits in
>> different branches.
>
> Yeap, I believe this is the way to go.
>
>> 
>> Not sure if it would work out nicely for getting test on CI though.
>
> create an empty topic branch using dim.
>
> Pre-merge CI with drm-tip. Only if passing and if everything is realy
> ready. Push to the topic branch using dim.
>
> Then it will be part of drm-tip already for any subsequential pre-merge
> CI...
>
> Then do the pull requests to bot drm-intel-next and drm-intel-gt-next.
>
> After everything is pulled to both places, then delete the topic
> branch.

Atm the problem is this:

$ git merge-base drm-intel/drm-intel-next drm-intel/drm-intel-gt-next

That would be the baseline for the topic branch.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
