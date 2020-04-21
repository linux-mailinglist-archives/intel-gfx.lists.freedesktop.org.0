Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D47451B2861
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 15:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313986E0FB;
	Tue, 21 Apr 2020 13:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8717B6E0FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 13:47:15 +0000 (UTC)
IronPort-SDR: wKqcoSXCAHnRpNAcqTkEvq6nLfhraHmwsKkuMi/Ud47jrok6oV3jPfd/E81/ijTvD5AHoHqOjA
 QbjVuJWfHgMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 06:47:14 -0700
IronPort-SDR: F626VEPq9AYZwdI9WWn7VMMEqUprq1ncowTUrY+V32tiGckF8I4EFzTisdbnaGJQO7IGY1JrLp
 t2AuY5p4L7Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="300610579"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Apr 2020 06:47:13 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4F59B5C1DA7; Tue, 21 Apr 2020 16:45:19 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158747615980.19285.17681670652527012229@build.alporthouse.com>
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
 <20200421131633.8246-5-mika.kuoppala@linux.intel.com>
 <158747615980.19285.17681670652527012229@build.alporthouse.com>
Date: Tue, 21 Apr 2020 16:45:19 +0300
Message-ID: <87a735lzps.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Split ctx timestamp selftest
 into two
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-04-21 14:16:33)
>> @@ -4774,6 +4773,12 @@ static int live_lrc_timestamp(void *arg)
>>                 unsigned long heartbeat;
>>                 int i, err = 0;
>>  
>> +               if (rcs && data.engine->class != RENDER_CLASS)
>> +                       continue;
>> +
>> +               if (!rcs && data.engine->class == RENDER_CLASS)
>> +                       continue;
>
> At least have a bit of finesse and do
> if (!(class & BIT(data.engine->engine->class)))

I looked at the engine mask and I knew there must be a better way.
-Mika

> 	continue;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
