Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDDE14A9E9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1A76E879;
	Mon, 27 Jan 2020 18:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A896E879
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:38:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:10:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221809852"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:10:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <877e1fd1rd.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579871655.git.jani.nikula@intel.com>
 <157987409843.2524.2998401254997919669@skylake-alporthouse-com>
 <20200124223019.GA3529069@intel.com> <877e1fd1rd.fsf@intel.com>
Date: Mon, 27 Jan 2020 20:10:39 +0200
Message-ID: <87mua8bwio.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 00/33] drm/i915/display: mass conversion to
 intel_de_*() register accessors
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 25 Jan 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 24 Jan 2020, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Fri, Jan 24, 2020 at 01:54:58PM +0000, Chris Wilson wrote:
>>> Quoting Jani Nikula (2020-01-24 13:25:21)
>>> > Hey all,
>>> > 
>>> > So I sent [1] to convert some forcewake register accessors... but what if we
>>> > just ripped off the bandage once and for all? It's going to hurt, a lot, but
>>> > we'd get it done.
>>> > 
>>> > This completely rids us of the "dev_priv" dependency in display/.
>>> > 
>>> > All the patches here are per-file and independent of each other. We could also
>>> > pick and apply the ones that are least likely to conflict.
>>> > 
>>> > Opinions?
>>> > 
>>> > 
>>> > BR,
>>> > Jani.
>>> > 
>>> > 
>>> > PS. I didn't bother looking at the checkpatch warnings this may generate at this
>>> > point. I just used the --linux-spacing option for spatch, and closed my eyes. I
>>> > completely scripted the generation of the series, apart from just a couple of
>>> > build fixes.
>>> 
>>> Yup. Suck it all in, clean up with the usual code refreshes.
>>> Schadenfreude-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> 
>>> I've looked at a couple of patches to confirm that it does appear purely
>>> mechanical,
>>> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
>>
>> Since it is purely mechanical with coccinelle, why not to make in only one patch?
>
> Because such a mega patch would conflict before being able to
> merge. You'd have to block everything else. I don't think I'd be able to
> merge these in one go either even if we wanted to.

Indeed, I started pushing the patches, pushed all that applied, and
eight will need a rebase.

Thanks for the acks.

BR,
Jani.



>
>> Anyway:
>> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> Thanks,
> Jani.
>
>>
>>> -Chris
>>> _______________________________________________
>>> Intel-gfx mailing list
>>> Intel-gfx@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
