Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OdqG2pymGkoIgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 15:40:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745A2168747
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 15:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94DE10E22C;
	Fri, 20 Feb 2026 14:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LLC7NkhV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A97F10E22C
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Feb 2026 14:40:37 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id
 d2e1a72fcca58-824a2888de5so1464886b3a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Feb 2026 06:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771598437; x=1772203237; darn=lists.freedesktop.org;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=+DRJUTGkXBwqHASvuHEaZP1StsBLQKaHEyf2zCiBBd0=;
 b=LLC7NkhVFgy0N8FV+CIJck4Bv4SFbMmw6IHeNTnpnTLm1OaQw2U3Km6j9+yZ5FhnXG
 raZSc/lf4Wjmp/1QmH9WzTaM3t4XzDvQ7+9e/CrpbLukPEwSBip8MlDCOhe6OKrkJwns
 zQUn9cDGpz7JHBGCDO1+6R/zDnRUAVScavjFw3d1zh/431PL15UiboQe9CAWVJftU6f2
 V1AvGUnBLQxIm4C/EBGjhMP/eTz7mxbz4So02q+NiCWZh8JmkITgEOTBS7vTeFe1Mmmq
 aLgeGwC0HgWDCfCnnwuQjifROk+pXrcoBZ4I5XmPg1QpTj2LG1T4X200r5J4md2cy4JD
 dNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771598437; x=1772203237;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+DRJUTGkXBwqHASvuHEaZP1StsBLQKaHEyf2zCiBBd0=;
 b=NdS9PU0NjOxER0+CKqLGUEA8uCRV78jl9M2FIlPO1QnzEMVr07d6b46AesBvz/XBe7
 YDrP7Su0Q43m7qd+OU5EX0sZLNMdL0OUPmAOKCcY97sE69Dxc22l+VtPGKIU9HC4/i3N
 OAzI6F5e8ISC4big6RBovejhy9crUIIrr9j7NFumKewRWyd8aJHBRQfdryXjzShfb1Al
 Arhlka8Dtx4IvtledVgwkjQo8lFae0hzLfnM1Dr3KfInJlu+dBMvDePw2tT9s5STAknQ
 Pw7FZ0ro90DD+NEYZRuOt/25mYOh686NhlBpfdo17U4FiFTRcC8RzCU368kVcvAWJiQG
 xquw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8EnTbZTlAi4ar1z/TZgO7pwc8p8vqzrgCJ4F4eNgstquUp+bL6wymsiF7mFDGyiyh08JJYJxNFmQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwcO6B1PbHdddO94S5Xy7Cw0cnYZrGO7J7sf1UXbIjo0Q2GE3Vu
 JSVzJTqkNWPclL0Lsm4GFBH3+uAfDiDYtuwnqp26ezMVQcILfINR+Ia7
X-Gm-Gg: AZuq6aLBPcvKv+rvAfEwMUd1PTrjW1Y6g1K6HgGl1esGzk3dREGYaim81jiD/2TtKi5
 rRgUkrBwCb79kEuIMTPWONCY3uUQhIWWthPnE/4XHYwVRfholCjwbUFKrRyjsJiKh51XOZGCPCT
 mEBg8yCUh4pCAcarqdMjWaYQZiRCxh6r25CVQiNCwMijEkuxq3byhwKI7G150Xdghqw1dI/zYmd
 8R6jPQV9WhqSPqx9HymYJ9QWvaKTLkdbFnzvYMED9zjPqoz+Mrh0NYbG79ab7xT4NkAcDa9rwoe
 m64YxeI8g2/1T3PfoeSM8Ql8SAqgLzUCJgjr6cvubQ2iBY4a3zVeiJEnIKRZMh3h00gLq9Y18oQ
 73LpeE1Ut8hyTqrYUgN2FFP8MZKij5efP/NHZLDJ6embxK2fd5FVH81sSddsxppOy5hzbrdP1bf
 k5ouWg166SKb5Q1QxDuaITQ7zeJzTVJN6DNLEb27s=
