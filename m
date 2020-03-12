Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E73183BED
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6526EB43;
	Thu, 12 Mar 2020 22:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2CFC6EB41
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:07:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:07:47 -0700
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="237000730"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.163])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:07:47 -0700
Date: Thu, 12 Mar 2020 15:07:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Message-ID: <20200312220746.5n7nwlamppvrvmeg@ldmartin-desk1.jf.intel.com>
X-Patchwork-Hint: ignore
References: <1c751032ce79c80c5485cae315f1a9904ce07cac.1583359940.git.caz.yokoyama@intel.com>
 <CAKi4VALn9McMaQ=Em=cZet8-jyosWCdxwzDS4JnDG0mfKYWcDg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VALn9McMaQ=Em=cZet8-jyosWCdxwzDS4JnDG0mfKYWcDg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] Revert "drm/i915/tgl: Add extra hdc
 flush workaround"
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 04, 2020 at 05:04:52PM -0800, Lucas De Marchi wrote:
>On Wed, Mar 4, 2020 at 2:33 PM Caz Yokoyama <caz.yokoyama@intel.com> wrote:
>>
>> This reverts commit 36a6b5d964d995b536b1925ec42052ee40ba92c4.
>> Fixes: 36a6b5d964d9 ("drm/i915/tgl: Add extra hdc flush workaround")
>>
>> The commit takes care Wa_1604544889 which was fixed on a0 stepping based=
 on
>> a0 replan. So no SW workaround is required on any stepping now.
>>
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
>
>You didn't add what the reviewers asked for. Please go back to the
>reviews and check that you
>still have things to change in this commit in order to add his r-b.
>Also check what Jos=E9 said.

I think we can live without the comment Jos=E9 asked for. So only
additional thing still wrong here is the "Fixes" line. It needs to be
together with the other trailers. We can do that while applying.

thanks

Lucas De Marchi

>
>
>Lucas De Marchi
>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_lrc.c | 20 --------------------
>>  1 file changed, 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/=
gt/intel_lrc.c
>> index b9b3f78f1324..f9425e5ed7ea 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -4145,26 +4145,6 @@ static int gen12_emit_flush_render(struct i915_re=
quest *request,
>>
>>                 *cs++ =3D preparser_disable(false);
>>                 intel_ring_advance(request, cs);
>> -
>> -               /*
>> -                * Wa_1604544889:tgl
>> -                */
>> -               if (IS_TGL_REVID(request->i915, TGL_REVID_A0, TGL_REVID_=
A0)) {
>> -                       flags =3D 0;
>> -                       flags |=3D PIPE_CONTROL_CS_STALL;
>> -                       flags |=3D PIPE_CONTROL_HDC_PIPELINE_FLUSH;
>> -
>> -                       flags |=3D PIPE_CONTROL_STORE_DATA_INDEX;
>> -                       flags |=3D PIPE_CONTROL_QW_WRITE;
>> -
>> -                       cs =3D intel_ring_begin(request, 6);
>> -                       if (IS_ERR(cs))
>> -                               return PTR_ERR(cs);
>> -
>> -                       cs =3D gen8_emit_pipe_control(cs, flags,
>> -                                                   LRC_PPHWSP_SCRATCH_A=
DDR);
>> -                       intel_ring_advance(request, cs);
>> -               }
>>         }
>>
>>         return 0;
>> --
>> 2.21.0.5.gaeb582a983
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>
>
>-- =

>Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
