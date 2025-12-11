Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F7ECB634C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 15:36:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E514110E82A;
	Thu, 11 Dec 2025 14:36:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="ckx07Zxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C08D10E82A;
 Thu, 11 Dec 2025 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765463758;
 bh=KjJyYZXS5w/90m6sboJIUnxN21swsqeAlbXxq94pxBg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ckx07ZxvTz3aEHHw7Yj/3EICiyAglE+mehmQwxKF3T37UNXU3iIM5UGArJjFex+qa
 RvYFx5geBXNtPR+My928gYobNO5LpIoIMBg5qXRKgmwTrEK79S8/ArzIVe6tE+isYS
 iYCJH1nXSfxzv8rUNhXmkCFJJ5UiVOL+IEs3EtGw9Je8+vKseQuVdZPKdVEd16tI6B
 FoHaL82XXNRbvSWq+XnkqbE6alOPxASjgF5JX6cGIBUWFpRacptvkJmN9I0HG/NC/d
 6CyQevzXdZ469Ov9uqpZ7YjMXspAp4SwDnWyFVVHpD04RAUYf2l1LAc9LiJZue+I3g
 qvsKg56xBMzOA==
Message-ID: <e3fcf1ce-e194-42b5-865d-0b9d6669cfe6@lankhorst.se>
Date: Thu, 11 Dec 2025 15:35:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-3-dev@lankhorst.se>
 <DM4PR11MB63609A43C9B11091A5FB41EFF4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aSdYPKUJgbe84G1M@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <aSdYPKUJgbe84G1M@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2025-11-26 kl. 20:42, skrev Ville Syrjälä:
> On Wed, Nov 26, 2025 at 07:19:47PM +0000, Shankar, Uma wrote:
>>
>>
>>> -----Original Message-----
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Maarten
>>> Lankhorst
>>> Sent: Tuesday, November 4, 2025 2:06 PM
>>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>>> Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>; Mario
>>> Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
>>> <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebastian
>>> Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
>>> <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
>>> Subject: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
>>> intel_pipe_fastset
>>>
>>> intel_set_pipe_src_size(), hsw_set_linetime_wm(),
>>> intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
>>> are called from an atomic context on PREEMPT_RT, and should be using the _fw
>>> functions.
>>
>> This could be ok but we need to be sure that all are called with power domains up.
>> I think would be safe to keep this under RT check so that we don't end up breaking any
>> generic non RT usecase.
> 
> When removing the locks from register accesses one needs to consider
> what platforms the code runs on, what other register are on the same
> cacheline, and whether they can be accessed in parallel. If there is
> something there then we may not be able to remove the locks.
> 
> That's assuming the "system hangs when same cacheline is accessed from
> multiple cpus" issue is real for display registers, and I'm actually
> not 100% it is. But we'd need to run some tests on the affected systems
> (~ivb/hsw) to get any kind of confidence here. IIRC some old
> intel_gpu_top thhat directly poked the registers was very good at
> hitting it on hsw at least, so that would be a decent starting point.
> 
> Anyways, I'm going to be replacing the uncore lock with a display
> specific lock soonish, and I suppose I can just make that a raw
> spinlock to appease RT.


You're correct about the cacheline problem!

We shouldn't be having a race in those specific registers though. On the current
kernel they would likely hang the system if the _fw variants are not taken, as it
means the uncore lock would be taken twice.

This means the fastset path is already broken on systems requiring uncore lock, and
this simply fixes it instead.

Kind regards,
~Maarten Lankhorst
