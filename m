Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB8E2C6280
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F266EB79;
	Fri, 27 Nov 2020 10:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80996EB7B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:06:21 +0000 (UTC)
IronPort-SDR: lYNYJpLYGFL58a05cKtgqfoNB7B0ozm8TGQBzHxqivYEWCN7Myau4zSNfQArHzSK9E/vR3cWgX
 bpMwhVWWHA4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="169815133"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="169815133"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:06:21 -0800
IronPort-SDR: DlDemnqTOoatjS6VmBrcCxr4n56X3mr32Whj2t69qq+nPdmZAFF2Ss4APrY/4mue6KNOz5vi44
 Bhu0NUP5JPmQ==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="547996914"
Received: from jleijten-mobl.ger.corp.intel.com (HELO [10.249.42.243])
 ([10.249.42.243])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:06:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
 <20201125104011.606641-2-maarten.lankhorst@linux.intel.com>
 <160630107869.24141.3791784375033675124@build.alporthouse.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <9fec5166-2fc3-d187-9f1f-0c8fe22adac9@linux.intel.com>
Date: Fri, 27 Nov 2020 11:06:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <160630107869.24141.3791784375033675124@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 01/63] drm/i915: Do not share hwsp across
 contexts any more, v6
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 25-11-2020 om 11:44 schreef Chris Wilson:
> Quoting Maarten Lankhorst (2020-11-25 10:39:09)
>> -               } while (!__igt_timeout(end_time, NULL));
>> -               WRITE_ONCE(*(u32 *)tl->hwsp_seqno, 0xdeadbeef);
>> +               } while (!__igt_timeout(end_time, NULL) &&
>> +                        count < (PAGE_SIZE / TIMELINE_SEQNO_BYTES - 1) / 2);
> Which part of this is NOT PAPERING OVER THE EXACT ISSUE I nacked this
> patch over?
>
> This series is still a joke. Go back to the design until you do not
> break ABI.
> -Chris

Thanks for your feedback, I've taken a look at this code and I will remove this hunk.
There is no need to limit to only 1 iteration.

Setting TIMELINE_SEQNO_BYTES to 128 (so we wrap the hwsp every 32 times, or every 16
test loops because we start at a clear cacheline) shows the code works as intended.

[  100.455041] i915: Running intel_timeline_live_selftests/live_hwsp_read
[  100.962336] rcs0: simulated 114 wraps
[  101.466285] bcs0: simulated 114 wraps
[  101.968282] vcs0: simulated 127 wraps
[  102.470052] vecs0: simulated 134 wraps
[  102.524057] i915: Running intel_timeline_live_selftests/live_hwsp_rollover_kernel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
