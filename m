Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB03EYvQmWmgWwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Feb 2026 16:34:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BEF16D2CF
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Feb 2026 16:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4F410E06D;
	Sat, 21 Feb 2026 15:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eFeCTwrN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAEF110E06D
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Feb 2026 15:34:30 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id
 41be03b00d2f7-c636487ccaeso1145308a12.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Feb 2026 07:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771688070; x=1772292870; darn=lists.freedesktop.org;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=ROVPPK7UnzzE7PxAym5z6MuV/jbpbVYCQdJyYZBwvO4=;
 b=eFeCTwrNqBAmPaT9iKQh0NKO0D6Gsy8U3SVlaMFwTdt6jyrm1LxSU6it5g6pmsgGuw
 A4AdT4LsPIORCqWl67HjlwHIFoN2JCZ2G/VbELn6hhy5bhUcMrUcRaN6PgYYkhLqnFyr
 /aY5OqFNRWNAcXH+Cu5UC+ENdRVOdZV81tLWmebwqbrq1fFlf3sfHz1+mSO4/bunDBLJ
 hz0ZnkVQdVMCheH2dxHsYVNMXCet7zvtGN1Lh9W/DDqYFhV7VloZrrvSja9pytXBeFuB
 vmmLgRFrSMYeRL4eQIPyAU6L6or1r3iy6tVZvoBV6ZeUkjbJlkg92WWhuZqiTnOXyeop
 w2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771688070; x=1772292870;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ROVPPK7UnzzE7PxAym5z6MuV/jbpbVYCQdJyYZBwvO4=;
 b=jrKc2wm6HHNWJaJ55U8xe/aojBwJ00i6ZRvCjbQJNvHGvadIHDYxsVve+jTma6R1d4
 hAeMGhxvbudOmaBgQJ2jLqIkLLVSIu5DUwUxQmk4TZvyaCPhH6d2moEkRqSokQEq7nPA
 n/EQtzrJkGaomdN1On/ZeftXORBDItFAbDEKBQj09xWOrZA3m5HH7UVfbEilPzpWLpR2
 ODCq79rQNgd1+eJqtx6RnEoSKjOCA/U7xAOOe06GQ3bJle568jcXmE6HrbY4l8dQsKq4
 gRE6LYY0/RaG/WDpJB/sycxgb3kHqcQD2uFoXQ46XhSbZfwT5lQmt8Ds8vpULjVzWBap
 DqBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQM6+hWpb2SsNp3DpkPPE7iCAxDDpoKSTSBP0wi1jE7Dz5GxKsHW4V8DnypiV038cVKdPDeZ2jcus=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwTLUZIzS4EOR95zLnTJggUhJu7iLX/MUoyLsdOpu/L62oK2X/Y
 JZPUiLMe/+5YTLLtl0VdObfRheV7uWGzphSjOkZtceFZI6w6zI0Hl0ZB9ccquA==
X-Gm-Gg: AZuq6aJ7hqoiHWTnu5EtxIMys9Kvke10W38PvmwfgO5T2F36hHlU0Pbfb2Jkf8Ak2ns
 C8Q6Kf3xyeBkN47nIiwFKJ59zPAGe/wzFV47Fg7u3RTLh8/1/+PsKORiuIFEVt7/uacTUJKEoaP
 +Ua6JIg8S7KPd85D2YFTRBnzoXzG55e+XWS32mJvooI9uxbjInL/jQZuarf2feey0bbap0WQ8wE
 5ykNy/kFnGq75fj7hnAgTAk9Ohfxa9D4NjzOwPPFPeVIzOJhUv8/0T1m0UNvxovWOm+9VfJtMzx
 E3wa6BWpicZ3xqPj8Rk5Za99CD9mAgH0+rhZBqE+bSv0DO1MSar+u/UA0rBTEqC636zwhDY8E/d
 cx8o3rvWlms9kblydTgQzdPioqDhW5b5rkuSQ6B6mkADWGj4a6+8wz02zdopaMwevFB8EP1lcuq
 lNnTCT8quyNjN1UpWnhU38ZYarF8FlD77KRYbkH0U42IbRPk5H+JE=
X-Received: by 2002:a17:902:d54c:b0:2a0:e80e:b118 with SMTP id
 d9443c01a7336-2ad74418adfmr31851405ad.7.1771688070122; 
 Sat, 21 Feb 2026 07:34:30 -0800 (PST)