X-Received: by 2002:a05:6300:624b:b0:394:65e8:8726 with SMTP id
 adf61e73a8af0-39517b337ccmr5215586637.6.1771598436725; 
 Fri, 20 Feb 2026 06:40:36 -0800 (PST)
Received: from localhost ([218.190.35.90]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c6e531e6cbbsm18569727a12.18.2026.02.20.06.40.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Feb 2026 06:40:36 -0800 (PST)
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
In-Reply-To: <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260212194131.64708-2-jonathan.cavitt@intel.com>
 <87o6lsylfd.fsf@dell-wzy>
 <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
Date: Fri, 20 Feb 2026 22:40:32 +0800
Message-ID: <871pifpjfj.fsf@dell-wzy>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[zhenyuwlinux@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 745A2168747
X-Rspamd-Action: no action

"Cavitt, Jonathan" <jonathan.cavitt@intel.com> writes:

> -----Original Message-----
> From: Zhenyu Wang <zhenyuw.linux@gmail.com> 
> Sent: Friday, February 13, 2026 2:42 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
>> 
>> Jonathan Cavitt <jonathan.cavitt@intel.com> writes:
>> 
>> > Static analysis issue:
>> >
>> > The u64 array workload->shadow_mm->ppgtt_mm.shadow_pdps is cast to a
>> > void pointer and passed as a u32 array to set_context_pdp_root_pointer
>> > as a part of update_shadow_pdps.  This isn't wrong, per se, but we
>> > should properly cast it to an appropriately-sized u32 array before
>> > submission.
>> >
>> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gvt/scheduler.c | 6 ++++--
>> >  1 file changed, 4 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
>> > index 15fdd514ca83..1a95c9f76faa 100644
>> > --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> > +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> > @@ -72,6 +72,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
>> >  {
>> >  	struct execlist_ring_context *shadow_ring_context;
>> >  	struct intel_context *ctx = workload->req->context;
>> > +	u32 pdp[8];
>> >  
>> >  	if (WARN_ON(!workload->shadow_mm))
>> >  		return;
>> > @@ -79,9 +80,10 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
>> >  	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
>> >  		return;
>> >  
>> > +	memcpy(pdp, workload->shadow_mm->ppgtt_mm.shadow_pdps,
>> > +	       sizeof(u64) * ARRAY_SIZE(workload->shadow_mm->ppgtt_mm.shadow_pdps));
>> >  	shadow_ring_context = (struct execlist_ring_context *)ctx->lrc_reg_state;
>> > -	set_context_pdp_root_pointer(shadow_ring_context,
>> > -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
>> > +	set_context_pdp_root_pointer(shadow_ring_context, pdp);
>> >  }
>> >  
>> 
>> I think we'd better just cast the type instead of extra copy.
>
> I'm not certain that would resolve the static analysis issue.
>
> To specify, the static analyzer is complaining that we're taking a pointer to an object
> of type 'unsigned long long' and dereferencing it as an object of type 'unsigned int'.
> The analyzer is getting uppity about this causing unexpected results depending on
> machine endianness (which... it won't, but the static analyzer doesn't know that),
> so I suspect the only way to get it to calm down is to do a direct memory copy, as
> seen here.  Casting the type would just result in the same static analysis issue.
>
> This is the part of the email that I'd throw around terms like "strict aliasing" and
> "type punning" if I thought they were relevant.  They probably aren't, though.
>

I really don't want to do extra copy as this is hot path for every exec submission.
How about below change?
Btw, which static analysis you're using? Looks I don't get such warning
with either sparse or smatch...

diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 63ad1fed525a..3f09d6440827 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -1,3 +1,4 @@
+
 /*
  * Copyright(c) 2011-2016 Intel Corporation. All rights reserved.
  *
@@ -54,7 +55,7 @@
 
 static void set_context_pdp_root_pointer(
 		struct execlist_ring_context *ring_context,
-		u32 pdp[8])
+		u32 *pdp)
 {
 	int i;
 
@@ -75,7 +76,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 
 	shadow_ring_context = (struct execlist_ring_context *)ctx->lrc_reg_state;
 	set_context_pdp_root_pointer(shadow_ring_context,
-			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
+				     (u32 *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
 }
 
 /*
