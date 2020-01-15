Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5CD13C88A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 16:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DD896EA03;
	Wed, 15 Jan 2020 15:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACD96EA03
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 15:57:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 07:57:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="305542152"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.133.153])
 ([10.251.133.153])
 by orsmga001.jf.intel.com with ESMTP; 15 Jan 2020 07:57:27 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
 <157907760539.5559.7281364125701103353@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ebdc5cd5-761e-1cfe-48f0-93bc37b32afc@intel.com>
Date: Wed, 15 Jan 2020 07:57:27 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <157907760539.5559.7281364125701103353@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/7] Commit early to GuC
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/15/2020 12:40 AM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2020-01-15 01:31:36)
>> We currently wait until we attempt to load the GuC to confirm if we're
>> in GuC mode or not, at which point a lot of the engine setup has already
>> happened and needs to be updated for GuC submission. To allow us to get
>> the setup done directly into GuC mode, we need to commit to using GuC
>> as soon as possible.
> I think this is the wrong direction; as I thought the goal was to allow
> delayed loading of firmware, even going as far as allowing the system to
> run a browser for the user to get the firmware first. I may be

We do indeed want to keep supporting execlists mode even as some HW 
features move to the GuC to allow the user to get to the binaries, but 
we don't want to switch between the 2 modes without a reboot. Switching 
between the 2 modes is not a HW capability that we're committed to; the 
guc->elsp transition is already not possible, while the elsp->guc one 
still seems to work, but who knows for how long it will?

This series is also not really changing the commitment at the 
implementation level, just making it "official" and acting based on 
that. Even without these patches, if the blobs are on the system we will 
attempt to get into GuC mode unless we get an allocation failure or 
something similar, in which case it is extremely likely that the 
fall-back to non-guc will not work either.

> completely wrong about that, but imho I never want to have to build
> firmware images into the kernel.

I do 100% agree with this statement, although I'm not sure how this 
relates to the series. Are you planning to pull some of the engine setup 
to an even earlier point?

>
> The transition from execlists to guc could be just set-wedged; delete
> old engines, build guc engines. [This should also work for guc -> guc.]
> Throwing away context state is ugly, but simple enough.

As mentioned above, we can't switch between elsp and GuC modes so this 
transition would have to be done before the first submission to HW. Why 
not go directly in GuC mode then?

Daniele

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
