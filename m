Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648B04D2FC4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 14:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A52610E8F2;
	Wed,  9 Mar 2022 13:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E629110E5E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 13:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646831676; x=1678367676;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=yq5kY9b7HtjxBubC8SbzOYmAvf9iDGJaasLgL2h1/f8=;
 b=Y/iFhq0sP4CZS+lT8rSaFxDrra65+6q1iMuTqmXHUGowGo5285WgonfG
 lnipi2Sxb5OXYnjnmMRa94TQc3NiC/+rwXXTm8VyddrNaFNO2qqAniHm1
 qq8hBOEFZFnNGaUjL34Gwl4kcodxqL3rld5waQYBaJ76OvINSSOz8ncxX
 qla9BX9V7FNHv02VsKIxlVx3hX+zlsGvWcuVabmcmnwxIFRw+GkEkdDx7
 f80W82RprB0XJGUYspmvlNEg626JK8tUSnGmu/QztScXletuW4zOMDJPy
 aR3kWzx6jS6qqAwd/g2wgJuP58R7qlK+K3l847fpA3iN/G1e2W/l0atE2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254912059"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254912059"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 05:14:36 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554110429"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 05:14:34 -0800
Date: Wed, 9 Mar 2022 15:05:33 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hy21jih6m.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.22.394.2203091459470.3088432@eliteleevi.tm.intel.com>
References: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
 <f9f6f831-a05d-2d20-8ade-ab717f342ba5@linux.intel.com>
 <alpine.DEB.2.22.394.2203091035350.3088432@eliteleevi.tm.intel.com>
 <9dabb68b-f2af-ae97-0fb2-869367c496bf@linux.intel.com>
 <s5h5yonjx7i.wl-tiwai@suse.de>
 <f0c12164-b266-2513-b8e6-323186338181@linux.intel.com>
 <s5hy21jih6m.wl-tiwai@suse.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2] ALSA: hda/i915 - avoid hung task timeout
 in i915 wait
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
Cc: alsa-devel@alsa-project.org, Paul Menzel <pmenzel+alsa-devel@molgen.mpg.de>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 9 Mar 2022, Takashi Iwai wrote:

>> Takashi Iwai wrote:
>>> The question is how often this problem hits.  Basically it's a very
>>> corner case, and I even think we may leave as is; that's a matter of
>>> configuration, and lowering such a bar should expect some
>>> side-effect. OTOH, if the problem happens in many cases, it's
>>> beneficial to fix in the core part, indeed.

I'm basicly helping out the intel-gfx folks here. This is now happening 
systematically in the intel-gfx CI. The hung-task timeout is configured to 
30sec (in intel-gfx CI), and there's some new hw configs where this 
happens every time (I have a separate patch in progress [1] that tries 
to detect this case and skip the init, but this will require more time as there is 
risk of breaking existing configurations).

[1] 
https://lists.freedesktop.org/archives/intel-gfx-trybot/2022-February/128278.html

Tvrtko Ursulin wrote:
> Takashi Iwai wrote:
> > Complete behaviour change how? Isn't this something ran on probe so
> > likelihood of anyone sending SIGKILL to the modprobe process is only
> > the init process? And in that case what is the fundamental difference
>
[...]
> The point is that it does change the actual behavior, and changing the
> actual behavior just for working around the corner case like the above
> wouldn't be justified without the proper evaluation.
> 
> That said, if this behavior change is intentional and even desired,
> that's a way to go.

Let me try this out and test on a few configs (with and without the 
timeout occurring) and send a V3 if this seems ok.

Br, Kai
