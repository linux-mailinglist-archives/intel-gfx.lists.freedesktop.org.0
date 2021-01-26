Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3828F304127
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 15:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CE289C29;
	Tue, 26 Jan 2021 14:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B149389C29
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 14:59:39 +0000 (UTC)
IronPort-SDR: 0Y2HXLK8Vgwcm0L58leZ+8THk6GyjDGNm70deueFP/WLQupZk4XCxoQobF0Mov9a3oK+AmfXU2
 bwkxfR8g9RTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="179132236"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="179132236"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 06:59:39 -0800
IronPort-SDR: 1sGJVOwQIjo2Bxu89cJ39JXEFUOAl/ePVa2VybuiNv3Cw28kNYi80iJEe9yN7ycrVVsOJ2MbCi
 QE/2OQmyLRtw==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="572952386"
Received: from egraha2x-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.111.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 06:59:36 -0800
Date: Tue, 26 Jan 2021 06:59:33 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Borislav Petkov <bp@alien8.de>
Message-ID: <20210126145933.4qmwm7t3i3sotxmt@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210126001744.29442-1-aditya.swarup@intel.com>
 <20210126001744.29442-2-aditya.swarup@intel.com>
 <20210126102802.GB6514@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126102802.GB6514@zn.tnic>
Subject: Re: [Intel-gfx] [PATCH 1/1] x86/gpu: Add Alderlake-S stolen memory
 support
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
Cc: x86@kernel.org, bp@suse.de, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 26, 2021 at 11:28:02AM +0100, Borislav Petkov wrote:
>On Mon, Jan 25, 2021 at 04:17:44PM -0800, Aditya Swarup wrote:
>> From: Caz Yokoyama <caz.yokoyama@intel.com>
>>
>> Alderlake-S is a Gen 12 based hybrid processor architecture. As it
>> belongs to Gen 12 family, it uses the same GTT stolen memory settings
>> like its predecessors - ICL(Gen 11) and TGL(Gen 12). Inherit gen11
>> and gen 9 quirks for determining base and size of stolen memory.
>>
>> v2: Fix typos in commit message.(Boris Petkov)
>
>For the future: patch changelog information goes...
>
>> Bspec: 52055
>> Bspec: 49589
>> Bspec: 49636
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: x86@kernel.org
>> Cc: Ingo Molnar <mingo@redhat.com>,
>> Cc: Thomas Gleixner <tglx@linutronix.de>,
>> Cc: Borislav Petkov <bp@suse.de>
>> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>
><--- ... here, under those lines. But no need to resend now, I believe
>the committer of this will fix it up.
>
>Acked-by: Borislav Petkov <bp@suse.de>

Thanks, I fixed that up and applied to drm-intel topic/adl-s-enabling
branch.

Lucas De Marchi

>
>Thx.
>
>-- =

>Regards/Gruss,
>    Boris.
>
>https://people.kernel.org/tglx/notes-about-netiquette
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
