Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BF414AA11
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F15246E912;
	Mon, 27 Jan 2020 18:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFFE6E912
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:49:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:29:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="222550706"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:29:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200124213553.GH459881@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579871655.git.jani.nikula@intel.com>
 <20200124213553.GH459881@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 27 Jan 2020 20:29:19 +0200
Message-ID: <87h80gbvnk.fsf@intel.com>
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

On Fri, 24 Jan 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
> There's a lot of display (watermark) code in intel_pm.c as well, even
> though it doesn't live in the display/ directory.  We should probably
> pull the watermark stuff out into a separate display/intel_wm.c or
> something soon, but in the meantime we'll probably want to switch a
> bunch of that code over to using these new functions.  But I guess you
> can't do that with coccinelle though since there are parts of the file
> that aren't display-related and shouldn't use the same display helpers.

Yeah, display/ was a clear-cut line. I may have already pushed some
patches using intel_de_*_fw from the top level code, but I think it
would be better to move all large chunks of code that do display uncore
stuff under display/.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
