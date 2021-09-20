Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A05411129
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 10:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13CF6E434;
	Mon, 20 Sep 2021 08:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628706E434;
 Mon, 20 Sep 2021 08:44:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="221205293"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="221205293"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:44:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="548622292"
Received: from svandens-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.216.120])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:44:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Gupta\, Anshuman" <anshuman.gupta@intel.com>, "De Marchi\,
 Lucas" <lucas.demarchi@intel.com>
Cc: "Auld\, Matthew" <matthew.auld@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel\@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
In-Reply-To: <97159e5b7e8f4ef49b773be085b886be@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412090526.30547-1-matthew.auld@intel.com>
 <20210412090526.30547-15-matthew.auld@intel.com> <87im3hh8sy.fsf@intel.com>
 <20210918043019.hhol5fgwbi2ogod2@ldmartin-desk2> <87czp3vgl9.fsf@intel.com>
 <97159e5b7e8f4ef49b773be085b886be@intel.com>
Date: Mon, 20 Sep 2021 11:43:57 +0300
Message-ID: <87a6k7vdpu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 14/19] drm/i915/oprom: Basic sanitization
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

On Mon, 20 Sep 2021, "Gupta, Anshuman" <anshuman.gupta@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Monday, September 20, 2021 1:12 PM
>> To: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Cc: Auld, Matthew <matthew.auld@intel.com>; intel-gfx@lists.freedesktop.org;
>> dri-devel@lists.freedesktop.org; Gupta, Anshuman
>> <anshuman.gupta@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH 14/19] drm/i915/oprom: Basic sanitization
>> 
>> On Fri, 17 Sep 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> > On Mon, May 17, 2021 at 02:57:33PM +0300, Jani Nikula wrote:
>> >>On Mon, 12 Apr 2021, Matthew Auld <matthew.auld@intel.com> wrote:
>> >>> From: Anshuman Gupta <anshuman.gupta@intel.com>
>> >>>
>> >>> Sanitize OPROM header, CPD signature and OPROM PCI version.
>> >>> OPROM_HEADER, EXPANSION_ROM_HEADER and OPROM_MEU_BLOB
>> structures and
>> >>> PCI struct offsets are provided by GSC counterparts.
>> >>> These are yet to be Documented in B.Spec.
>> >>> After successful sanitization, extract VBT from opregion image.
>> >>
>> >>So I don't understand what the point is with two consecutive patches
>> >>where the latter rewrites a lot of the former.
>> >
>> > I actually wonder what's the point of this. Getting it from spi is
>> > already the fallback and looks much more complex. Yes, it's pretty
>> > detailed and document the format pretty well, but it still looks more
>> > complex than the initial code. Do you see additional benefit in this
>> > one?
> Getting opregion image from spi is needed to get the intel_opregion and its mailboxes on discrete card.

I mean what's the point of the "drm/i915/oprom: Basic sanitization"
patch? And if that's needed, then why is it separate from "drm/i915/dg1:
Read OPROM via SPI controller"?

>> The commit message doesn't really explain much. Anshuman?
> I will get rework of the patches and float it again.

Lucas already sent something, please sync with him.

BR,
Jani.


> Thanks,
> Anshuman Gupta.
>> 
>> BR,
>> Jani.
>> 
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
