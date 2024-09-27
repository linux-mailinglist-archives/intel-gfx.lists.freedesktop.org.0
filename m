Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ED49887D9
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1BD10EC93;
	Fri, 27 Sep 2024 15:02:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itNzG4i+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABED910EC93;
 Fri, 27 Sep 2024 15:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727449379; x=1758985379;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yu8Hdnz0Vi7//oUKKd0RKVY9nZDZyd8yAtuG6E6lHMk=;
 b=itNzG4i+IUp1WDfEzxNCxCw77FcritvOaKuMD/uj60jq37k9/bHDt8WT
 BbH0T7Vqts1Zij2XPAqBxxXb76McI2tEqeZmZbhlqoh5odfrpUVT8S7Im
 M6Hol4WCKlg5tpCLhhPOR5v3GqcCCzLAcKaKXtviOXDWE19AntKjRbMq2
 EgnwiUxgOZG4HGlMlDJqps2xgaH34lOwM8ZanMm8cTO/VWltWFmBB1fhM
 jiX/hk6e6jDtzTdDxSkEhJnT6bmLHV2xKPfmPCKolAcvrYP8l1nKh+Plz
 ZTH68zDQU4xrKzHSNTf+Kqu77NL6khMxBISl42unsKrgY5MY4dQMyz6BS Q==;
X-CSE-ConnectionGUID: uvN8a5UZTDSB5VGSybbFmw==
X-CSE-MsgGUID: 7PREetReRdeVjtfTsfWqsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26469450"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26469450"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:02:28 -0700
X-CSE-ConnectionGUID: 4PkTeg3fQMWMDYmsC/vzGg==
X-CSE-MsgGUID: tFBnKWJxRB+mKwJN3MHvIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72137967"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:02:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
In-Reply-To: <ZvbGARm3OSe38HUV@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com> <ZvV2ssfgHA8jvTro@intel.com>
 <87zfntxpew.fsf@intel.com> <ZvbGARm3OSe38HUV@intel.com>
Date: Fri, 27 Sep 2024 18:01:58 +0300
Message-ID: <87bk09xhqx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 27 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Sep 27, 2024 at 03:16:23PM +0300, Jani Nikula wrote:
>> For example, RPL-S:
>> 
>> 
>> 	if (display->platform.alderlake_s_raptorlake_s)
>> 
>> But the main platform also matches its subplatforms:
>> 
>> 	if (display->platform.alderlake_s)
>> 
>> This is the same as with the patches at hand. Except for the
>> uppercase/lowercase difference, and s/is/platform/.
>
> Yeap, let's go with that then!

Double-checking: do you want both s/is/platform *and* lowercase?

	if (display->platform.alderlake_s_raptorlake_s)

Mulling over this I've ended up preferring lowercase. (Maybe need to do
something to pretty print them to logs.)

And just the platform without "is_" prefix, i.e. *not*:

	if (display->platform.is_alderlake_s_raptorlake_s)


BR,
Jani.


-- 
Jani Nikula, Intel
