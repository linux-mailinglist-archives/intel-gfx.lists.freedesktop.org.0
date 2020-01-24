Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50E81490D9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 23:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BEF06E455;
	Fri, 24 Jan 2020 22:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D164B6E455
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 22:28:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 14:28:49 -0800
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="251425113"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 14:28:48 -0800
Date: Fri, 24 Jan 2020 14:30:19 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200124223019.GA3529069@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
 <157987409843.2524.2998401254997919669@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157987409843.2524.2998401254997919669@skylake-alporthouse-com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 01:54:58PM +0000, Chris Wilson wrote:
> Quoting Jani Nikula (2020-01-24 13:25:21)
> > Hey all,
> > 
> > So I sent [1] to convert some forcewake register accessors... but what if we
> > just ripped off the bandage once and for all? It's going to hurt, a lot, but
> > we'd get it done.
> > 
> > This completely rids us of the "dev_priv" dependency in display/.
> > 
> > All the patches here are per-file and independent of each other. We could also
> > pick and apply the ones that are least likely to conflict.
> > 
> > Opinions?
> > 
> > 
> > BR,
> > Jani.
> > 
> > 
> > PS. I didn't bother looking at the checkpatch warnings this may generate at this
> > point. I just used the --linux-spacing option for spatch, and closed my eyes. I
> > completely scripted the generation of the series, apart from just a couple of
> > build fixes.
> 
> Yup. Suck it all in, clean up with the usual code refreshes.
> Schadenfreude-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> I've looked at a couple of patches to confirm that it does appear purely
> mechanical,
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

Since it is purely mechanical with coccinelle, why not to make in only one patch?

Anyway:
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
