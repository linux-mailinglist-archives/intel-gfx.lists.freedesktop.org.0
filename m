Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA330184A04
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B2C6EBE5;
	Fri, 13 Mar 2020 14:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC756EBE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 14:54:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 07:54:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="236976193"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008.fm.intel.com with ESMTP; 13 Mar 2020 07:54:36 -0700
Date: Fri, 13 Mar 2020 16:54:35 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200312175040.GJ13686@intel.com>
Message-ID: <alpine.DEB.2.21.2003131649140.2957@eliteleevi.tm.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de> <20200310134114.GE13686@intel.com>
 <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
 <20200310182522.GN13686@intel.com>
 <alpine.DEB.2.21.2003121833570.2957@eliteleevi.tm.intel.com>
 <20200312175040.GJ13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-318106570-92365371-1584111212=:2957"
Content-ID: <alpine.DEB.2.21.2003131653450.2957@eliteleevi.tm.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-92365371-1584111212=:2957
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.2003131653451.2957@eliteleevi.tm.intel.com>

Hey,

On Thu, 12 Mar 2020, Ville Syrjälä wrote:

> On Thu, Mar 12, 2020 at 07:27:58PM +0200, Kai Vehmanen wrote:
>> So I think this starts to look that we should move calling glk_force_audio 
>> to bind/unbind pair. I can make a patch for this.
> 
> That would stop us from doing dynamic cdclk changes once we get the hw
> that can do that properly. Rather I think I'd just hardcode the 2xbclk
> requirement in i915 for the platforms that suck.

well, you can always code in both places -- i.e. have the clock 
constraints set up at bind() for older (the current) platforms, and have a 
different callplace in get_power() for newer platforms. This code is 
anyways conditional on the hardware that is used.

I now send a patch implementing this, plus code to at runtime figure
out the effective BCLK, to the list. Please have a look at comment.

Br, Kai
---318106570-92365371-1584111212=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-92365371-1584111212=:2957--