Received: from localhost ([161.33.165.114]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2ad74f637easm26001115ad.37.2026.02.21.07.34.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Feb 2026 07:34:29 -0800 (PST)
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
In-Reply-To: <CH0PR11MB544431641B604EF86BC0CE7BE568A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260212194131.64708-2-jonathan.cavitt@intel.com>
 <87o6lsylfd.fsf@dell-wzy>
 <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <871pifpjfj.fsf@dell-wzy>
 <CH0PR11MB544431641B604EF86BC0CE7BE568A@CH0PR11MB5444.namprd11.prod.outlook.com>
Date: Sat, 21 Feb 2026 23:34:25 +0800
Message-ID: <87y0km9kla.fsf@dell-wzy>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[zhenyuwlinux@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhenyuwlinux@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 96BEF16D2CF
X-Rspamd-Action: no action

"Cavitt, Jonathan" <jonathan.cavitt@intel.com> writes:

> -----Original Message-----
> From: Zhenyu Wang <zhenyuw.linux@gmail.com> 
> Sent: Friday, February 20, 2026 6:41 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
>> 
>> "Cavitt, Jonathan" <jonathan.cavitt@intel.com> writes:
>> 
>> > -----Original Message-----
>> > From: Zhenyu Wang <zhenyuw.linux@gmail.com> 
>> > Sent: Friday, February 13, 2026 2:42 AM
>> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
>> > Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
>> > Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
>> >> 
>> >> Jonathan Cavitt <jonathan.cavitt@intel.com> writes:
>> >> 
>> >> > Static analysis issue:
>> >> >
>> >> > The u64 array workload->shadow_mm->ppgtt_mm.shadow_pdps is cast to a
>> >> > void pointer and passed as a u32 array to set_context_pdp_root_pointer
>> >> > as a part of update_shadow_pdps.  This isn't wrong, per se, but we
>> >> > should properly cast it to an appropriately-sized u32 array before
>> >> > submission.
>> >> >
>> >> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/gvt/scheduler.c | 6 ++++--
>> >> >  1 file changed, 4 insertions(+), 2 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
>> >> > index 15fdd514ca83..1a95c9f76faa 100644
>> >> > --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> >> > +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> >> > @@ -72,6 +72,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
>> >> >  {
>> >> >  	struct execlist_ring_context *shadow_ring_context;
>> >> >  	struct intel_context *ctx = workload->req->context;
>> >> > +	u32 pdp[8];
>> >> >  
>> >> >  	if (WARN_ON(!workload->shadow_mm))
>> >> >  		return;
>> >> > @@ -79,9 +80,10 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
>> >> >  	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
>> >> >  		return;
>> >> >  
>> >> > +	memcpy(pdp, workload->shadow_mm->ppgtt_mm.shadow_pdps,
>> >> > +	       sizeof(u64) * ARRAY_SIZE(workload->shadow_mm->ppgtt_mm.shadow_pdps));
>> >> >  	shadow_ring_context = (struct execlist_ring_context *)ctx->lrc_reg_state;
>> >> > -	set_context_pdp_root_pointer(shadow_ring_context,
>> >> > -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
>> >> > +	set_context_pdp_root_pointer(shadow_ring_context, pdp);
>> >> >  }
>> >> >  
>> >> 
>> >> I think we'd better just cast the type instead of extra copy.
>> >
>> > I'm not certain that would resolve the static analysis issue.
>> >
>> > To specify, the static analyzer is complaining that we're taking a pointer to an object
>> > of type 'unsigned long long' and dereferencing it as an object of type 'unsigned int'.
>> > The analyzer is getting uppity about this causing unexpected results depending on
>> > machine endianness (which... it won't, but the static analyzer doesn't know that),
>> > so I suspect the only way to get it to calm down is to do a direct memory copy, as
>> > seen here.  Casting the type would just result in the same static analysis issue.
>> >
>> > This is the part of the email that I'd throw around terms like "strict aliasing" and
>> > "type punning" if I thought they were relevant.  They probably aren't, though.
>> >
>> 
>> I really don't want to do extra copy as this is hot path for every exec submission.
>> How about below change?
>> Btw, which static analysis you're using? Looks I don't get such warning
>> with either sparse or smatch...
>
> I'm not allowed to go into detail about that.  Sorry.
>
>> 
>> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
>> index 63ad1fed525a..3f09d6440827 100644
>> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> @@ -1,3 +1,4 @@
>> +
>>  /*
>>   * Copyright(c) 2011-2016 Intel Corporation. All rights reserved.
>>   *
>> @@ -54,7 +55,7 @@
>>  
>>  static void set_context_pdp_root_pointer(
>>  		struct execlist_ring_context *ring_context,
>> -		u32 pdp[8])
>> +		u32 *pdp)
>>  {
>>  	int i;
>>  
>> @@ -75,7 +76,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
>>  
>>  	shadow_ring_context = (struct execlist_ring_context *)ctx->lrc_reg_state;
>>  	set_context_pdp_root_pointer(shadow_ring_context,
>> -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
>> +				     (u32 *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
>>  }
>
> This still results in us casting a u64 pointer to a u32 pointer.
>

It's normal in some driver cases we really need to access 32b fields indeed..

> If this change is undesirable, I can mark it as a false positive on my end.

Above version should be better but original one doesn't hurt... so in
case of private tool, please mark it so. Thanks.
