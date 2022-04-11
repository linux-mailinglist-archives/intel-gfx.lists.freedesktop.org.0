Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 665824FBD52
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 15:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E7610EC1E;
	Mon, 11 Apr 2022 13:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E7F10ECFE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649684302; x=1681220302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=W7TGUnyjiwl1dItHWlngrtJ48oTfHapMfDt3yZEs2gQ=;
 b=CbRbkxht44VKzwtiiKjJCNUChy/PUB6ajG82Hg5KNG3s3sOqgukAAFLs
 sYSAUeTwL8OTShVik0oNM7rMH97+pd4NMaH/P60iNEDO5UT7bRWABFRzJ
 soqwPzqD6f2SLvo0ygGfPJajKiOh3WosRwXahzkJ1XZU9iZdWVjvwR0zm
 T67dB/4tDogn09Pmq2t2ze7Ygl3PWlkV3YYlflc08Em0VnJDmpA+/3i78
 VYU7RZOSWpYLlF7EQpJ/f+BnBuepQMIJdtG2sDj5bSdJU0kKRrDJGhjps
 Ha4QKPJfSmafTZjcngWkgK5x5V6upDxbYzkyYI5mQWXTTc3c0dQrVY5fu A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="260964402"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="260964402"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 06:38:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="551142618"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 06:38:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, intel-gfx@lists.freedesktop.org, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
In-Reply-To: <YlQhVWmwUA1DvTNS@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220404133846.131401-1-imre.deak@intel.com>
 <YlQhVWmwUA1DvTNS@ideak-desk.fi.intel.com>
Date: Mon, 11 Apr 2022 16:38:16 +0300
Message-ID: <87czhnivuf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915/dg2: Add support for
 render/media decompression
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
Cc: Juha-Pekka =?utf-8?Q?Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> Hi Rodrigo, Jani,

TL;DR, all done, for details read on. ;)

> On Mon, Apr 04, 2022 at 04:38:42PM +0300, Imre Deak wrote:
>> This is a rebased version of patches 15-17 of [1], adding DG2 display
>> engine support for decompressing render and media compressed
>> framebuffers.
>>=20
>> The dependency patches from [1] should be merged already to drm-tip.
>>=20
>> It addresses the review comments on the modifier layout description from
>> Nanley, updates the commit logs vs. flat CCS and Tile4 and splits out
>> the changes adding the modifiers to drm_fourcc.h to separate patches.
>>=20
>> [1] https://patchwork.freedesktop.org/series/95686/
>>=20
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Cc: Ramalingam C <ramalingam.c@intel.com>
>> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Mika Kahola <mika.kahola@intel.com>
>> Cc: Juha-Pekka Heikkil=C3=A4 <juha-pekka.heikkila@intel.com>
>> Cc: Nanley Chery <nanley.g.chery@intel.com>
>
> I'd like to push this patchset to drm-intel-next, but it depends on
> https://patchwork.freedesktop.org/patch/475167/?series=3D100419&rev=3D1

Please reference commits, looking that up is just an extra step for me.

> which is only in drm-intel-gt-next. According to Joonas, this should be
> resolved by backmerging drm-intel-gt-next to drm-intel-next, could you
> help with this?

To set the record straight, we don't crossmerge drm-intel-gt-next to
drm-intel-next. The other direction is possible. These are the valid
merges:

drm-intel-next -> drm-next		feature pull
drm-intel-gt-next -> drm-next		feature pull
drm-next -> drm-intel-next		backmerge
drm-next -> drm-intel-gt-next		backmerge
drm-intel-next -> drm-intel-gt-next	crossmerge
topic/* -> *				topic merge

Anyway, drm-intel-gt-next with the commit in question 5e3094cfd9fb
("drm/i915/xehpsdv: Add has_flat_ccs to device info") has already been
merged to drm-next and -rc1. I've done a backmerge and pushed it out.

Because we don't do drm-intel-gt-next -> drm-intel-next crossmerges, it
might be better to apply things like feature flags to drm-intel-next,
because the route from gt back to drm-intel-next is longer.

I might be prudent to trigger a retest with the new baseline before
merging.


BR,
Jani.

>
>> Anshuman Gupta (1):
>>   drm/i915/dg2: Add support for DG2 clear color compression
>>=20
>> Matt Roper (2):
>>   drm/fourcc: Introduce format modifiers for DG2 render and media
>>     compression
>>   drm/i915/dg2: Add support for DG2 render and media compression
>>=20
>> Mika Kahola (1):
>>   drm/fourcc: Introduce format modifier for DG2 clear color
>>=20
>>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
>>  drivers/gpu/drm/i915/display/intel_fb.c       | 53 +++++++++++++++----
>>  .../drm/i915/display/skl_universal_plane.c    | 49 +++++++++++++----
>>  include/uapi/drm/drm_fourcc.h                 | 36 +++++++++++++
>>  4 files changed, 122 insertions(+), 20 deletions(-)
>>=20
>> --=20
>> 2.30.2
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
